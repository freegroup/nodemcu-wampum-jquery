-- toggles the build in LED on
--
--

return function (connection, req, args)
    dofile("httpserver-header.lc")(connection, 200, "application/json")
    connection:send('{"on"}')

    gpio.mode(3, gpio.OUTPUT)
    gpio.write(3, gpio.LOW)

end