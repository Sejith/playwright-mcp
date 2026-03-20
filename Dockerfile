FROM mcr.microsoft.com/playwright:latest
RUN npm install -g @playwright/mcp
EXPOSE 7264
CMD ["node", "/usr/local/lib/node_modules/@playwright/mcp/cli.js", \
     "--headless", \
     "--browser", "chromium", \
     "--no-sandbox", \
     "--port", "7264", \
     "--host", "0.0.0.0", \
     "--allowed-hosts", "*"]
