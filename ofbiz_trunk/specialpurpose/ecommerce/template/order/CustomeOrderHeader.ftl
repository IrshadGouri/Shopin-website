<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Order Confirmation</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />  
<style>
.panel-default > .panel-heading {
    color: #fff;
    background-color: #1F1F1F;
    border-color: #1F1F1F;
}
.link-color {
color: #E4E80E!important;
}
</style>
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shopin Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndroId Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--theme-style-->
<link href="css/style4.css" rel="stylesheet" type="text/css" media="all" /> 
<!--//theme-style-->
<script src="js/jquery.min.js"></script>
<!--- start-rate---->
<script src="js/jstarbox.js"></script>
    <link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
        <script type="text/javascript">
            jQuery(function() {
            jQuery('.starbox').each(function() {
                var starbox = jQuery(this);
                    starbox.starbox({
                    average: starbox.attr('data-start-value'),
                    changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
                    ghosting: starbox.hasClass('ghosting'),
                    autoUpdateAverage: starbox.hasClass('autoupdate'),
                    buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
                    stars: starbox.attr('data-star-count') || 5
                    }).bind('starbox-value-changed', function(event, value) {
                    if(starbox.hasClass('random')) {
                    var val = Math.random();
                    starbox.next().text(' '+val);
                    return val;
                    } 
                })
            });
        });
        </script>
<!---//End-rate---->
</head>
<body>
<!--header-->
<div class="header">
<div class="container">
        <div class="head">
            <div class=" logo">
                <a href="index.html"><img src="images/logo.png" alt=""></a> 
            </div>
        </div>
    </div>
        <div class="container">
        
            <div class="head-top">
            
         <div class="col-sm-8 col-md-offset-2">
                <nav class="navbar nav_bottom" role="navigation">
 
 <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header nav_2">
      <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
     
   </div> 
   <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
        <#include "component://ecommerce/template/categoryMenu.ftl"/>
    </div><!-- /.navbar-collapse -->

</nav>
            </div>
            <div class="col-sm-2 search-right">
              <#include "component://ecommerce/template/cart/CustomeMicroCart.ftl"/>
            </div>
            <div class="clearfix"> </div>
                    
                        <!----->

                        <!---pop-up-box---->                      
            <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
            <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
            <!---//pop-up-box---->
            <div id="small-dialog" class="mfp-hide">
                <div class="search-top">
                    <div class="login-search">
                        <input type="submit" value="">
                        <input type="text" value="Search.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}">       
                    </div>
                    <p>Shopin</p>
                </div>              
            </div>
         <script>
            $(document).ready(function() {
            $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
            });
                                                                                        
            });
        </script>       
                        <!----->
            </div>
            <div class="clearfix"></div>
        </div>  
    </div>  
</div>
<!--banner
<div class="banner-top">
    <div class="container">
        <h1>Order Confirmation</h1>
        <em></em>
        <h2><a href="index.html">Home</a><label>/</label>Order Confirmation</a></h2>
    </div>
</div>-->
<#if baseEcommerceSecureUrl??><#assign urlPrefix = baseEcommerceSecureUrl/></#if>
<#if (orderHeader.externalId)?? && (orderHeader.externalId)?has_content >
  <#assign externalOrder = "(" + orderHeader.externalId + ")"/>
