<%-- 
    Document   : register
    Created on : 17 nov. 2022, 09:23:49
    Author     : ayoub
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>CelestialUI Admin</title>
        <!-- base:css -->
        <link rel="stylesheet" href="../css/typicons.css">
        <link rel="stylesheet" href="../css/vendorbundle.css">
        <link rel="stylesheet" href="../css/style.css">
<script>
 
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
  
        
  
        function validateSignup() {
  
           var nom = document.getElementById("nom");
           var regx = /^([a-zA-Z]){3,20}$/;
           var messageName = document.getElementById("errorfullname");
           if (nom.value == "" || !regx.test(nom.value)) {
              messageName.style.color = "red";
              messageName.style.display = "block";
              messageName.style.fontSize = "13px";
              error = " you have to write a correct name ";
              messageName.innerHTML = error;
              return false;
           }
           var prenom = document.getElementById("prenom");
           var regx = /^([a-zA-Z]){3,20}$/;
           var messageprenom = document.getElementById("errorprenom");
           if (prenom.value == "" || !regx.test(prenom.value)) {
            messageprenom.style.color = "red";
            messageprenom.style.display = "block";
            messageprenom.style.fontSize = "13px";
              error = " you have to write a correct name ";
              messageprenom.innerHTML = error;
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
           var regxa = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*?]{6,}$/;
           var messageP = document.getElementById("errorpassword");
           if (password.value == "" || !regxa.test(password.value)) {
              messageP.style.color = "red";
              messageP.style.display = "block";
              messageP.style.fontSize = "13px";
              error = "Veuillez entrer un mot de passe avec des lettres des chiffres et des caracteres speciaux ";
              messageP.innerHTML = error;
              return false;
           }
  
           var password2 = document.getElementById("password2");
           var regxp = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*?]{6,}$/;
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
        var prenoms = document.getElementById("prenom");
        var emails = document.getElementById("email");
        var passwords = document.getElementById("password");
        var confirmepasswords = document.getElementById("Password2");
        var messagename = document.getElementById("errorfullname");
        var messageprenom = document.getElementById("errorprenom");
        var messageE = document.getElementById("erroremail");
        var messageP = document.getElementById("errorpassword");
        var messageCP = document.getElementById("errorpassword2");
        fullnames.onfocus = () => {
           messagename.style.display = "none";
        }
        prenoms.onfocus = () => {
           messageprenom.style.display = "none";
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
  
  
  
              
          </script>   
</head>
<body>
    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper full-page-wrapper">
          <div class="content-wrapper d-flex align-items-center auth px-0">
            <div class="row w-100 mx-0">
              <div class="col-lg-4 mx-auto">
                <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                  <div class="brand-logo">
                    <img src="../../images/logo.svg" alt="logo">
                  </div>
                    <form class="signup" action="../Register" method="POST" onsubmit = "return(validateSignup());" >
                      <div class="form-group">
                      <input type="text" class="form-control form-control-lg" id="nom" placeholder="Nom" name="nom">
                      <div style="display: none;" class="message" id="errorfullname"></div>
                      </div>
                    <div >
                    <div class="form-group">
                      <div class="form-group">
                        <input type="text" class="form-control form-control-lg" id="prenom" placeholder="Prenom" name="prenom">
                        <div style="display: none;" class="message" id="errorprenom"></div>
                      </div>
                      <div class="form-group">
                      <input type="email" class="form-control form-control-lg" id="email" placeholder="Email" name="email">
                      <div style="display: none;" class="message" id="erroremail"></div>
                      
                    </div>
                    <div class="form-group">
                      <select class="form-control form-control-lg" id="exampleFormControlSelect2" name="typeProfile">
                        <option>Employe</option>
                        <option>Ingénieur</option>
                        <option>Technicien</option>
                        <option>Directeur</option>
                        <option>Chef departement</option>
                        <option>Agent developement</option>
                        <option>Chef de branche</option> 
                      </select>
                    </div>
                    <div class="form-group">
                      <input type="password"  id="password" placeholder="Mot de passe " name="password">
                      <div style="display: none;" class="message" id="errorpassword"></div>
                    </div>
           
                    <div class="mb-4">
                      <div class="form-check">
                        <label class="form-check-label text-muted">
                          <input type="checkbox" class="form-check-input">
                          I agree to all Terms & Conditions
                        </label>
                      </div>
                    </div>
                    <div class="mt-3">
                      <!--<a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" href="">SIGN UP</a>-->
                      <button  type="submit" value="Signup" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">SIGN UP</button>
                    </div>
                    <div class="text-center mt-4 font-weight-light">
                      Already have an account? <a href="login.jsp" class="text-primary">Login</a>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
   
    
  <script src="../js/vendor.bundle.base.js"></script>
  <script src="../js/off-canvas.js"></script>
  <script src="../js/hoverable-collapse.js"></script>
  <script src="../js/template.js"></script>
  <script src="../js/settings.js"></script>
  <script src="../js/todolist.js"></script>
  <script src="../js/test.js"></script>
    </body>
</html>