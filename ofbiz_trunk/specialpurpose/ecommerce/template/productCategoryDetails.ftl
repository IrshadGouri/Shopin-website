
<!DOCTYPE html>
<html>
<head>
<title>Shopin A Ecommerce Category Flat Bootstrap Responsive Website Template | Products :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />    
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
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<!--header-->
  <div class="header">
    <div class="container">
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
    </div>
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
        <h1>Products</h1>
        <em></em>
        <h2><a href="index.html">Home</a><label>/</label>Products</a></h2>
    </div>
</div>-->
    <!--content-->
        <div class="product">
            <div class="container">
            
            <div class="col-md-3 product-bottom">
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
            <div class="mid-popular">

<#macro paginationControls>
    <#assign viewIndexMax = Static["java.lang.Math"].ceil((listSize)?double / viewSize?double)>
      <#if (viewIndexMax?int > 0)>
        <div class="product-prevnext">
            <select name="pageSelect" onchange="callDocumentByPaginate(this[this.selectedIndex].value);">
                <option value="#">${uiLabelMap.CommonPage} ${viewIndex?int + 1} ${uiLabelMap.CommonOf} ${viewIndexMax}</option>
                <#if (viewIndex?int > 1)>
                    <#list 1..viewIndexMax as curViewNum>
                         <option value="${productCategoryId}~${viewSize}~${curViewNum-1?int}">${uiLabelMap.CommonGotoPage} ${curViewNum}</option>
                    </#list>
                </#if>
            </select>
            <#-- End Page Select Drop-Down -->
            <#if (viewIndex?int > 0)>
                <a href="javascript: void(0);" onclick="callDocumentByPaginate('${productCategoryId}~${viewSize}~${viewIndex?int - 1}');" class="buttontext">${uiLabelMap.CommonPrevious}</a> |
            </#if>
            <#if ((listSize?int - viewSize?int) > 0)>
                <span>${lowIndex} - ${highIndex} ${uiLabelMap.CommonOf} ${listSize}</span>
            </#if>
            <#if highIndex?int < listSize?int>
             | <a href="javascript: void(0);" onclick="callDocumentByPaginate('${productCategoryId}~${viewSize}~${viewIndex?int + 1}');" class="buttontext">${uiLabelMap.CommonNext}</a>
            </#if>
        </div>
    </#if>
</#macro>


<#if productCategory??>
    <#assign categoryName = categoryContentWrapper.get("CATEGORY_NAME", "html")!/>
    <#assign categoryDescription = categoryContentWrapper.get("DESCRIPTION", "html")!/>
    <#if categoryName?has_content>
        <h1>${categoryName}</h1>
    </#if>
    <#if categoryDescription?has_content>
        <h1>${categoryDescription}</h1>
    </#if>
    <#if hasQuantities??>
      <form method="post" action="<@ofbizUrl>addCategoryDefaults<#if requestAttributes._CURRENT_VIEW_??>/${requestAttributes._CURRENT_VIEW_}</#if></@ofbizUrl>" name="thecategoryform" style='margin: 0;'>
        <input type='hidden' name='add_category_id' value='${productCategory.productCategoryId}'/>
        <#if requestParameters.product_id??><input type='hidden' name='product_id' value='${requestParameters.product_id}'/></#if>
        <#if requestParameters.category_id??><input type='hidden' name='category_id' value='${requestParameters.category_id}'/></#if>
        <#if requestParameters.VIEW_INDEX??><input type='hidden' name='VIEW_INDEX' value='${requestParameters.VIEW_INDEX}'/></#if>
        <#if requestParameters.SEARCH_STRING??><input type='hidden' name='SEARCH_STRING' value='${requestParameters.SEARCH_STRING}'/></#if>
        <#if requestParameters.SEARCH_CATEGORY_ID??><input type='hidden' name='SEARCH_CATEGORY_ID' value='${requestParameters.SEARCH_CATEGORY_ID}'/></#if>
        <a href="javascript:document.thecategoryform.submit()" class="buttontext"><span style="white-space: nowrap;">${uiLabelMap.ProductAddProductsUsingDefaultQuantities}</span></a>
      </form>
    </#if>
    <#if searchInCategory?default("Y") == "Y">
        <a href="<@ofbizUrl>advancedsearch?SEARCH_CATEGORY_ID=${productCategory.productCategoryId}</@ofbizUrl>" class="buttontext">${uiLabelMap.ProductSearchInCategory}</a>
    </#if>
    <#assign longDescription = categoryContentWrapper.get("LONG_DESCRIPTION", "html")!/>
    <#assign categoryImageUrl = categoryContentWrapper.get("CATEGORY_IMAGE_URL", "url")!/>
    <#if categoryImageUrl?string?has_content || longDescription?has_content>
      <div>
        <#if categoryImageUrl?string?has_content>
          <#assign height=100/>
          <img src='<@ofbizContentUrl>${categoryImageUrl}</@ofbizContentUrl>' vspace='5' hspace='5' align='left' class='cssImgLarge' />
        </#if>
        <#if longDescription?has_content>
          ${longDescription}
        </#if>
      </div>
  </#if>