</#if>
<!--login-->
    <div class="container" style="margin-top:10px;">
        <div class="row">
          <div class="col-lg-12 col-md-12">
            <div class="panel panel-default">
              <div class="panel-heading">
              <#if orderHeader?has_content>
                <h3 class="panel-title">Order Nbr<a class="link-color" href="<@ofbizUrl fullPath="true">orderstatus?orderId=${orderHeader.orderId}</@ofbizUrl>">${orderHeader.orderId}</a> Information <a href="<@ofbizUrl fullPath="true">order.pdf?orderId=${(orderHeader.orderId)!}</@ofbizUrl>" target="_BLANK" class="link-color">[PDF]</a></h3>
              </#if>
              </div>
            </div>
          </div>
      </div>
    <#if localOrderReadHelper?? && orderHeader?has_content>
      <#assign displayParty = localOrderReadHelper.getPlacingParty()!/>
      <#if displayParty?has_content>
        <#assign displayPartyNameResult = dispatcher.runSync("getPartyNameForDate", Static["org.ofbiz.base.util.UtilMisc"].toMap("partyId", displayParty.partyId, "compareDate", orderHeader.orderDate, "userLogin", userLogin))/>
      </#if>
    </#if>
      <div class="row">
          <div class="col-lg-12 col-md-12">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">Order Items</h3>
              </div>
              <div class="panel-body">
                <table class="table">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Product</th>
                      <th>Qty Ordered</th>
                      <th>Unit Price</th>
                      <th>Adjustment</th>
                      <th>Subtotal</th>
                    </tr>
                  </thead>
                  <tbody>
                  <#list orderItems as orderItem>
                      <#assign rentalQuantity = 1> <#-- no change if no rental item -->
                      <#if orderItem.orderItemTypeId == "RENTAL_ORDER_ITEM" && workEfforts??>
                        <#list workEfforts as workEffort>
                          <#if workEffort.workEffortId == orderItem.orderItemSeqId>
                            <#assign rentalQuantity = localOrderReadHelper.getWorkEffortRentalQuantity(workEffort)>
                            <#assign workEffortSave = workEffort>
                            <#break>
                          </#if>
                        </#list>
                      <#else>
                        <#assign WorkOrderItemFulfillments = orderItem.getRelated("WorkOrderItemFulfillment", null, null, false)!>
                        <#if WorkOrderItemFulfillments?has_content>
                          <#list WorkOrderItemFulfillments as WorkOrderItemFulfillment>
                            <#assign workEffortSave = WorkOrderItemFulfillment.getRelatedOne("WorkEffort", true)!>
                            <#break>
                           </#list>
                        </#if>
                      </#if>
                    <tr>
                      <th scope="row">1</th>
                      <#if !orderItem.productId?? || orderItem.productId == "_?_">
                        <td>${orderItem.itemDescription?default("")}</td>
                      <#else>
                        <#assign product = orderItem.getRelatedOne("Product", true)!/> <#-- should always exist because of FK constraint, but just in case -->
                        <td>
                          <a href="<@ofbizCatalogAltUrl fullPath="true" secure="false" productId=orderItem.productId/>" class="linktext">${orderItem.productId} - ${orderItem.itemDescription?default("")}</a>
                        </td>
                      </#if>
                      <td>${orderItem.quantity?string.number}</td>
                      <td><@ofbizCurrency amount=orderItem.unitPrice isoCode=currencyUomId/></td>
                      <#assign itemAdjustments = localOrderReadHelper.getOrderItemAdjustments(orderItem)>
                      <#assign totalAdjustment = 0.0/>
                      <#list itemAdjustments as orderItemAdjustment>
                        <#assign totalAdjustment = totalAdjustment + localOrderReadHelper.getOrderItemAdjustmentTotal(orderItem, orderItemAdjustment)/>
                      </#list>
                      <td><@ofbizCurrency amount=totalAdjustment isoCode=currencyUomId/></td>
                      <td>            
                        <#if workEfforts??>
                          <@ofbizCurrency amount=localOrderReadHelper.getOrderItemTotal(orderItem)*rentalQuantity isoCode=currencyUomId/>
                        <#else>
                          <@ofbizCurrency amount=localOrderReadHelper.getOrderItemTotal(orderItem) isoCode=currencyUomId/>
                        </#if>
                      </td>
                    </tr>
                   </#list>
                  </tbody>
                </table>
                <div class="row" style="border-top: 1px solid grey;">
                  <div class="col-lg-10 col-md-10 col-md-7 col-md-7">
                    <span class="pull-right" style="padding: 5px;">SubTotal</span>
                  </div>
                  <div class="col-lg-2 col-md-2 col-md-5 col-md-5">
                    <span class="pull-right" style="padding: 5px;"><@ofbizCurrency amount=orderSubTotal isoCode=currencyUomId/></span>
                  </div>
                </div>
                <#list headerAdjustmentsToShow as orderHeaderAdjustment>
                <div class="row" style="border-top: 1px solid grey;">
                  <div class="col-lg-10 col-md-10 col-md-7 col-md-7">
                    <span class="pull-right" style="padding: 5px;">${localOrderReadHelper.getAdjustmentType(orderHeaderAdjustment)}</span>
                  </div>
                  <div class="col-lg-2 col-md-2 col-md-5 col-md-5">
                    <span class="pull-right" style="padding: 5px;"><@ofbizCurrency amount=localOrderReadHelper.getOrderAdjustmentTotal(orderHeaderAdjustment) isoCode=currencyUomId/></span>
                  </div>
                </div>
                </#list>
                <div class="row" style="border-top: 1px solid grey;">
                  <div class="col-lg-10 col-md-10 col-md-7 col-md-7">
                    <span class="pull-right" style="padding: 5px;">Shipping and Handling</span>
                  </div>
                  <div class="col-lg-2 col-md-2 col-md-5 col-md-5">
                    <span class="pull-right" style="padding: 5px;"><@ofbizCurrency amount=orderShippingTotal isoCode=currencyUomId/></span>
                  </div>
                </div>
                <div class="row" style="border-top: 1px solid grey;">
                  <div class="col-lg-10 col-md-10 col-md-7 col-md-7">
                    <span class="pull-right" style="padding: 5px;">Sales Tax</span>
                  </div>
                  <div class="col-lg-2 col-md-2 col-md-5 col-md-5">
                    <span class="pull-right" style="padding: 5px;"><@ofbizCurrency amount=orderTaxTotal isoCode=currencyUomId/></span>
                  </div>
                </div>
                <div class="row" style="border-top: 2px solid grey;">
                  <div class="col-lg-10 col-md-10 col-md-7 col-md-7">
                    <span class="pull-right" style="padding: 5px;">Grand Total</span>
                  </div>
                  <div class="col-lg-2 col-md-2 col-md-5 col-md-5">
                    <span class="pull-right" style="padding: 5px;"><@ofbizCurrency amount=orderGrandTotal isoCode=currencyUomId/></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>
