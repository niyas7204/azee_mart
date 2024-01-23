const express=require("express");
const User=require("../models/user");

const authRouter=express.Router();

authRouter.post("/user/auth/signup",async(req,res)=>{
    const{name,email,password}=  req.body
const userExist=await  user.findone({email});
if(userExist){
   return res.status(400).json({message:"email already exist"});
}
let user= new  User({
email,
name,
password,

   });
user=await user.save();
res.json({user:user})
});


module.exports=authRouter;