# Craig M. Nielsen &mdash; Academic Website (Local Setup)

Academic personal website designed for PhD applications in **Statistics** and **Data Science**, styled after classical academic homepages (e.g., [Grayson R. Davis](https://graysonrdavis.github.io/)).

---

## 💻 Running the Site Locally

Your website is entirely self-contained. You can keep your GitHub repository **private** without any issues.

### Option 1: 1-Click Server (Recommended)
Double-click **`start_server.bat`** in Windows File Explorer (or run `./start_server.bat` in PowerShell/Command Prompt).
- This starts a lightweight local HTTP server with zero dependencies (uses built-in Windows .NET).
- Automatically opens your default web browser to:
  ```
  http://localhost:8000
  ```
- To stop the server at any time, simply close the command window or press `Ctrl+C`.

### Option 2: Direct File Viewing (No Server Needed)
Because all paths and assets are relative, you can also view the website directly:
- Double-click **`index.html`** in your file manager, or
- Right-click `index.html` &rarr; *Open with* &rarr; *Google Chrome*, *Microsoft Edge*, or *Opera GX*.

---

## 📁 Repository Structure

```
Personal_Site/
├── index.html                  # Academic homepage (About, Research, Writing, Projects, Coursework, References, CV)
├── cv.html                     # Standalone full-window PDF viewer for your original CV
├── start_server.bat            # 1-click batch file to launch local server
├── serve.ps1                   # Zero-dependency local static server
├── assets/
│   ├── Craig_Nielsen_CV.pdf    # Your official CV PDF
│   ├── writing samples/
│   │   ├── Mapping Timbre Space.pdf              # DURF grant proposal on timbre perception geometry
│   │   └── Why do People Listen to Sad Music.pdf # DURF awarded grant proposal ($1,250) on acoustic features
│   ├── css/
│   │   └── style.css           # Academic serif stylesheet (light & dark mode, print optimized)
│   ├── js/
│   │   └── main.js             # Theme toggle & persistent preferences
│   └── img/
│       ├── profile.jpg         # (Drop your headshot photo here!)
│       ├── favicon.svg         # Monogram SVG favicon
│       └── portrait-placeholder.svg # Fallback placeholder until you add your photo
└── README.md
```

---

## 📸 Adding Your Photo
1. Place your headshot into `assets/img/` named **`profile.jpg`** (or `profile.png`).
2. Refresh the browser. The custom placeholder will automatically be replaced with your photo.

---

## 🌐 Deploying When You're Ready
Whenever you decide to make your website public in the future:
1. In your GitHub repository settings, change visibility from **Private** to **Public**.
2. Go to **Settings** &rarr; **Pages** &rarr; Select Branch: `main`, Folder: `/ (root)` &rarr; **Save**.
3. It will immediately publish live on GitHub Pages.
