<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">


<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">

  <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
  <title>DBS Stock Trader</title>
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="plugins/animate%2banimo.css">
  <link rel="stylesheet" href="plugins/csspinner.min.css">
  <link rel="stylesheet" href="css/app.css">
  <script src="js/modernizr.js"></script>
  <script src="js/fastclick.js"></script>

  <link rel="stylesheet" href="css/wallet_history.css">
  <link rel="stylesheet" href="css/wallet_history2.css">
  <link rel="stylesheet" href="css/phpwallet1.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
  <link rel="stylesheet" href="css/payment.css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

  <style>
  .circularIcons {
    width: 45px;
    height: 45px;
    padding: 12px;
    background: #0c6eb5;
    border-radius: 100%;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    color: white;
    font-size: 20px;
    margin: 6px 11px 6px 6px
  }
  </style>

  <script>
    $(document).ready(function() {
      $("#deposit").click(function() {
        $("#add_money").fadeIn(10, function() {
            $("#wallet_history").fadeOut(10, function() {
              $("#add").click(function() {
                $("#add_money4").fadeIn(10,function(){
                  $("#add_money").fadeOut(10, function() {
                     $("#submit1").click(function() {


                        $("#success").fadeIn(10,function(){
                            $("#add_money4").fadeOut(10,function(){
                                setTimeout(function(){location.href="wallet.jsp";}, 3000);
                              });
                            });
                        });
                    });
                  });
                });
            });
          });
        });
      $("#withdraw").click(function() {
         $("#add_moneyw").fadeIn(10, function() {
           $("#wallet_history").fadeOut(10, function() {
               $("#add").click(function() {
                   $("#add_money").fadeOut(10, function() {
                      $("#success1").fadeIn(10,function(){
                          setTimeout(function(){location.href="wallet.jsp";}, 3000);
                   });
                 });
               });
            });
         });
      });
    });
  </script>
  <script>
  function sync() {
     var a = document.getElementById('enter_amount').value;
    document.getElementById('net_amount').value = a - (a * (0.02));
    document.getElementById('myField').value = document.getElementById('net_amount').value;
  }
  function sync1() {
     var b = document.getElementById('enter_amount1').value;
    document.getElementById('net_amount1').value = b - (b * (0.02));
    document.getElementById('myField').value = document.getElementById('net_amount').value;
  }

  function clicked1(){
	  application.setAttribute("type","deposit");
	  document.getElementById('type').value = "deposit";
  }

  function clicked2(){
	  application.setAttribute("type","withdraw");
	  document.getElementById('type').value = "withdraw";
  }

  </script>
</head>

