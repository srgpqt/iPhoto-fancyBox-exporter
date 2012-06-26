<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title><ipt_page_title></title>

	<link rel="stylesheet" href="Resources/jquery.fancybox.css?v=2.0.6" type="text/css" media="screen" />
	<link rel="stylesheet" href="Resources/helpers/jquery.fancybox-buttons.css?v=1.0.2" type="text/css" media="screen" />
	<link rel="stylesheet" href="Resources/helpers/jquery.fancybox-thumbs.css?v=2.0.6" type="text/css" media="screen" />
	<style type="text/css">
		body {
			margin: 1em;
		}
		a {
			text-decoration: none;
		}
		a img {
			border: 0;
		}
	</style>
</head>
<body>

<h2><ipt_page_title></h2>

<div class="nav"><ipt_page_navigation></div>
<div class="thumbs"><ipt_payload></div>
<div class="nav"><ipt_page_navigation></div>

<script type="text/javascript" src="Resources/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="Resources/jquery.mousewheel-3.0.6.pack.js"></script>
<script type="text/javascript" src="Resources/jquery.fancybox.pack.js?v=2.0.6"></script>
<script type="text/javascript" src="Resources/helpers/jquery.fancybox-buttons.js?v=1.0.2"></script>
<script type="text/javascript" src="Resources/helpers/jquery.fancybox-media.js?v=1.0.0"></script>
<script type="text/javascript" src="Resources/helpers/jquery.fancybox-thumbs.js?v=2.0.6"></script>

<script type="text/javascript">
	jQuery(function($) {
		var $thumbs = $(".fancybox-thumb");
		$thumbs.each(function(){
			/* Rewrite image URLs because iPhoto doesn't supply them in them directly in the index */
			$(this).attr('href', $(this).attr('href').replace('Thumbnails', 'Images'));
		});
		$thumbs.fancybox({
			prevEffect	: 'none',
			nextEffect	: 'none',
			helpers	: {
				title	: {
					type: 'outside'
				},
				overlay	: {
					opacity : 0.8,
					css : {
						'background-color' : '#000'
					}
				},
				thumbs	: {
					width	: 50,
					height	: 50
				}
			}
		});
	});
</script>

</body>
</html>
