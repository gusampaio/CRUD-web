<%@page import="les.dominio.Endereco"%>
<%@page import="java.util.List"%>
<%@page import="les.dominio.Funcionario"%>
<!DOCTYPE html>
<html lang="en" class="">
<head>
    <meta charset="utf-8" />
    <title>Html version | Angulr</title>
    <meta name="description" content="app, web app, responsive, responsive layout, admin, admin panel, admin dashboard, flat, flat ui, ui kit, AngularJS, ui route, charts, widgets, components" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <script src="libs/jquery/jquery/dist/jquery.js"></script>
    <script src="libs/jquery/bootstrap/dist/js/bootstrap.js"></script>
    <script src="libs/jquery/chosen/chosen.jquery.min.js"></script>
    <script src="js/ui-load.js"></script>
    <script src="js/ui-jp.config.js"></script>
    <script src="js/ui-jp.js"></script>
    <script src="js/ui-nav.js"></script>
    <script src="js/ui-toggle.js"></script>
    <script src="js/ui-client.js"></script>
    <script src="js/get-id.js"></script>
    <link rel="stylesheet" href="libs/assets/animate.css/animate.css" type="text/css" />
    <link rel="stylesheet" href="libs/assets/font-awesome/css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="libs/assets/simple-line-icons/css/simple-line-icons.css" type="text/css" />
    <link rel="stylesheet" href="libs/jquery/bootstrap/dist/css/bootstrap.css" type="text/css" />


    <link rel="stylesheet" href="css/font.css" type="text/css" />
    <link rel="stylesheet" href="css/app.css" type="text/css" />
  
  head>