</#if>

<#if productCategoryLinkScreen?has_content && productCategoryLinks?has_content>
    <div class="productcategorylink-container">
        <#list productCategoryLinks as productCategoryLink>
            ${setRequestAttribute("productCategoryLink",productCategoryLink)}
            ${screens.render(productCategoryLinkScreen)}
        </#list>
    </div>
</#if>

<#if productCategoryMembers?has_content>
    <#-- Pagination -->
    <#if paginateEcommerceStyle??>
        <@paginationControls/>
    <#else>
        <#include "component://common/template/includes/HtmlTemplate.ftl"/>
        <#assign commonUrl = "category?category_id="+ (parameters.category_id!) + "&"/>
        <#--assign viewIndex = viewIndex - 1/-->
        <#assign viewIndexFirst = 0/>
        <#assign viewIndexPrevious = viewIndex - 1/>
        <#assign viewIndexNext = viewIndex + 1/>
        <#assign viewIndexLast = Static["org.ofbiz.base.util.UtilMisc"].getViewLastIndex(listSize, viewSize) />
        <#assign messageMap = Static["org.ofbiz.base.util.UtilMisc"].toMap("lowCount", lowIndex, "highCount", highIndex, "total", listSize)/>
        <#assign commonDisplaying = Static["org.ofbiz.base.util.UtilProperties"].getMessage("CommonUiLabels", "CommonDisplaying", messageMap, locale)/>
        <@nextPrev commonUrl=commonUrl ajaxEnabled=false javaScriptEnabled=false paginateStyle="nav-pager" paginateFirstStyle="nav-first" viewIndex=viewIndex highIndex=highIndex listSize=listSize viewSize=viewSize ajaxFirstUrl="" firstUrl="" paginateFirstLabel="" paginatePreviousStyle="nav-previous" ajaxPreviousUrl="" previousUrl="" paginatePreviousLabel="" pageLabel="" ajaxSelectUrl="" selectUrl="" ajaxSelectSizeUrl="" selectSizeUrl="" commonDisplaying=commonDisplaying paginateNextStyle="nav-next" ajaxNextUrl="" nextUrl="" paginateNextLabel="" paginateLastStyle="nav-last" ajaxLastUrl="" lastUrl="" paginateLastLabel="" paginateViewSizeLabel="" />
    </#if>
      <#assign numCol = numCol?default(1)>
      <#assign numCol = numCol?number>
      <#assign tabCol = 1>
      <div
      <#if categoryImageUrl?string?has_content>
        style="position: relative; margin-top: ${height}px;"
      </#if>
      class="productsummary-container<#if (numCol?int > 1)> matrix</#if>">
      <#if (numCol?int > 1)>
        <table>
      </#if>
        <#list productCategoryMembers as productCategoryMember>
          <#if (numCol?int == 1)>
            ${setRequestAttribute("optProductId", productCategoryMember.productId)}
            ${setRequestAttribute("productCategoryMember", productCategoryMember)}
            ${setRequestAttribute("listIndex", productCategoryMember_index)}
            ${screens.render("component://ecommerce/widget/CatalogScreens.xml#custome-productsummary")}
          <#else>
              <#if (tabCol?int = 1)><tr></#if>
                  <td>
                      ${setRequestAttribute("optProductId", productCategoryMember.productId)}
                      ${setRequestAttribute("productCategoryMember", productCategoryMember)}
                      ${setRequestAttribute("listIndex", productCategoryMember_index)}
                      ${screens.render("component://ecommerce/widget/CatalogScreens.xml#custome-productsummary")}
                  </td>
              <#if (tabCol?int = numCol)></tr></#if>
              <#assign tabCol = tabCol+1><#if (tabCol?int > numCol)><#assign tabCol = 1></#if>
           </#if>
        </#list>
      <#if (numCol?int > 1)>
        </table>
      </#if>
      </div>
    <#if paginateEcommerceStyle??>
        <@paginationControls/>
    </#if>
