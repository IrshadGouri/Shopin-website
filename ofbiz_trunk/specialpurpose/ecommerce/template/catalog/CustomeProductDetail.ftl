
<!DOCTYPE html>
<html>
<head>
<title>Shopin A Ecommerce Category Flat Bootstrap Responsive Website Template | Single :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />  
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
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
    function isVirtual(product) {
        var isVirtual = false;
        <#if virtualJavaScript??>
        for (i = 0; i < VIR.length; i++) {
            if (VIR[i] == product) {
                isVirtual = true;
            }
        }
        </#if>
        return isVirtual;
    }
    function addItem() {
       if (document.addform.add_product_id.value == 'NULL') {
           showErrorAlert("${uiLabelMap.CommonErrorMessage2}","${uiLabelMap.CommonPleaseSelectAllRequiredOptions}");
           return;
       } else {
           if (isVirtual(document.addform.add_product_id.value)) {
               document.location = '<@ofbizUrl>product?category_id=${categoryId!}&amp;product_id=</@ofbizUrl>' + document.addform.add_product_id.value;
               return;
           } else {
               document.addform.submit();
           }
       }
    }
        </script>
<#macro showUnavailableVarients>
  <#if unavailableVariants??>
    <ul>
      <#list unavailableVariants as prod>
        <#assign features = prod.getRelated("ProductFeatureAppl", null, null, false)/>
        <li>
          <#list features as feature>
            <em>${feature.getRelatedOne("ProductFeature", false).description}</em><#if feature_has_next>, </#if>
          </#list>
          <span>${uiLabelMap.ProductItemOutOfStock}</span>
        </li>
      </#list>
    </ul>
  </#if>
</#macro>
<!---//End-rate---->
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<!--header-->
<div class="header">
<!--<div class="container">
        <div class="head">
            <div class=" logo">
                <a href="index.html"><img src="images/logo1.jpg" alt=""></a>    
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
        </div> -->
        
        <div class="container">
        
            <div class="head-top">
            
         <div class="col-sm-10">
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
        <h1>Single</h1>
        <em></em>
        <h2><a href="index.html">Home</a><label>/</label>Single</a></h2>
    </div>
</div>-->
<div class="single">

<div class="container">
<div class="col-md-3 product-bottom product-at">
            <!--categories-->
                <div class=" rsidebar span_1_of_left">
                        <h4 class="cate">Categories</h4>
                             <ul class="menu-drop">
                            <li class="item1"><a href="#">Men </a>
                                <ul class="cute">
                                    <li class="subitem1"><a href="product.html">Cute Kittens </a></li>
                                    <li class="subitem2"><a href="product.html">Strange Stuff </a></li>
                                    <li class="subitem3"><a href="product.html">Automatic Fails </a></li>
                                </ul>
                            </li>
                            <li class="item2"><a href="#">Women </a>
                                <ul class="cute">
                                    <li class="subitem1"><a href="product.html">Cute Kittens </a></li>
                                    <li class="subitem2"><a href="product.html">Strange Stuff </a></li>
                                    <li class="subitem3"><a href="product.html">Automatic Fails </a></li>
                                </ul>
                            </li>
                            <li class="item3"><a href="#">Kids</a>
                                <ul class="cute">
                                    <li class="subitem1"><a href="product.html">Cute Kittens </a></li>
                                    <li class="subitem2"><a href="product.html">Strange Stuff </a></li>
                                    <li class="subitem3"><a href="product.html">Automatic Fails</a></li>
                                </ul>
                            </li>
                            <li class="item4"><a href="#">Accessories</a>
                                <ul class="cute">
                                    <li class="subitem1"><a href="product.html">Cute Kittens </a></li>
                                    <li class="subitem2"><a href="product.html">Strange Stuff </a></li>
                                    <li class="subitem3"><a href="product.html">Automatic Fails</a></li>
                                </ul>
                            </li>
                                    
                            <li class="item4"><a href="#">Shoes</a>
                                <ul class="cute">
                                    <li class="subitem1"><a href="product.html">Cute Kittens </a></li>
                                    <li class="subitem2"><a href="product.html">Strange Stuff </a></li>
                                    <li class="subitem3"><a href="product.html">Automatic Fails </a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                <!--initiate accordion-->
                        <script type="text/javascript">
                            $(function() {
                                var menu_ul = $('.menu-drop > li > ul'),
                                       menu_a  = $('.menu-drop > li > a');
                                menu_ul.hide();
                                menu_a.click(function(e) {
                                    e.preventDefault();
                                    if(!$(this).hasClass('active')) {
                                        menu_a.removeClass('active');
                                        menu_ul.filter(':visible').slideUp('normal');
                                        $(this).addClass('active').next().stop(true,true).slideDown('normal');
                                    } else {
                                        $(this).removeClass('active');
                                        $(this).next().stop(true,true).slideUp('normal');
                                    }
                                });
                            
                            });
                        </script>
