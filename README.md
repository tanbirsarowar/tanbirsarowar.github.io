# Tanbir Sarowar — Research Portfolio

Academic portfolio website for PhD candidate at Texas A&M University, PMI Lab.
Built as a single-page GitHub Pages site.

## Structure

```
portfolio/
├── index.html          ← Main portfolio page (all CSS/JS embedded)
├── setup_figures.bat   ← Copies simulation figures from wafer_chuck_sim
├── assets/
│   └── img/
│       └── sim/        ← Simulation figures (created by setup_figures.bat)
└── README.md
```

## Local Preview

Open `index.html` directly in any browser. Simulation figures load automatically
from `../wafer_chuck_sim/figures/` relative paths.

## GitHub Pages Deployment

1. Run `setup_figures.bat` to copy simulation figures into `assets/img/sim/`
2. Update `index.html` image `src` attributes:
   - Change `../wafer_chuck_sim/figures/X/Y.png` → `assets/img/sim/Y.png`
3. Create a GitHub repository named `<yourusername>.github.io`
4. Push this entire folder:
   ```bash
   git init
   git add .
   git commit -m "Initial portfolio"
   git remote add origin https://github.com/<yourusername>/<yourusername>.github.io.git
   git push -u origin main
   ```
5. Enable GitHub Pages: Settings → Pages → Branch: main → Save
6. Live at: `https://<yourusername>.github.io`

## Adding Experimental Figures

Place experimental figures (EIS Nyquist diagrams, NIR setup photos, etc.) in `assets/img/exp/`
and update the placeholder `<div class="fig-placeholder">` blocks in `index.html` with:
```html
<img src="assets/img/exp/your_figure.png" alt="description" />
```

## Updating Content

- **New publication**: Add a `.pub-item` block in the Publications section
- **New project**: Duplicate a `.project-card` block in the Research section
- **Profile photo**: Replace the `<i class="fa-solid fa-user"></i>` icon in `.profile-avatar`
  with `<img src="assets/img/profile.jpg" alt="Tanbir Sarowar" />`
