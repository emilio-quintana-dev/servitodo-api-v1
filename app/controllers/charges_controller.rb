require 'stripe'
require 'sinatra'
require 'json'

Stripe.api_key = "sk_test_51HG8RACtDv3nRJYWus3sn8ckj5jxiyyoB0ZCAR7jGebXs6xbM2dB8wbAOKKJVDrHHeXWugxNKtrU8xliE1GkhfLG00AXyoCGXB"

class ChargesController < ApplicationController

    def create
        data = JSON.parse(request.body.read.to_s)
        
        begin
            # Create the PaymentIntent
            intent = Stripe::PaymentIntent.create({
              amount: data['amount'].to_i * 100,
              currency: 'usd',
              payment_method: data['payment_method_id'],
        
              # A PaymentIntent can be confirmed some time after creation,
              # but here we want to confirm (collect payment) immediately.
              confirm: true,
        
              # If the payment requires any follow-up actions from the
              # customer, like two-factor authentication, Stripe will error
              # and you will need to prompt them for a new payment method.
              error_on_requires_action: true,
            })
            
            if intent.status == 'succeeded'
              render json: { status: "SUCCESS"}
            else
              # Any other status would be unexpected, so error
              render json: { status: "ERROR"}
            end
        rescue Stripe::CardError => e
            render json: { status: "ERROR"}
        end

        
      end
end
