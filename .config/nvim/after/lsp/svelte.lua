return {
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd('BufWritePost', {
      group = vim.api.nvim_create_augroup('svelte_lsp_ts_js_notify', { clear = true }),
      pattern = { '*.js', '*.ts' },
      callback = function(ctx)
        -- Here use ctx.match instead of ctx.file
        client.notify('$/onDidChangeTsOrJsFile', { uri = ctx.match })
      end,
    })
  end,
}
