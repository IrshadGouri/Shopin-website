  <style>
.custom-badge {
    margin-top: -7px;
    position: absolute;
}
</style>
  <#assign shoppingCart = sessionAttributes.shoppingCart!>
  <#if shoppingCart?has_content>
    <#assign shoppingCartSize = shoppingCart.size()>
  <#else>
    <#assign shoppingCartSize = 0>
  </#if>
  <div id="microcart">

          <a style="margin-left:20px" href="<@ofbizUrl>anonOnePageCheckout</@ofbizUrl>"><img src="/ecommerce/img/cart.png" alt=""/><div class="badge custom-badge">0</div></a>
          <div class="row">
                <#if userLogin?has_content && userLogin.userLoginId != "anonymous">
                  <a href="<@ofbizUrl>logout</@ofbizUrl>">${uiLabelMap.CommonLogout}</a>
                  <a style="border-left: 1px solid #aaa;padding-left: 4px;" href="<@ofbizUrl>viewprofile</@ofbizUrl>">${uiLabelMap.CommonProfile}</a>
                <#else>
                  <a href="<@ofbizUrl>${checkLoginUrl}</@ofbizUrl>"><span class="text-primary">Login</span></a>
                </#if>
            <a style="border-left: 1px solid #aaa;padding-left: 4px;" href="<@ofbizUrl>newcustomer</@ofbizUrl>"><span class="text-warning">Register</span></a>
          </div>
          <!-- <p>${uiLabelMap.OrderShoppingCartEmpty}</p> -->
        <ul>
          <li><a href="<@ofbizUrl>view/showcart</@ofbizUrl>">${uiLabelMap.OrderViewCart}</a></li>
          <#if (shoppingCartSize > 0)>
            <#if shoppingCart?has_content && (shoppingCart.getGrandTotal() > 0)>
              <li id="microCartPayPalCheckout"><a href="<@ofbizUrl>setPayPalCheckout</@ofbizUrl>"><img src="https://www.paypal.com/${initialLocaleComplete}/i/btn/btn_xpressCheckout.gif" alt="[PayPal Express Checkout]" onError="this.onerror=null;this.src='https://www.paypal.com/en_US/i/btn/btn_xpressCheckout.gif'"/></a></li>
            </#if>
          </#if>
        </ul>
     </div>