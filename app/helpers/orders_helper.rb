module OrdersHelper
	def render_order_state(order)
		t("orders.order_state.#{order.aasm_state}")
	end

	def rendder_order_paid_state(order)
		if order.is_paid?
			"已付款"
		else
			"未付款"
		end
	end
end
