$ ->
	$(".payment-toggle").click (e) ->
		e.preventDefault()
		$(this).toggleClass("glyphicon-plus-sign glyphicon-minus-sign")
		$this = $(this).parent().find(".payment-details")

		$(".payment-details").not($this).hide()
		$this.toggle()
