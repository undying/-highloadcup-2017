
local http_methods = {}


function http_methods.http_not_found(body)
  if body then ngx.say(body) end
  ngx.exit(ngx.HTTP_NOT_FOUND)
end


function http_methods.http_bad_request(body)
  if body then ngx.say(body) end
  ngx.exit(ngx.HTTP_BAD_REQUEST)
end


function http_methods.http_ok(body)
  if body then ngx.say(body) end
  ngx.exit(ngx.HTTP_OK)
end


function http_methods.is_method(method)
  return ngx.req.get_method() == method
end


return http_methods

-- vi:syntax=lua
