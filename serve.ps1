# Local HTTP Server for Personal Site
param(
    [int]$Port = 8000
)

$PSScriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Definition
if (-not $PSScriptRoot) { $PSScriptRoot = Get-Location }

$listener = New-Object System.Net.HttpListener
$prefix = "http://localhost:$Port/"
$listener.Prefixes.Add($prefix)

try {
    $listener.Start()
} catch {
    Write-Warning "Port $Port is in use, trying 8080..."
    $Port = 8080
    $prefix = "http://localhost:$Port/"
    $listener = New-Object System.Net.HttpListener
    $listener.Prefixes.Add($prefix)
    $listener.Start()
}

Write-Host "=================================================" -ForegroundColor Cyan
Write-Host " Personal Academic Website - Local Server" -ForegroundColor Green
Write-Host " Serving at: $prefix" -ForegroundColor Yellow
Write-Host " Open your browser to: $prefix" -ForegroundColor White
Write-Host " Press Ctrl+C in this window to stop the server." -ForegroundColor Gray
Write-Host "=================================================" -ForegroundColor Cyan

# Open default browser
try {
    Start-Process $prefix
} catch {}

$mimeTypes = @{
    ".html" = "text/html; charset=utf-8"
    ".htm"  = "text/html; charset=utf-8"
    ".css"  = "text/css; charset=utf-8"
    ".js"   = "application/javascript; charset=utf-8"
    ".svg"  = "image/svg+xml"
    ".png"  = "image/png"
    ".jpg"  = "image/jpeg"
    ".jpeg" = "image/jpeg"
    ".gif"  = "image/gif"
    ".webp" = "image/webp"
    ".ico"  = "image/x-icon"
    ".pdf"  = "application/pdf"
    ".json" = "application/json"
    ".woff" = "font/woff"
    ".woff2"= "font/woff2"
    ".ttf"  = "font/ttf"
}

while ($listener.IsListening) {
    try {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response

        $urlPath = [System.Uri]::UnescapeDataString($request.Url.AbsolutePath).TrimStart('/')
        if ([string]::IsNullOrWhiteSpace($urlPath)) {
            $urlPath = "index.html"
        }

        $fullPath = Join-Path $PSScriptRoot $urlPath

        if (Test-Path $fullPath -PathType Container) {
            $fullPath = Join-Path $fullPath "index.html"
        }

        # Support clean URLs like /cv -> cv.html
        if (-not (Test-Path $fullPath -PathType Leaf) -and (Test-Path "$fullPath.html" -PathType Leaf)) {
            $fullPath = "$fullPath.html"
        }

        if (Test-Path $fullPath -PathType Leaf) {
            $ext = [System.IO.Path]::GetExtension($fullPath).ToLower()
            if ($mimeTypes.ContainsKey($ext)) {
                $response.ContentType = $mimeTypes[$ext]
            } else {
                $response.ContentType = "application/octet-stream"
            }
            $bytes = [System.IO.File]::ReadAllBytes($fullPath)
            $response.ContentLength64 = $bytes.Length
            $response.OutputStream.Write($bytes, 0, $bytes.Length)
        } else {
            $response.StatusCode = 404
            $notFoundHtml = "<html><body><h2>404 Not Found</h2><p>File not found: $urlPath</p></body></html>"
            $bytes = [System.Text.Encoding]::UTF8.GetBytes($notFoundHtml)
            $response.ContentType = "text/html; charset=utf-8"
            $response.ContentLength64 = $bytes.Length
            $response.OutputStream.Write($bytes, 0, $bytes.Length)
        }
        $response.OutputStream.Close()
    } catch {
        # Catch individual request errors without killing server
    }
}
