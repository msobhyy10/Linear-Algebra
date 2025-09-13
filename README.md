<div align="center">

# Linear Algebra Notebooks & Explorations

Interactive Jupyter notebooks covering core and advanced linear algebra concepts: vectors, matrices, eigen decomposition, PCA, SVD, and orthogonalization techniques — implemented with NumPy, SymPy, Pandas, Matplotlib, and scikit-learn.

</div>

## Table of Contents
1. [Overview](#overview)
2. [Features](#features)
3. [Project Structure](#project-structure)
4. [Prerequisites](#prerequisites)
5. [Quick Start (Local)](#quick-start-local)
6. [Running in a Dev Container](#running-in-a-dev-container)
7. [Usage Examples](#usage-examples)
8. [Configuration](#configuration)
9. [Data & Images](#data--images)
10. [Contributing](#contributing)
11. [License](#license)
12. [Acknowledgements](#acknowledgements)

## Overview
This repository provides a curated set of Jupyter notebooks for learning, teaching, or reviewing **linear algebra** concepts with practical computation examples. The notebooks progressively move from foundational vector and matrix operations to more advanced topics such as **eigenvalues/eigenvectors**, **diagonalization**, **Gram–Schmidt orthogonalization**, **Principal Component Analysis (PCA)**, and **Singular Value Decomposition (SVD)**.

The environment is container-friendly and reproducible: a `Dockerfile` plus a ready-to-use `.devcontainer` setup allow you to open and run the notebooks in VS Code with minimal friction.

## Features
- ✅ Foundational operations: vector arithmetic, matrix multiplication, determinants, rank.
- ✅ Symbolic math examples via **SymPy** (closed-form eigen decomposition, orthogonal bases, etc.).
- ✅ Numerical linear algebra with **NumPy** and visualization with **Matplotlib**.
- ✅ Applied examples: **PCA** & **SVD** using **scikit-learn**.
- ✅ Orthogonalization workflow: Gram–Schmidt process.
- ✅ Lightweight, reproducible dev container (VS Code Dev Containers / Docker).
- ✅ Clean, minimal dependency list in `requirements.txt` for easy installation.
- ✅ Reproducible, editor-integrated development using VS Code Dev Containers / Docker extension.

## Project Structure
```
.
├── Dockerfile                # Container build instructions
├── requirements.txt          # Python dependencies
├── README.md                 # Project documentation (you are here)
├── .devcontainer/
│   └── devcontainer.json     # VS Code Dev Container config
├── notebooks/                # Jupyter notebooks
│   ├── DS Vectors and Matrices operations.ipynb
│   ├── Eigenvectors, Eigenvalues, Diagonalization, PCA, and SVD.ipynb
│   └── Vector Space to Gram Shmidt.ipynb
└── images/                   # Supporting images / figures
    └── goose.jpg
```

## Prerequisites
For local (non-container) use:
- Python 3.10+ (matches the base image in the `Dockerfile`)
- `pip` (latest recommended)
- (Optional) A virtual environment tool: `venv`, `conda`, or `pipenv`
- (Optional) Docker Desktop / Engine + VS Code for containerized workflow

## Quick Start (Local)
Clone and install dependencies in an isolated environment.

```bash
git clone https://github.com/your-username/Linear-Algebra.git
cd Linear-Algebra

# Create and activate a virtual environment (one option shown)
python3 -m venv .venv
source .venv/bin/activate

# Upgrade pip and install dependencies
pip install --upgrade pip
pip install -r requirements.txt
```

## Running in a Dev Container
This repo is already configured for **VS Code Dev Containers** / **Docker**.

### Using the Dev Containers Extension
1. Install the VS Code extension: **Dev Containers** (`ms-vscode-remote.remote-containers`).
2. Open the repository folder in VS Code.
3. When prompted, click **Reopen in Container** (or use the Command Palette: “Dev Containers: Reopen in Container”).
4. VS Code builds the image using the root `Dockerfile` referenced in `.devcontainer/devcontainer.json`.
5. Once attached, open the `notebooks/` folder and start exploring.


## Configuration
Primary configuration is handled through:
- `.devcontainer/devcontainer.json` – VS Code container settings (extensions, Python path).
- `Dockerfile` – base image (`python:3.10-slim`) and dependency installation.
- `requirements.txt` – Python packages; edit and rebuild the container (or `pip install -r requirements.txt`) to update.

If you add new dependencies inside the dev container, remember to:
```bash
pip install <package>
pip freeze | grep -i <package> >> requirements.txt  # or manually edit
```
Then rebuild the container if needed.
