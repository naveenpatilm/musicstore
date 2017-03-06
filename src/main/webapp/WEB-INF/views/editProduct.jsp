<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container-wrapper">
	<div class="container">

		<div class="page-header">
			<h1>Edit Product</h1>

			<p class="lead">Here you can update the product details</p>
		</div>

		<form:form
			action="${pageContext.request.contextPath}/admin/productInventory/editProduct"
			method="post" commandName="product" enctype="multipart/form-data">
			<form:hidden path="productId" value="${product.productId}" />
			<div class="form-group">
				<label for="name">Name</label>
				<form:input path="productName" id="name" class="form-Control"
					value="${product.productName}" />
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

			<div class="form-group">
				<label for="description">Description</label>
				<form:textarea path="productDescription" id="description"
					class=" form-Control" value="${product.productDescription}" />
			</div>
			<div class="form-group">
				<label for="price">Price</label>
				<form:input path="productPrice" id="price" class="form-Control"
					value="${product.productPrice }" />
			</div>

			<div class="form-group">
				<label for="category">Condition</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCondition" id="condition" value="new" />New</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCondition" id="condition" value="used" />Used</label>
			</div>
			<div class="form-group">
				<label for="status">Status</label> <label class="checkbox-inline"><form:radiobutton
						path="productStatus" id="status" value="availaible" />Availaible</label>
				<label class="checkbox-inline"><form:radiobutton
						path="productStatus" id="status" value="unavailable" />Unavailaible</label>
			</div>
			<div class="form-group">
				<label for="unitInStock">Stock</label>
				<form:input path="unitInStock" id="unitInStock" class="form-Control"
					value="${product.unitInStock}" />
			</div>
			<div class="form-group">
				<label for="manufacturer">Manufacturer</label>
				<form:input path="productManufacturer" id="manufacturer"
					class="form-Control" value="${product.productManufacturer}" />
			</div>

			<div class="form-group">
				<label class="control-label" for="productImage">Upload</label>
				<form:input id="productImage" path="productImage" type="file"
					class="form:input-large" value="${product.productImage}" />
			</div>

			<br />
			<br />
			<input type="submit" value="submit" class="btn btn-default" />
			<a href="<c:url value="/admin/productInventory"/>" class="btn btn">Cancel</a>
		</form:form>
	</div>
</div>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>