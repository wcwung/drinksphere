$(function(){
    var drinks = [
        'beer.',
        'spirit.',
        'cocktail.',
        'cider.',
        'whiskey.',
        'margarita.',
        'wine.'
        ], i = 0;
    setInterval(function(){
        $('#drinking_buddy').fadeOut(function(){
            $(this).html(drinks[i=(i+1)%drinks.length]).fadeIn();
        });
    }, 4000);
        
})();