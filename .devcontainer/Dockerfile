FROM elixir:latest

ARG USER_ID=1000

ARG GROUP_ID=1000

RUN addgroup --gid $GROUP_ID user

RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user

USER user