# REACH_Chat

REACH規則（化学物質の登録、評価、認可及び制限に関する規則）に関するチャットボットです。

## 特徴

- Neo4jグラフデータベースを使用してREACH規則の要件と関連性を管理
- PostgreSQLで物質情報を管理
- LangChainとLangGraphを使用した会話フロー制御
- GPT-4を活用した自然言語処理

## 主な機能

1. 物質の規制状態の確認
2. SDSの提出義務の判断
3. 登録義務の確認
4. SVHC、認可、制限に関する情報提供

## 技術スタック

- Python 3.12
- Neo4j (グラフデータベース)
- PostgreSQL (リレーショナルデータベース)
- Docker & Docker Compose
- LangChain & LangGraph
- OpenAI GPT-4

## セットアップ

1. 環境変数の設定:
   ```
   NEO4J_URI=bolt://neo4j:7687
   NEO4J_USER=neo4j
   NEO4J_PASSWORD=password
   POSTGRES_HOST=postgres
   POSTGRES_PORT=5432
   POSTGRES_DB=legal_db
   POSTGRES_USER=postgres
   POSTGRES_PASSWORD=password
   OPENAI_API_KEY=your_api_key
   ```

2. Dockerでの起動:
   ```
   docker-compose up -d
   ```

## 制限事項

- 現在は基本的なクエリのみに対応
- 複雑な規制要件の解釈は人間の専門家による確認が必要

