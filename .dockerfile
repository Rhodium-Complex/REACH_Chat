FROM python:3.12-slim

RUN apt-get update && apt-get install -y graphviz libgraphviz-dev pkg-config gcc git\
    && rm -rf /var/lib/apt/lists/*

# 作業ディレクトリを設定
WORKDIR /app

# 依存関係ファイルをコピーしてインストール
COPY requirements.txt .
RUN pip install --root-user-action ignore --upgrade pip
RUN pip install --no-cache-dir --root-user-action ignore -r requirements.txt

# アプリケーションコードをコピー
COPY . .

# ソースコードはボリュームマウントによりローカルと同期するため、ここではコピーしない
# 必要に応じて VOLUME 命令を記載可能（オプション）
VOLUME ["/app"]

# アプリケーションのエントリポイント（例：main.py を起動）
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]