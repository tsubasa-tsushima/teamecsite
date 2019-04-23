<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/earth.css">
<title>マイページ</title>
</head>

<body>
<div class="header">
<%@include file ="header.jsp" %>
</div>
     <div class ="main">
       <h1>マイページ画面</h1>
        <s:if test="familyName!=null && !familyName.isEmpty()">
         <s:form action="PurchaseHistoryAction">
           <table>
             <tr>
               <th><label>姓</label></th>
               <td><s:property value="familyName"/></td>
             </tr>

             <tr>
               <th><label>名</label></th>
               <td><s:property value="firstName"/></td>
             </tr>

             <tr>
               <th><label>ふりがな</label></th>
               <td><s:property value="familyNameKana"/><span>　</span><s:property value="firstNamaKana"/><s:property value="firstNameKana"/><span>　</span><s:property value="firstNamaKana"/></td>
             </tr>

             <tr>
               <th><label>性別</label></th>
               <td><s:if test="sex==1">女性</s:if><s:else>男性</s:else></td>
             </tr>

             <tr>
               <th><label>メールアドレス</label></th>
               <td><s:property value="email"/></td>
             </tr>
           </table>
             <div class="botton">
               <s:submit class="submit_btn" value="購入履歴"/>
             </div>

          </s:form>
         </s:if>

           <s:else>
           <h3 class="success">ユーザー情報がありません。</h3>
           </s:else>
      </div>
</body>
</html>