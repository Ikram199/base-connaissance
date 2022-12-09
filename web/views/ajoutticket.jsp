<%-- 
    Document   : ajoutticket
    Created on : 17 nov. 2022, 09:42:18
    Author     : IKRAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Les tickets</title>
       <link rel="stylesheet" href="../css/typicons.css">
        <link rel="stylesheet" href="../css/vendorbundle.css">
        <!-- endinject -->
        <!-- plugin css for this page -->
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="../css/style.css">
  <link rel="shortcut icon" href="icone.png" />
 <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>

<body>
  <div class="container-scroller">
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
          <a class="navbar-brand brand-logo" href=""><img src="solution.png"  alt="logo"/></a>
          <a class="navbar-brand brand-logo-mini" href=".html"><img src="../../images/logo-mini.svg" alt="logo"/></a>
          <button class="navbar-toggler navbar-toggler align-self-center d-none d-lg-flex" type="button" data-toggle="minimize">
            <span class="fa fa-bars"></span>
          </button>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
          <ul class="navbar-nav mr-lg-2">
            
          
            <li class="nav-item dropdown  d-flex">
              <a class="nav-link count-indicator dropdown-toggle d-flex align-items-center justify-content-center" id="notificationDropdown" href="#" data-toggle="dropdown">
          
              </a> 
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
              
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-success">
                      <i class="typcn typcn-info-large mx-0"></i>
                    </div>
                  </div>

                </a>
<!--                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-warning">
                      <i class="typcn typcn-cog mx-0"></i>
                    </div>
                  </div>

                </a>-->
<!--<a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-info">
                      <i class="typcn typcn-user-outline mx-0"></i>
                    </div>
                  </div>
                  <div class="preview-item-content">
                    <h6 class="preview-subject font-weight-normal">New user registration</h6>
                    <p class="font-weight-light small-text mb-0">
                      2 days ago
                    </p>
                  </div>
                </a>-->
              </div>
            </li>
            <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle  pl-0 pr-0" href="#" data-toggle="dropdown" id="profileDropdown">
                <i class="fas fa-user-alt"></i>
                <span class="nav-profile-name">Evan Morales</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
<!--                <a class="dropdown-item">
                <i class="typcn typcn-cog text-primary"></i>
                Settings
                </a>-->
                <a class="dropdown-item">
                <i class="fas fa-power-off"></i>
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
    <!-- partial -->
<!--    <div class="container-fluid page-body-wrapper">
       partial:../../partials/_settings-panel.html 
      <div class="theme-setting-wrapper">
          <div id="settings-trigger"><i class=" fa fa-gear fa-spin"></i></div>
          <div id="theme-settings" class="settings-panel">
            <i class="fa fa-remove"></i>
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
      -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item">
              <div class="d-flex sidebar-profile">
                <div class="sidebar-profile-image">
                  
                  <span class="sidebar-status-indicator"></span>
                </div>
                <div class="sidebar-profile-name">
                  <p class="sidebar-name">
                    Hamza chahid
                  </p>
                  <p class="sidebar-designation">
                    Bienvenu
                  </p>
                </div>
              </div>

               <h2 class="sidebar-menu-title">Menu</h2>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#intervenant" aria-expanded="false" aria-controls="intervenant">
                <span class="menu-title" >Les tickets</span><i class="fas fa-caret-down"  ></i>
              
             
             
            </a>
            <div class="collapse" id="intervenant">
               <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="ticket.jsp">Afficher les tickets</a></li>
              </ul>
            
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="ajoutticket.jsp">Creer un ticket</a></li>
            </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#intervenant" aria-expanded="false" aria-controls="intervenant">
              <span class="menu-title">Les demandes</span>
                            <i class="fas fa-caret-down"  ></i>

            </a>
            <div class="collapse" id="intervenant">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="demandes.jsp">Afficher les demandes</a></li>
              </ul> 
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#intervenant" aria-expanded="false" aria-controls="intervenant">
              <span class="menu-title">Historique</span>
                          <i class="fas fa-caret-down"  ></i>

            </a>
            <div class="collapse" id="intervenant">
                <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="historiqueticket.jsp">Historique des tickets</a></li>
              </ul>
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="historique.jsp">Historique des demandes</a></li>
              </ul>
            </div>
          </li>

      </nav>
