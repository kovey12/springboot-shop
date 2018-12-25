<html>
    <#include "../common/header.ftl">
    <body>
        <div id="wrapper" class="toggled">
            <#--边栏sidebar-->
            <#include "../common/nav.ftl">
            <#--主要内容content-->
            <div id="page-content-wrapper">
                <div class="container">
                    <div class="row clearfix">
                        <div class="col-md-4 column">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>订单id</th>
                                        <th>订单总金额</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>${orderDTO.orderId}</td>
                                        <td>${orderDTO.amount}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <#--订单详情表数据-->
                        <div class="col-md-12 column">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>商品id</th>
                                        <th>商品名称</th>
                                        <th>价格</th>
                                        <th>数量</th>
                                        <th>总额</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <#list orderDTO.orderDetailDTOList as orderDetail>
                                        <tr>
                                            <td>${orderDetail.goodId}</td>
                                            <td>${orderDetail.goodName}</td>
                                            <td>${orderDetail.price}</td>
                                            <td>${orderDetail.quantity}</td>
                                            <td>${orderDetail.amount}</td>
                                        </tr>
                                    </#list>
                                </tbody>
                            </table>
                        </div>

                        <#--操作-->
                        <div class="col-md-12 column">
                        <#if orderDTO.getOrderStatusEnum().msg == "新订单">
                            <a href="/shop/sellerOrder/finishOrder?id=${orderDTO.orderId}" type="button" class="btn btn-default btn-primary">完结订单</a>
                            <a href="/shop/sellerOrder/cancel?id=${orderDTO.orderId}" type="button" class="btn btn-default btn-danger">取消订单</a>
                        </#if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>