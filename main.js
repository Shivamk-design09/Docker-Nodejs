const express = require('express')
const app = express()
const port = process.env.PORT || 5000


app.get("/",(req,res)=>{
    return res.json({
        message:"hey i am node js in container"
    })
})

app.listen(port,()=>{
    console.log("server is lietening " , port)
})