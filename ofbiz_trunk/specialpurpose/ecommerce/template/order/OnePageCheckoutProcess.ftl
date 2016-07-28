<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->

<style>
.panel-default > .panel-heading {
    color: #fff;
    background-color: #1F1F1F;
    border-color: #1F1F1F;
}
.link-color {
color: #E4E80E!important;
}
table {
    width: 100%;
    max-width: 100%;
    margin-bottom: 20px;
}
table {
    margin: 0em 0 2em;
}
table {
    background-color: transparent!important;
}
table {
    border-spacing: 0;
    border-collapse: collapse;
}
thead th {
    background: transparent;
}
tfoot th, tfoot td {
    border-top: 1px solid #666;
    background: transparent;
    text-align: right;
}
</style>
  <div class="col-sm-9">
    <nav class="navbar nav_bottom" role="navigation">
      <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">  
        <#include "component://ecommerce/template/categoryMenu.ftl"/>
      </div>
    </nav>
  </div>
<div class="container">
  <#assign shoppingCart = sessionAttributes.shoppingCart! />
  <h2>${uiLabelMap.OrderCheckout}</h2>
    <#if shoppingCart?has_content && shoppingCart.size() &gt; 0>
      <div id="checkoutPanel">

<#-- ========================================================================================================================== -->
        <div id="cartPanel" class="panel panel-default">
          ${screens.render("component://ecommerce/widget/CartScreens.xml#UpdateCart")}
        </div>

<#-- ========================================================================================================================== -->
        <div id="shippingPanel" class="panel panel-default">
          <div class="panel-heading">
            <h3>${uiLabelMap.EcommerceStep} 2: ${uiLabelMap.FacilityShipping}</h3>
          </div>
          <div id="shippingSummaryPanel" style="display: none;">
            <a href="javascript:void(0);" id="openShippingPanel" class="button">${uiLabelMap.EcommerceClickHereToEdit}</a>
            <div id="shippingCompleted">
              <ul>
                <li>
                  <h4>${uiLabelMap.OrderShipTo}</h4>
                  <ul>
                    <li id="completedShipToAttn"></li>
                    <li id="completedShippingContactNumber"></li>
                    <li id="completedEmailAddress"></li>
                  </ul>
                </li>
                <li>
                  <h4>${uiLabelMap.EcommerceLocation}</h4>
                  <ul>
                    <li id="completedShipToAddress1"></li>
                    <li id="completedShipToAddress2"></li>
                    <li id="completedShipToGeo"></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>

