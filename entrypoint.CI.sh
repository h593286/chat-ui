ENV_LOCAL_PATH=/app/.env.local

cat <<< "$DOTENV_LOCAL" > ${ENV_LOCAL_PATH}

export PUBLIC_VERSION=$(node -p "require('./package.json').version")

dotenv -e /app/.env -c -- node /app/build/index.js -- --host 0.0.0.0 --port 3000