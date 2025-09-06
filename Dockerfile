# --- Stage 1: ビルドステージ ---
FROM alpine:latest 

# 更新と必要なツールのインストール
RUN apk update && \
    apk add --no-cache \
    git \
    ca-certificates \
    curl \
    xfce4-terminal \
    tmux \
    neovim \
    bash \
    musl-locales \ 
    musl-locales-lang

# 環境
ENV LANG=ja_JP.UTF-8
ENV LC_ALL=ja_JP.UTF-8

# TPMをインストールする
RUN git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# コンテナ起動時に実行されるコマンド
CMD ["/bin/bash"]
