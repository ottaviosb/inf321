# Atividade 4 — Rota Multilíngue Dinâmica (Phoenix)

## Como rodar localmente

Requer Erlang, Elixir (≥ 1.17) e PostgreSQL com usuário/senha `postgres`/`postgres`
(veja `config/dev.exs`).

```bash
cd hello
mix setup        # deps.get + ecto.create + assets
mix phx.server
```

Acesse <http://localhost:4000/saudacao/pt/lucas> e <http://localhost:4000/saudacao/en/lucas>.
