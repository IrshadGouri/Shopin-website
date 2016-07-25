  <#assign shoppingCart = sessionAttributes.shoppingCart!>
  <#if shoppingCart?has_content>
    <#assign shoppingCartSize = shoppingCart.size()>
  <#else>
    <#assign shoppingCartSize = 0>
  </#if>
  <div id="microcart">
    <#if (shoppingCartSize > 0)>
      <div class="cart box_1">
        <a href="<@ofbizUrl>quickAnonCheckout</@ofbizUrl>"><h3> <div class="total">
          ${uiLabelMap.EcommerceCartHas} <strong id="microCartQuantity">${shoppingCart.getTotalQuantity()}</strong>
          <#if shoppingCart.getTotalQuantity() == 1>${uiLabelMap.OrderItem}<#else>${uiLabelMap.OrderItems}</#if>,
            <span><@ofbizCurrency amount=shoppingCart.getDisplayGrandTotal() isoCode=shoppingCart.getCurrency()/></span></div>
            <span id="microCartEmpty" style="display:none">${uiLabelMap.OrderShoppingCartEmpty}==</span>
            <img src="/ecommerce/img/cart.png" alt=""/></h3></a>
        <#else>
          <p>${uiLabelMap.OrderShoppingCartEmpty}</p>
        </#if>
        <ul>
          <li><a href="<@ofbizUrl>view/showcart</@ofbizUrl>">${uiLabelMap.OrderViewCart}</a></li>
          <#if (shoppingCartSize > 0)>
            <#if shoppingCart?has_content && (shoppingCart.getGrandTotal() > 0)>
              <li id="microCartPayPalCheckout"><a href="<@ofbizUrl>setPayPalCheckout</@ofbizUrl>"><img src="https://www.paypal.com/${initialLocaleComplete}/i/btn/btn_xpressCheckout.gif" alt="[PayPal Express Checkout]" onError="this.onerror=null;this.src='https://www.paypal.com/en_US/i/btn/btn_xpressCheckout.gif'"/></a></li>
            </#if>
          <#else>
            <li class="disabled">[${uiLabelMap.OrderCheckoutQuick}]</li>
            <li class="disabled">[${uiLabelMap.EcommerceOnePageCheckout}]</li>
          </#if>
        </ul>
     </div>