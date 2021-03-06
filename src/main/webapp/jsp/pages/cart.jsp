<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>cart</title>
    <link rel="stylesheet" href="/lib/css/main.css">
</head>
<body>
    <tags:navbar/>
    <header>
        <div>Cart</div>
    </header>
    <div>
        <table class="cart">
            <thead>
                <tr>
                    <th>title</th>
                    <th>price</th>
                    <th>count</th>
                    <th>sum</th>
                    <th></th>
                </tr>
            <tbody>
            <c:forEach items="${clientProducts}" var="clientProduct">
                <tr>
                    <td class="tooltip"><c:out value="${clientProduct.product.title}"></c:out><span class="tooltiptext"><c:out value="${clientProduct.product.description}"></c:out></span></td>
                    <td><c:out value="${clientProduct.product.price}"></c:out> ₽</td>
                    <td><c:out value="${clientProduct.count}"></c:out></td>
                    <td><c:out value="${clientProduct.sum}"></c:out> ₽</td>
                    <td>
                        <form method="post" action="/decrementProduct">
                            <button class="minus" type="submit" name="productId" value="<c:out value="${clientProduct.product.id}"></c:out>">1</button>
                        </form>
                        <form method="post" action="/incrementProduct">
                            <button class="plus" type="submit" name="productId" value="<c:out value="${clientProduct.product.id}"></c:out>">1</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
                <tr>
                <td>&nbsp;</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                </tr>
                <tr class="total">
                    <td>Total</td>
                    <td></td>
                    <td><c:out value="${totalCount}"></c:out></td>
                    <td><c:out value="${totalPrice}"></c:out> ₽</td>
                    <td>
                        <form method="post" action="/buy">
                            <button class="buy" type="submit">1</button>
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
