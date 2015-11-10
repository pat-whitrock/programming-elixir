defmodule Tax do
  def orders_with_total orders, tax_rates do
    for order = [ id: id, ship_to: state, net_amount: cost ] <- orders,
      do: [
        id: id,
        ship_to: state,
        net_amount: cost,
        total_amount: cost * (1 + elem(
          List.keyfind(tax_rates, state, 0, { state, 0 }), 1
        ))
      ]
  end
end
