<%-- 
    Document   : ajoutdemande
    Created on : 17 nov. 2022, 09:41:10
    Author     : IKRAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Ajouter une demande</title>

        <link rel="stylesheet" href="../css/typicons.css">
        <link rel="stylesheet" href="../css/vendorbundle.css">
        <link rel="stylesheet" href="../css/style.css">
        <link rel="shortcut icon" href="icone.png" />
<script language="JavaScript">
        function validateDemande() {

  
           var nom = document.getElementById("nom");
           var regx = /^([a-zA-Z]){3,20}$/;
           var messageName = document.getElementById("errorfullname");
           if (nom.value == "" || !regx.test(nom.value)) {
              messageName.style.color = "red";
              messageName.style.display = "block";
              messageName.style.fontSize = "13px";
              error = "entrez un nom valide ";
              messageName.innerHTML = error;
              return false;
             
           }else{ messageName.style.display= "none";}
           
           var prenom = document.getElementById("prenom");
           var regx = /^([a-zA-Z]){3,20}$/;
           var messageprenom = document.getElementById("errorprenom");
           if (prenom.value == "" || !regx.test(prenom.value)) {
            messageprenom.style.color = "red";
            messageprenom.style.display = "block";
            messageprenom.style.fontSize = "13px";
              error = " entrez un prenom valide ";
              messageprenom.innerHTML = error;
              return false;
           }else{ messageprenom.style.display= "none";}
           
  
           var email = document.getElementById("email");
           var regx = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
           var messageE = document.getElementById("erroremail");
           if (email.value == "" || !regx.test(email.value)) {
              messageE.style.color = "red";
              messageE.style.display = "block";
              messageE.style.fontSize = "13px";
              error = " entrez une adress email valide ";
              messageE.innerHTML = error;
              return false;
           }else{ messageE.style.display= "none";}
           
           var telephone = document.getElementById("tel");
           var regx = /^(?:(?:(?:\+|00)212[\s]?(?:[\s]?\(0\)[\s]?)?)|0){1}(?:5[\s.-]?[2-3]|6[\s.-]?[13-9]){1}[0-9]{1}(?:[\s.-]?\d{2}){3}$/;
           var messagetel = document.getElementById("errortel");
           if (telephone.value === "" || !regx.test(telephone.value)) {
              messagetel.style.color = "red";
              messagetel.style.display = "block";
              messagetel.style.fontSize = "13px";
              error = "entrez un numéro de telephone valide";
              messagetel.innerHTML = error;
              return false;
           }else{ messagetel.style.display= "none";}
           
           var autre = document.getElementById("com_date");
           var messageautre = document.getElementById("errorcom");
          
           if (autre.value==="") {
//              messageautre.style.color = "red";
//              messageautre.style.display = "block";
//              messageautre.style.fontSize = "13px";
//              error = "  tapez votre problème  ";
//              messageautre.innerHTML = error;
            alert("tapez votre problem");
              return null ;
             
           }
        
    

               

           var des = document.getElementById("description");
           var messagedes = document.getElementById("errordes");
           if (des.value == "") {
              messagedes.style.color = "red";
              messagedes.style.display = "block";
              messagedes.style.fontSize = "13px";
              error = "décrivez votre problème";
              messagedes.innerHTML = error;
              return false;
           }else{ messagedes.style.display= "none";}

        
          
            var span =document.getElementById("result");
            var a =document.conformite.typeProb.value;
            if (a ==""){
//    alert("selectionez un type de problem");
            document.getElementById("result").innerHTML=" selectionnez le type de problem";
            document.getElementById("result").style.color="red";
            return false;}
            else{ document.getElementById("result").style.display='none';}
            
            

    }
        var fullnames = document.getElementById("name");
        var autres = document.getElementById("com_date");
        var prenoms = document.getElementById("prenom");
        var emails = document.getElementById("email");
        var tels = document.getElementById("tel");
        var desc = document.getElementById("description");
        var messagedes = document.getElementById("errordes");
        var messageautre = document.getElementById("errorcom");
        var messagename = document.getElementById("errorfullname");
        var messageprenom = document.getElementById("errorprenom");
        var messageE = document.getElementById("erroremail");
        var messagetel = document.getElementById("errortel");

        fullnames.onfocus = () => {
           messagename.style.display = "none";
        }
          autres.onfocus = () => {
           messageautre.style.display = "none";
        }
       desc.onfocus = () => {
           messagedes.style.display = "none";
        }
        prenoms.onfocus = () => {
           messageprenom.style.display = "none";
        }
        emails.onfocus = () => {
           messageE.style.display = "none";
        }
        tels.onfocus = () => {
           messagetel.style.display = "none";
        };
  
  
  
              
          
function affichetext(valeur) {
if (valeur == "autre")
document.getElementById('com_date').style.visibility = 'visible';
else
document.getElementById('com_date').style.visibility = 'hidden';
}
function Lien() {
   // si la valeur du champ motif est non vide
  if(document.conf.motif.value != "") {
    // les données sont ok, on peut envoyer le formulaire    
    return true;
  }
  else {
    // sinon on affiche un message
    alert("Saisissez un motif de retour");
    // et on indique de ne pas envoyer le formulaire
    return false;
  }

}


</script>
</head>

