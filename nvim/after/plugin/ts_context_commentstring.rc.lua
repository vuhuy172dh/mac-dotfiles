local status, ts_context_commentstring = pcall(require, "ts_context_commentstring.internal")
if (not status) then
  return
end

ts_context_commentstring.update_commentstring({
  key = '__multiline'
})
