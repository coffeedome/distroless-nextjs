# 🐳 Next.js on Distroless Dockerfile

This Dockerfile provides a secure and optimized way to build and run a **Next.js application** using a **multi-stage build** and a **distroless** final image.

## 📦 What It Does

- **Builds a Next.js app** using a minimal Node.js Alpine image.
- **Installs dependencies** conditionally based on the available lockfile (`yarn`, `npm`, or `pnpm`).
- **Runs the app on a distroless base image** for a smaller attack surface and better security.
- Supports **Next.js standalone output** for efficient deployment.

## 🔧 Build Process

1. **`base`** – A minimal Node.js Alpine base image.
2. **`deps`** – Installs dependencies depending on the package manager.
3. **`builder`** – Copies code, runs the Next.js build, and prepares the standalone output.
4. **`runner`** – A secure distroless image that contains only the necessary files to run the app.

## ✅ Why Distroless?

Distroless images:

- Contain only your app and runtime dependencies.
- Exclude shells, package managers, or OS tools.
- Reduce image size and improve security.

## 🚀 Running the Image

Expose port 3000 (default for Next.js):

```bash
docker build -t my-next-app .
docker run -p 3000:3000 my-next-app
```

You can also run the example app by using the ./run.sh script

```bash
./run.sh
```
