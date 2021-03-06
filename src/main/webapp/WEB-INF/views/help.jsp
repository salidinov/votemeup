
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="true"%>


<!DOCTYPE html>
<html>
<head>
<title>Помощь</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css" />">
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/css/style.css" />">

<style media="screen" type="text/css">
.spacer {
	margin-bottom: 5px;
}

p {
	font-weight: bold;
}
</style>



</head>
<body>

	<div class="container">

		<jsp:include page="header.jsp" />

		<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
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
						<li><a href="/voteme/">Главная</a></li>
						<c:if test="${user.role.roleName == 'ROLE_ADMIN'}">
							<li><a href="/voteme/admin/">
									Пользователи</a></li>	
						</c:if>
						<li><a href="/voteme/about">О проекте</a></li>
						<li><a href="/voteme/contact">Контакты</a></li>
						<li class="active"><a href="/voteme/help">Помощь</a></li>
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
		<!-- Inform from contacts -->
		<div class="row">
			<div class="col-sm-9">
				<div class="row" align="justify">
					<p>
						<b>В данном разделе вы можете ознакомиться с ответами на часто
							задаваемые вопросы.</b>
					</p>
					<div id="help">

						<div class="help-header">
							<p>► Преимущества регистрации</p>
						</div>
						<div class="help-inf">

							Для полноценного использования всех функций сайта, необходимо
							зарегистрироваться. Регистрация на сайте бесплатна и займет всего
							лишь пару минут. Для регистрации необходимо нажать ссылку <i>"Регистрация"</i>
							на любой странице сайта. На странице регистрации вы должны
							заполнить все обязательные поля. Будьте внимательны при
							заполнении формы, если вы допустите какие-то ошибки, то рядом с
							полем появится сообщение. После того как вы заполните все поля,
							нажмите кнопку <i>"Регистрация"</i>. После отправки формы
							регистрации, возможно, что вам необходимо будет активировать свою
							учетную запись, для этого сайт вышлет вам письмо с ссылкой на
							активацию учетной записи, пройдите по ней и активируйте учетную
							запись.


						</div>
						<div class="help-header">
							<p>► Авторизация и выход</p>
						</div>

						<div class="help-inf">

							<b>Авторизация</b> <br>Для входа на форум под своей учетной
							записью просто воспользуйтесь ссылкой <i>"Войти"</i>,
							расположенной на каждой страницы форума. На странице авторизации
							вам необходимо будет ввести ваше имя пользователя, а также
							пароль, все эти данные вы указывали при регистрации. Так же вы
							можете выбрать опцию <i>"Запомнить меня"</i>, что избавит вас от
							необходимости авторизоваться каждый раз, когда вы посещаете наш
							сайт. Данную опцию следует использовать только при работе на
							личном персональном компьютере, если вы авторизуетесь на сайте с
							общедоступного компьютера (например, в компьютерном клубе или
							библиотеке), то ни в коем случае не выбирайте эту опцию. Когда
							все поля заполнены и нужные опции выбраны просто нажмите кнопку <i>"Войти"</i>.
							После этого сайт переместит вас к той странице, с которой вы ушли
							на страницу авторизации.<br> <b>Выход</b><br> Для
							выхода из своей учетной записи воспользуйтесь ссылкой "Выход",
							расположенной вверху каждой страницы форума.

						</div>

						<div class="help-header">
							<p>► Правила размещения инициативы</p>
						</div>
						<div class="help-inf">Неавторизированный пользователь может
							только просматривать информацию о имещихся инициативах. Для того
							чтобы подать инициативу поьзователь должен пройти не сложную
							процедуру регистрации. После это пользователь может оставить свою
							инициативу и проголосовать за уже имеющиеся.</div>

						<div class="help-header">
							<p>► Поиск по сайту</p>
						</div>
						<div class="help-inf">На нашем сайте предусмотерн поиск по
							инициативам. Также имеется возможность отфильтровать инициативы
							по одноу из нескольких критериев, таких как: статус инициативы,
							уровень, территориально расположение и др. Это дает вам
							возможность легко и быстро ознакомиться с уже существующими
							инициативами.</div>
					</div>

				</div>
			</div>
			<!--/span-->
			<div class="col-sm-3" role="navigation">

				<jsp:include page="loginForm.jsp" />

			</div>
			<!--/span-->
		</div>
		<!--/row-->
		<hr>
		<footer>
			<p>© Sv-051Company 2014</p>
		</footer>

	</div>
	<!--/.container-->



	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<script src="<c:url value="/resources/js/lib/bootstrap.min.js" />"></script>
	<script src="<c:url value="/resources/js/lib/jquery-2.1.0.min.js" />"></script>
	<!--  	<script src="<c:url value="/resources/js/jquery-ui.min.js" />"></script>-->
	<script
		src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
	<script>
		$(document).ready(function() {
			$("#help").accordion({
				collapsible : true,
				active : false,
				heightStyle : "content"
			});
			$("#help").css("cursor", "pointer");
		});
	</script>

</body>
</html>
