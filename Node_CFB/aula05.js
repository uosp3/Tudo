const http = require("http")
const fs = require("fs")
const porta = process.env.PORT

const server = http.createServer((req, res) => {
  fs.readFile("aula05.html", (err, arquivo) => {
    //lê o arquivo e anexa em 'arquivo'
    res.writeHead(200, { "Content-Type": "text/html" })
    res.write(arquivo)
    return res.end()
  })
})

server.listen(porta || 3000, () => {
  console.log("Servidor Rodando")
})