<!--//menu-->
 <section  class="sky-form">
                    <h4 class="cate">Discounts</h4>
                     <div class="row row1 scroll-pane">
                         <div class="col col-4">
                                <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Upto - 10% (20)</label>
                         </div>
                         <div class="col col-4">
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>40% - 50% (5)</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (7)</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (2)</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other(50)</label>
                         </div>
                     </div>
                 </section>                                  
                 
                    
                     <!---->
                     <section  class="sky-form">
                        <h4 class="cate">Type</h4>
                            <div class="row row1 scroll-pane">
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Sofa Cum Beds (30)</label>
                                </div>
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Bags  (30)</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Caps & Hats (30)</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Jackets & Coats   (30)</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Jeans  (30)</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Shirts   (30)</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Sunglasses  (30)</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Swimwear  (30)</label>
                                </div>
                            </div>
                   </section>
                        <section  class="sky-form">
                        <h4 class="cate">Brand</h4>
                            <div class="row row1 scroll-pane">
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Roadstar</label>
                                </div>
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Levis</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Persol</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Nike</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Edwin</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>New Balance</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Paul Smith</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Ray-Ban</label>
                                </div>
                            </div>
                   </section>       
        </div>

<div class="col-md-9">
    <div class="col-md-5 grid">     
        <div class="flexslider">
              <ul class="slides">
    <#assign productAdditionalImage1 = productContentWrapper.get("LARGE_IMAGE_URL", "url")!/>
    <#assign productAdditionalImage2 = productContentWrapper.get("ADDITIONAL_IMAGE_2", "url")! />
    <#assign productAdditionalImage3 = productContentWrapper.get("ADDITIONAL_IMAGE_3", "url")! />
    <#assign productAdditionalImage4 = productContentWrapper.get("ADDITIONAL_IMAGE_4", "url")! />
    ============${productAdditionalImage1}=============
                <#if firstLargeImage?has_content>
                    <#assign productAdditionalImage1 = firstLargeImage />
                </#if>
                <li data-thumb="${productAdditionalImage1}">
                    <div class="thumb-image"> <img src="<@ofbizContentUrl>${contentPathPrefix!}${productAdditionalImage1!}</@ofbizContentUrl>" data-imagezoom="true" class="img-responsive"> </div>
                </li>
                <li data-thumb="images/si1.jpg">
                     <div class="thumb-image"> <img src="images/si1.jpg" data-imagezoom="true" class="img-responsive"> </div>
                </li>
                <li data-thumb="images/si2.jpg">
                   <div class="thumb-image"> <img src="images/si2.jpg" data-imagezoom="true" class="img-responsive"> </div>
                </li> 
              </ul>
        </div>
    </div>  
    <#assign price = priceMap! />
