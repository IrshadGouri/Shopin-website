
<script type="text/javascript">
<!--
    function displayProductVirtualId(variantId, virtualProductId, pForm) {
        if(variantId){
            pForm.product_id.value = variantId;
        }else{
            pForm.product_id.value = '';
            variantId = '';
        }
        var elem = document.getElementById('product_id_display');
        var txt = document.createTextNode(variantId);
        if(elem.hasChildNodes()) {
            elem.replaceChild(txt, elem.firstChild);
        } else {
            elem.appendChild(txt);
        }
        
        var priceElem = document.getElementById('variant_price_display');
        var price = getVariantPrice(variantId);
        var priceTxt = null;
        if(price){
            priceTxt = document.createTextNode(price);
        }else{
            priceTxt = document.createTextNode('');
        }
        
        if(priceElem.hasChildNodes()) {
            priceElem.replaceChild(priceTxt, priceElem.firstChild);
        } else {
            priceElem.appendChild(priceTxt);
        }
    }
//-->
</script>
<#if product??>
    <#-- variable setup -->
    <#if backendPath?default("N") == "Y">
        <#assign productUrl><@ofbizCatalogUrl productId=product.productId productCategoryId=categoryId/></#assign>
    <#else>
        <#assign productUrl><@ofbizCatalogAltUrl productId=product.productId productCategoryId=categoryId/></#assign>
    </#if>

    <#if requestAttributes.productCategoryMember??>
        <#assign prodCatMem = requestAttributes.productCategoryMember>
    </#if>
    <#assign smallImageUrl = productContentWrapper.get("SMALL_IMAGE_URL", "url")!>
    <#assign largeImageUrl = productContentWrapper.get("LARGE_IMAGE_URL", "url")!>
    <#if !smallImageUrl?string?has_content><#assign smallImageUrl = "/images/defaultImage.jpg"></#if>
    <#if !largeImageUrl?string?has_content><#assign largeImageUrl = "/images/defaultImage.jpg"></#if>
    <#-- end variable setup -->
    <#assign productInfoLinkId = "productInfoLink">
    <#assign productInfoLinkId = productInfoLinkId + product.productId/>
    <#assign productDetailId = "productDetailId"/>
    <#assign productDetailId = productDetailId + product.productId/>
					<div class="col-md-4 item-grid1 simpleCart_shelfItem">
					<div class=" mid-pop">
					<div class="pro-img">
						<a href="#"><img src="<@ofbizContentUrl>${contentPathPrefix!}${smallImageUrl}</@ofbizContentUrl>" class="product-category-image" alt=""></a>

						</div>
						<div class="mid-1">
						<div class="women">
						<div class="women-top">
							<span>${product.productId!}</span>
							<h6><a href="${productUrl}" class="linktext">${productContentWrapper.get("PRODUCT_NAME", "html")!}</a></h6>
							</div>
							<#--<div class="img item_add">
								<a href="#"><img src="<@ofbizContentUrl>${contentPathPrefix!}${smallImageUrl}</@ofbizContentUrl>" class="product-category-image" alt=""></a>
							</div>-->
							<div class="clearfix"></div>
							</div>
							<div class="mid-2">
							  <#if totalPrice??>
								<p ><em class="item_price"><@ofbizCurrency amount=totalPrice isoCode=totalPrice.currencyUsed/></em></p>
                              </#if>
								
								<div class="clearfix"></div>
							</div>
							
						</div>
					</div>
					</div>

<#else>
&nbsp;${uiLabelMap.ProductErrorProductNotFound}.<br />
</#if>
