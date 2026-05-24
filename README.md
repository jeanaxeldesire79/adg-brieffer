# ⚡ ADG Brieffer — Intelligence Briefing Engine

[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![HTML](https://img.shields.io/badge/HTML-5-orange)](https://developer.mozilla.org/en-US/docs/Web/HTML)
[![CSS3](https://img.shields.io/badge/CSS-3-blueviolet)](https://developer.mozilla.org/en-US/docs/Web/CSS)
[![JavaScript](https://img.shields.io/badge/JavaScript-ES6-yellow)](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
[![Status](https://img.shields.io/badge/status-BETA-yellow)]()

> Automated intelligence brief generation for West Africa — RSS aggregation, NLP sentiment analysis, and AI-powered brief synthesis. 24+ sources, 2,800+ articles, 4 brief templates.

**Part of the [Axel Dev Group (ADG)](https://axeldevlab.com) portal ecosystem.**

---

## 🚀 Live Demo

Visit **[portal.axeldevlab.com](https://portal.axeldevlab.com)** → Navigate to **Brieffer**

> ⚠️ Portal access requires login credentials. Contact the ADG team for access.

![ADG Brieffer Screenshot](docs/screenshot.png)

---

## ✨ Features

- 🛰️ **24+ RSS Sources** — BBC Africa, Reuters, Jeune Afrique, Le Monde, ECOWAS, AfDB, and more
- 📰 **2,800+ Collected Articles** — Continuously aggregated and analyzed
- 🔍 **NLP Sentiment Analysis** — Positive/negative/neutral classification with color coding
- 🏷️ **Topic Tagging** — Automatic topic extraction via NLP pipeline
- 📝 **4 Brief Templates** — Executive, policy, security, and news brief formats
- 📄 **AI-Generated Briefs** — LLM-synthesized intelligence summaries
- ⚙️ **36 Airflow DAGs** — Full orchestration pipeline (RSS → NLP → LLM → Brief)
- 🗂️ **Category Filtering** — News, governance, economy, security, research
- 🌙 **Dark Theme** — Intelligence dashboard aesthetic

---

## 🏗️ Architecture

```
┌──────────────┐     ┌──────────────────────┐     ┌──────────────────┐
│   Browser    │────▶│   Portal API         │────▶│  PostgreSQL      │
│  (Vanilla    │     │   (Python FastAPI)   │     │  (datasci_db)    │
│   HTML/CSS/  │◀────│                      │◀────│                  │
│   JS)        │     │  /api/data/brieffer/*│     │  brieffer.*      │
│              │     │                      │     │  public.         │
└──────────────┘     └──────────────────────┘     │  rss_articles    │
                          │                        └──────────────────┘
                          ▼
              ┌──────────────────────┐
              │   36 Airflow DAGs    │
              │  (RSS → Sentiment    │
              │   → Topic → Brief)   │
              └──────────────────────┘
```

### Pipeline Flow

```
RSS Feeds ──→ Collector DAG ──→ public.rss_articles
                    │
                    ▼
         Sentiment Analysis DAG ──→ sentiment + topics
                    │
                    ▼
          Brief Generator DAG ──→ brieffer.briefs
                    │
                    ▼
            Portal API ──→ Browser UI
```

---

## 🛠️ Tech Stack

| Layer | Technology |
|-------|------------|
| **Frontend** | Vanilla HTML5, CSS3 (custom properties), JavaScript (ES6+) |
| **Icons** | Font Awesome (via CDN) |
| **Charts** | Chart.js (via CDN) |
| **Backend** | Python FastAPI |
| **Database** | PostgreSQL 15 (`datasci_db`) |
| **RSS Collection** | Apache Airflow (36 DAGs) |
| **NLP Analysis** | Python + HuggingFace Transformers |
| **Brief Generation** | LLM (GPT/Claude) synthesis from analyzed articles |
| **Deployment** | Portal module viewer on `portal.axeldevlab.com` |

---

## 📁 Repository Structure

```
adg-brieffer/
├── README.md               # This file
├── LICENSE                 # MIT License
├── CHANGELOG.md            # Version history
├── CONTRIBUTING.md         # How to contribute
├── src/
│   └── index.html          # Single-file app (production HTML)
├── docs/
│   └── screenshot.png      # App screenshot
├── data/
│   └── schema.md           # Database schema reference + pipeline architecture
├── scripts/
│   └── deploy.sh           # Deployment script
└── .github/
    └── workflows/          # GitHub Actions (future)
```

---

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.
