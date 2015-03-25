PaymentGateway = Meteor.npmRequire('node-authorize-net')
authorizeNet = new PaymentGateway("2msN9nrBG8K", "43jNykM6kC8v87Nb")

Meteor.methods
  makePayment: (amount, cardNumber, expirationMonth, expirationYear) ->
    future = authorizeNet.authCaptureTransaction(amount, cardNumber, expirationYear, expirationMonth).then((result) ->
      return result.transactionResponse
    ).catch((err) ->
      console.log(err);
    )

    p = future.then((promise) ->
      value = promise
      console.log "value after promise: #{value}"
    )

    console.log "p: #{p}"
    setTimeout((p)->
        console.log  "p in f: #{p}"
    ,3000)

    p

