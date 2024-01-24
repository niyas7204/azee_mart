const mongoose=require("mongoose");

const userSchema=mongoose.Schema({
 name:   {
    require:true,
    type:String,
    trim:true,
 },
 email:{
    require:true,
    type:String,
    trim:true,
  
 },
 password:   {
   
    type:String,
    default:'',
    trim:true,
 },

});
const user=mongoose.model('user',userSchema);
module.exports=user;