$ ->
	$(".payment-toggle").click (e) ->
		e.preventDefault()
		$this = $(this).parent().find(".payment-details")
		$(".payment-details").not($this).hide()

		$this.toggle()