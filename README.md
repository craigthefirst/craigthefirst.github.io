# Craig M. Nielsen &mdash; Academic Website

Academic personal website designed for PhD applications in **Statistics** and **Data Science**. Styled with clean, book-quality typography inspired by classical academic homepages (e.g., [Grayson R. Davis](https://graysonrdavis.github.io/)).

---

## 🚀 Quick Setup & Customization

### 1. Upload Your Photo
A dedicated portrait space has been reserved for you.
- Simply drop your headshot image into `assets/img/` named **`profile.jpg`** (or `profile.png`).
- While no photo is present, the website automatically displays an elegant, custom placeholder with seamless fallback.

```
Personal_Site/
└── assets/
    └── img/
        └── profile.jpg   <-- Put your headshot photo here!
```

### 2. Add Your PDF Curriculum Vitae
- Place your compiled PDF CV into the `assets/` folder named **`Craig_Nielsen_CV.pdf`**.
- The site already has pre-wired download buttons and direct links to this file.
- Visitors can also view and print the full online version at [`cv.html`](./cv.html).

```
Personal_Site/
└── assets/
    └── Craig_Nielsen_CV.pdf   <-- Put your PDF CV here!
```

### 3. Deploying to GitHub Pages
This site is built with pure, modern HTML5, CSS3, and vanilla JavaScript—meaning zero build tools, zero dependencies, and instant loading.

To publish your site live for free on GitHub Pages:
1. Push your changes to GitHub:
   ```bash
   git add .
   git commit -m "Build academic personal website"
   git push origin main
   ```
2. On GitHub, navigate to your repository: **`craigthefirst/Personal_Site`**.
3. Go to **Settings** &rarr; **Pages** (in the left sidebar).
4. Under **Build and deployment**:
   - **Source**: *Deploy from a branch*
   - **Branch**: *main*
   - **Folder**: */ (root)*
5. Click **Save**. Within 1–2 minutes, your website will be live at:
   ```
   https://craigthefirst.github.io/Personal_Site/
   ```
*(Tip: If you ever want your site URL to be simply `https://craigthefirst.github.io/`, you can rename the repository to `craigthefirst.github.io` in GitHub Settings!)*

---

## 📁 Repository Structure

```
Personal_Site/
├── index.html                  # Main academic homepage (About, Research, Projects, Coursework, References)
├── cv.html                     # Standalone, printer-friendly academic Curriculum Vitae
├── .nojekyll                   # Ensures GitHub Pages serves static files directly
├── assets/
│   ├── css/
│   │   └── style.css           # Clean academic stylesheet (editorial serif, responsive, dark/light theme)
│   ├── js/
│   │   └── main.js             # Theme toggle (persisted in localStorage), scrollspy, image fallback
│   ├── img/
│   │   ├── favicon.svg         # Academic monogram SVG icon
│   │   ├── portrait-placeholder.svg # Elegant avatar placeholder until you upload profile.jpg
│   │   └── profile.jpg         # (Your future photo)
│   └── Craig_Nielsen_CV.pdf    # (Your future PDF CV)
└── README.md
```

---

## 🎨 Features & Standards for PhD Admissions

- **Academic Editorial Aesthetics:** Styled with classical serif typography (*Newsreader* / *Charter* / *EB Garamond*) reminiscent of mathematical publications, with crisp modern sans-serif for metadata and labels.
- **Interdisciplinary Narrative:** Accurately highlights your 3.95 GPA, Honors Data Science curriculum, triple minors (Mathematics, Economics, Music), and prestigious research labs (Pascal Wallisch, Laurence Maloney, Kyunghyun Cho, Ananth Seshadri).
- **Admissions-Ready Sections:**
  - **Research Interests:** Out-of-distribution generalization, high-dimensional statistics, causal inference, and cognitive/perceptual modeling.
  - **Academic Labs & Grants:** NYU Fox Lab ($1,250 DURF grant on sad music), Maloney Lab ($1,250 DURF application on timbre geometry), and UW–Madison CROWE (difference-in-differences tax policy report).
  - **Coursework Depth:** Proof of mathematical maturity (Honors Real Analysis, Optimization, Probability & Stats, Linear Algebra, Multivariable Calculus).
  - **Creative Dimension:** Highlights your background as an upright/electric bassist in the NYU All-University Jazz Orchestra and Symphony Orchestra.
  - **Faculty References:** Formatted contact references for recommendation letters.
- **Light & Dark Mode:** Smooth toggle with system auto-detection and `localStorage` persistence.
- **Print Optimization:** Dedicated `@media print` styling so admissions reviewers can print or save a clean, unblemished PDF directly from their browser.

