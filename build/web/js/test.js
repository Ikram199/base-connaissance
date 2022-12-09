/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */

      const loginText = document.querySelector(".title-text .login");
      const loginForm = document.querySelector("form.login");
      const loginBtn = document.querySelector("label.login");
      const signupBtn = document.querySelector("label.signup");
      const signupLink = document.querySelector("form .signup-link a");
      signupBtn.onclick = (() => {
         loginForm.style.marginLeft = "-50%";
         loginText.style.marginLeft = "-50%";
      });
      loginBtn.onclick = (() => {
         loginForm.style.marginLeft = "0%";
         loginText.style.marginLeft = "0%";
      });
      signupLink.onclick = (() => {
         signupBtn.click();
         return false;
      });

      function validateLogin() {
         var error = "";
         var email = document.getElementById("email");
         var regx = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
         var messageE = document.getElementById("errorEmail");
         if (email.value == "" || !regx.test(email.value)) {
            messageE.style.color = "red";
            messageE.style.display = "block";
            messageE.style.fontSize = "13px";
            error = " You Have To Write Valid Email Address";
            messageE.innerHTML = error;
            return false;
         }

         var password = document.getElementById("password");
         var regpassword = /^[A-Za-z0-9]{8,}$/;
         var messageP = document.getElementById("errorPassword");
         if (password.value == "" || !regpassword.test(password.value)) {
            messageP.style.color = "red";
            messageP.style.display = "block";
            messageP.style.fontSize = "13px";
            error = " Password Must Be More Than Or Equal To 8 Digits";
            messageP.innerHTML = error;
            return false;
         } else {
            return true;
         }
      }
      var email = document.getElementById("email");
      var password = document.getElementById("password");
      var messageEm = document.getElementById("errorEmail");
      var messagePa = document.getElementById("errorPassword");
      email.onfocus = () => {
         messageEm.style.display = "none";
      }
      password.onfocus = () => {
         messagePa.style.display = "none";
      }

      function validateSignup() {

         var nom = document.getElementById("nom");
         var regx = /^([a-zA-Z0-9]){3,20}$/;
         var messageName = document.getElementById("errorfullname");
         if (nom.value == "" || !regx.test(nom.value)) {
            messageName.style.color = "red";
            messageName.style.display = "block";
            messageName.style.fontSize = "13px";
            error = " you have to write a correct name ";
            messageName.innerHTML = error;
            return false;
         }

         var email = document.getElementById("email");
         var regx = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
         var messageE = document.getElementById("erroremail");
         if (email.value == "" || !regx.test(email.value)) {
            messageE.style.color = "red";
            messageE.style.display = "block";
            messageE.style.fontSize = "13px";
            error = " You Have To Write Valid Email Address ";
            messageE.innerHTML = error;
            return false;
         }
         var password = document.getElementById("password");
         var regxa = /^[A-Za-z0-9]{8,}$/;
         var messageP = document.getElementById("errorpassword");
         if (password.value == "" || !regxa.test(password.value)) {
            messageP.style.color = "red";
            messageP.style.display = "block";
            messageP.style.fontSize = "13px";
            error = " Password Must Be More Than Or Equal To 8 Digits ";
            messageP.innerHTML = error;
            return false;
         }

         var password2 = document.getElementById("password2");
         var regxp = /^[A-Za-z0-9]{8,}$/;
         var messageCP = document.getElementById("errorpassword2");
         if (password2.value == "" || !regxp.test(password2.value)) {
            messageCP.style.color = "red";
            messageCP.style.display = "block";
            messageCP.style.fontSize = "13px";
            error = " Password Must Be More Than Or Equal To 8 Digits ";
            messageCP.innerHTML = error;
            return false;
         } else {
            return true;
         }
      }
      var fullnames = document.getElementById("name");
      var emails = document.getElementById("email");
      var passwords = document.getElementById("password");
      var confirmepasswords = document.getElementById("Password2");
      var messagename = document.getElementById("errorfullname");
      var messageE = document.getElementById("erroremail");
      var messageP = document.getElementById("errorpassword");
      var messageCP = document.getElementById("errorpassword2");
      fullnames.onfocus = () => {
         messagename.style.display = "none";
      }
      emails.onfocus = () => {
         messageE.style.display = "none";
      }
      passwords.onfocus = () => {
         messageP.style.display = "none";
      }
      confirmepasswords.onfocus = () => {
         messageCP.style.display = "none";
      };


