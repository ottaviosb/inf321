# Atividade 5 — Domínio de Vídeos no Rumbl (Phoenix)

Atividade Integradora Prática da Unidade 4.2 (Detalhando o uso dos Controllers no Phoenix).

| Parte | Arquivo |
| --- | --- |
| 01. Struct `%Video{}` (`:id`, `:title`, `:url`) | `lib/rumbl/multimedia/video.ex` |
| 02. Contexto `Rumbl.Multimedia` (`list_videos/0`, `get_video/1`) | `lib/rumbl/multimedia.ex` |
| 03. Rotas `/videos` e `/videos/:id` | `lib/rumbl_web/router.ex` |
| 04. `RumblWeb.VideoController` (`index/2`, `show/2`) | `lib/rumbl_web/controllers/video_controller.ex` |
| 05. `RumblWeb.VideoHTML` e templates | `lib/rumbl_web/controllers/video_html.ex` e `video_html/` |
| Barra lateral do layout | `lib/rumbl_web/components/layouts.ex` e `assets/css/app.css` |

## Como rodar localmente

Requer Erlang, Elixir (≥ 1.17) e PostgreSQL com usuário/senha `postgres`/`postgres`
(veja `config/dev.exs`).

```bash
cd rumbl
mix setup        # deps.get + ecto.create + assets
mix phx.server
```

Acesse <http://localhost:4000/videos> e <http://localhost:4000/videos/1>.