<body>

  <section class="wrapper">
    <nav class="navbar navbar-default navbar-top navbar-fixed-top">
      <div class="navbar-header">
        <a href="index.html" class="navbar-brand">
          <div class="brand-logo"><i> <img src="css/dbslogo.png" height="35px" width="35px" style="border-radius:50%"> </i> <b style="font-weight:700; color:#DD1414">STOCK</b>TRADER.com</div>
          <div class="brand-logo-collapsed"><i><img src="css/dbslogo.png" height="40px" width="40px" style="border-radius:50%; top:25px"></i></div>
        </a>
      </div>
      <div class="nav-wrapper">
        <ul class="nav navbar-nav mt0">
          <li>
            <a href="#" data-toggle="aside">
                     <em class="fa fa-align-left"></em>
                     </a>
          </li>
        </ul>
        <ul class="nav navbar-nav navbar-right mt0">
          <li class="dropdown dropdown-list">
            <a href="" onclick="location.href='wallet.jsp'" data-toggle="dropdown" data-play="fadeIn" class="dropdown-toggle">
                     <strong><i class="fa fa-inr"></i> Wallet</strong>
                     </a>
          </li>
          <li class="dropdown dropdown-list">
            <a href="" data-toggle="dropdown" data-play="fadeIn" class="dropdown-toggle">
                        <em class="fa fa-bell"></em>
                        <div class="label label-danger">3</div>
                     </a>
            <ul class="dropdown-menu col-md-4 col-sm-6 col-xs-12">
              <li>
                <div class="table-responsive">
                  <table class="table table-striped table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>Buy/Sell</th>
                        <th>Progress</th>
                        <th>Date</th>
                        <th>Status</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Buy order SC</td>
                        <td>
                          <div class="progress progress-striped progress-xs">
                            <div role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" class="progress-bar progress-bar-success w-100-p">
                              <span class="sr-only">100% Complete</span>
                            </div>
                          </div>
                        </td>
                        <td>
                          <em class="fa fa-calendar fa-fw text-muted"></em>02/19/2018
                        </td>
                        <td class="text-center">
                          Complete
                        </td>
                      </tr>
                      <tr>
                        <td>Sell order SC</td>
                        <td>
                          <div class="progress progress-striped progress-xs">
                            <div role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" class="progress-bar progress-bar-danger w-50-p">
                              <span class="sr-only">50% Complete</span>
                            </div>
                          </div>
                        </td>
                        <td>
                          <em class="fa fa-calendar fa-fw text-muted"></em>02/18/2018
                        </td>
                        <td class="text-center">
                          50% Filled
                        </td>
                      </tr>
                      <tr>
                        <td>Buy order IOTA</td>
                        <td>
                          <div class="progress progress-striped progress-xs">
                            <div role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" class="progress-bar progress-bar-success w-50-p">
                              <span class="sr-only">50% Complete</span>
                            </div>
                          </div>
                        </td>
                        <td>
                          <em class="fa fa-calendar fa-fw text-muted"></em>02/17/2018
                        </td>
                        <td class="text-center">
                          50% Filled
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </li>
            </ul>
          </li>
          <li class="dropdown">
            <a href="#" data-toggle="dropdown" data-play="fadeIn" class="dropdown-toggle">
                     <em class="fa fa-user"></em>
                     </a>
            <ul class="dropdown-menu">
              <li><a href="#">Profile</a>
              </li>
              <li class="divider"></li>
              <li><a href="login">Logout</a>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
    <aside class="aside">
      <nav class="sidebar">
        <ul class="nav">
          <li>
            <div data-toggle="collapse-next" class="item user-block has-submenu">
              <div class="user-block-picture">
                <img src="02.jpg" alt="Avatar" width="60" height="60" class="img-thumbnail img-circle account-img-mb">
              </div>
              <div class="user-block-info">
                <span class="user-block-name item-text">James Franky</span>
                <span class="user-block-role"><i class="fa fa-check text-green"></i> Verified</span>
                <div class="label label-primary"><i class="fa fa-chevron-down"></i> Account Info</div>
              </div>
            </div>
            <ul class="nav collapse">
              <li><a onclick="location.href='index.html#open_orders'">Open Orders</a>
              </li>
              <li><a onclick="location.href='index.html#history'">Transactions History</a>
              </li>
              <li><a onclick="location.href='index.html#market'">Market History</a>
              </li>
              <li>
                <a href="javascript:void(0);">
                              Verification
                              <div class="label label-success pull-right"><i class="fa fa-check"></i> Verified</div>
                           </a>
              </li>
            </ul>
          </li>
          <li class="active">
            <a href="index.html" onclick="location.href='index.html'" title="index" data-toggle="collapse-next">
                        <em class="fa fa-home"></em>
                        <div class="label pull-right"><i class="fa fa-line-chart"></i></div>
                        <span class="item-text">Markets</span>
                     </a>
            </li>
            <li>
              <a href="portfolio.html" title="Dashboard" class="">
                        <em class="fa fa-btc"></em>
                        <span class="item-text">Portfolio</span>
                     </a>
            </li>
            <li class="">
              <a onclick="location.href='index.html#order_book'" title="Dashboard" class="">
                        <em class="fa fa-gear"></em>
                        <span class="item-text">Order Book</span>
                     </a>
            </li>
            <li>
              <a title="Pages" onclick="location.href='index.html#history'" href="#history">
                     <em class="fa fa-file-text"></em>
                     <span class="item-text">My Order History</span>
                     </a>

            </li>
            <li>
              <a title="Pages" href="#history">
                     <em class="fa fa-bell"></em>
                     <span class="item-text">Transaction status</span>
                     </a>

            </li>
        </ul>
      </nav>
    </aside>

    <section style="padding-top:30px">
      <section id="whole_page" class="main-content">

        <!-- Success message -->
      <div id="success" class="container" style="display:none;width:50%;margin-bottom:20px">
        <div  class="alert alert-success alert-dismissible fade in">
          <a href="wallet.jsp" class="close" data-dismiss="alert" aria-label="close">&times;</a>
          <strong>Deposit Success!</strong> Happy Trading.
        </div>
      </div>
        <!-- Success message close-->

        <!-- Success1 message -->
      <div id="success1" class="container" style="display:none;width:50%;margin-bottom:20px">
        <div  class="alert alert-success alert-dismissible fade in">
          <a href="wallet.jsp" class="close" data-dismiss="alert" aria-label="close">&times;</a>
          <strong>Withdrawal Success!</strong> Happy Trading.
        </div>
      </div>
        <!-- Success1 message close-->

       <div id="inr_wallet" class="row margin-0">
       <div class="col-lg-12 col-md-12 col-sm-12">
       <div class="row margin-bottom-10">
       <div class="col-lg-12 col-md-12 col-sm-12 wallets-container card white-background">
       <div class="row">
       <div class="col-lg-12 col-md-12 col-sm-12 header">
       <table>
       <tbody><tr>
       <td style="padding-top:9px;padding-left:9px;">
       <img src="images/moneybag.png" style="width: 45px;margin-right:6px;">
       </td>
       <td style="padding-top:20px;padding-left:9px;">
       <b>DBS WALLET</b>
       </td>
       </tr>
       </tbody></table>
       </div>
       </div>
       <div class="row">
       <div class="col-lg-12">
       <table class="table">
       <thead>
       <tr>
       <th>TOTAL</th>
       <th>IN ORDER</th>
       <th>AVAILABLE</th>
       <th style="width:212px;"></th>
       </tr>
       </thead>
       <tbody>
       <tr>
       <td style="font-size:16px;" class="ng-binding">
       0.00
       <span class="inrLabel">INR</span>
       </td>
       <td style="font-size:16px;" class="ng-binding">
       0.00
       <span class="inrLabel">INR</span>
       </td>
       <td style="font-size:16px;" class="ng-binding">
       0.00
       <span class="inrLabel">INR</span>
       </td>
       <td style="font-size:25px;padding-right:10px;width:250px">
         <button id="deposit" type="button" onclick="clicked1()" class="btn btn-primary bold deposit_button" data-toggle="modal" data-target="#DepositModal" data-max="50000" data-min="10" data-name="Credit Card" data-id="4" style="width:115px; align:center;font-size:13px;float:left">
        <i class="fa fa-money"></i> DEPOSIT
        </button>
        <button id="withdraw" type="button" onclick="clicked2()" class="btn btn-success bold deposit_button" data-toggle="modal" data-target="#DepositModal" data-max="50000" data-min="10" data-name="Credit Card" data-id="4" style="width:115px; align:center;font-size:13px;float:right">
       <i class="fa fa-money"></i> WITHDRAW
       </button>
       </td>
       </tr>
       </tbody>
       </table>
       </div>
       </div>
       </div>
       </div>
     </div>
     </div> <br>


   <!-- Wallet-history-->
   <div id="wallet_history" class="row margin-bottom-10">
   <div class="col-lg-12 col-md-12 col-sm-12 wallets-container card white-background">
   <div class="row">
   <div class="col-lg-12 col-md-12 col-sm-12 header">

     <table>
     <tbody><tr>
     <td>
     <div class="circularIcons">
     <i class="fa fa-history"></i>
     </div>
     </td>
     <td>
     <b>Wallet Transaction History</b>
     </td>
     </tr>
     </tbody></table>

     <div class="table-responsive">
       <table class="table table-bordered table-hover table-striped">
         <thead>
           <tr>

             <th>Date</th>
             <th>Deposit/Withdraw</th>
             <th>Amount</th>
           </tr>
         </thead>
        <tbody>
                                          <c:forEach items="${walletList}" var="walletval" varStatus="status">

                                             <tr class="clickable-row " data-href="index.html">
                                                <td class="tableSmallPad">${walletval.timeStamp}</td>
                                                <td class="tableSmallPad">${walletval.direction}</td>
                                                <td class="tableSmallPad">${walletval.amount}</td>
                                             </tr>

                                             </c:forEach>
                                          </tbody>
       </table>
     </div>
     </div>
     </div>
   </div>
 </div>

 <!-- wallet history-->
        <!-- Add money via Credit Card -->
        <div id="add_money" class="modal fade in" id="DepositModal" tabindex="-1" role="basic" aria-hidden="true" style="padding-right: 17px;display:none">
          <div class="modal-dialog"> <br> <br> <br> <br> <br>
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <!-- <h4 class="modal-title">ADD MONEY VIA <b class="abir_name">Credit Card</b></h4> -->
              </div>

              <form method="post" action="walletlist">
                <div class="modal-body">
                  <input class="form-control abir_id" type="hidden" name="id" value="4">
                  <div class="row">
                    <div class="form-group">
                      <label style="text-align:center;font-size:20px" class="col-md-12"><strong style="text-transform: uppercase;">ENTER AMOUNT TO DEPOSIT</strong>
      <span class="abir_limits"></span>
      </label>
                      <div class="col-md-12">
                        <div class="input-group mb15">
                          <input onkeyup="sync1()" id="enter_amount1" style="text-align:center" class="form-control input-lg" name="amount" type="text" autocomplete="off">
                          <span class="input-group-addon">INR</span>
                        </div> <br>
                      </div>

                      <label style="text-align:center;font-size:20px" class="col-md-12"><strong style="text-transform: uppercase;">NET AMOUNT </strong><i style="font-weight:100;font-size:15px">(*Brokerage applied)</i>
      <span class="abir_limits"></span>
      </label>
                      <div class="col-md-12">
                        <div class="input-group mb15">
                          <input onkeyup="sync1()" id="net_amount1" style="text-align:center" class="form-control input-lg" name="netamount" type="text">
                          <span class="input-group-addon">INR</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="modal-footer">
                  <button style="font-size:15px" type="button" class="btn btn-default" data-dismiss="modal" onclick="location.reload()">Close</button>
                  <input style="font-size:15px" id="add" type="submit" class="btn btn-primary"></input>
                   <input type="hidden" name="type" value=""/>
                </div>
              </form>
            </div>
          </div>
        </div>
        <!-- add money via credit card close -->
        <!-- another for withdraw -->
        <div id="add_moneyw" class="modal fade in" id="DepositModal" tabindex="-1" role="basic" aria-hidden="true" style="padding-right: 17px;display:none;">
          <div class="modal-dialog"> <br> <br> <br> <br> <br>
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <!-- <h4 class="modal-title">ADD MONEY VIA <b class="abir_name">Credit Card</b></h4> -->
              </div>

              <form method="post" action="walletlist">
                <div class="modal-body">
                  <input class="form-control abir_id" type="hidden" name="id" value="4">
                  <div class="row">
                    <div class="form-group">
                      <label style="text-align:center;font-size:20px" class="col-md-12"><strong style="text-transform: uppercase;">ENTER AMOUNT TO WITHDRAW</strong>
      <span class="abir_limits"></span>
      </label>
                      <div class="col-md-12">
                        <div class="input-group mb15">
                          <input onkeyup="sync()" id="enter_amount" style="text-align:center" class="form-control input-lg" name="amount" type="text" autocomplete="off">
                          <span class="input-group-addon">INR</span>
                        </div> <br>
                      </div>

                      <label style="text-align:center;font-size:20px" class="col-md-12"><strong style="text-transform: uppercase;">NET AMOUNT </strong><i style="font-weight:100;font-size:15px">(*Brokerage applied)</i>
      <span class="abir_limits"></span>
      </label>
                      <div class="col-md-12">
                        <div class="input-group mb15">
                          <input onkeyup="sync()" id="net_amount" style="text-align:center" class="form-control input-lg" name="netamount" type="text">
                          <span class="input-group-addon">INR</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="modal-footer">
                  <button style="font-size:15px" type="button" class="btn btn-default" data-dismiss="modal" onclick="location.reload()">Close</button>
                  <input style="font-size:15px" id="add" type="submit" class="btn btn-primary"></input>
                   <input type="hidden" name="type" value=""/>
                </div>
              </form>
            </div>
          </div>
        </div>
        <!-- another for withdraw close -->










      </section>
    </section>
    <script src="js/plugins/jquery.js"></script>
    <script src="js/plugins/velocity.js"></script>
    <script src="js/plugins/velocity.ui.js"></script>
    <script src="js/plugins/bootstrap.js"></script>
    <script src="js/plugins/chosen.jquery.js"></script>
    <script src="js/plugins/bootstrap-slider.js"></script>
    <script src="js/plugins/bootstrap-filestyle.js"></script>
    <script src="js/plugins/animo.js"></script>
    <script src="js/plugins/jquery.sparkline.js"></script>
    <script src="js/plugins/jquery.slimscroll.js"></script>
    <script src="js/plugins/jquery.dataTables.js"></script>
    <script src="js/plugins/dataTables.bootstrap.js"></script>
    <script src="js/plugins/dataTables.bootstrapPagination.js"></script>
    <script src="js/highcharts.js"></script>
    <script src="js/exporting.js"></script>
    <script src="js/plugins/dataTables.colVis.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.payment/1.2.3/jquery.payment.min.js"></script>
    <script type="text/javascript" src="https://js.stripe.com/v2/"></script>
    <script type="text/javascript" src="js/payment.js"></script>
    <!--[if lt IE 8]><script src="js/excanvas.min.js"></script><![endif]-->
    <script src="js/tradify.js"></script>
    <script>
      $(document).ready(function() {
        // Candlestick
        $.getJSON('tradify/data.json', function(data) {

          // create the chart
          Highcharts.stockChart('candlestickChart', {

            chart: {},


            rangeSelector: {
              selected: 1
            },

            series: [{
              type: 'candlestick',
              name: 'SC-BTC',
              data: data,
              dataGrouping: {
                units: [
                  [
                    'week', // unit name
                    [1] // allowed multiples
                  ],
                  [
                    'month', [1, 2, 3, 4, 6]
                  ]
                ]
              }
            }]
          });
        });
      });
    </script>
</body>

</html>
