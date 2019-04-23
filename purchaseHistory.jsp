<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/earth.css">
<title>商品購入履歴</title>
</head>
<body>

<div class="header">
<%@include file ="header.jsp" %>
</div>
     <div class="main">
       <h1>商品購入履歴画面</h1>
       <s:if test="purchaseHistoryInfoDTOList!=null && purchaseHistoryInfoDTOList.size()>0">
       <table>
       <tr>
         <th><label>商品名</label></th>
         <th><label>ふりがな</label></th>
         <th><label>商品画像</label></th>
         <th><label>発売会社名</label></th>
         <th><label>発売年月日</label></th>
         <th><label>値段</label></th>
         <th><label>個数</label></th>
         <th><label>合計金額</label></th>
       </tr>
     <s:iterator value ="purchaseHistoryInfoDTOList">
       <tr>
         <td><s:property value="productName"/></td>
         <td><s:property value="productNameKana"/></td>
         <td><img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>' width="50px" height="50px"/></td>
         <td><s:property value="releaseCompany"/></td>
         <td><s:property value="releaseDate"/></td>
         <td><s:property value="price"/>円</td>
         <td><s:property value="productCount"/>個</td>
         <td><s:property value="subtotal"/>円</td>
       </tr>
     </s:iterator>
       </table>

       <div class="botton">
       <s:form action = "DeletePurchaseHistoryAction">
         <s:submit class="submit_btn" value="履歴削除"/>
       </s:form>
       </div>
       </s:if>

       <s:else>
       <div class="error">
         <a>商品購入履歴情報がありません。</a>
       </div>
       </s:else>
       </div>
</body>
</html>