<#-- ============================================================= -->
          <div id="editShippingPanel" style="display: none;" class="container">
            <form id="shippingForm" action="<@ofbizUrl>createUpdateShippingAddress</@ofbizUrl>" method="post">
                <fieldset>
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
                  <div id="shippingFormServerError" class="errorMessage"></div>
                  <div>
                      <span class="form-group">
                        <label for="firstName">${uiLabelMap.PartyFirstName}*
                          <span id="advice-required-firstName" style="display: none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                        </label>
                        <input id="firstName" class="form-control" name="firstName" class="required" type="text" value="${firstName!}" />
                      </span>
                      <span class="form-group">
                        <label for="lastName">${uiLabelMap.PartyLastName}*
                          <span id="advice-required-lastName" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                        </label>
                        <input id="lastName" class="form-control" name="lastName" class="required" type="text" value="${lastName!}" />
                      </span>
                  </div>
                  <div>
                  <#if shipToTelecomNumber?has_content>
                      <span class="form-group">
                          <label for="shipToCountryCode">${uiLabelMap.CommonCountry}*
                              <span id="advice-required-shipToCountryCode" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                          </label>
                          <input type="text" class="form-control" name="shipToCountryCode" class="required" id="shipToCountryCode" value="${shipToTelecomNumber.countryCode!}" size="5" maxlength="10" /> -
                      </span>
                      <span class="form-group">
                          <label for="shipToAreaCode">${uiLabelMap.PartyAreaCode}*
                              <span id="advice-required-shipToAreaCode" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                          </label>
                          <input type="text" class="form-control" name="shipToAreaCode" class="required" id="shipToAreaCode" value="${shipToTelecomNumber.areaCode!}" size="5" maxlength="10" /> -
                      </span>
                      <span class="form-group">
                          <label for="shipToContactNumber">${uiLabelMap.PartyContactNumber}*
                              <span id="advice-required-shipToContactNumber" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                          </label>
                          <input type="text" class="form-control" name="shipToContactNumber" class="required" id="shipToContactNumber" value="${shipToTelecomNumber.contactNumber!}" size="10" maxlength="15" /> -
                      </span>
                      <span class="form-group">
                          <label for="shipToExtension">${uiLabelMap.PartyExtension}</label>
                          <input type="text" class="form-control" name="shipToExtension" id="shipToExtension" value="${shipToExtension!}" size="5" maxlength="10" />
                      </span>
                  <#else>
                      <span class="form-group">
                          <label for="shipToCountryCode">${uiLabelMap.CommonCountry}*
                              <span id="advice-required-shipToCountryCode" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                          </label>
                          <input type="text" class="form-control" name="shipToCountryCode" class="required" id="shipToCountryCode" value="${parameters.shipToCountryCode!}" size="5" maxlength="10" /> -
                      </span>
                      <span class="form-group">
                          <label for="shipToAreaCode">${uiLabelMap.PartyAreaCode}*
                              <span id="advice-required-shipToAreaCode" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                          </label>
                          <input type="text" class="form-control" name="shipToAreaCode" class="required" id="shipToAreaCode" value="${parameters.shipToAreaCode!}" size="5" maxlength="10" /> -
                      </span>
                      <span class="form-group">
                          <label for="shipToContactNumber">${uiLabelMap.PartyContactNumber}*
                              <span id="advice-required-shipToContactNumber" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                          </label>
                          <input type="text" class="form-control" name="shipToContactNumber" class="required" id="shipToContactNumber" value="${parameters.shipToContactNumber!}" size="10" maxlength="15" /> -
                      </span>
                      <span class="form-group">
                          <label for="shipToExtension">${uiLabelMap.PartyExtension}</label>
                          <input type="text" class="form-control" name="shipToExtension" id="shipToExtension" value="${parameters.shipToExtension!}" size="5" maxlength="10" />
                      </span>
                  </#if>
                  </div>
                  <div>
                      <span class="form-group">
                          <label for="emailAddress">${uiLabelMap.PartyEmailAddress}*
                            <span id="advice-required-emailAddress" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                          </label>
                          <input id="emailAddress" class="form-control" name="emailAddress" class="required validate-email" maxlength="255" size="40" type="text" value="${emailAddress!}" />
                      </span>
                  </div>
                    <div>
                        <span class="form-group">
                            <label for="shipToAddress1">${uiLabelMap.PartyAddressLine1}*
                                <span id="advice-required-shipToAddress1" class="custom-advice errorMessage" style="display:none"> (${uiLabelMap.CommonRequired})</span>
                            </label>
                            <input id="shipToAddress1" class="form-control" name="shipToAddress1" class="required" type="text" value="${shipToAddress1!}" maxlength="255" size="40" />
                        </span>
                    </div>
                    <div>
                        <span class="form-group">
                          <label for="shipToAddress2">${uiLabelMap.PartyAddressLine2}</label>
                          <input id="shipToAddress2" class="form-control" name="shipToAddress2" type="text" value="${shipToAddress2!}" maxlength="255" size="40" />
                        </span>
                    </div>
                    <div>
                        <span class="form-group">
                            <label for="shipToCity">${uiLabelMap.CommonCity}*
                                <span id="advice-required-shipToCity" class="custom-advice errorMessage" style="display:none"> (${uiLabelMap.CommonRequired})</span>
                            </label>
                            <input id="shipToCity" class="form-control" name="shipToCity" class="required" type="text" value="${shipToCity!}" maxlength="255" size="40" />
                        </span>
                    </div>
                    <div>
                        <span class="form-group">
                            <label for="shipToPostalCode">${uiLabelMap.PartyZipCode}*
                                <span id="advice-required-shipToPostalCode" class="custom-advice errorMessage" style="display:none"> (${uiLabelMap.CommonRequired})</span>
                            </label>
                            <input id="shipToPostalCode" class="form-control" name="shipToPostalCode" class="required" type="text" value="${shipToPostalCode!}" size="12" maxlength="10" />
                        </span>
                    </div>
                    <div>
                        <span class="form-group">
                            <label for="shipToCountryGeoId">${uiLabelMap.CommonCountry}*
                                <span id="advice-required-shipToCountryGeo" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                            </label>
                            <select name="shipToCountryGeoId" class="form-control" id="shipToCountryGeoId">
                              <#if shipToCountryGeoId??>
                                <option value="${shipToCountryGeoId!}">${shipToCountryProvinceGeo?default(shipToCountryGeoId!)}</option>
                              </#if>
                              ${screens.render("component://common/widget/CommonScreens.xml#countries")}
                            </select>
                        </span>
                    </div>
                    <div id="shipToStates">
                        <span class="form-group">
                            <label for="shipToStateProvinceGeoId">${uiLabelMap.CommonState}*
                                <span id="advice-required-shipToStateProvinceGeoId" style="display:none" class="errorMessage">(${uiLabelMap.CommonRequired})</span>
                            </label>
                            <select id="shipToStateProvinceGeoId" class="form-control" name="shipToStateProvinceGeoId">
                              <#if shipToStateProvinceGeoId?has_content>
                                <option value='${shipToStateProvinceGeoId!}'>${shipToStateProvinceGeo?default(shipToStateProvinceGeoId!)}</option>
                              <#else>
                                <option value="_NA_">${uiLabelMap.PartyNoState}</option>
                              </#if>
                              ${screens.render("component://common/widget/CommonScreens.xml#states")}
                            </select>
                        </span>
                    </div>
                  </fieldset>
                  <fieldset>
                    <a href="javascript:void(0);" style="margin: 10px 10px" class="btn btn-success" id="savePartyAndShippingContact">${uiLabelMap.EcommerceContinueToStep} 3</a>
                    <a style="display:none" style="margin: 10px 10px" class="btn btn-success" href="javascript:void(0);" id="processingShippingOptions">${uiLabelMap.EcommercePleaseWait}....</a>
                  </fieldset>
            </form>
          </div>
        </div>

