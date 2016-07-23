<script type="text/javascript" charset="utf-8">
    function callDocument(id, parentCategoryStr) {
        var checkUrl = '<@ofbizUrl>productCategoryList</@ofbizUrl>';
        if (checkUrl.search("http"))
            var ajaxUrl = '<@ofbizUrl>productCategoryList</@ofbizUrl>';
        else
            var ajaxUrl = '<@ofbizUrl>productCategoryListSecure</@ofbizUrl>';

        //jQuerry Ajax Request
        jQuery.ajax({
            url: ajaxUrl,
            type: 'POST',
            data: {"category_id" : id, "parentCategoryStr" : parentCategoryStr},
            error: function(msg) {
                alert("An error occurred loading content! : " + msg);
            },
            success: function(msg) {
                jQuery('#div3').html(msg);
            }
        });
    }
</script>
    <#if (requestAttributes.topLevelList)??>
        <#assign topLevelList = requestAttributes.topLevelList>
    </#if>
        <ul class="nav navbar-nav nav_1">
            <li><a class="color3" href="product.html">Home</a></li>
            <#if (topLevelList?has_content)>
    	         <@fillTree rootCat=completedTree/>
  	         </#if>
            <#macro fillTree rootCat>
  	        <#if (rootCat?has_content)>
    	    <#list rootCat?sort_by("productCategoryId") as root>
    	        <#if root.categoryName??>
			        <li class="dropdown mega-dropdown active">
			        <a class="color2" href="<@ofbizUrl>productCategoryDetails?category_id=${root.productCategoryId}&parentCategoryStr=${root.parentCategoryId}</@ofbizUrl>" class="dropdown-toggle" data-toggle="dropdown">${root.categoryName?if_exists}<span class="caret"></span></a>
			        <#if root.child?has_content>
				        <div class="dropdown-menu mega-dropdown-menu">
                            <div class="menu-top">
						        <div class="col1">
							        <div class="h_nav">
									    <ul>
									        <#list root.child as cRoot>
										       <li><a href="<@ofbizUrl>productCategoryDetails?category_id=${root.productCategoryId}&parentCategoryStr=${root.parentCategoryId}</@ofbizUrl>">${cRoot.categoryName?if_exists}</a></li>
								             </#list>
										
									    </ul>	
							        </div>							
						        </div>
						        <div class="col1 col5">
						            <img src="images/me1.png" class="img-responsive" alt="">
						         </div>
						        <div class="clearfix"></div>
					        </div>                  
				        </div>
				    </#if>				
			        </li>
			    </#if>
	        </#list>
          </#if>
         </#macro>

        </ul>