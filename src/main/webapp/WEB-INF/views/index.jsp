<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
   <head>
      <title>������������ ����������</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" >

	<style media="screen" type="text/css">
		.spacer{margin-bottom: 5px; }
	</style>

   </head>
  <body>


 


    <div class="container">
	<div class="row page-header">
			<div class="pull-left">
				<h1> ������������ ����������<br><small>����� ���������: 666 </small></h1>
			</div>
			<div class="pull-right">
				<p><a class="pull-right" href="#" role="button">������</a></p>
				<p>
				   <button type="button" class="btn btn-primary btn-lg ">
				      ������������<br>����������
				   </button>
				</p>
			</div>
	   </div>

	 <nav class="navbar navbar-default" role="navigation">
	   <div class="container-fluid">
	     <!-- Brand and toggle get grouped for better mobile display -->
	     <div class="navbar-header">
	       <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	         <span class="sr-only">Toggle navigation</span>
	         <span class="icon-bar"></span>
	         <span class="icon-bar"></span>
	         <span class="icon-bar"></span>
	       </button>
	       <a class="navbar-brand" href="#">�������</a>
	     </div>
	 
	     <!-- Collect the nav links, forms, and other content for toggling -->
	     <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	       <ul class="nav navbar-nav">
	 	<li><a href="#">� �������</a></li>
	         <li><a href="#">��������</a></li>
	         <li><a href="#">������</a></li>
	        </ul>
	       <form class="navbar-form navbar-right" role="search">
	         <div class="form-group">
	           <input type="text" class="form-control" placeholder="����� ���������...">
	         </div>
	         <button type="submit" class="btn btn-default">�����</button>
	       </form>
	       
	     </div><!-- /.navbar-collapse -->
	   </div><!-- /.container-fluid -->
	 </nav>








      <div class="row">

        <div class="col-sm-9">
            <div class="row">
			
			<ul class="nav nav-pills" >
	  		    <li><a href="#"><b>���</b></a></li>
	  		    <li><a href="#">����������</a></li>
	  		    <li><a href="#">���������</a></li>
			    <li class="pull-right disabled "><a href="#">������ ����.</a></li>
			 
			  <li class="dropdown pull-right">
			    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
			      ���������� �� 10<span class="caret"></span>
			    </a>
			    <ul class="dropdown-menu">
				    <li><a href="#">���������� �� 10</a></li>
				    <li><a href="#">���������� �� 25</a></li>
				    <li><a href="#">���������� �� 50</a></li>
     			    </ul>
			  </li>
			</ul>

	
	            <div  class="panel panel-default spacer" >
		      <div class="panel-body">
		              <p>Donec id elit nollis euismod. Donec sed odio dui. </p>
	              <p>	
				<a class="pull-right" href="#" role="button">���������</a>
				<em class="pull-left">���������� �������: 32 </em>
		      </p>
			</div>
	            </div><!--/span-->
	            <div  class="panel panel-default spacer" >
		      <div class="panel-body">
		              <p>Donec id elit non mi pota sem malesuada magna mollis euismod. Donec sed odio dui. </p>
	              <p>	
				<a class="pull-right" href="#" role="button">���������</a>
				<em class="pull-left">���������� �������: 32 </em>
		      </p>
			</div>
	            </div><!--/span-->
		    <div  class="panel panel-default  spacer" >
		      <div class="panel-body">
		              <p>Donec id elit non da magna mollis euismod. Donec sed odio dui. </p>
	              <p>	
				<a class="pull-right" href="#" role="button">���������</a>
				<em class="pull-left">���������� �������: 32 </em>
		      </p>
			</div>
	            </div><!--/span-->
		    <div  class="panel panel-default spacer" >
		      <div class="panel-body">
		              <p>Donec id eliassa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
	              <p>	
				<a class="pull-right" href="#" role="button">���������</a>
				<em class="pull-left">���������� �������: 32 </em>
		      </p>
			</div>
	            </div><!--/span-->
		    <div  class="panel panel-default spacer" >
		      <div class="panel-body">
		              <p>Donec id elit non mi porta gcondimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
	              <p>	
				<a class="pull-right" href="#" role="button">���������</a>
				<em class="pull-left">���������� �������: 32 </em>
		      </p>
			</div>
	            </div><!--/span-->
		<div  class="panel panel-default spacer" >
		      <div class="panel-body">
		              <p>Donec id elit non mi porta gravidto sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
	              <p>	
				<a class="pull-right" href="#" role="button">���������</a>
				<em class="pull-left">���������� �������: 32 </em>
		      </p>
			</div>
	            </div><!--/span-->
		<div  class="panel panel-default spacer" >
		      <div class="panel-body">
		              <p>rtor maursem malesuada magna mollis euismod. Donec sed odio dui. </p>
	              <p>	
				<a class="pull-right" href="#" role="button">���������</a>
				<em class="pull-left">���������� �������: 32 </em>
		      </p>
			</div>
	            </div><!--/span-->
		<div  class="panel panel-default spacer" >
		      <div class="panel-body">
		              <p>Donec id elit nonermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
	              <p>	
				<a class="pull-right" href="#" role="button">���������</a>
				<em class="pull-left">���������� �������: 32 </em>
		      </p>
			</div>
	            </div><!--/span-->

	

          </div><!--/row-->
