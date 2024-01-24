const express=require ("express");
const mongoose=require("mongoose");
const authRouter=require("./routes/auth");

const app=express();


const port=3000;
const DB="mongodb+srv://9747niyas:niyas9747@cluster0.aasyvnb.mongodb.net/?retryWrites=true&w=majority"
app.use(express.json());
app.use(authRouter);
mongoose.connect(DB).then(()=>{
console.log("connected");
}).catch((e)=>{
    console.log(`error ${e}`);
});



app.get("/user",(req,res)=>{
res.json({
    name:"nnnnn"
})
});


 app.listen(port,()=>{
console.log(`connect at port ${port}`)
});