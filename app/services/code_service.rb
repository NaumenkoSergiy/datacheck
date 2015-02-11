class CodeService
  def check code
    is_in_code = Code.find_by(code: code)
    is_in_request = Request.find_by(code_id: code)

    if is_in_code && is_in_request
      Messages::WRONG_CODE
    elsif is_in_code && is_in_request.nil?
      is_in_code.code_type.answer
    elsif is_in_request && is_in_code.nil?
      Messages::PROPERTY_COMPLETE
    else
      Messages::PROPERTY_UNCOMPLETE
    end
  end
end
