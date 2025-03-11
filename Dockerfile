FROM python:3.12-alpine

# Install mkdocs dependencies required packages
RUN apk update && apk add --no-cache \
    python3-dev \
    build-base \
    nodejs \
    npm \
    git

# Install MkDocs and plugins
RUN pip install mkdocs mkdocs-material
RUN pip install mkdocs-awesome-pages-plugin

# Set the working directory to /app
WORKDIR /app

# Copy your project files into the container
COPY . .

# Set the working directory to /app/documentation
WORKDIR /app/documentation

# Expose the default MkDocs port
EXPOSE 8000

# Serve the documentation using MkDocs
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
