FROM ghcr.io/astral-sh/uv:python3.11-alpine


WORKDIR /app
COPY . ./

RUN uv sync --frozen

EXPOSE $PORT

CMD ["uv", "run", "app.py"]