<!--//login-->
            <!--//brand-->
            </div>
            
        </div>
    <!--//content-->
        <!--//footer-->
    <div class="footer">
    <div class="footer-middle">
                <div class="container">
                    <div class="col-md-3 footer-middle-in">
                        <a href="index.html"><img src="images/log.png" alt=""></a>
                        <p>Suspendisse sed accumsan risus. Curabitur rhoncus, elit vel tincidunt elementum, nunc urna tristique nisi, in interdum libero magna tristique ante. adipiscing varius. Vestibulum dolor lorem.</p>
                    </div>
                    
                    <div class="col-md-3 footer-middle-in">
                        <h6>Information</h6>
                        <ul class=" in">
                            <li><a href="404.html">About</a></li>
                            <li><a href="contact.html">Contact Us</a></li>
                            <li><a href="#">Returns</a></li>
                            <li><a href="contact.html">Site Map</a></li>
                        </ul>
                        <ul class="in in1">
                            <li><a href="#">Order History</a></li>
                            <li><a href="wishlist.html">Wish List</a></li>
                            <li><a href="login.html">Login</a></li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-3 footer-middle-in">
                        <h6>Tags</h6>
                        <ul class="tag-in">
                            <li><a href="#">Lorem</a></li>
                            <li><a href="#">Sed</a></li>
                            <li><a href="#">Ipsum</a></li>
                            <li><a href="#">Contrary</a></li>
                            <li><a href="#">Chunk</a></li>
                            <li><a href="#">Amet</a></li>
                            <li><a href="#">Omnis</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 footer-middle-in">
                        <h6>Newsletter</h6>
                        <span>Sign up for News Letter</span>
                            <form>
                                <input type="text" value="Enter your E-mail" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Enter your E-mail';}">
                                <input type="submit" value="Subscribe"> 
                            </form>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <ul class="footer-bottom-top">
                        <li><a href="#"><img src="images/f1.png" class="img-responsive" alt=""></a></li>
                        <li><a href="#"><img src="images/f2.png" class="img-responsive" alt=""></a></li>
                        <li><a href="#"><img src="images/f3.png" class="img-responsive" alt=""></a></li>
                    </ul>
                    <p class="footer-class">&copy; 2016 Shopin. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!--//footer-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

    <script src="js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="js/bootstrap.min.js"></script>
 
</body>
</html>