  Session.setDefault('counter', 0)

  Template.hello.helpers
    counter: ->
      return Session.get('counter')

  Template.hello.events
    'click button': ->
      randomAmount = -> Math.ceil(Math.random() * 300)
      console.log randomAmount()
      Meteor.call 'makePayment', randomAmount(),  '4012888818888', '2017', '1', (error, result) ->
        console.log "result: #{result}"
        ###
        result.then(res) ->
          for k, v of result
            console.log "#{k} : #{v}"
          Session.set('counter', res.transId)
###
