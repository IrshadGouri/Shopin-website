<!DOCTYPE html>
<html>
<head>
<title>Shopin A Ecommerce Category Flat Bootstrap Responsive Website Template | Contact :: w3layouts</title>
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<!--theme-style-->
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />    
<style>
.title {
    border-bottom: 1px solid #252525;
    padding-bottom: 10px;
}
label {
    display: inline-block;
    margin-bottom: 5px;
    font-weight: bold;
    font-family: "Open Sans",sans-serif;
    font-size: 13px;
    line-height: 1.6;
    color: #888;
}
h4, .h4 {
    font-size: 15px;
    font-family: "Open Sans",sans-serif;
    line-height: 1.1;
    color: #444;
}
h4, h5, h6 {
    margin-top: 10px;
    margin-bottom: 10px;
}
.checkout-page {
    font-family: "Open Sans",sans-serif;
    font-size: 13px;
    line-height: 1.6;
    color: #888;
}
table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {
    line-height: 1.6;
}
table {
    border-collapse: collapse;
    border-spacing: 0px;
}

.table > tbody > tr > th, .table > tbody > tr > td {
    vertical-align: middle;
}
table th{
    font-family: "Open Sans",sans-serif;
    font-size: 13px;
    line-height: 1.6;
    color: #888;
    font-weight: 800;
}
.cart input {
    width: 65px;
    font-size: 14px;
    text-align: center;
}
form div, .buttons {
    clear: none;
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
<#macro fieldErrors fieldName>
  <#if errorMessageList?has_content>
    <#assign fieldMessages = Static["org.ofbiz.base.util.MessageString"].getMessagesForField(fieldName, true, errorMessageList)>
    <ul>
      <#list fieldMessages as errorMsg>
        <li class="errorMessage">${errorMsg}</li>
      </#list>
    </ul>
  </#if>
</#macro>
<#macro fieldErrorsMulti fieldName1 fieldName2 fieldName3 fieldName4>
  <#if errorMessageList?has_content>
    <#assign fieldMessages = Static["org.ofbiz.base.util.MessageString"].getMessagesForField(fieldName1, fieldName2, fieldName3, fieldName4, true, errorMessageList)>
    <ul>
      <#list fieldMessages as errorMsg>
        <li class="errorMessage">${errorMsg}</li>
      </#list>
    </ul>
  </#if>
</#macro>
<div class="header">
<div class="container">
        <div class="head">
            <div class=" logo">
                <a href="index.html"><img src="images/logo.png" alt=""></a>    
            </div>
        </div>
    </div>
    <div class="header-top">
        <div class="container">
        <div class="col-sm-5 col-md-offset-2  header-login">
                    <ul >
                        <li><a href="login.html">Login</a></li>
                        <li><a href="register.html">Register</a></li>
                        <li><a href="checkout.html">Checkout</a></li>
                    </ul>
                </div>
                
            <div class="col-sm-5 header-social">        
                    <ul >
                        <li><a href="#"><i></i></a></li>
                        <li><a href="#"><i class="ic1"></i></a></li>
                        <li><a href="#"><i class="ic2"></i></a></li>
                        <li><a href="#"><i class="ic3"></i></a></li>
                        <li><a href="#"><i class="ic4"></i></a></li>
                    </ul>
                    
            </div>
                <div class="clearfix"> </div>
        </div>
        </div>
        
        <div class="container">
        
            <div class="head-top">
            
         <div class="col-sm-10 h_menu4">
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
                <ul class="heart">
                <li>
                <a href="wishlist.html" >
                <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                </a></li>
                <li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i></a></li>
                    </ul>
                    <div class="cart box_1">
                        <a href="checkout.html">
                        <h3> <div class="total">
                            <span class="simpleCart_total"></span></div>
                            <img src="images/cart.png" alt=""/></h3>
                        </a>
                        <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

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
<!--banner-->
    <div class="banner-top">
    <div class="container">
        <h1>Contact</h1>
        <em></em>
        <h2><a href="index.html">Home</a><label>/</label>Contact</a></h2>
    </div>
</div>    
        
            <div class="checkout-page">
                    
              <div class="contact-form">
                <div class="container">
                  <form name="${parameters.formNameValue}" novalidate="novalidate" id="quickAnonProcessCustomer" method="post" action="<@ofbizUrl>quickAnonProcessCustomerSettings</@ofbizUrl>">
                  <input type="hidden" id="shipToContactMechId" name="shipToContactMechId" value="${shipToContactMechId!}" />
                  <input type="hidden" id="billToContactMechIdInShipingForm" name="billToContactMechId" value="${billToContactMechId!}" />
                  <input type="hidden" id="shipToPartyId" name="partyId" value="${partyId!}" />
                  <input type="hidden" id="shipToPhoneContactMechId" name="shipToPhoneContactMechId" value="${(shipToTelecomNumber.contactMechId)!}" />
                  <input type="hidden" id="emailContactMechId" name="emailContactMechId" value="${emailContactMechId!}" />
                  <input type="hidden" name="shipToName" value="${shipToName!}" />
                  <input type="hidden" name="shipToAttnName" value="${shipToAttnName!}" />
                  <#if userLogin??>
                    <input type="hidden" name="keepAddressBook" value="Y" />
                    <input type="hidden" name="setDefaultShipping" value="Y" />
                    <input type="hidden" name="userLoginId" id="userLoginId" value="${userLogin.userLoginId!}" />
                    <#assign productStoreId = Static["org.ofbiz.product.store.ProductStoreWorker"].getProductStoreId(request) />
                    <input type="hidden" name="productStoreId" value="${productStoreId!}" />
                  <#else>
                    <input type="hidden" name="keepAddressBook" value="N" />
                  </#if>
                  <div class="row">
                    <div class="col-lg-5 col-md-5 col-sm-7 col-xs-12">
                      <div class="js-shippingInformation" id="billing-address-section">
                        <h4 class="title"><span class="badge">1</span> Personal details &amp; Billing Address</h4>
                        <div class="row">
                          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                              <label for="bill-first-name">First Name<span class="asterisk">*</span></label>
                              <input data-label="First Name" class="form-control validate-name validate-required" id="bill-first-name" name="firstName" value="${firstName!}" type="text">
                            </div>
                          </div>
                          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                              <label for="bill-last-name">Last Name<span class="asterisk">*</span></label>
                              <input data-label="Last Name" class="form-control validate-lName validate-required" id="bill-last-name" name="lastName" value="${lastName!}" type="text">
                            </div>
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="bill-email">Email<span class="asterisk">*</span></label>
                          <input data-label="Email" class="form-control validate-email validate-required" id="bill-email" name="emailAddress" value="${emailAddress!}" type="email">
                        </div>
                        <div class="form-group">
                          <label for="ship-address1">Address<span class="asterisk">*</span></label>
                          <input data-label="Address" class="form-control validate-nonPoAddress validate-required" address-autocompleter="" addressline1="" id="ship-address1" name="shipToAddress1" value="${shipToAddress1!}" type="search">
                        </div>
                        <div class="form-group">
                          <input class="form-control validate-nonPoAddress" name="shipToAddress2" value="${shipToAddress2!}" address2="" type="text">
                        </div>
                        <div class="row">
                          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                              <label for="bill-country">Country<span class="asterisk">*</span></label>
                             <select name="shipToCountryGeoId" class="form-control validate-required js-country updateShipping calculateTax" id="shipToCountryGeoId">
                              <#if shipToCountryGeoId??>
                                <option value="${shipToCountryGeoId!}">${shipToCountryProvinceGeo?default(shipToCountryGeoId!)}</option>
                              </#if>
                              ${screens.render("component://common/widget/CommonScreens.xml#countries")}
                            </select>
                            <span style="display: none;" class="ajaxLoader"></span></div>
                          </div>
                          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                              <label for="bill-state">State/Province<span class="asterisk">*</span></label>
                              <select id="shipToStateProvinceGeoId" class="form-control validate-required js-stateProvince updateShipping calculateTax" name="shipToStateProvinceGeoId">
                              <#if shipToStateProvinceGeoId?has_content>
                                <option value='${shipToStateProvinceGeoId!}'>${shipToStateProvinceGeo?default(shipToStateProvinceGeoId!)}</option>
                              <#else>
                                <option value="_NA_">${uiLabelMap.PartyNoState}</option>
                              </#if>
                              ${screens.render("component://common/widget/CommonScreens.xml#states")}
                            </select>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                            <div class="form-group">
                              <label for="bill-city">City<span class="asterisk">*</span></label>
                              <input data-label="City" class="form-control validate-required" city="" id="bill-city" name="shipToCity" value="${shipToCity!}" type="text">
                            </div>
                          </div>
                          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="form-group">
                              <label for="bill-zip">Zip<span class="asterisk">*</span></label>
                              <input data-label="Zip" class="form-control validate-usCanadaZip js-postalCode validate-required updateShipping calculateTax zip" postal_code="" id="bill-zip" name="shipToPostalCode" data-update-cart=".shipping-method-section, .order-summary, #cart-overview" data-update-cart-url="AjaxAnonymousCheckout" data-country-box="#bill-country" value="${shipToPostalCode!}" type="text">
                            </div>
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="bill-phone">Phone<span class="asterisk">*</span></label>
                          <input data-label="Phone" class="form-control validate-phone validate-required" id="bill-phone" name="billToContactNumber" value="" type="tel">
                        </div>
                      </div>
                      <div class="create-account-section">
                        <div class="form-group checkbox">
                          <label>
                            <input name="createUserLogin" value="Y" data-toggle-display="#create-account" type="checkbox">
                            Create an account for later use
                          </label>
                        </div>
                        <div id="create-account" style="display:none;">
                          <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                              <div class="form-group">
                                <label for="password">Password</label>
                                <input name="password" data-label="Password" class="form-control validate-required validate-password validate-newPassword" value="" autocomplete="off" maxlength="16" type="password">
                              </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                              <div class="form-group">
                                <label for="password-verify">Confirm Password</label>
                                <input name="passwordVerify" id="password-verify" data-label="Confirm Password" class="form-control validate-required validate-passwordVerify" value="" autocomplete="off" maxlength="16" type="password">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="shipping-address-block">
                        <div class="form-group checkbox js-shippingInformation">
                          <label>
                            <input name="doNotUseBillingAddressForShipping" value="Y" data-update-cart=".shipping-method-section, .order-summary, #cart-overview" data-update-cart-url="calcAndAddTaxToCheckoutShoppingCart" data-toggle-display="#shipping-address-section" data-toggle-class1="zip" data-toggle-target1="#ship-zip" data-inverse-toggle-class1="zip" data-inverse-toggle-target1="#bill-zip" data-toggle-class="js-shippingInformation" data-toggle-target="#shipping-address-section" data-inverse-toggle-class="js-shippingInformation" data-inverse-toggle-target="#billing-address-section" data-toggle-disable="#shipping-address-section" type="checkbox">
                            Shipping Address is different from Billing
                          </label>
                        </div>
                        <div id="shipping-address-section" style="display:none;">
                          <h4 class="title">New Shipping Address</h4>
                          <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                              <div class="form-group">
                                <label for="ship-first-name">First Name</label>
                                <input class="form-control validate-name validate-required" id="ship-first-name" name="shipToFirstName" value="" disabled="disabled" type="text">
                              </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                              <div class="form-group">
                                <label for="ship-last-name">Last Name</label>
                                <input class="form-control validate-lName validate-required" id="ship-last-name" name="shipToLastName" value="" disabled="disabled" type="text">
                              </div>
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="ship-address1">Address</label>
                            <input class="form-control validate-nonPoAddress validate-required" id="ship-address1" name="shipToAddress1" value="" disabled="disabled" type="text">
                          </div>
                          <div class="form-group">
                            <input class="form-control validate-nonPoAddress" id="address2" name="shipToAddress2" value="" disabled="disabled" type="text">
                          </div>
                          <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                              <div class="form-group">
                                <label for="ship-country">Country</label>
                                <select class="form-control validate-required js-country" id="ship-country" name="shipToCountryGeoId" data-dependent="#ship-state" data-update-cart=".shipping-method-section, .order-summary, #cart-overview" data-update-cart-url="AjaxAnonymousCheckout" disabled="disabled">
                                    <option value="CAN" title="CAN">Canada</option>
                                    <option value="USA" title="USA" selected="">United States</option>
                                </select>
                              </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                              <div class="form-group">
                                <label for="ship-state">State/Province</label>
                                <select name="shipToStateProvinceGeoId" id="ship-state" class="form-control validate-required js-stateProvince shipToCountry" data-update-cart=".shipping-method-section, .order-summary, #cart-overview" data-update-cart-url="AjaxAnonymousCheckout" disabled="disabled">
                                          <option value="AA" title="AA">AA</option>
                                          <option value="AE" title="AE">AE</option></select>
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                              <div class="form-group">
                                <label for="ship-city">City</label>
                                <input class="form-control validate-required" id="ship-city" name="shipToCity" data-country-box="#shipToCountryGeoId" value="" disabled="disabled" type="text">
                              </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                              <div class="form-group">
                                <label for="ship-zip">Zip</label>
                                <input class="form-control js-postalCode validate-required validate-usCanadaZip" id="ship-zip" data-country-box="#ship-country" name="shipToPostalCode" value="" data-update-cart=".shipping-method-section, .order-summary, #cart-overview" data-update-cart-url="AjaxAnonymousCheckout" disabled="disabled" type="text">
                              </div>
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="ship-phone">Phone</label>
                            <input class="form-control validate-phone validate-required" id="ship-phone" name="shipToContactNumber" value="" disabled="disabled" type="tel">
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-7 col-md-7 col-sm-5 col-xs-12">
                      <div class="row">
                        <div class="col-lg-5 col-md-6 col-sm-12 col-xs-12">
                          <div class="shipping-method-section">
                <h4 class="title"><span class="badge">2</span> Shipping Method</h4>
                <div class="form-group">
                  <label for="shipping-option">Select a shipping option</label>
                  <select class="form-control validate-required" id="" name="shipMethod" data-param-source=".shipping-method-section" data-ajax-update=".shipping-method-section, .order-summary, #cart-overview" data-update-url="setShippingOptionInCheckoutShoppingCart">
                    <option value="">--Select--</option>
                  </select>                      
                  <select id="shipMethod" name="shipMethod" class="required">
                          <option value=""></option>
                   </select>
                  
                </div></div>
                          <div class="payment-method-section">
                            <h4 class="title"><span class="badge">3</span> Payment Method</h4>
                            <div id="credit-card-section">
                              <div class="form-group">
                                <label for="name-on-card">Name On The Card<span class="asterisk">*</span></label>
                                <input data-label="Name On The Card" class="form-control validate-name validate-required" id="name-on-card" name="nameOnCard" value="" type="text">
                              </div>
                              <div class="form-group">
                                <label for="card-type">Credit Card Type<span class="asterisk">*</span></label>
                                <select name="cardType" class="form-control validate-required cardType" id="cardType">
                                  <#if cardType?has_content>
                                    <option label="${cardType!}" value="${cardType!}">${cardType!}</option>
                                  </#if>
                                  ${screens.render("component://common/widget/CommonScreens.xml#cctypes")}
                                </select>
                              </div>
                              <div class="form-group">
                                <label for="card-number">Credit Card Number<span class="asterisk">*</span></label>
                                <input data-label="Credit Card Number" class="form-control validate-creditcard validate-required" id="card-number" name="cardNumber" maxlength="16" minlength="13" value="" autocomplete="off" type="text">
                              </div>
                              <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                  <div class="form-group">
                                    <label for="expire-month">Exp Month<span class="asterisk">*</span></label>
                                    <select id="expMonth" name="expMonth" class="form-control validate-expireDate validate-required">
                                      <#if expMonth?has_content>
                                        <option label="${expMonth!}" value="${expMonth!}">${expMonth!}</option>
                                      </#if>
                                      ${screens.render("component://common/widget/CommonScreens.xml#ccmonths")}
                                    </select>
                                  </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                  <div class="form-group">
                                    <label for="expire-year">Exp Year<span class="asterisk">*</span></label>
                                    <select id="expYear" name="expYear" class="form-control validate-expireDate validate-required">
                                      <#if expYear?has_content>
                                        <option value="${expYear!}">${expYear!}</option>
                                      </#if>
                                      ${screens.render("component://common/widget/CommonScreens.xml#ccyears")}
                                    </select>
                                  </div>
                                </div>
                              </div>
                              <div class="form-group">
                                <label for="cvc">CVC/CVV2<span class="asterisk">*</span></label>
                                <input data-label="CVC/CVV2" class="form-control validate-cvv2 validate-required" id="cvc" name="billToCardSecurityCode" autocomplete="off" maxlength="4" type="password">
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-lg-7 col-md-6 col-sm-12 col-xs-12">
                          <div class="order-summary">
                <h4><i class="glyphicon glyphicon-ok"></i> Review your order</h4>
                  <input class="updateCart updateCartSm" name="productId" type="hidden">
                  <table class="table">
                    <thead>
                      <tr>
                        <th class="visible-lg"></th>
                        <th>Product</th>
                        <th class="visible-lg">Qty</th>
                        <th class="visible-lg"><span class="pull-right">Subtotal</span></th>
                      </tr>
                    </thead>
                    <tbody>
                      <#list shoppingCart.items() as cartLine>
                        <#if cartLine.getProductId()??>
                          <#if cartLine.getParentProductId()??>
                            <#assign parentProductId = cartLine.getParentProductId() />
                          <#else>
                            <#assign parentProductId = cartLine.getProductId() />
                          </#if>
                          <#assign smallImageUrl = Static["org.ofbiz.product.product.ProductContentWrapper"].getProductContentAsText(cartLine.getProduct(), "SMALL_IMAGE_URL", locale, dispatcher, "url")! />
                          <#if !smallImageUrl?string?has_content><#assign smallImageUrl = "" /></#if>
                        </#if>
                          <tr>
                            <td class="text-center visible-lg">
                              <input class="updateCart" name="productId" value="BASIC-T-PURPLE-L" type="hidden">
                              <label class="removeShoppingCartItem btn-link" for="removeItem_BASIC-T-PURPLE-L"><i class="glyphicon glyphicon-remove text-danger"></i></label>
                              <input class="updateCart" id="removeItem_BASIC-T-PURPLE-L" name="removeItem_BASIC-T-PURPLE-L" value="Y" style="display:none" data-update-url="/updateCheckoutCartItems" data-ajax-update=".order-summary, #cart-overview, .notification-messages" data-param-source=".updateCart" type="radio">
                            </td>
                            <td class="product-details-small">${cartLine.getName()!}<br>
                              <span class="product-features">
                                <small>SIZE: Large,</small>
                              </span>
                              <span class="product-features">
                                <small>COLOR: Purple</small>
                              </span>
                              <small class="hidden-lg pull-right">
                                <input class="updateCartSm" name="productId" value="BASIC-T-PURPLE-L" type="hidden">
                                <label class="removeShoppingCartItem btn-link pull-right" for="removeItem_BASIC-T-PURPLE-L"><i class="glyphicon glyphicon-remove fa-lg"></i></label>
                                <input class="updateCartSm" id="removeItem_BASIC-T-PURPLE-L" name="removeItem_BASIC-T-PURPLE-L" value="Y" style="display:none" data-update-url="/updateCheckoutCartItems" data-ajax-update=".order-summary, #cart-overview, .notification-messages" data-param-source=".updateCartSm" type="radio">
                                <fieldset class="relative">
                                  <input name="quantity_BASIC-T-PURPLE-L" value="${cartLine.getQuantity()?string.number}" size="2" maxlength="4" class="updateCartSm validate-required validate-quantity" data-update-url="updateCheckoutCartItems" data-ajax-update=".order-summary, #cart-overview, .notification-messages" data-param-source=".updateCartSm" data-label="quantity" type="text">
                                  × $15.99 = $15.99&nbsp;&nbsp;
                                </fieldset>
                              </small>
                            </td>
                            <td class="cart col-lg-3 col-md-4 col-sm-4 visible-lg">
                              <fieldset class="relative">
                                <input name="quantity_BASIC-T-PURPLE-L" value="1" maxlength="4" class="updateCart validate-required validate-quantity" data-update-url="updateCheckoutCartItems" data-ajax-update=".order-summary, #cart-overview, .notification-messages" data-param-source=".updateCart" data-label="quantity" type="text">
                              </fieldset>
                            </td>
                            <td class="visible-lg"><span class="pull-right"><@ofbizCurrency amount=cartLine.getDisplayItemSubTotal() isoCode=shoppingCart.getCurrency() /></span></td>
                          </tr>
                        </#list>
                    </tbody>
                    <tfoot>
                      <tr>
                        <td colspan="50">
                          <table class="table">
                            <tbody>
                              <tr class="subtotal">
                                <th><span class="pull-right">Subtotal</span></th>
                                <td class="col-md-2"><span class="pull-right"><@ofbizCurrency amount=shoppingCart.getSubTotal() isoCode=shoppingCart.getCurrency() /></span></td>
                              </tr>
                              <tr>
                              <th><span class="pull-right">Sales Tax</span></th>
                                <td><span class="pull-right"><@ofbizCurrency amount=shoppingCart.getTotalSalesTax() isoCode=shoppingCart.getCurrency() /></span></td>
                              </tr>
                              <tr>
                                <th><span class="pull-right">Shipping</span></th>
                                <td><span class="pull-right"><@ofbizCurrency amount=shoppingCart.getTotalShipping() isoCode=shoppingCart.getCurrency() /></span></td>
                              </tr>
                             <#assign orderAdjustmentsTotal = 0 />
                             <#list shoppingCart.getAdjustments() as cartAdjustment>
                               <#assign orderAdjustmentsTotal = orderAdjustmentsTotal + Static["org.ofbiz.order.order.OrderReadHelper"].calcOrderAdjustment(cartAdjustment, shoppingCart.getSubTotal()) />
                             </#list>
                              <tr>
                                <th><span class="pull-right">Discount</span></th>
                                <td><span class="pull-right">${orderAdjustmentsTotal}</span></td>
                              </tr>
                              <tr>
                                <th><span class="pull-right">Total</span></th>
                                <td><span class="pull-right"><@ofbizCurrency amount=shoppingCart.getDisplayGrandTotal() isoCode=shoppingCart.getCurrency() /></span></td>
                              </tr>
                            </tbody>
                          </table>
                        </td>
                      </tr>
                    </tfoot>
                  </table>
                <div class="row">
                  <div class="col-xs-12">
                  </div>
                  <div class="col-lg-offset-6 col-lg-6 col-md-offset-4 col-md-8 col-sm-12 col-xs-12">
                    <button style="display: inline-block;
vertical-align: middle;
transform: translateZ(0px);
backface-visibility: hidden;
transition-duration: 0.3s;
transition-property: transform;
transform-origin: 0px 100% 0px;
background-color: #F67777;
color: #FFF;
padding: 0.5em 1em;
font-size: 1em;" type="submit" class="btn btn-default btn-lg pull-right">Place Order Now</button>
                  </div>
                </div></div>
                          <div class="validation-messages">
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </form>
        <div class="clearfix"></div>
        </div>
        </div>
    </div>

<!--//contact-->
<!--brand-->
        <div class="container">
            <div class="brand">
                <div class="col-md-3 brand-grid">
                    <img src="images/ic.png" class="img-responsive" alt="">
                </div>
                <div class="col-md-3 brand-grid">
                    <img src="images/ic1.png" class="img-responsive" alt="">
                </div>
                <div class="col-md-3 brand-grid">
                    <img src="images/ic2.png" class="img-responsive" alt="">
                </div>
                <div class="col-md-3 brand-grid">
                    <img src="images/ic3.png" class="img-responsive" alt="">
                </div>
                <div class="clearfix"></div>
            </div>
            </div>
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