<#else>
    <hr />
    <div>${uiLabelMap.ProductNoProductsInThisCategory}</div>
</#if>
                    <!-- div class="col-md-4 item-grid1 simpleCart_shelfItem">
                    <div class=" mid-pop">
                    <div class="pro-img">
                        <img src="images/pc1.jpg" class="img-responsive" alt="">
                        <div class="zoom-icon ">
                        <a class="picture" href="images/pc1.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                        <a href="single.html"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                        </div>
                        </div>
                        <div class="mid-1">
                        <div class="women">
                        <div class="women-top">
                            <span>Women</span>
                            <h6><a href="single.html">At vero eos</a></h6>
                            </div>
                            <div class="img item_add">
                                <a href="#"><img src="images/ca.png" alt=""></a>
                            </div>
                            <div class="clearfix"></div>
                            </div>
                            <div class="mid-2">
                                <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                                  <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>
                                
                                <div class="clearfix"></div>
                            </div>
                            
                        </div>
                    </div>
                    </div>
                    <div class="col-md-4 item-grid1 simpleCart_shelfItem">
                    <div class=" mid-pop">
                    <div class="pro-img">
                        <img src="images/pc2.jpg" class="img-responsive" alt="">
                        <div class="zoom-icon ">
                        <a class="picture" href="images/pc2.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                        <a href="single.html"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                        </div>
                        </div>
                        <div class="mid-1">
                        <div class="women">
                        <div class="women-top">
                            <span>Men</span>
                            <h6><a href="single.html">Sed ut perspiciati</a></h6>
                            </div>
                            <div class="img item_add">
                                <a href="#"><img src="images/ca.png" alt=""></a>
                            </div>
                            <div class="clearfix"></div>
                            </div>
                            <div class="mid-2">
                                <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                                  <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>
                                
                                <div class="clearfix"></div>
                            </div>
                            
                        </div>
                    </div>
                    </div>
                        <div class="col-md-4 item-grid1 simpleCart_shelfItem">
                    <div class=" mid-pop">
                    <div class="pro-img">
                        <img src="images/pc3.jpg" class="img-responsive" alt="">
                        <div class="zoom-icon ">
                        <a class="picture" href="images/pc3.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                        <a href="single.html"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                        </div>
                        </div>
                        <div class="mid-1">
                        <div class="women">
                        <div class="women-top">
                            <span>Women</span>
                            <h6><a href="single.html">On the other</a></h6>
                            </div>
                            <div class="img item_add">
                                <a href="#"><img src="images/ca.png" alt=""></a>
                            </div>
                            <div class="clearfix"></div>
                            </div>
                            <div class="mid-2">
                                <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                                  <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>
                                
                                <div class="clearfix"></div>
                            </div>
                            
                        </div>
                    </div>
                    </div>
                    <div class="col-md-4 item-grid1 simpleCart_shelfItem">
                    <div class=" mid-pop">
                    <div class="pro-img">
                        <img src="images/pc4.jpg" class="img-responsive" alt="">
                        <div class="zoom-icon ">
                        <a class="picture" href="images/pc4.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                        <a href="single.html"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                        </div>
                        </div>
                        <div class="mid-1">
                        <div class="women">
                        <div class="women-top">
                            <span>Men</span>
                            <h6><a href="single.html">On the other</a></h6>
                            </div>
                            <div class="img item_add">
                                <a href="#"><img src="images/ca.png" alt=""></a>
                            </div>
                            <div class="clearfix"></div>
                            </div>
                            <div class="mid-2">
                                <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                                  <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>
                                
                                <div class="clearfix"></div>
                            </div>
                            
                        </div>
                    </div>
                    </div>
                    <div class="col-md-4 item-grid1 simpleCart_shelfItem">
                    <div class=" mid-pop">
                    <div class="pro-img">
                        <img src="images/pc5.jpg" class="img-responsive" alt="">
                        <div class="zoom-icon ">
                        <a class="picture" href="images/pc5.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                        <a href="single.html"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                        </div>
                        </div>
                        <div class="mid-1">
                        <div class="women">
                        <div class="women-top">
                            <span>Men</span>
                            <h6><a href="single.html">Sed ut perspiciati</a></h6>
                            </div>
                            <div class="img item_add">
                                <a href="#"><img src="images/ca.png" alt=""></a>
                            </div>
                            <div class="clearfix"></div>
                            </div>
                            <div class="mid-2">
                                <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                                  <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>
                                
                                <div class="clearfix"></div>
                            </div>
                            
                        </div>
                    </div>
                    </div>
                    
                    <div class="col-md-4 item-grid1 simpleCart_shelfItem">
                    <div class=" mid-pop">
                    <div class="pro-img">
                        <img src="images/pc6.jpg" class="img-responsive" alt="">
                        <div class="zoom-icon ">
                        <a class="picture" href="images/pc6.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                        <a href="single.html"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                        </div>
                        </div>
                        <div class="mid-1">
                        <div class="women">
                        <div class="women-top">
                            <span>Women</span>
                            <h6><a href="single.html">At vero eos</a></h6>
                            </div>
                            <div class="img item_add">
                                <a href="#"><img src="images/ca.png" alt=""></a>
                            </div>
                            <div class="clearfix"></div>
                            </div>
                            <div class="mid-2">
                                <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                                  <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>
                                
                                <div class="clearfix"></div>
                            </div>
                            
                        </div>
                    </div>
                    </div>
                    <div class="col-md-4 item-grid1 simpleCart_shelfItem">
                    <div class=" mid-pop">
                    <div class="pro-img">
                        <img src="images/pc7.jpg" class="img-responsive" alt="">
                        <div class="zoom-icon ">
                        <a class="picture" href="images/pc7.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                        <a href="single.html"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                        </div>
                        </div>
                        <div class="mid-1">
                        <div class="women">
                        <div class="women-top">
                            <span>Men</span>
                            <h6><a href="single.html">Sed ut perspiciati</a></h6>
                            </div>
                            <div class="img item_add">
                                <a href="#"><img src="images/ca.png" alt=""></a>
                            </div>
                            <div class="clearfix"></div>
                            </div>
                            <div class="mid-2">
                                <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                                  <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>
                                
                                <div class="clearfix"></div>
                            </div>
                            
                        </div>
                    </div>
                    </div>
                    <div class="col-md-4 item-grid1 simpleCart_shelfItem">
                    <div class=" mid-pop">
                    <div class="pro-img">
                        <img src="images/pc.jpg" class="img-responsive" alt="">
                        <div class="zoom-icon ">
                        <a class="picture" href="images/pc.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                        <a href="single.html"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                        </div>
                        </div>
                        <div class="mid-1">
                        <div class="women">
                        <div class="women-top">
                            <span>Women</span>
                            <h6><a href="single.html">At vero eos</a></h6>
                            </div>
                            <div class="img item_add">
                                <a href="#"><img src="images/ca.png" alt=""></a>
                            </div>
                            <div class="clearfix"></div>
                            </div>
                            <div class="mid-2">
                                <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                                  <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>
                                
                                <div class="clearfix"></div>
                            </div>
                            
                        </div>
                    </div>
                    </div -->
                    <div class="clearfix"></div>
                </div>
            </div>
            
            </div class="clearfix"></div>
                <!--products-->
            
            <!--//products-->
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
                    <p class="footer-class">&copy; 2016 Shopin. All Rights Reserved | Design by  <a href="" target="_blank">AA</a> </p>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!--//footer-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

    <script src="js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="js/bootstrap.min.js"></script>
 <!--light-box-files -->
        <script src="js/jquery.chocolat.js"></script>
        <link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">
        <!--light-box-files -->
        <script type="text/javascript" charset="utf-8">
        $(function() {
            $('a.picture').Chocolat();
        });
        </script>
</body>
</html>