<!-- Pagination -->
	<div >
		<ul class="pagination ">
		  <li><a href="#">&laquo;</a></li>
		  <li class="active"><a href="#">1</a></li>
		  <li class="disabled"><a href="#">2</a></li>
		  <li><a href="#">3</a></li>
		  <li><a href="#">4</a></li>
		  <li><a href="#">5</a></li>
		  <li><a href="#">&raquo;</a></li>
		</ul>
	</div>
        </div><!--/span-->

        <div class="col-sm-3" role="navigation">
	   
           <div class="well sidebar-nav">
		<form role="form">
		  <div class="form-group">
		    <label for="exampleInputEmail1">���</label>
		    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="������� ���">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1">������</label>
		    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="������">
		  </div>
		  <div class="checkbox">
		    <label>
		      <input type="checkbox"> ��������� ����
		    </label>
		  </div>
		  <button type="submit" class="btn btn-default">�����</button>
		  <a class="pull-right" href="#" role="button">�����������</a>
		</form>
          </div><!--/.well -->
	  <div class="well sidebar-nav">
		<form role="form">
		     ������ ����������
		     <div>
			<div class="radio">
			  <label>
			    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
			    �� �����������
			  </label>
			</div>
			<div class="radio">
			  <label>
			    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
			    �����������
			  </label>
			</div>
			<div class="radio">
			  <label>
			    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
			    ����������� ��������
			  </label>
			</div>
		     </div>
		     �������
		     <div>
		  <div class="checkbox">
		    <label>
		      <input type="checkbox"> �����������
		    </label>
		  </div>
		  <div class="checkbox">
		    <label>
		      <input type="checkbox"> ������������
		    </label>
		  </div>
		  <div class="checkbox">
		    <label>
		      <input type="checkbox"> �������������
		    </label>
		  </div>
		  </div>
		     <p> ���������</p>		
		      <div >
		      		<select class="form-control">
				  <option>---�������� ���������---</option>
				  <option>���������</option>
				  <option>���������������</option>
				  <option>������������ ������������</option>
				  <option>5</option>
				</select>
		      </div><br>
			<p>��������������� ������������  </p>
		      <div>
			
				<p>		
	  			    <select  class="form-control">
					<option>---�����������---</option>
	  			      <option>������</option>
	  			      <option>�������</option>
	  			    </select>
				<select class="form-control">
				  <option>---������---</option>
				  <option>2</option>
				  <option>3</option>
				  <option>4</option>
				  <option>5</option>
				</select>
				<select class="form-control">
				  <option>---���������� �����---</option>
				  <option>2</option>
				  <option>3</option>
				  <option>4</option>
				  <option>5</option>
				</select>
			</p>
			</div>
		  <button type="submit" class="btn btn-default">��������� ������</button>
		</form>           
              
            
          </div><!--/.well -->
        </div><!--/span-->
      </div><!--/row-->

      <hr>

	

      <footer>
        <p>© Company 2014</p>
      </footer>

    </div><!--/.container-->



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>

</body></html>
  

