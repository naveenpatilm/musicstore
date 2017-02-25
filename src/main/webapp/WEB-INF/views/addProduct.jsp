<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container-wrapper">
	<div class="container">

		<div class="page-header">
			<h1>Add Product</h1>

			<p class="lead">Here you can add products</p>
		</div>

		<form:form action="#" method="post" commandName="product">
			<div class="form-group">
				<label for="name">Name</label>
				<form:input path="productName" id="name" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="category">Category</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="instrument" />Instrument</label>
				<label class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="record" />Record</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="accessory" />Accessory</label>
			</div>
		</form:form>
	</div>
</div>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>