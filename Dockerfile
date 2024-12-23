FROM ghcr.io/astral-sh/uv:python3.11-alpine


WORKDIR /app
COPY . ./

RUN uv sync --frozen

EXPOSE 8080

CMD ["uv", "run", "app.py"]