<#-- ========================================================================================================================== -->
        <div id="shippingOptionPanel" class="panel panel-default">
          <div class="panel-heading">
            <h3>${uiLabelMap.EcommerceStep} 3: ${uiLabelMap.PageTitleShippingOptions}</h3>
          </div>
          <div id="shippingOptionSummaryPanel" class="screenlet-body" style="display: none;">
            <a href="javascript:void(0);" id="openShippingOptionPanel" style="margin: 10px 10px" class="btn btn-success">${uiLabelMap.EcommerceClickHereToEdit}</a>
            <div class="completed" id="shippingOptionCompleted">
              <ul>
                <li>${uiLabelMap.CommonMethod}</li>
                <li id="selectedShipmentOption"></li>
              </ul>
            </div>
          </div>

<#-- ============================================================= -->
          <div id="editShippingOptionPanel" class="screenlet-body" style="display: none;">
            <form id="shippingOptionForm" action="<@ofbizUrl></@ofbizUrl>" method="post">
              <fieldset>
                  <div id="shippingOptionFormServerError" class="errorMessage"></div>
                  <div class="form-group">
                      <label for="shipMethod">${uiLabelMap.OrderSelectShippingMethod}*
                          <span id="advice-required-shipping_method" class="custom-advice" style="display:none"> (${uiLabelMap.CommonRequired})</span>
                      </label>
                      <select id="shipMethod" class="form-control" name="shipMethod" class="required">
                          <option value=""></option>
                      </select>
                  </div>
              </fieldset>
              <fieldset>
                <a href="javascript:void(0);" style="margin: 10px 10px" class="btn btn-success" id="saveShippingMethod">${uiLabelMap.EcommerceContinueToStep} 4</a>
                <a style="display:none" style="margin: 10px 10px" class="btn btn-success" href="javascript:void(0);" id="processingBilling">${uiLabelMap.EcommercePleaseWait}....</a>
              </fieldset>
            </form>
          </div>
        </div>

<#-- ========================================================================================================================== -->
        <div id="billingPanel" class="panel panel-default">
          <div class="panel-heading">
            <h3>${uiLabelMap.EcommerceStep} 4: ${uiLabelMap.AccountingBilling}</h3>
          </div>
          <div id="billingSummaryPanel" class="screenlet-body" style="display: none;">
            <a href="javascript:void(0);" id="openBillingPanel" style="margin: 10px 10px" class="btn btn-success">${uiLabelMap.EcommerceClickHereToEdit}</a>
            <div class="completed" id="billingCompleted">
              <ul>
                <li>
                  <h4>${uiLabelMap.OrderBillUpTo}</h4>
                  <ul>
                    <li id="completedBillToAttn"></li>
                    <li id="completedBillToPhoneNumber"></li>
                    <li id="paymentMethod"></li>
                    <li id="completedCCNumber"></li>
                    <li id="completedExpiryDate"></li>
                  </ul>
                </li>
                <li>
                  <h4>${uiLabelMap.EcommerceLocation}</h4>
                  <ul>
                    <li id="completedBillToAddress1"></li>
                    <li id="completedBillToAddress2"></li>
                    <li id="completedBillToGeo"></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>

