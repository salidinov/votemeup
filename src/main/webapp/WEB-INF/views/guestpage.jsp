<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page session="true"%>


<!DOCTYPE html>
<html>
<head>
<title>Общественная инициатива</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css" />">
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/css/style.css" />">


</head>
<body>
	<div class="container">

		<jsp:include page="header.jsp" />

		<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
			<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="/voteme/">Главная</a></li>
						<c:if test="${user.role.roleName == 'ROLE_ADMIN'}">
							<li><a href="/voteme/admin/">
									Пользователи</a></li>	
						</c:if>
						
						
						<li><a href="/voteme/about">О проекте</a></li>
						<li><a href="/voteme/contact">Контакты</a></li>
						<li><a href="/voteme/help">Помощь</a></li>
					</ul>
					<form class="navbar-form navbar-right" method=GET action="http://www.google.com/search">
							<input type="text" class="form-control" name="q" placeholder="Поиск инициатив...">
							<input type="hidden" name="sitesearch" value="www.roi.ru">						
						<button type="submit" class="btn btn-default">Поиск</button>											  
					</form>

				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>

		<div class="row">
			<div class="col-sm-9">
				<div class="row">

					<ul class="nav nav-tabs">

						<li ${gpModel.sortBy == 'noSort' ? 'class="active"' : ''}><a
							href="/voteme/?sortBy=noSort&pageQuant=${gpModel.pageQuant}&pageNum=1&filtrOn=${gpModel.filtrOn}">Все</a></li>
						<li ${gpModel.sortBy == 'voteCount' ? 'class="active"' : ''}><a
							href="/voteme/?sortBy=voteCount&pageQuant=${gpModel.pageQuant}&pageNum=1&filtrOn=${gpModel.filtrOn}">Популярные</a></li>
						<li ${gpModel.sortBy == 'creationDate' ? 'class="active"' : ''}><a
							href="/voteme/?sortBy=creationDate&pageQuant=${gpModel.pageQuant}&pageNum=1&filtrOn=${gpModel.filtrOn}">Последние</a></li>
						<li ${gpModel.sortBy == 'commentCount' ? 'class="active"' : ''}><a
							href="/voteme/?sortBy=commentCount&pageQuant=${gpModel.pageQuant}&pageNum=1&filtrOn=${gpModel.filtrOn}">Комментируемые</a></li>
						<li
							class="pull-right ${gpModel.filtrOn == 'true' ? '' : 'disabled'}">
							<a
							href="/voteme/?sortBy=noSort&pageQuant=${gpModel.pageQuant}&pageNum=1&filtrOn=false">${gpModel.filtrOn == "true" ? 'Очистить фильтр' : 'Фильтр выкл.'}</a>
						</li>
						<li class="dropdown pull-right"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#"> Показывать по
								${gpModel.pageQuant} <span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a
									href="/voteme/?sortBy=${gpModel.sortBy}&pageQuant=5&pageNum=1&filtrOn=${gpModel.filtrOn}">Показывать
										по 5</a></li>
								<li><a
									href="/voteme/?sortBy=${gpModel.sortBy}&pageQuant=10&pageNum=1&filtrOn=${gpModel.filtrOn}">Показывать
										по 10</a></li>
								<li><a
									href="/voteme/?sortBy=${gpModel.sortBy}&pageQuant=15&pageNum=1&filtrOn=${gpModel.filtrOn}">Показывать
										по 15</a></li>
							</ul></li>
					</ul>
					<c:forEach items="${gpModel.proposalList}" var="tmpVar">
						<div class="panel panel-default spacer">
							<div class="panel-body">
								<c:set var="sizeVotes" scope="session"
									value="${tmpVar.votes.size()}" />
								<c:set var="sizeComment" scope="session"
									value="${tmpVar.comments.size()}" />
								<c:set var="sizeDoc" scope="session"
									value="${tmpVar.documents.size()}" />
								<c:set var="sizeCat" scope="session"
									value="${tmpVar.categories.size()}" />

								<div>
									<h4>${tmpVar.proposalId}.
										<a href="/voteme/proposal?numberProposal=${tmpVar.proposalId}">${tmpVar.proposalName}</a>
										от
										<fmt:formatDate pattern="dd-MM-yyyy HH:mm:ss"
											value="${tmpVar.creationDate}" />
									</h4>
								</div>

								<c:choose>
									<c:when test="${sizeVotes == 0}">
										<div>
											За инициативу еще не был дан ни один голос. Количество
											комментариев: <b>${sizeComment}</b> Количество документов: <b>${sizeDoc}</b>
										</div>
									</c:when>
									<c:when test="${sizeVotes > 0}">
										<div>
											Количество голосов: <b>${sizeVotes}</b>. Последний голос был:
											<fmt:formatDate pattern="dd-MM-yyyy HH:mm:ss"
												value="${tmpVar.votes.get(tmpVar.votes.size()-1).voteDate}" />
											Количество комментариев: <b>${sizeComment}</b> Количество
											документов: <b>${sizeDoc}</b>
										</div>
									</c:when>
								</c:choose>

								<div>
									Уровень: ${tmpVar.proposalLevel.level} | Статус:
									${tmpVar.proposalStatus.status} | Категорий: <b>${sizeCat}</b>
								</div>

							</div>
						</div>

					</c:forEach>

				</div>
				<!--/row-->
				<!-- Pagination -->
				<div>
					<c:if test="${gpModel.pagesTotal == 0}">
							<p>Данных соответствующих данному фильтру нет в базе данных.
								Измените условия фильтра...
							<p>
					</c:if>
				
					<ul class="pagination ">
						<!-- 			<li><a href="#">&laquo;</a></li>	 -->

						

						<c:forEach begin="1" end="${gpModel.pagesTotal}" var="val">
							<li ${gpModel.pageNum == val ? 'class="active"' : ''}><a
								href="/voteme/?sortBy=${gpModel.sortBy}&pageQuant=${gpModel.pageQuant}&pageNum=${val}&filtrOn=${gpModel.filtrOn}">
									${val}</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<!--/span-->

			<div class="col-sm-3" role="navigation">

				<jsp:include page="loginForm.jsp" />

				<!--/.well -->
				<div class="well sidebar-nav">
					<form role="form" method="GET" action="filtr">

						<div>
							<p>Статус инициативы</p>
							<select name=status class="form-control">
								<option value="0">---Выберите статус---</option>
								<c:forEach items="${gpModel.statusList}" var="item">
									<option value="${item.id}"
										${item.id == gpModel.selectedPropStatusId ? 'selected="selected"' : ''}>${item.status}</option>
								</c:forEach>
							</select>
						</div>
						<br>
						<div>
							<p>Уровень</p>
							<select name=level class="form-control">
								<option value="0">---Выберите уровень---</option>
								<c:forEach items="${gpModel.levelList}" var="item">
									<option value="${item.id}"
										${item.id == gpModel.selectedPropLevelId ? 'selected="selected"' : ''}>${item.level}</option>
								</c:forEach>
							</select>
						</div>
						<br>
						<div>
							<p>Категория</p>
							<select name=category class="form-control">
								<option value="0">---Выберите категорию---</option>
								<c:forEach items="${gpModel.categoryList}" var="item">
									<option value="${item.categId}"
										${item.categId == gpModel.selectedCategoryId ? 'selected="selected"' : ''}>${item.categName}</option>
								</c:forEach>
							</select>
						</div>
						<br>
						<div>
							<p>Территориальное расположение</p>
							<p>
								<select name=country class="form-control">
									<option value="0">---Государство---</option>
									<c:forEach items="${gpModel.countryList}" var="item">
										<option value="${item.countryId}"
											${item.countryId == gpModel.selectedCountryId ? 'selected="selected"' : ''}>${item.countryName}</option>
									</c:forEach>
								</select> <select name=region class="form-control">
									<option value="0">---Регион---</option>
									<c:forEach items="${gpModel.regionList}" var="item">
										<option value="${item.regionId}"
											${item.regionId == gpModel.selectedRegionId ? 'selected="selected"' : ''}>${item.regionName}</option>
									</c:forEach>
								</select> <select name=city class="form-control">
									<option value="0">---Город---</option>
									<c:forEach items="${gpModel.cityList}" var="item">
										<option value="${item.cityId}"
											${item.cityId == gpModel.selectedCityId ? 'selected="selected"' : ''}>${item.cityName}</option>
									</c:forEach>
								</select> <select name=district class="form-control">
									<option value="0">---Район---</option>
									<c:forEach items="${gpModel.districtList}" var="item">
										<option value="${item.districtId}"
											${item.districtId == gpModel.selectedDistrictId ? 'selected="selected"' : ''}>${item.districtName}</option>
									</c:forEach>
								</select>
							</p>
						</div>
						<button type="submit" class="btn btn-default">Применить
							фильтр</button>
					</form>

				</div>
				<!--/.well -->
			</div>
			<!--/span-->
		</div>
		<!--/row-->

		<hr>

		<footer>
			<p>© Sv-051 Company 2014</p>
		</footer>

	</div>
	<!--/.container-->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<script src="<c:url value="/resources/js/lib/jquery-2.1.0.min.js" />"></script>
	<script src="<c:url value="/resources/js/lib/bootstrap.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/guestpage.js" />"></script>
</body>
</html>
