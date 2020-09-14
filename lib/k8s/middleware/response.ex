defmodule K8s.Middleware.Response do
  @moduledoc "K8s response middleware"

  @typedoc "Middlware Response type"
  @type t :: %__MODULE__{
    status: integer() | atom(),
    body: String.t() | map() | nil,
    headers: Keyword.t() | nil,
    meta: map() | nil
  }

  defstruct status: nil, body: nil, headers: [], meta: []

  @doc "Response middleware callback"
  @callback call(t()) :: {:ok, t()} | {:error, any()}
end