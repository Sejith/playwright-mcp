FROM mcr.microsoft.com/playwright:v1.42.0-jammy

WORKDIR /app

COPY . .
RUN npm install

ENV PORT=7264

CMD ["sh", "-c", "node cli.js --headless --browser chromium --no-sandbox --port $PORT --host 0.0.0.0"]
