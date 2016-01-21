ESpec.start

ESpec.configure fn(config) ->
  config.before fn ->
    # {:shared, hello: :world}
  end

  config.finally fn(shared) ->

  end
end
