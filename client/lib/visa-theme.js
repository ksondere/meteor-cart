function onVisaCheckoutReady(){
    V.init( {
        apikey: "17SOX33VCFW1A9FVJI4J13tvR2oX1EzHzYP5exFIuA1Ej1XyQ",
        paymentRequest:{
            currencyCode: "USD",
            total: "10.00"
        }
    });
    V.on("payment.success", function(payment)
    {alert(JSON.stringify(payment)); });
    V.on("payment.cancel", function(payment)
    {alert(JSON.stringify(payment)); });
    V.on("payment.error", function(payment, error)
    {alert(JSON.stringify(error)); });
}