<#-- ============================================================= -->

          <div id="editBillingPanel" class="screenlet-body" style="display: none;">
            <form id="billingForm" class="theform" action="<@ofbizUrl></@ofbizUrl>" method="post">
              <fieldset class="col">
                  <input type="hidden" id ="billToContactMechId" name="billToContactMechId" value="${billToContactMechId!}" />
                  <input type="hidden" id="shipToContactMechIdInBillingForm" name="shipToContactMechId" value="${shipToContactMechId!}" />
                  <input type="hidden" id="paymentMethodId" name="paymentMethodId" value="${paymentMethodId!}" />
                  <input type="hidden" id="paymentMethodTypeId" name="paymentMethodTypeId" value="${paymentMethodTypeId?default("CREDIT_CARD")}" />
                  <input type="hidden" id="billToPartyId" name="partyId" value="${parameters.partyId!}" />
                  <input type="hidden" name="expireDate" value="${expireDate!}" />
                  <input type="hidden" id="billToPhoneContactMechId" name="billToPhoneContactMechId" value="${(billToTelecomNumber.contactMechId)!}" />
                  <input type="hidden" name="billToName" value="${billToName!}" />
                  <input type="hidden" name="billToAttnName" value="${billToAttnName!}" />
                  <#if userLogin??>
                    <input type="hidden" name="keepAddressBook" value="Y" />
                    <input type="hidden" name="setDefaultBilling" value="Y" />
                    <#assign productStoreId = Static["org.ofbiz.product.store.ProductStoreWorker"].getProductStoreId(request) />
                    <input type="hidden" name="productStoreId" value="${productStoreId!}" />
                  <#else>
                    <input type="hidden" name="keepAddressBook" value="N" />
                  </#if>
                  <div id="billingFormServerError" class="errorMessage"></div>
                        <div>
                            <span class="form-group">
                                <label for="firstNameOnCard">${uiLabelMap.PartyFirstName}*
                                    <span id="advice-required-firstNameOnCard" style="display: none;" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                                </label>
                                <input id="firstNameOnCard" class="form-control" name="firstNameOnCard" class="required" type="text" value="${firstNameOnCard!}" />
                            </span>
                            <span class="form-group">
                                <label for="lastNameOnCard">${uiLabelMap.PartyLastName}*
                                    <span id="advice-required-lastNameOnCard" style="display: none;" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                                </label>
                                <input id="lastNameOnCard" class="form-control" name="lastNameOnCard" class="required" type="text" value="${lastNameOnCard!}" />
                            </span>
                        </div>
                        <div>  
                          <#if billToTelecomNumber?has_content>
                            <span class="form-group">
                                <label for="billToCountryCode">${uiLabelMap.CommonCountry}*
                                    <span id="advice-required-billToCountryCode" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                                </label>
                                <input type="text" class="form-control" name="billToCountryCode" class="required" id="billToCountryCode" value="${billToTelecomNumber.countryCode!}" size="5" maxlength="10" /> -
                            </span>
                            <span class="form-group">
                                <label for="billToAreaCode">${uiLabelMap.PartyAreaCode}*
                                    <span id="advice-required-billToAreaCode" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                                </label>
                                <input type="text" class="form-control" name="billToAreaCode" class="required" id="billToAreaCode" value="${billToTelecomNumber.areaCode!}" size="5" maxlength="10" /> -
                            </span>
                            <span class="form-group">
                                <label for="billToContactNumber">${uiLabelMap.PartyContactNumber}*
                                    <span id="advice-required-billToContactNumber" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                                </label>
                                <input type="text" class="form-control" name="billToContactNumber" class="required" id="billToContactNumber" value="${billToTelecomNumber.contactNumber!}" size="10" maxlength="15" /> -
                            </span>
                            <span class="form-group">
                                <label for="billToExtension">${uiLabelMap.PartyExtension}</label>
                                <input type="text" class="form-control" name="billToExtension" id="billToExtension" value="${billToExtension!}" size="5" maxlength="10" />
                            </span>
                          <#else>
                            <span class="form-group">
                                <label for="billToCountryCode">${uiLabelMap.CommonCountry}*
                                    <span id="advice-required-billToCountryCode" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                                </label>
                                <input type="text" class="form-control" name="billToCountryCode" class="required" id="billToCountryCode" value="${parameters.billToCountryCode!}" size="5" maxlength="10" /> -
                            </span>
                            <span class="form-group">
                                <label for="billToAreaCode">${uiLabelMap.PartyAreaCode}*
                                    <span id="advice-required-billToAreaCode" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                                </label>
                                <input type="text" class="form-control" name="billToAreaCode" class="required" id="billToAreaCode" value="${parameters.billToAreaCode!}" size="5" maxlength="10" /> -
                            </span>
                            <span class="form-group">
                                <label for="billToContactNumber">${uiLabelMap.PartyContactNumber}*
                                    <span id="advice-required-billToContactNumber" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                                </label>
                                <input type="text" class="form-control" name="billToContactNumber" class="required" id="billToContactNumber" value="${parameters.billToContactNumber!}" size="10" maxlength="15" /> -
                            </span>
                            <span class="form-group">
                                <label for="billToExtension">${uiLabelMap.PartyExtension}</label>
                                <input type="text" class="form-control" name="billToExtension" id="billToExtension" value="${parameters.billToExtension!}" size="5" maxlength="10" />
                            </span>
                          </#if>
                        </div>
                        <div>
                          <span class="form-group">
                                <label for="cardType">${uiLabelMap.AccountingCardType}*<span id="advice-required-cardType" style="display: none;" class="errorMessage"> (${uiLabelMap.CommonRequired})</span></label>
                                <select name="cardType" class="form-control" id="cardType">
                                  <#if cardType?has_content>
                                    <option label="${cardType!}" value="${cardType!}">${cardType!}</option>
                                  </#if>
                                  ${screens.render("component://common/widget/CommonScreens.xml#cctypes")}
                                </select>
                          </span>
                        </div>
                        <div>
                            <span class="form-group">
                                <label for="cardNumber">${uiLabelMap.AccountingCardNumber}*
                                    <span id="advice-required-cardNumber" style="display: none;" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                                </label>
                                <input id="cardNumber" class="form-control" name="cardNumber" class="required creditcard" type="text" value="${cardNumber!}" size="30" maxlength="16" />
                            </span>
                            <span class="form-group">
                                <label for="billToCardSecurityCode">CVV2</label>
                                <input id="billToCardSecurityCode" class="form-control" name="billToCardSecurityCode" size="4" type="text" maxlength="4" value="" />
                            </span>
                        </div>
                        <div>
                          <span class="form-group">
                            <label for="expMonth">${uiLabelMap.CommonMonth}:*
                                <span id="advice-required-expMonth" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                            </label>
                            <select id="expMonth" class="form-control" name="expMonth" class="required">
                              <#if expMonth?has_content>
                                <option label="${expMonth!}" value="${expMonth!}">${expMonth!}</option>
                              </#if>
                              ${screens.render("component://common/widget/CommonScreens.xml#ccmonths")}
                            </select>
                          </span>
                          <span class="form-group">
                            <label for="expYear">${uiLabelMap.CommonYear}:*
                                <span id="advice-required-expYear" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                            </label>
                            <select id="expYear" class="form-control" name="expYear" class="required">
                              <#if expYear?has_content>
                                <option value="${expYear!}">${expYear!}</option>
                              </#if>
                              ${screens.render("component://common/widget/CommonScreens.xml#ccyears")}
                            </select>
                          </span>
                        </div>
                    </fieldset>
                    <fieldset class="col">
                        <div class="form-group">
                                <input class="checkbox" class="form-control" id="useShippingAddressForBilling" name="useShippingAddressForBilling" type="checkbox" value="Y" <#if useShippingAddressForBilling?has_content && useShippingAddressForBilling?default("")=="Y">checked="checked"</#if> /><label for="useShippingAddressForBilling">${uiLabelMap.FacilityBillingAddressSameShipping}</label>
                        </div>
                        <div id="billingAddress" <#if useShippingAddressForBilling?has_content && useShippingAddressForBilling?default("")=="Y">style="display:none"</#if>>
                          <div class="form-group">
                              <label for="billToAddress1">${uiLabelMap.PartyAddressLine1}*
                                <span id="advice-required-billToAddress1" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                              </label>
                              <input id="billToAddress1" class="form-control" name="billToAddress1" class="required" size="30" type="text" value="${billToAddress1!}" />
                          </div>
                          <div class="form-group">
                              <label for="billToAddress2">${uiLabelMap.PartyAddressLine2}</label>
                              <input id="billToAddress2" class="form-control" name="billToAddress2" type="text" value="${billToAddress2!}" size="30" />
                          </div>
                          <div class="form-group">
                              <label for="billToCity">${uiLabelMap.CommonCity}*
                                <span id="advice-required-billToCity" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                              </label>
                              <input id="billToCity" class="form-control" name="billToCity" class="required" type="text" value="${billToCity!}" />
                          </div>
                          <div class="form-group">
                              <label for="billToPostalCode">${uiLabelMap.PartyZipCode}*
                                <span id="advice-required-billToPostalCode" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                              </label>
                              <input id="billToPostalCode" class="form-control" name="billToPostalCode" class="required" type="text" value="${billToPostalCode!}" size="12" maxlength="10" />
                          </div>
                          <div class="form-group">
                              <label for="billToCountryGeoId">${uiLabelMap.CommonCountry}*
                                <span id="advice-required-billToCountryGeoId" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                              </label>
                              <select name="billToCountryGeoId" class="form-control" id="billToCountryGeoId">
                                <#if billToCountryGeoId??>
                                  <option value='${billToCountryGeoId!}'>${billToCountryProvinceGeo?default(billToCountryGeoId!)}</option>
                                </#if>
                                ${screens.render("component://common/widget/CommonScreens.xml#countries")}
                              </select>
                          </div>
                          <div class="form-group">
                              <label for="billToStateProvinceGeoId">${uiLabelMap.CommonState}*
                                <span id="advice-required-billToStateProvinceGeoId" style="display:none" class="errorMessage"> (${uiLabelMap.CommonRequired})</span>
                              </label>
                              <select id="billToStateProvinceGeoId" class="form-control" name="billToStateProvinceGeoId">
                                <#if billToStateProvinceGeoId?has_content>
                                  <option value='${billToStateProvinceGeoId!}'>${billToStateProvinceGeo?default(billToStateProvinceGeoId!)}</option>
                                <#else>
                                  <option value="_NA_">${uiLabelMap.PartyNoState}</option>
                                </#if>
                              </select>
                          </div>
                        </div>
                    </fieldset>
                    <br style="clear:both;"/>
                    <fieldset>
                      <a href="javascript:void(0);" style="margin: 10px 10px" class="btn btn-success" id="savePaymentAndBillingContact">${uiLabelMap.EcommerceContinueToStep} 5</a>
                    </fieldset>
            </form>
          </div>
        </div>

