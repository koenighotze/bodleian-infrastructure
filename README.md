# Bodleian infrastructure

[![Plan infrastructure](https://github.com/koenighotze/bodleian-infrastructure/actions/workflows/plan.yml/badge.svg)](https://github.com/koenighotze/bodleian-infrastructure/actions/workflows/plan.yml)
[![Apply](https://github.com/koenighotze/bodleian-infrastructure/actions/workflows/apply.yml/badge.svg)](https://github.com/koenighotze/bodleian-infrastructure/actions/workflows/apply.yml)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/64e7fb37fad04c4198660b090f847dbe)](https://www.codacy.com/gh/koenighotze/bodleian-infrastructure/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=koenighotze/bodleian-infrastructure&amp;utm_campaign=Badge_Grade)


This repository configures a target GitHub repository. It creates
secrets for working with GCP, Docker Hub and Codacy.

The main workflow "Plan infrastructure" runs on every push and ensures the quality of the infrastructure code.

The apply and destroy workflows must be triggered manually.