<div class="col-md-7 single-top-in">
                        <div class="span_2_of_a1 simpleCart_shelfItem">
                <h3>${productContentWrapper.get("PRODUCT_NAME", "html")!}</h3>
                <p class="in-para"> ${productContentWrapper.get("DESCRIPTION", "html")!}.</p>
                <div class="price_single">
                  <span class="reducedfrom item_price"><@ofbizCurrency amount=price.price isoCode=price.currencyUsed /></span>
                 <a href="#">click for offer</a>
                 <div class="clearfix"></div>
                </div>
                <h4 class="quick">Quick Overview:</h4>
                <p class="quick_desc">${productContentWrapper.get("LONG_DESCRIPTION", "html")!}</p>
                <div class="wish-list">
                    <ul>
                        <li class="wish"><a href="#"><span class="glyphicon glyphicon-check" aria-hidden="true"></span>Add to Wishlist</a></li>
                        <li class="compare"><a href="#"><span class="glyphicon glyphicon-resize-horizontal" aria-hidden="true"></span>Add to Compare</a></li>
                    </ul>
                 </div>
          <form method="post" action="<@ofbizUrl>additem</@ofbizUrl>" name="addform"  style="margin: 0;">
          <fieldset>
            <#assign inStock = true />
            <#assign commentEnable = Static["org.ofbiz.entity.util.EntityUtilProperties"].getPropertyValue("order", "order.item.comment.enable", delegator)>
            <#if commentEnable.equals("Y")>
                <#assign orderItemAttr = Static["org.ofbiz.entity.util.EntityUtilProperties"].getPropertyValue("order", "order.item.attr.prefix", delegator)>
            </#if>
            <#-- Variant Selection -->
            <#if product.isVirtual!?upper_case == "Y">
              <#if product.virtualVariantMethodEnum! == "VV_FEATURETREE" && featureLists?has_content>
                <#list featureLists as featureList>
                    <#list featureList as feature>
                        <#if feature_index == 0>
                            <div>${feature.description}: <select id="FT${feature.productFeatureTypeId}" name="FT${feature.productFeatureTypeId}" onchange="javascript:checkRadioButton();">
                            <option value="select" selected="selected">${uiLabelMap.EcommerceSelectOption}</option>
                        <#else>
                            <option value="${feature.productFeatureId}">${feature.description} <#if feature.price??>(+ <@ofbizCurrency amount=feature.price?string isoCode=feature.currencyUomId />)</#if></option>
                        </#if>
                    </#list>
                    </select>
                    </div>
                </#list>
                  <input type="hidden" name="add_product_id" value="${product.productId}" />
                <div id="addCart1" style="display:none;">
                  <span style="white-space: nowrap;"><strong>${uiLabelMap.CommonQuantity}:=</strong></span>&nbsp;
                  <input type="text" class="value" size="5" name="quantity" value="1" />
                  <a href="javascript:javascript:addItem();" class="buttontext"><span style="white-space: nowrap;">${uiLabelMap.OrderAddToCart}</span></a>
                  &nbsp;
                </div>
                <div id="addCart2" style="display:block;">
                  <span style="white-space: nowrap;"><strong>${uiLabelMap.CommonQuantity}:</strong></span>&nbsp;
                  <input type="text" size="5" value="1" disabled="disabled" />
                  <a href="javascript:showErrorAlert("${uiLabelMap.CommonErrorMessage2}","${uiLabelMap.CommonPleaseSelectAllFeaturesFirst}");" class="buttontext"><span style="white-space: nowrap;">${uiLabelMap.OrderAddToCart}</span></a>
                  &nbsp;
                </div>
              </#if>
              <#if !product.virtualVariantMethodEnum?? || product.virtualVariantMethodEnum == "VV_VARIANTTREE">
               <#if variantTree?? && (variantTree.size() &gt; 0)>
                <#list featureSet as currentType>
                  <div>
                    <select name="FT${currentType}" onchange="javascript:getList(this.name, (this.selectedIndex-1), 1);">
                      <option>${featureTypes.get(currentType)}</option>
                    </select>
                  </div>
                </#list>
                <span id="product_uom"></span>
                <input type="hidden" name="product_id" value="${product.productId}"/>
                <input type="hidden" name="add_product_id" value="NULL"/>
                <div>
                  <strong><span id="product_id_display"> </span></strong>
                  <strong><div id="variant_price_display"> </div></strong>
                </div>
              <#else>
                <input type="hidden" name="add_product_id" value="NULL"/>
                <#assign inStock = false />
              </#if>
             </#if>
            <#else>
              <input type="hidden" name="add_product_id" value="${product.productId}" />
              <#if mainProducts?has_content>
                <input type="hidden" name="product_id" value=""/>
                <select name="productVariantId" onchange="javascript:displayProductVirtualVariantId(this.value);">
                    <option value="">Select Unit Of Measure</option>
                    <#list mainProducts as mainProduct>
                        <option value="${mainProduct.productId}">${mainProduct.uomDesc} : ${mainProduct.piecesIncluded}</option>
                    </#list>
                </select><br/>
                <div>
                  <strong><span id="product_id_display"> </span></strong>
                  <strong><div id="variant_price_display"> </div></strong>
                </div>
              </#if>
              <#if (availableInventory??) && (availableInventory <= 0) && product.requireAmount?default("N") == "N">
                <#assign inStock = false />
              </#if>
            </#if>
            <#-- check to see if introductionDate hasnt passed yet -->
            <#if product.introductionDate?? && nowTimestamp.before(product.introductionDate)>
            <p>&nbsp;</p>
              <div style="color: red;">${uiLabelMap.ProductProductNotYetMadeAvailable}.</div>
            <#-- check to see if salesDiscontinuationDate has passed -->
            <#elseif product.salesDiscontinuationDate?? && nowTimestamp.after(product.salesDiscontinuationDate)>
              <div style="color: red;">${uiLabelMap.ProductProductNoLongerAvailable}.</div>
            <#-- check to see if the product requires inventory check and has inventory -->
            <#elseif product.virtualVariantMethodEnum! != "VV_FEATURETREE">
              <#if inStock>
                <#if product.requireAmount?default("N") == "Y">
                  <#assign hiddenStyle = "visible" />
                <#else>
                  <#assign hiddenStyle = "hidden"/>
                </#if>
                <div id="add_amount" class="${hiddenStyle}">
                  <span style="white-space: nowrap;"><strong>${uiLabelMap.CommonAmount}:</strong></span>&nbsp;
                  <input type="text" size="5" name="add_amount" value=""/>
                </div>
                <#if product.productTypeId! == "ASSET_USAGE" || product.productTypeId! == "ASSET_USAGE_OUT_IN">
                  <div>
                    <label>Start Date(yyyy-mm-dd)</label><@htmlTemplate.renderDateTimeField event="" action="" name="reservStart" className="" alert="" title="Format: yyyy-MM-dd HH:mm:ss.SSS" value="${startDate}" size="25" maxlength="30" id="reservStart1" dateType="date" shortDateInput=true timeDropdownParamName="" defaultDateTimeString="" localizedIconTitle="" timeDropdown="" timeHourName="" classString="" hour1="" hour2="" timeMinutesName="" minutes="" isTwelveHour="" ampmName="" amSelected="" pmSelected="" compositeType="" formName=""/>
                  </div>
                  <div>
                    <#--td nowrap="nowrap" align="right">Number<br />of days</td><td><input type="textt" size="4" name="reservLength"/></td></tr><tr><td>&nbsp;</td><td align="right" nowrap="nowrap">&nbsp;</td-->
                    Number of days<input type="text" size="4" name="reservLength" value=""/>
                    Number of persons<input type="text" size="4" name="reservPersons" value="2"/>
                    Number of rooms<input type="text" size="5" name="quantity" value="1"/>
                  </div>
                  <a href="javascript:addItem()" class="buttontext"><span style="white-space: nowrap;">${uiLabelMap.OrderAddToCart}</span></a>
                <#else>
                  <span><input name="quantity" id="quantity" value="1" size="4" maxLength="4" type="text" <#if product.isVirtual!?upper_case == "Y">disabled="disabled"</#if> /></span><a href="javascript:addItem()" id="addToCart" name="addToCart" class="buttontext">${uiLabelMap.OrderAddToCart}</a>
                  <@showUnavailableVarients/>
                </#if>
                <#else>
                  <#if productStore??>
                    <#if productStore.requireInventory?? && productStore.requireInventory == "N">
                      <span><input name="quantity" id="quantity" value="1" size="4" maxLength="4" type="text" <#if product.isVirtual!?upper_case == "Y">disabled="disabled"</#if> /></span><a href="javascript:addItem()" id="addToCart" name="addToCart" class="add-to item_add hvr-skew-backward">${uiLabelMap.OrderAddToCart}</a>
                      <@showUnavailableVarients/>
                    <#else>
                      <span><input name="quantity" id="quantity" value="1" size="4" maxLength="4" type="text" disabled="disabled" /></span><a href="javascript:void(0);" disabled="disabled" class="buttontext">${uiLabelMap.OrderAddToCart}</a><br />
                      <span>${uiLabelMap.ProductItemOutOfStock}<#if product.inventoryMessage??>&mdash; ${product.inventoryMessage}</#if></span>
                    </#if>
                  </#if>
              </#if>
            </#if>
            <#if variantPriceList??>
              <#list variantPriceList as vpricing>
                <#assign variantName = vpricing.get("variantName")!>
                <#assign secondVariantName = vpricing.get("secondVariantName")!>
                <#assign minimumQuantity = vpricing.get("minimumQuantity")>
                <#if minimumQuantity &gt; 0>
                  <div>minimum order quantity for ${secondVariantName!} ${variantName!} is ${minimumQuantity!}</div>
                </#if>
              </#list>
            <#elseif minimumQuantity?? && minimumQuantity?has_content && minimumQuantity &gt; 0>
               <div>minimum order quantity for ${productContentWrapper.get("PRODUCT_NAME", "html")!} is ${minimumQuantity!}</div>
            </#if>
            </fieldset>
          </form>
               </div>
                            <!--quantity-->
    <script>
    $('.value-plus').on('click', function(){
        var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
        console.log("========divUpd====="+newVal)
        $('#quantity').val(newVal)
        divUpd.text(newVal);
    });

    $('.value-minus').on('click', function(){
        var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
        if(newVal>=1) divUpd.text(newVal);
    });
    </script>
    <!--quantity-->
                 
            <div class="clearfix"> </div>
            </div>
        
                    </div>
            <div class="clearfix"> </div>
            <!---->
            <div class="tab-head">
             <nav class="nav-sidebar">
        <ul class="nav tabs">
          <li class="active"><a href="#tab1" data-toggle="tab">Product Description</a></li>
          <li class=""><a href="#tab2" data-toggle="tab">Additional Information</a></li> 
          <li class=""><a href="#tab3" data-toggle="tab">Reviews</a></li>  
        </ul>
    </nav>
    <div class="tab-content one">
