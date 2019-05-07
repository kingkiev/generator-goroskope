<html><head>
	<meta charset='utf-8'>
	<title>Гороскоп на сегодня</title>
	<link
		rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"
	/>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

	<script src="scripts.js"></script>

	</head>
	<body>
		<div class="container">
			<h1 id="click_on_header">Ваши предсказания на {{ date }}</h1>

			% if special_date:
      		<h2>Сегодня супер особенный день!</h2>
      		% end

      		% for pred in predictions:
      		<p>{{ pred }}</p>
      		% end

			<div class="row">
  				<div class="col" id="p-0">
  					<p>1</p>
  				</div>
  				<div class="col" id="p-1">
  					<p>2</p>
  				</div>
  				<div class="col" id="p-2">
  					<p>3</p>
  				</div>
  			</div>
  			<div class="row">
  				<div class="col" id="p-3">
  					<p>4</p>
  				</div>
  				<div class="col" id="p-4">
  					<p>5</p>
  				</div>
  				<div class="col" id="p-5">
  					<p>6</p>
  				</div>
			</div>

			<p><hr /></p>
			<p><a href="about.html">О реализации</p>
		</div>
	</body>
	
</html>
