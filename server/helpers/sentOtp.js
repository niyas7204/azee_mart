const nodemailer=require("nodemailer");
require('dotenv').config();
const { promises } = require("nodemailer/lib/xoauth2");

function sentOtp(email,otp){
    return new promises((resolve,reject)=>{
let transport=nodemailer.createTransport({
    host:"smtp.gmail.com",
    port:465,
    secure:true,
    auth:{
        user:process.env.EMAIL,
        pass:process.env.PASSWORD
    }
});
var mailOPtion={
    from:process.env.EMAIL,
    to:email,
    subject:"zee mart verification",
    html: `
    <h1>Verify Your Email For DocOnline</h1>
      <h3>use this code in DocOnline to verify your email</h3>
      <h2>${otp}</h2>
    `,
}
transport.sendMail(mailOPtion,(error,info)=>{
if(error){
    reject(error)
}else{
    resolve({success:true,message:"email sent successfully"})
}
})
    })
}