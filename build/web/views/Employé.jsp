<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title> Hsolution Employe</title>

       <link rel="stylesheet" href="../css/typicons.css">
        <link rel="stylesheet" href="../css/vendorbundle.css">
        <link rel="stylesheet" href="../css/style.css">
<style>
body {
  background-image: url("back.png");
  background-repeat: no-repeat;

}
</style>
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

          </ul>
            
        
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

              </div>
            </li>
                          <%
                    HttpSession ses=request.getSession();
                    String nom=(String)ses.getAttribute("nom");
                    String prenom=(String)ses.getAttribute("prenom");
                %>
            <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle  pl-0 pr-0" href="#" data-toggle="dropdown" id="profileDropdown">
                <i class="fas fa-user-alt"></i>
                <span class="nav-profile-name"><%=nom+" "+prenom%></span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
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

      <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item">
              <div class="d-flex sidebar-profile">
                <div class="sidebar-profile-image">
                  
                  <span class="sidebar-status-indicator"></span>
                </div>
                <div class="sidebar-profile-name">
                  <p class="sidebar-name">
                     <%=nom+" "+prenom%>
                  </p>
                  <p class="sidebar-designation">
                    Bienvenu
                  </p>
                </div>
              </div>

               <h2 class="sidebar-menu-title">Menu</h2>
          </li>
          
          
          
          
          
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                   <span class="menu-title">Les demandes</span>
                            <i class="fas fa-caret-down"  ></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="ajoutdemande.jsp">Creer une demande</a></li>
                <li class="nav-item"> <a class="nav-link" href="demandes_employe.jsp">Afficher tous mes demandes</a></li>
              </ul>
            </div>
          </li>

      </nav>
                  <div class="spacer input-group" ">          
                                         <div class="card-body"  >
                               <h2>Simple Customer Support System</h2>
                               <p>Find your own question right now</p>
                               <div class="row">
                               <div class="col-md-8 col-md-offset-2">
                              <form action="https://www.tatwerat.com/demo/ah-tickets/main/search&amp;query=" data-ajax="https://www.tatwerat.com/demo/ah-tickets/ah_ajax/ajax_search" method="post" class="ng-pristine ng-valid">
                              <div class="input-group input-group-lg">
                              <input type="text" list="question-list" class="form-control input-lg" id="question" name="question" placeholder="What do you looking for ?" required="" autocomplete="off">
                              <datalist id="question-list"></datalist>
                              <span class="input-group-btn">
                              <button type="submit" class="btn">Search</button>
                              </span>
                              </div>
                              </form>
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
</body>

</html>
