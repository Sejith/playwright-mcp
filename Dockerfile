FROM mcr.microsoft.com/playwright/mcp:latest
EXPOSE 7264
ENTRYPOINT ["node"]
CMD ["cli.js", "--headless", "--browser", "chromium", "--no-sandbox", "--port", "7264", "--host", "0.0.0.0", "--allowed-hosts", "*"]