<body>
  <div class="container-scroller">

    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
          <button class="navbar-toggler navbar-toggler align-self-center d-none d-lg-flex" type="button" data-toggle="minimize">
            <span class="typcn typcn-th-menu"></span>
          </button>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <ul class="navbar-nav mr-lg-2">
            <li class="nav-item  d-none d-lg-flex">
              <a style="color:grey; font-weight:lighter;" class="nav-link" href="ajoutdemande.jsp"> Problème hardware   </a>
           
            </li>
                     <li class="nav-item  d-none d-lg-flex">
              <a style="color:grey; font-weight:lighter;" class="nav-link" href="software.jsp">
                Problème software
              </a>
            </li>
            </ul>
            </ul>

      
          <ul class="navbar-nav navbar-nav-right">

            <li class="nav-item dropdown d-flex">
              <a class="nav-link count-indicator dropdown-toggle d-flex justify-content-center align-items-center" id="messageDropdown" href="#" data-toggle="dropdown">
                <i class="typcn typcn-message-typing"></i>
                <span class="count bg-success">2</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
                <p class="mb-0 font-weight-normal float-left dropdown-header">Messages</p>

            </li>
            <li class="nav-item dropdown  d-flex">
              <a class="nav-link count-indicator dropdown-toggle d-flex align-items-center justify-content-center" id="notificationDropdown" href="#" data-toggle="dropdown">
                <i class="typcn typcn-bell mr-0"></i>
                <span class="count bg-danger">2</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                <p class="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-success">
                      <i class="typcn typcn-info-large mx-0"></i>
                    </div>
                  </div>
             
                </a>
             
          

            </li>
            <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle  pl-0 pr-0" href="#" data-toggle="dropdown" id="profileDropdown">
                <i class="typcn typcn-user-outline mr-0"></i>
                <span class="nav-profile-name">Mohamed</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">

                <a class="dropdown-item">
                <i class="typcn typcn-power text-primary"></i>
                Logout
                </a>
              </div>
            </li>
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="typcn typcn-th-menu"></span>
          </button>
        </div>
      </nav>
 
    <div class="container-fluid page-body-wrapper">

      <div class="theme-setting-wrapper">
          <div id="settings-trigger"><i class="typcn typcn-cog-outline"></i></div>
          <div id="theme-settings" class="settings-panel">
            <i class="settings-close typcn typcn-delete-outline"></i>
            <p class="settings-heading">SIDEBAR SKINS</p>
            <div class="sidebar-bg-options" id="sidebar-light-theme">
              <div class="img-ss rounded-circle bg-light border mr-3"></div>
              Light
            </div>
            <div class="sidebar-bg-options selected" id="sidebar-dark-theme">
              <div class="img-ss rounded-circle bg-dark border mr-3"></div>
              Dark
            </div>
            <p class="settings-heading mt-2">HEADER SKINS</p>
            <div class="color-tiles mx-0 px-4">
              <div class="tiles success"></div>
              <div class="tiles warning"></div>
              <div class="tiles danger"></div>
              <div class="tiles primary"></div>
              <div class="tiles info"></div>
              <div class="tiles dark"></div>
              <div class="tiles default border"></div>
            </div>
          </div>
        </div>

        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item">
              <div class="d-flex sidebar-profile">
                <div class="sidebar-profile-image">
                  <img src="../../images/faces/face29.png" alt="image">
                  <span class="sidebar-status-indicator"></span>
                </div>
                <div class="sidebar-profile-name">
                  <p class="sidebar-name">
                    Mohamed
                  </p>
                  <p class="sidebar-designation">
                    Bienvenu
                  </p>
                </div>
              </div>
                 <p class="sidebar-menu-title">Menu</p>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <i class="typcn typcn-briefcase menu-icon"></i>
              <span class="menu-title">les demandes</span>
              <i class="typcn typcn-chevron-right menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="ajoutdemande.jsp">Creer une demande</a></li>
                <li class="nav-item"> <a class="nav-link" href="demandes_employé.jsp">Afficher tous mes demandes</a></li>
              </ul>
            </div>
          </li>

      </nav>  
      <div class="main-panel"><div>
        <div class="col-lg-10 stretch-card">
          <div class="card">
            <div class="card-body">

                  <h4 class="card-title">Créez votre demande : </h4>
                
                  <form action="../dem" method="GET" name="conformite"onsubmit = "return(validateDemande());">
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
                    <div class="form-group">
                      <label for="exampleInputPassword4">Téléphone</label>
                      <input type="phone" class="form-control" id="tel" placeholder="Téléphone"name="tel">
                    <div style="display: none;" class="message" id="errortel"></div>
                    <div class="form-group">
                                            <span id="result"> </span>
                                            <br>
                      <label for="SelectProblem">Type du problème</label>
                      <select class="form-control"  id=" typeProb " name="typeProb" OnChange="affichetext(this.value);Lien()">
                          <option  value="" id="selectt">--Selectionnez--</option>
                          <option value="imp">Imprimante</option>
                          <option value="unit">Unité centrale</option>
                          <option value="ecran">Ecran</option>
                          <option value="souris">Souris</option>
                          <option value="clavier">Clavier</option>
                          <option value="tel">Telephone fix</option>
                          <option value="autre" > Autre</option>
                       </select><br>
                       
                       <textarea id="com_date" name="com_date" rows="3" cols="45" style="visibility:hidden"></textarea><br />
                      <div style="display: none;" class="message" id="errorcom"></div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Description du probléme :</label>
                      <textarea class="form-control" id="description" rows="4" name="description" placeholder="Decrivez votre problem.."></textarea>
                    <div style="display: none;" class="message" id="errordes"></div>

                    <br>
                    <button name="ajouter" id="ajouter" type="submit" class="btn btn-primary mr-2" >Ajouter</button>
                    <button class="btn btn-light">Cancel</button>
                  </form>
                </div>
              </div>
            </div>
  <script src="../js/vendor.bundle.base.js"></script>
  <script src="../js/off-canvas.js"></script>
  <script src="../js/hoverable-collapse.js"></script>
  <script src="../js/template.js"></script>
  <script src="../js/settings.js"></script>
  <script src="../js/todolist.js"></script>

 
</body>

</html>