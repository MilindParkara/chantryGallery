(function(){
	var pokeImages = document.querySelectorAll("nav li"),
	critterHeader = document.querySelector(".click-header"),
	criterImage3 = document.querySelector(".single_portfolio"),
	criterImage = document.querySelector(".pokemon-large"),
	critterDesc =document.querySelector(".content-section p"),
	habHeader = document.querySelector(".habitat-header"),
	critterHab =document.querySelector(".habitat"),
	httpRequest;

	function makeRequest(){
		httpRequest = new XMLHttpRequest();

		if(!httpRequest){
			console.log('please update browser');
			return false;
		}
		httpRequest.onreadystatechange = showPokemonInfo;
		httpRequest.open('GET', 'include/getImages.php' + '?critter=' + this.id);
	
		httpRequest.send();
	}

	function showPokemonInfo(){
		if(httpRequest.readyState === XMLHttpRequest.DONE && httpRequest.status === 200){
			var pokeData = JSON.parse(httpRequest.responseText);

			critterHeader.firstChild.nodeValue = pokeData.img_mainImage;

			[].forEach.call(document.querySelectorAll('.hidden'), function(item){
				item.classList.remove('hidden');
			});
			
			criterImage3.src = 'images/gallery/' + pokeData.image_id+ '.jpg';

			criterImage.src = 'images/gallery/' + pokeData.img_mainImage+ '.jpg';
			critterDesc.firstChild.nodeValue = pokeData.img_title;
			habHeader.firstChild.nodeValue = pokeData.img_title + " lives here!";
			critterHab.src = "images/gallery/" + pokeData.img_id + ".jpg";
		}
	}
			
	[].forEach.call(pokeImages, function(img) {
		img.addEventListener("click", makeRequest, false);
	});

})();