<#-- ========================================================================================================================== -->
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3>${uiLabelMap.EcommerceStep} 5: ${uiLabelMap.OrderSubmitOrder}</h3>
          </div>
          <div id="orderSubmitPanel" style="display: none;">
            <form id="orderSubmitForm" action="<@ofbizUrl>onePageProcessOrder</@ofbizUrl>" method="post">
                <fieldset>
                    <a href="javascript:void(0);" style="margin: 10px 10px" class="btn btn-success" id="processOrderButton">${uiLabelMap.OrderSubmitOrder}</a>
                    <!-- input type="button" id="processOrderButton" class="btn btn-success" name="processOrderButton" value="${uiLabelMap.OrderSubmitOrder}" / -->
                    <input type="button" style="display: none;" class="btn btn-success" id="processingOrderButton" name="processingOrderButton" value="${uiLabelMap.OrderSubmittingOrder}" />
                </fieldset>
            </form>
          </div>
        </div>
      </div>
    </#if>

<#-- ========================================================================================================================== -->
    <div id="emptyCartCheckoutPanel" <#if shoppingCart?has_content && shoppingCart.size() &gt; 0> style="display: none;"</#if>>
        <h3>${uiLabelMap.EcommerceStep} 1: ${uiLabelMap.PageTitleShoppingCart}</h3>
        <span>You currently have no items in your cart. Click <a href="<@ofbizUrl>main</@ofbizUrl>">here</a> to view our products.</span>
        <h3>${uiLabelMap.EcommerceStep} 2: ${uiLabelMap.FacilityShipping}</h3>
        <h3>${uiLabelMap.EcommerceStep} 3: ${uiLabelMap.PageTitleShippingOptions}</h3>
        <h3>${uiLabelMap.EcommerceStep} 4: ${uiLabelMap.AccountingBilling}</h3>
        <h3>${uiLabelMap.EcommerceStep} 5: ${uiLabelMap.OrderSubmitOrder}</h3>
    </div>
</div>
