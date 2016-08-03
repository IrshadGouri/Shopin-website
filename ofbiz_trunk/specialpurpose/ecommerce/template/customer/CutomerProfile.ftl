<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Shopin A Ecommerce Category Flat Bootstrap Responsive Website Template | 404 :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />  
<style>
.personal-information, .shipping-information, .billing-information, .order-history {
    font-size: 14px;
}

.list-unstyled {
    padding-left: 0px;
    list-style: outside none none;
}

ul, ol {
    margin-top: 0px;
    margin-bottom: 10px;
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
.modal-footer {
    border-top: none;
}
.iconlist {
    list-style: outside none none;
}
.iconlist li {
    display: inline;
    float: left;
}
.glyphicon {
    font-size: 20px!important;
}
.cursor-pointer {
  cursor: pointer;
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
            
         <div class="col-sm-9">
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
            <div class="col-sm-3 search-right">
              <#include "component://ecommerce/template/cart/CustomeMicroCart.ftl"/>
            </div>
                    
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
<!--login-->
    <div class="container">
      
      <div class="row" style="margin: 100px 0;">
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
        <#if partyContactMechValueMaps?has_content>
          <#list partyContactMechValueMaps as partyContactMechValueMap>
            <#assign contactMech = partyContactMechValueMap.contactMech! />
            <#assign contactMechType = partyContactMechValueMap.contactMechType! />
            <#assign partyContactMech = partyContactMechValueMap.partyContactMech! />
            <#if contactMech.contactMechTypeId! = "POSTAL_ADDRESS">
            <#assign postalAddress = partyContactMechValueMap.postalAddress! />
            <#if postalAddress??>
          <div class="personal-information">
            <h2>Shipping Information <a class="text-danger" href="<@ofbizUrl>editcontactmech?contactMechId=${contactMech.contactMechId}</@ofbizUrl>" title="Edit Personal Info"><i class="glyphicon glyphicon-pencil cursor-pointer"></i></a></h2>
            <ul class="list-unstyled">
              <li><#if postalAddress.toName?has_content>${postalAddress.toName}</#if></li>
              <li><#if postalAddress.attnName?has_content> ${postalAddress.attnName}</#if></li>
              <li>${postalAddress.address1}</li>
              <li><#if postalAddress.address2?has_content>${postalAddress.address2}</#if></li>
              <li> ${postalAddress.city}<#if postalAddress.stateProvinceGeoId?has_content>,&nbsp;${postalAddress.stateProvinceGeoId}</#if>&nbsp;${postalAddress.postalCode!}</li>
              <li><#if postalAddress.countryGeoId?has_content><br />${postalAddress.countryGeoId}</#if></li>
            </ul>
          </div>
           <#else>
           ${uiLabelMap.PartyPostalInformationNotFound}.
           </#if>
          </#if>
         </#list>
         </#if>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
          <div class="shipping-information">
            <h2>Personal information</h2>
              <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                <#if person??>
                    <ul class="iconlist pull-right">
                      <li><a title="Edit Shipping Address" class="text-danger" href="<@ofbizUrl>editperson</@ofbizUrl>"><i class="glyphicon glyphicon-pencil cursor-pointer"></i></a></li>
                      <li>
                        <a style="margin-left: 5px;" title="Delete Shipping Address" class="text-danger" data-toggle="modal" data-target="#deleteShippingInfoModal"><i class="glyphicon glyphicon-trash cursor-pointer"></i></a>
                      </li>
                    </ul>
                    <ul class="list-unstyled ">
                      <li>${person.personalTitle!} ${person.firstName!} ${person.middleName!} ${person.lastName!} ${person.suffix!}</li>
                      <#if person.nickname?has_content><li>${uiLabelMap.PartyNickName} ${person.nickname}</li></#if>
                      <#if person.gender?has_content><li>${uiLabelMap.PartyGender} ${person.gender}</li></#if>
                      <#if person.birthDate??><li>${uiLabelMap.PartyBirthDate} ${person.birthDate.toString()}</li></#if>
                      <#if person.maritalStatus?has_content><li>${uiLabelMap.PartyMaritalStatus} ${person.maritalStatus}</li></#if>
                      <li></li>
                      <li>sadf, AA, 23333665</li>
                      <li>USA</li>

                    </ul>
                <#else>
                  <label>${uiLabelMap.PartyPersonalInformationNotFound}</label>
                </#if>
                </div>
              </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
          <div class="billing-information">
            <h2>Billing Information <a title="Add Billing Information"><i class="text-danger cursor-pointer glyphicon glyphicon-plus cursor-pointer"></i></a></h2>
              <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                <#if paymentMethodValueMaps?has_content>
                  <#list paymentMethodValueMaps as paymentMethodValueMap>
                    <#assign paymentMethod = paymentMethodValueMap.paymentMethod! />
                    <#assign creditCard = paymentMethodValueMap.creditCard! />
                    <#assign giftCard = paymentMethodValueMap.giftCard! />
                    <#assign eftAccount = paymentMethodValueMap.eftAccount! />
                    <#if paymentMethod.paymentMethodTypeId! == "CREDIT_CARD">
                    <ul class="iconlist pull-right">
                      <li><a title="Edit Billing Information" href="<@ofbizUrl>editcreditcard?paymentMethodId=${paymentMethod.paymentMethodId0}</@ofbizUrl>"><i class="text-danger cursor-pointer glyphicon glyphicon-pencil"></i></a></li>
                    </ul>
                    <ul class="list-unstyled ">
                      <li><#if creditCard.companyNameOnCard?has_content>${creditCard.companyNameOnCard}&nbsp;</#if></li>
                      <li class="CCT_VISA"><#if creditCard.titleOnCard?has_content>${creditCard.titleOnCard}&nbsp;</#if></li>
                      <li>${creditCard.firstNameOnCard}&nbsp;<#if creditCard.middleNameOnCard?has_content>${creditCard.middleNameOnCard}&nbsp;</#if>${creditCard.lastNameOnCard}</li>
                      <#if creditCard.suffixOnCard?has_content>&nbsp;<li>${creditCard.suffixOnCard}</li></#if>
                      <li>${Static["org.ofbiz.party.contact.ContactHelper"].formatCreditCard(creditCard)}</li>
                      <#if paymentMethod.description?has_content><li>(${paymentMethod.description})</li></#if>
                      <#if paymentMethod.fromDate?has_content><li>(${uiLabelMap.CommonUpdated}:&nbsp;${paymentMethod.fromDate.toString()})</li></#if>
                      <#if paymentMethod.thruDate??><li>(${uiLabelMap.CommonDelete}:&nbsp;${paymentMethod.thruDate.toString()})</li></#if>
                    </ul>
                    <#elseif paymentMethod.paymentMethodTypeId! == "EFT_ACCOUNT">
                    <ul class="list-unstyled ">
                      <li>${uiLabelMap.AccountingEFTAccount}: ${eftAccount.nameOnAccount!} - <#if eftAccount.bankName?has_content>${uiLabelMap.AccountingBank}: ${eftAccount.bankName}</#if> <#if eftAccount.accountNumber?has_content>${uiLabelMap.AccountingAccount} #: ${eftAccount.accountNumber}</#if></li>
                      <#if paymentMethod.description?has_content><li>(${paymentMethod.description})</li></#if>
                      <#if paymentMethod.fromDate?has_content><li>(${uiLabelMap.CommonUpdated}:&nbsp;${paymentMethod.fromDate.toString()})</li></#if>
                      <#if paymentMethod.thruDate??><li>(${uiLabelMap.CommonDelete}:&nbsp;${paymentMethod.thruDate.toString()})</li></#if>
                    </ul>
                    </#if>
                  </#list>
                <#else>
                  ${uiLabelMap.AccountingNoPaymentMethodInformation}.
                </#if>
                </div>
              </div>
          </div>
        </div>
      </div>
      
      <!-- Modal -->
      <div class="modal fade" id="personalInfoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title" id="myModalLabel">Edit Personal Info</h4>
            </div>
            <div class="modal-body">
              <form novalidate="novalidate" method="post">
                <div class="col-lg-12">
                  <div class="form-group">
                    <label for="first-name">First Name <span class="asterisk"> *</span></label>
                    <input name="firstName" value="Demo" id="first-name" class="form-control validate-required validate-name" data-label="First Name" type="text">
                  </div>
                </div>
                <div class="col-lg-12">
                  <div class="form-group">
                    <label for="last-name">Last Name <span class="asterisk"> *</span></label>
                    <input name="lastName" value="demo" id="last-name" class="form-control validate-required validate-lName" data-label="Last Name" type="text">
                  </div>
                </div>
                <div class="col-lg-12">
                  <div class="form-group">
                    <label for="email-address">Email Address <span class="asterisk"> *</span></label>
                    <input name="emailAddress" value="shopinwebsite@email.com" id="email-address" class="form-control validate-required validate-email" data-label="Email Address" type="email">
                  </div>
                </div>
                
              </form>
            </div>
            <div class="modal-footer">
              <div class="col-lg-12">
                  <div class="form-group">
                    <button type="submit" class="btn btn-primary">Save</button>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      
      
      
      <div class="modal fade" id="changePasswordModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title" id="myModalLabel">Change Password</h4>
            </div>
            <div class="modal-body"><div class="row">
              <form novalidate="novalidate">
                <div class="col-lg-12">
                  <div class="form-group">
                    <label for="current-password">Current Password <span class="asterisk"> *</span></label>
                    <input autocomplete="off" name="currentPassword" id="current-password" class="form-control validate-required" data-label="Current Password" type="password">
                  </div>
                </div>
                <div class="col-lg-12">
                  <div class="form-group">
                    <label for="new-password">New Password <span class="asterisk"> *</span></label>
                    <input name="newPassword" id="new-password" class="form-control" data-label="New Password" type="password">
                  </div>
                </div>
                <div class="col-lg-12">
                  <div class="form-group">
                    <label for="new-passwordVerify">Retype Password <span class="asterisk"> *</span></label>
                    <input autocomplete="off" name="newPasswordVerify" id="new-passwordVerify" class="form-control" data-label="Retype Password" type="password">
                  </div>
                </div>
              </form>
            </div>
            </div>
            <div class="modal-footer">
              <div class="col-lg-12">
                  <div class="form-group">
                    <button type="submit" class="btn btn-primary">Save</button>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      
      
      
      
      
      <div class="modal fade" id="addShippingAddressModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title" id="myModalLabel">Add Shipping Address</h4>
            </div>
            <div class="modal-body"><form novalidate="novalidate">
                <div class="form-group">
                  <label for="ship-to-name">To</label>
                  <input class="form-control" id="ship-to-name" name="shipToName" data-label="Name" type="text">
                </div>
                <div class="form-group">
                  <label for="ship-to-address1">Address</label>
                  <input class="form-control validate-required" id="ship-to-address1" name="shipToAddress1" data-label="Address" type="search">
                </div>
                <div class="form-group">
                  <input class="form-control" id="ship-to-address2" addressline2="" name="shipToAddress2" type="text">
                </div>
              <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="form-group">
                  <label for="ship-country">Country</label>
                  <select class="form-control validate-required js-country" country="" id="ship-country" name="shipToCountryGeoId" data-dependent="#stateProvinceGeoId">
                      <option value="CAN" title="CAN">Canada</option>
                      <option value="USA" title="USA" selected="">United States</option>
                  </select>
                </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="form-group">
                  <label for="stateProvinceGeoId">State/Province</label>
                  <select name="shipToStateProvinceGeoId" id="stateProvinceGeoId" state="" class="form-control validate-required"><optgroup label="USA">
                            <option value="AA" title="AA">AA</option>
                            <option value="AE" title="AE">AE</option>
                        </optgroup></select>
                </div>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="form-group">
                  <label for="ship-to-city">City</label>
                  <input class="form-control validate-required" id="ship-to-city" city="" name="shipToCity" data-label="City" type="text">
                </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="form-group">
                  <label for="ship-to-postal-code">Zip</label>
                  <input class="form-control validate-required" postal_code="" data-country-box="#ship-country" id="ship-to-postal-code" name="shipToPostalCode" data-label="Zip" type="text">
                </div>
                </div>
              </div>
                <div class="form-group">
                  <label for="ship-to-contact">Phone</label>
                  <input maxlength="13" class="form-control validate-phone validate-required" id="ship-to-contact" name="shipToContactNumber" data-label="Phone" type="tel">
                </div>
              <div class="validation-messages">
              </div>
            </form>
            </div>
            <div class="modal-footer">
              <div class="col-lg-12">
                  <div class="form-group">
                    <button type="submit" class="btn btn-primary">Add</button>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      
      
      <div class="modal fade" id="deleteShippingInfoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title" id="myModalLabel">Delete Shipping Address</h4>
            </div>
            <div class="modal-body">Are you sure you want to delete shipping address?</div>
            <div class="modal-footer">
              <div class="col-lg-12">
                  <div class="form-group">
                    <button type="submit" class="btn btn-primary pull-right">Yes</button>
                    <button style="margin-right: 5px" type="submit" class="btn btn-danger pull-right">No</button>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      
      
      
      
      
    </div>
<!--//login-->
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

<!-- slide -->
 
</body>
</html>