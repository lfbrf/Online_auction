jQuery ->
  $('#product_product_name').autocomplete
    source: $('#auction_product_name').data('autocomplete-source')