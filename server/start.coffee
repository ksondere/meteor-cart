Meteor.startup ->
  randomAmount = -> Math.ceil(Math.random() * 300)
  Meteor.call 'makePayment', randomAmount(),  '4012888818888', '2017', '1', (error, result) ->
    console.log "result: #{result}"
    console.log "error: #{error}"
    for k, v of result
      console.log "#{k}:#{v}"

    ###
    result.then (res)->
      console.log "res: #{res}"
      for key, value of res
        console.log "#{key} : #{value}"

      for k, v of res.messages['message']
        console.log "#{k} : #{v}"
    ###
