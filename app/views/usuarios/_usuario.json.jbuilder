json.extract! usuario, :id, :nome, :id, :senha, :altura, :peso, :imc, :exercicios, :medicamento, :pressao_media, :problemas_extras, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
