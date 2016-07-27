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
    <#if (shoppingCartSize > 0)>
      <div class="cart box_1">
        <a href="<@ofbizUrl>anonOnePageCheckout</@ofbizUrl>">
           <div class="total">
          ${uiLabelMap.EcommerceCartHas} <strong id="microCartQuantity">${shoppingCart.getTotalQuantity()}</strong>
          <#if shoppingCart.getTotalQuantity() == 1>${uiLabelMap.OrderItem}<#else>${uiLabelMap.OrderItems}</#if>,
            <span><@ofbizCurrency amount=shoppingCart.getDisplayGrandTotal() isoCode=shoppingCart.getCurrency()/></span></div>
            <!-- <span id="microCartEmpty" style="display:none">${uiLabelMap.OrderShoppingCartEmpty}==</span>-->
            <img src="/ecommerce/img/cart.png" alt=""/><div class="badge custom-badge">${shoppingCart.getTotalQuantity()}</div></a>
        <#else>
          <a style="margin-left:20px" href="<@ofbizUrl>view/showcart</@ofbizUrl>"><img src="/ecommerce/img/cart.png" alt=""/><div class="badge custom-badge">0</div></a>
          <div class="row">
            <a href="login.html"><span class="text-primary">Login</span></a>
            <a style="border-left: 1px solid #aaa;padding-left: 4px;" href="register.html"><span class="text-warning">Register</span></a>
          </div>
          <!-- <p>${uiLabelMap.OrderShoppingCartEmpty}</p> -->
        </#if>
        <ul>
          <!--<li><a href="<@ofbizUrl>view/showcart</@ofbizUrl>">${uiLabelMap.OrderViewCart}</a></li>-->
          <#if (shoppingCartSize > 0)>
            <#if shoppingCart?has_content && (shoppingCart.getGrandTotal() > 0)>
              <li id="microCartPayPalCheckout"><a href="<@ofbizUrl>setPayPalCheckout</@ofbizUrl>"><img src="https://www.paypal.com/${initialLocaleComplete}/i/btn/btn_xpressCheckout.gif" alt="[PayPal Express Checkout]" onError="this.onerror=null;this.src='https://www.paypal.com/en_US/i/btn/btn_xpressCheckout.gif'"/></a></li>
            </#if>
          </#if>
        </ul>
     </div>