FROM mcr.microsoft.com/playwright:latest
RUN npm install -g @playwright/mcp
EXPOSE 7264
CMD ["npx", "@playwright/mcp@latest", "--port", "7264", "--host", "0.0.0.0"]
