import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginScreen1 extends StatelessWidget {
  var emailController =TextEditingController();
  var passwordController =TextEditingController();
  var formKey =GlobalKey<FormState>();
  bool isPassword=true;
   Function? SuffixPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/images/Logo.png"),
                  width: 200,
                  height: 200,
                ),
                Text("النادي..دلوقتي قربلك",
                  style: TextStyle(
                    fontSize: 20,
                  ),),
                SizedBox(
                  height: 40,
                ),
                Text("تسجيل الدخول",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight:FontWeight.bold
                  ),),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text("رقم العضوية",
                          style: TextStyle(
                            fontSize:20,
                            fontWeight:FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TextFormField(

                      controller:emailController ,
                      keyboardType:TextInputType.number,
                      onFieldSubmitted: (String value){
                        print(value);
                      },
                      onChanged: (String value){
                        print(value);
                      },
                      decoration:InputDecoration(
                          border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                      ),
                      validator:(value) {
                        if(value!.isEmpty){
                          return "email address must not be empty ";
                        }
                        return null;

                      },
                    ),
                    SizedBox(
                      height:15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text("كلمة المرور",
                          style: TextStyle(
                            fontSize:20,
                            fontWeight:FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller:passwordController ,
                      keyboardType:TextInputType.visiblePassword,
                      obscureText:true ,
                      onFieldSubmitted: (String value){
                        print(value);
                      },
                      onChanged: (String value){
                        print(value);
                      },
                      decoration:InputDecoration(
                        labelText:"الرجاء ادخال كلمة المرور",

                        suffixIcon: Icon(
                            Icons.remove_red_eye_outlined
                        ),
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )
                      ),
                      validator:(value) {
                        if(value!.isEmpty){
                          return "password must not be empty ";
                        }
                        return null;
                      },
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: (){},
                            child: Text("اعادة تعيين كلمة السر")),
                        Text(
                          "هل نسيت كلمة السر؟",),


                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                Container(
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color(0xFF193F47),
                    borderRadius: BorderRadius.circular(10.2,),
                  ),
                  child: MaterialButton(onPressed: (){
                    if(formKey.currentState!.validate())
                    {
                      print(passwordController.text);
                      print(emailController.text);
                    }
                  },
                    child: Text("تسجيل الدخول",
                      style: TextStyle(
                          color: Colors.white,
                        fontSize: 30
                      ),),),
                ),

                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: (){},
                        child: Text("انشاء حساب جديد")),
                    Text(
                      "ليس لديك حساب جديد؟",),


                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}