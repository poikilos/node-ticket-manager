signer =  require "oauth-sign"

makeSignature = (consumerId, httpMethod, base_uri, params, consumerSecret) ->
  "NodeTicketManager #{consumerId}:#{signer.hmacsign(httpMethod, base_uri, params, consumerSecret)}"

makeSignatureHeader = (consumerId, httpMethod, base_uri, params, consumerSecret) ->
  "NodeTicketManager-Authenticate" : makeSignature(consumerId, httpMethod, base_uri, params, consumerSecret)


exports.verify = (signature, httpMethod, base_uri, params, consumerSecret) ->
  #console.log "[oauth::verify] signature:#{signature}"
  signature is signer.hmacsign(httpMethod, base_uri, params, consumerSecret)



exports.makeSignature = makeSignature
exports.makeSignatureHeader = makeSignatureHeader



