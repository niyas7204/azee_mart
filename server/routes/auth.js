const express=require("express");
const User=require("../models/user");
const bcrypjs=require("bcryptjs");
const authRouter=express.Router();
// user signup
authRouter.post("/user/auth/signup",async (req,res)=>{
   try {
      const {name,email,password}=req.body;
      const userExist=await User.findOne({email});
      if(userExist){
         return res.status(400).json({message:"email already exist"});
      }
    const hashPassword=await  bcrypjs.hash(password,8);
      let user= new  User({
      name,
      email,
     password: hashPassword,
      
         });
      user=await user.save();
      res.json({user:user})  
   } catch (error) {
      res.status(500).json({error:error.message});
   }
  
});


module.exports=authRouter;