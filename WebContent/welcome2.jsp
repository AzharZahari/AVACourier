<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="header2.jsp"%>

	<br>
	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img
					src="https://www.parcelhub.com.my/images/Homepage/homepage%20top%20photo/slider02.jpg"
					class="d-block w-100" alt="..." height="700px">
			</div>
			<div class="carousel-item">
				<img
					src="https://s3.ap-southeast-1.amazonaws.com/scontent.easyparcel.com/pcm/image/general/homepage-slider-image-258-en.png"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img
					src="https://s3.ap-southeast-1.amazonaws.com/scontent.easyparcel.com/pcm/image/general/homepage-slider-image-258-en.png"
					class="d-block w-100" alt="..." height="300px">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<br>
	<%@ include file="/footer.jsp"%>