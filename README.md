# Secure CI/CD Pipeline

![CI](https://github.com/mohanot/secure-cicd-pipeline-demo/actions/workflows/secure-pipeline.yml/badge.svg)
![Docker](https://img.shields.io/badge/Docker-Containerized-blue)
![Security](https://img.shields.io/badge/Security-Integrated-green)
![DevSecOps](https://img.shields.io/badge/DevSecOps-Pipeline-red)

# Overview
This project demonstrates a secure, production-style CI/CD pipeline for a Python application using GitHub Actions, integrating security directly into the software development lifecycle.

## Features
- Automated testing (pytest)
- Software Bill of Materials (SBOM) generation
- Filesystem vulnerability scanning (Trivy)
- Docker image build and push (GHCR)
- Keyless container signing using Cosign (Sigstore)
- Secure deployment workflow with environment gating

## Architecture
Developer → GitHub → CI Pipeline → Security Scans → Build → Push → Sign → Deploy

## Security Controls Implemented
- Least-privilege GitHub Actions permissions
- SBOM generation for supply chain visibility
- Vulnerability scanning with fail-on-critical policy
- Keyless signing using OIDC (Cosign)
- Environment-based deployment approval

## Tech Stack
- Python (FastAPI)
- GitHub Actions
- Docker & GHCR
- Trivy (security scanning)
- Anchore SBOM
- Cosign (Sigstore)

## Lessons
- Secure CI/CD design principles
- Supply chain security (SBOM, signing)
- Workflow hardening and least privilege
- Debugging real-world DevSecOps issues

## Future Improvements
- Artifact attestations (provenance)
- Kubernetes deployment
- Terraform infrastructure
- API security scanning
