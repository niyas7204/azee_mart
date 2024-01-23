const express=require ("express");
const mongoose=require("mongoose");
const authRouter=require("./routes/auth")


const port=3000;
const DB="mongodb+srv://9747niyas:niyas9747@cluster0.aasyvnb.mongodb.net/?retryWrites=true&w=majority"

mongoose.connect(DB).then(()=>{
console.log("connected");
}).catch((e)=>{
    console.log(`error ${e}`);
});

const app=express();
app.use(authRouter);



 app.listen(port,()=>{
console.log(`connect at port ${port}`)
});