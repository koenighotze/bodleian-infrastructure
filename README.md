# Bodleian infrastructure

[![Plan infrastructure](https://github.com/koenighotze/bodleian-infrastructure/actions/workflows/plan.yml/badge.svg)](https://github.com/koenighotze/bodleian-infrastructure/actions/workflows/plan.yml)
[![Apply](https://github.com/koenighotze/bodleian-infrastructure/actions/workflows/apply.yml/badge.svg)](https://github.com/koenighotze/bodleian-infrastructure/actions/workflows/apply.yml)

This repository configures a target GitHub repository. It creates
secrets for working with GCP, Docker Hub and Codacy.

The main workflow "Plan infrastructure" runs on every push and ensures the quality of the infrastructure code.

The apply and destroy workflows must be triggered manually.