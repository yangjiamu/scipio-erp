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
<@section>
    <#if productCategory?exists  && solrProducts?has_content>
        <#assign jsOptions>
            slidesToShow: ${VIEW_CLUSTER!4},
            slidesToScroll: ${VIEW_SCROLL_CLUSTER!4},
            dots: true,
            focusOnSelect: true,
            adaptiveHeight: true
        </#assign>
        <@slider library="slick" jsOptions=jsOptions> <#-- Relying on Slick Slider here - requires additional seed data.-->
                <#list solrProducts as solrProduct>
                        <@slide library="slick">
                            ${setRequestAttribute("productId", solrProduct.productId)}
                            ${setRequestAttribute("optProductId", solrProduct.productId)}
                            ${setRequestAttribute("listIndex", solrProduct_index)}
                            ${screens.render(productsummaryScreen)}
                        </@slide>
                </#list>
        </@slider>
                    
    </#if>
    
</@section>