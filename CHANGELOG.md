# Changelog — ADG Brieffer

All notable changes to the ADG Brieffer will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/), and this project adheres to [Semantic Versioning](https://semver.org/).

## [2.0.1] — 2026-05-24

### Changed
- Production release with live data integration
- 24+ RSS sources actively collecting with updated feed configurations
- Enhanced sentiment analysis pipeline with improved NLP models
- Optimized brief generation with LLM integration
- Improved article browser performance with pagination
- Better error handling for source connectivity issues
- Updated UI with real-time source status indicators

## [1.0.0] — 2026-05-23

### Added
- Initial release of the ADG Brieffer Intelligence Briefing Engine
- RSS source management view with active/inactive status
- Article browser with source attribution and sentiment indicators
- Brief template management (executive, policy, security, news formats)
- Generated brief display with template-based formatting
- Pipeline architecture overview (RSS → NLP → LLM → Brief)
- Stats dashboard showing sources, articles, templates, and brief counts
- Category badges for news, governance, economy, security, and research
- Sentiment color coding (positive/green, negative/red, neutral/gray)
- Error states with offline mode handling

### Fixed
- Article card rendering: source names now properly HTML-escaped
- Date field handling: falls back from `published` to `collected_at`
- Sentiment badge color coding applied consistently
- Source name display uses `escapeHtml()` for XSS safety

### Technical
- Single-file HTML application
- Vanilla JavaScript with async batch API calls via `Promise.all`
- Data from `brieffer.*` schema + `public.rss_articles` in PostgreSQL
- API: `/api/data/brieffer/*` endpoints
- Pipeline: 36 Airflow DAGs for RSS collection, NLP analysis, brief generation
