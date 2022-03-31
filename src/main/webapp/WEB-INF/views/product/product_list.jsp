<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="breadcrumbs"><ul>
      <li><a></a></li><li><a href="search0ac6.html?q=%ec%b5%9c%ec%a0%80%ea%b0%80"></a></li></ul></div>
      
      
      
      <div class="main_area">
      <div class="main_area_center">
      <div class="main">
      
      <div class="left">
      <div class="category_filter"><div class="category_title"><div class="category_title_txt">가구/가전</div></div>
      <div class="category_sub"><span><ul class="category_sub_list">
     
      <li class=""></li>
      	<c:choose>
      		<c:when test="${category1==''}">
      			<li class="">&lt;<span style="font-size: 20px"><strong>전체</strong></span>&gt;검색결과 총 ${total}개</li>
      		</c:when>
      	
      	
      		<c:when test="${category1!=null}">
      			<li class="">&lt;<span style="font-size: 20px"><strong>${category1}</strong></span>&gt;의검색결과 총 ${total}개</li>
      		</c:when>
      		
      		<c:when test="${searchKeyword!=null}">
      			<li class="">&lt;<span style="font-size: 20px"><strong>${searchKeyword}</strong></span>&gt;의검색결과 총 ${total}개</li>
      		</c:when>
      	
      	</c:choose>
    	  	
      	
      </ul></span></div></div></div>
     
     
      <section class="left_main">
      
      
      
      <div class="list_area">
    
	<c:forEach var="product" items="${productList}" >
     
      <div class="main_col_3" id="tool">
      
	<div>
		<a href="${pageContext.request.contextPath}/product_detail">
			<img src="${pageContext.request.contextPath}/img/product/${product.img}" width="230">
		</a>
	</div>
	<strong class="name"><a href="${pageContext.request.contextPath}/product_detail?idx=${product.idx}" class=""><span class="title displaynone"><span style="font-size:20px;color:#000;" data-i18n=PRODUCT.PRD_INFO_PRODUCT_NAME>상품명</span> :</span> <span style="font-size:20px;color:#000;">${product.title}</span></a></strong>
	<ul class="xans-element- xans-product xans-product-listitem spec"><li class=" xans-record-">
	<strong class="title displaynone"><span style="font-size:20px;color:#000;" data-i18n=PRODUCT.PRD_INFO_PRODUCT_PRICE>판매가</span> :</strong> <span style="font-size:20px;color:#000;">${product.price}원</span><span id="span_product_tax_type_text" style=""> </span></li>
	<!-- <div class="item_title" ><span style="font-size:20px;color:#555555;">조명팔아요~!</span></div> -->
	</ul>
	
	
	</div>
         
     </c:forEach>  
        <div class="tab_content">
        
        </div>
        </div>
			
		<c:choose>
			<c:when test="${category1!=null}">
				<div style="text-align: center;"><span>
									<c:choose>
									<c:when test="${pager.startRow > 5}">		
										<a href="?category1=${category1}&pageNum=${pager.prevPage}">이전</a>&nbsp;&nbsp;
									</c:when>
									<c:otherwise>
										<span>이전</span>&nbsp;&nbsp;
									</c:otherwise>
									</c:choose>
									<c:forEach var="i" begin="${pager.startPage}" end="${pager.endPage}">
	                   				<a href="?category1=${category1}&pageNum=${i}">${i}</a> &nbsp;&nbsp;
	                				
	                				</c:forEach>  
										<c:choose>
									<c:when test="${pager.endRow > 5}">		
										<a href="?category1=${category1}&pageNum=${pager.nextPage}">다음</a>&nbsp;&nbsp;
									</c:when>
									<c:otherwise>
										<span>다음</span>&nbsp;&nbsp;
									</c:otherwise>
									</c:choose>
									</span></div>
				
			</c:when>
			<c:when test="${searchKeyword!=null}">
				<div style="text-align: center;"><span>
									<c:choose>
									<c:when test="${pager.startRow > 5}">		
										<a href="?searchKeyword=${searchKeyword}&pageNum=${pager.prevPage}">이전</a>&nbsp;&nbsp;
									</c:when>
									<c:otherwise>
										<span>이전</span>&nbsp;&nbsp;
									</c:otherwise>
									</c:choose>
									<c:forEach var="i" begin="${pager.startPage}" end="${pager.endPage}">
	                   				<a href="?searchKeyword=${searchKeyword}&pageNum=${i}">${i}</a> &nbsp;&nbsp;
	                				
	                				</c:forEach>  
										<c:choose>
									<c:when test="${pager.endRow > 5}">		
										<a href="?searchKeyword=${searchKeyword}&pageNum=${pager.nextPage}">다음</a>&nbsp;&nbsp;
									</c:when>
									<c:otherwise>
										<span>다음</span>&nbsp;&nbsp;
									</c:otherwise>
									</c:choose>
									</span></div>
			</c:when>
			
		</c:choose>						
        </section>
        </div></div></div>
        
        </body>         
