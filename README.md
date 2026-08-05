# QC Score Dashboards

This static website publishes the Tier Score and Appearance Score dashboards. Both pages automatically load `data/qc_raw_data.xlsx` and keep the manual Excel picker as a fallback.

## Publish once with GitHub Pages

1. Create a public GitHub repository and upload every file and folder from this package.
2. Open the repository's **Settings → Pages**.
3. Under **Build and deployment**, select **GitHub Actions**.
4. Push to the `main` branch. The included workflow publishes the site automatically.

## Daily workbook update

1. Rename the latest workbook to `qc_raw_data.xlsx`.
2. Replace `data/qc_raw_data.xlsx` without changing its path or filename.
3. Commit and push the replacement to `main`.
4. GitHub Pages republishes automatically. Visitors receive the new workbook because the dashboards request it without browser caching.

Do not rename or remove the required worksheet columns used by the dashboards.