<div class="tab-pane active text-style" id="tab1">
 <div class="facts">
                                      <p>${productContentWrapper.get("LONG_DESCRIPTION", "html")!}</p>
      
                                    </div>

</div>
<div class="tab-pane text-style" id="tab2">
    
                                    <div class="facts">                                 
                                        <p>${productContentWrapper.get("WARNINGS", "html")!}</p>
                                        <ul >
                                            <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Multimedia Systems</li>
                                            <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Digital media adapters</li>
                                            <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Set top boxes for HDTV and IPTV Player  </li>
                                        </ul>
                                    </div>  

</div>
<div class="tab-pane text-style" id="tab3">

                                     <div class="facts">
                                      <p >        <div id="reviews">
          <div>${uiLabelMap.OrderCustomerReviews}:</div>
          <#if averageRating?? && (averageRating &gt; 0) && numRatings?? && (numRatings &gt; 1)>
              <div>${uiLabelMap.OrderAverageRating}: ${averageRating} <#if numRatings??>(${uiLabelMap.CommonFrom} ${numRatings} ${uiLabelMap.OrderRatings})</#if></div>
          </#if>
    <hr />
          <#if productReviews?has_content>
            <#list productReviews as productReview>
              <#assign postedUserLogin = productReview.getRelatedOne("UserLogin", false) />
              <#assign postedPerson = postedUserLogin.getRelatedOne("Person", false)! />
                        <div><strong>${uiLabelMap.CommonBy}: </strong><#if productReview.postedAnonymous?default("N") == "Y"> ${uiLabelMap.OrderAnonymous}<#else> ${postedPerson.firstName} ${postedPerson.lastName}&nbsp;</#if></div>
                        <div><strong>${uiLabelMap.CommonAt}: </strong>${productReview.postedDateTime!}&nbsp;</div>
                        <div><strong>${uiLabelMap.OrderRanking}: </strong>${productReview.productRating!?string}</div>
                        <div>&nbsp;</div>
                        <div>${productReview.productReview!}</div>
                    <hr />
            </#list>
            <div>
                <a href="<@ofbizUrl>reviewProduct?category_id=${categoryId!}&amp;product_id=${product.productId}</@ofbizUrl>" class="linktext">${uiLabelMap.ProductReviewThisProduct}!</a>
            </div>
          <#else>
            <div>${uiLabelMap.ProductProductNotReviewedYet}.</div>
            <div>
                <a href="<@ofbizUrl>reviewProduct?category_id=${categoryId!}&amp;product_id=${product.productId}</@ofbizUrl>" class="linktext">${uiLabelMap.ProductBeTheFirstToReviewThisProduct}</a>
            </div>
        </div>
      </#if> </p>
 
     </div> 

 </div>
  
  </div>
  <div class="clearfix"></div>
  </div>
            <!----> 
</div>
<!----->


        <div class="clearfix"> </div>
    </div>
    </div>
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
                    <p class="footer-class">&copy; 2016 Shopin. All Rights Reserved | Design by  <a href="#" target="_blank">AA</a> </p>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!--//footer-->
<script src="js/imagezoom.js"></script>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>

    <script src="js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="js/bootstrap.min.js"></script>


</body>
</html>