<!--      <div class="main-panel"><div>
        <div class="col-lg-10 stretch-card">
          <div class="card">
            <div class="card-body">

                  <h4 class="card-title">Creer un ticket</h4>
                
                  <form class="forms-sample" action="Ajoutticket" method="POST">
                    <div class="form-group">
                      <label for="exampleInputName1"> Nom</label>
                      <input type="text" class="form-control" id="exampleInputName1" placeholder="Nom" name="nom" >
                    </div>
                          <div class="form-group">
                      <label for="exampleInputName1"> Prénom</label>
                      <input type="text" class="form-control" id="exampleInputName1" placeholder="Prénom" name="prenom">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Email</label>
                      <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Email" name="email">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Téléphone</label>
                      <input type="phone" class="form-control" id="exampleInputPassword4" placeholder="Téléphone" name="tel">
                    </div>
                    <div class="form-group">
                      <label for="exampleSelectGender">Type du problème</label>
                      <select class="form-control" name="typeProb">
                          <option>Materiel</option>
                          <option>Logiciel</option>
                        </select>
                      </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Description</label>
                      <textarea class="form-control" id="exampleTextarea1" rows="4" name="description"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Ajouter</button>
                    <button class="btn btn-light">Cancel</button>
                  </form>
                </div>
              </div>
            </div>-->
<table class="table table-striped table-hover spacer">
          <thead>
            <tr>
              <th>
                <a ng-click="triParExpediteur()">De</a>
                <span class="horizontalSpacer" ng-class="{ glyphicon: champTri == " from",="" "glyphicon-chevron-up":="" champtri="=" "from"}"=""></span>
              </th>

              <th>
                <a ng-click="triParDestinataire()">À</a>
                <span class="horizontalSpacer" ng-class="{ glyphicon: champTri == " to",="" "glyphicon-chevron-up":="" champtri="=" "to"}"=""></span>
              </th>


              <th>Objet</th>
              <th>Date</th>
            </tr>
          </thead>
          <tbody>
            <!--  -->
            <!-- ngRepeat: email in emailsFiltres = (dossierCourant.emails | filter: recherche) | filter:recherche | orderBy:champTri --><tr ng-repeat="email in emailsFiltres = (dossierCourant.emails | filter: recherche) | filter:recherche | orderBy:champTri" class="clickable ng-scope" ng-click="versEmail(dossierCourant, email)">
              <td class="ng-binding">Fleurette</td>
              <td class="ng-binding">Jean</td>
              <td class="ng-binding">Je reviens</td>
              <td class="ng-binding">22/04/2017 15:30</td>
            </tr><!-- end ngRepeat: email in emailsFiltres = (dossierCourant.emails | filter: recherche) | filter:recherche | orderBy:champTri --><tr ng-repeat="email in emailsFiltres = (dossierCourant.emails | filter: recherche) | filter:recherche | orderBy:champTri" class="clickable ng-scope" ng-click="versEmail(dossierCourant, email)">
              <td class="ng-binding">Valérie</td>
              <td class="ng-binding">Jean</td>
              <td class="ng-binding">Retard</td>
              <td class="ng-binding">23/04/2017 08:24</td>
            </tr><!-- end ngRepeat: email in emailsFiltres = (dossierCourant.emails | filter: recherche) | filter:recherche | orderBy:champTri --><tr ng-repeat="email in emailsFiltres = (dossierCourant.emails | filter: recherche) | filter:recherche | orderBy:champTri" class="clickable ng-scope" ng-click="versEmail(dossierCourant, email)">
              <td class="ng-binding">Feno</td>
              <td class="ng-binding">Jean</td>
              <td class="ng-binding">long bail</td>
              <td class="ng-binding">25/04/2017 17:45</td>
            </tr><!-- end ngRepeat: email in emailsFiltres = (dossierCourant.emails | filter: recherche) | filter:recherche | orderBy:champTri --><tr ng-repeat="email in emailsFiltres = (dossierCourant.emails | filter: recherche) | filter:recherche | orderBy:champTri" class="clickable ng-scope" ng-click="versEmail(dossierCourant, email)">
              <td class="ng-binding">Hery</td>
              <td class="ng-binding">Jean</td>
              <td class="ng-binding">elaela!</td>
              <td class="ng-binding">27/05/2017 06:15</td>
            </tr><!-- end ngRepeat: email in emailsFiltres = (dossierCourant.emails | filter: recherche) | filter:recherche | orderBy:champTri -->

          </tbody>
        </table>
      <div ng-show="emailSelectionne != null" class="spacer">
        <div class="well">
          <h1>{{emailSelectionne.subject}}</h1>
          <p><label>De:</label><span>{{emailSelectionne.from}}</span></p>
          <p><label>&Agrave; :</label><span>{{emailSelectionne.to}}</span></p>
          <p><label>Date:</label><span>{{emailSelectionne.date | date:"dd/MM/yyyy HH:mm"}}</span></p>
          <p ng-bind-html="emailSelectionne.content">{{emailSelectionne.content}}</p>
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

