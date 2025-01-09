class ChatbotController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:index]

  def index
    # Log incoming request parameters
    Rails.logger.info "Incoming request: #{params.inspect}"

    input_message = params[:message]

    # Log input message
    Rails.logger.info "User input message: #{input_message}"

    if input_message.blank?
      Rails.logger.warn "Message parameter is missing or empty"
      render json: { error: "Message parameter is required" }, status: :unprocessable_entity
      return
    end

    # Context messages
    messages = [
      { role: "system", content: "You are a helpful assistant." },
      { role: "user", content: input_message },
    ]

    # Log the messages being sent to OpenAI
    Rails.logger.info "Messages to OpenAI: #{messages}"

    begin
      # Make the API request
      response = HTTP.headers(
        Authorization: "Bearer #{ENV["OPENAI_API_KEY"]}",
        "Content-Type" => "application/json",
      ).post(
        "https://api.openai.com/v1/chat/completions",
        json: {
          model: "gpt-4o-mini",
          messages: messages,
        },
      )

      # Parse the response
      chat_response = response.parse

      # Log the raw response from OpenAI
      Rails.logger.info "OpenAI response: #{chat_response}"

      # Extract the reply
      reply = chat_response.dig("choices", 0, "message", "content")

      # Log the extracted reply
      Rails.logger.info "Extracted reply: #{reply}"

      # Return the reply
      render json: chat_response
    rescue => e
      # Log the error
      Rails.logger.error "Error while communicating with OpenAI: #{e.message}"
      render json: { error: "API request failed", details: e.message }, status: :internal_server_error
    end
  end
end
