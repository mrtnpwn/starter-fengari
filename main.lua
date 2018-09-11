-- Modules and variables that add JavaScript functions to Lua (via fengari-interop)
local js = require "js"
local window = js.global
local document = window.document

local el = document:querySelector("#mag")
el:addEventListener('click', function()
  document:getElementById('mag').className = "btn btn-warning text-white justify-content-center text-center"
  document:getElementById('inp').value = "pwned! Refresh to see again."
  document:getElementById('feng').className = "animate heartBeat"
end)

local function sleep(delay)
    local co = assert(coroutine.running(), "Should be run in a coroutine")

    window:setTimeout(function()
        assert(coroutine.resume(co))
    end, delay*1000)

    coroutine.yield()
end

coroutine.wrap(function()
  print 'Hey!'
  sleep(2)
  print 'Glad to see you here!'
  sleep(2)
  print 'As you can see, Fengari has the ability to send this kind of messages to the console.'
  sleep(2)
  print 'Welcome to Fengari. Now, start editing this project with your own code, the documentation is on'
  print 'https://github.com/fengari-lua/fengari-interop'
  sleep(2)
  print '---------------------'
  print 'Fengari rocks.'
  print 'https://fengari.io/'
  print '---------------------'
end)()