<body>
<div class="app app-header-fixed ">
  

    <!-- header -->
  <header id="header" class="app-header navbar" role="menu">
      <!-- navbar header -->
      <div class="navbar-header bg-dark">
        <button class="pull-right visible-xs dk" ui-toggle-class="show" target=".navbar-collapse">
          <i class="glyphicon glyphicon-cog"></i>
        </button>
        <button class="pull-right visible-xs" ui-toggle-class="off-screen" target=".app-aside" ui-scroll="app">
          <i class="glyphicon glyphicon-align-justify"></i>
        </button>
        <!-- brand -->
        <a href="#/" class="navbar-brand text-lt">
          <i class="fa fa-btc"></i>
          <img src="img/logo.png" alt="." class="hide">
          <span class="hidden-folded m-l-xs">Angulr</span>
        </a>
        <!-- / brand -->
      </div>
      <!-- / navbar header -->

      <!-- navbar collapse -->
      <div class="collapse pos-rlt navbar-collapse box-shadow bg-white-only">
        <!-- buttons -->
        <div class="nav navbar-nav hidden-xs">
          <a href="#" class="btn no-shadow navbar-btn" ui-toggle-class="app-aside-folded" target=".app">
            <i class="fa fa-dedent fa-fw text"></i>
            <i class="fa fa-indent fa-fw text-active"></i>
          </a>
          
        </div>
        <!-- / buttons -->


  </header>
  <!-- / header -->


    <!-- aside -->
  <aside id="aside" class="app-aside hidden-xs bg-dark">
      <div class="aside-wrap">
        <div class="navi-wrap">
          <!-- user -->
          <div class="clearfix hidden-xs text-center hide" id="aside-user">
            <div class="dropdown wrapper">
              <a href="app.page.profile">
                <span class="thumb-lg w-auto-folded avatar m-t-sm">
                  <img src="img/a0.jpg" class="img-full" alt="...">
                </span>
              </a>
              <a href="#" data-toggle="dropdown" class="dropdown-toggle hidden-folded">
                <span class="clear">
                  <span class="block m-t-sm">
                    <strong class="font-bold text-lt">John.Smith</strong> 
                    <b class="caret"></b>
                  </span>
                  <span class="text-muted text-xs block">Art Director</span>
                </span>
              </a>
              <!-- dropdown -->
              <ul class="dropdown-menu animated fadeInRight w hidden-folded">
                <li class="wrapper b-b m-b-sm bg-info m-t-n-xs">
                  <span class="arrow top hidden-folded arrow-info"></span>
                  <div>
                    <p>300mb of 500mb used</p>
                  </div>
                  <div class="progress progress-xs m-b-none dker">
                    <div class="progress-bar bg-white" data-toggle="tooltip" data-original-title="50%" style="width: 50%"></div>
                  </div>
                </li>
                <li>
                  <a href>Settings</a>
                </li>
                <li>
                  <a href="page_profile.html">Profile</a>
                </li>
                <li>
                  <a href>
                    <span class="badge bg-danger pull-right">3</span>
                    Notifications
                  </a>
                </li>
                <li class="divider"></li>
                <li>
                  <a href="page_signin.html">Logout</a>
                </li>
              </ul>
              <!-- / dropdown -->
            </div>
            <div class="line dk hidden-folded"></div>
          </div>
          <!-- / user -->

          <!-- nav -->
          <nav ui-nav class="navi clearfix">
            <ul class="nav">
              <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                <span>Navigation</span>
              </li>
              <li>
                <a href="Funcionario?OPERACAO=CONSULTAR" id="OPERACAO" name="OPERACAO" value="CONSULTAR">
                  <i class="icon-user-follow"></i>
                  <span>Funcionario</span>
                </a>
              </li>

        </div>
      </div>
  </aside>
  <!-- / aside -->


  <!-- content -->
  <div id="content" class="app-content" role="main">
    <div class="app-content-body ">
        <div class="row">
            <div  class="col-sm-1">
            </div>
            <div class="col-sm-10">
                <div class="panel panel-default">
                    <div class="panel-heading font-bold">Funcionario</div>
                    <div class="panel-body">
                        <form role="form">
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-sm-8">
                                        <label>Nome completo</label>
                                        <input  type="text" id="txtNome" name="txtNome" class="form-control" placeholder="Nome completo" value="Gustavo Alvarenga" disabled>
                                    </div>
                                    
                                    <div class="col-sm-4">
                                      <label>Dt. Nasc</label>
                                      <input  type="date" value="1997-02-18" id="txtDtNasc" name="txtDtNasc" class="form-control" disabled>
                                    </div>
                                </div>
                            </div>    
                            <br>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-sm-4">
                                      <label>CPF: </label>
                                      <input type="text" value="43929342876" id="txtCpf" name="txtCpf" maxlength="8" class="form-control" placeholder="99999999" disabled>
                                    </div>
                                    <div class="col-sm-4">
                                        <label control-label">Grupo</label>
                                        <select name="account" class="form-control m-b" disabled>
                                          <option>Adm</option>
                                          <option>Funcionarios Adm</option>
                                          <option>Funcionarios Prod</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-4">
                                        <label control-label">Cargo</label>

                                        <select name="account" class="form-control m-b" disabled>
                                          <option>Diretor</option>
                                          <option>Agricultor</option>
                                          <option>Engenheiro Agonomo</option>
                                        </select>
                                    </div>

                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-sm-4">
                                      <label>Senha: </label>
                                      <input type="password" class="form-control" value="123456" disabled>
                                    </div>
                                    <div class="col-sm-4">
                                      <label>Confirmar Senha: </label>
                                      <input type="password" class="form-control" value="123456" disabled>
                                    </div>
                                    <div class="col-sm-4">
                                      <label>Propriedade Relacionada</label><br>
                                      <select ui-jq="chosen" multiple class="w-md" disabled>
                                        <option>Propriedade 1</option>
                                        <option>Propriedade 2</option>
                                        <option>Propriedade 3</option>
                                        <option>Propriedade 4</option>
                                        <option>Propriedade 5</option>
                                        <option>Propriedade 6</option>
                                      </select>
                                    </div>
                               </div>
                            </div>

                            <div class="row">
                                <div class="form-group">
                                    <div class="col-sm-5">
                                      <label>Rua: </label>
                                      <input value="Jos� Guimar�es Pera" type="text" id="txtRua" name="txtRua" class="form-control" disabled>
                                    </div>
                                    <div class="col-sm-3">
                                      <label>Cidade: </label>
                                      <input value="Mogi das Cruzes" type="text" id="txtCidade" name="txtCidade" class="form-control" disabled>
                                    </div>
                                    <div class="col-sm-2">
                                      <label>N�mero: </label>
                                      <input value="86" type="number" id="txtNumero" name="txtNumero" class="form-control" disabled>
                                    </div>
                                    <div class="col-sm-1">
                                      <label>Estado: </label>
                                      <input value="SP" type="text" id="txtRua" name="txtEstado" class="form-control" disabled="disabled">
                                    </div>

                                </div>
                            </div>
                            <br>
                            <button type="submit" class="btn btn-sm btn-primary" onclick="disableBtn();">Editar</button>
                            <button type="submit" class="btn btn-sm btn-primary">Salvar</button>
                        </form>                       
                    </div>
                </div>
            </div>
            <div  class="col-sm-1">
            </div>
        </div>
    </div>
  </div>
  <!-- /content -->
  
  <!-- footer -->
  <footer id="footer" class="app-footer" role="footer">
    <div class="wrapper b-t bg-light">
      <span class="pull-right">2.2.0 <a href ui-scroll="app" class="m-l-sm text-muted"><i class="fa fa-long-arrow-up"></i></a></span>
      &copy; 2016 Copyright.
    </div>
  </footer>
  <!-- / footer -->



</div>
    <script>
        function disableBtn(){
            $("input").prop('disabled', false);
        }
    </script>
</body>
</html>