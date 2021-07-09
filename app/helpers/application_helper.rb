module ApplicationHelper

  def display_phone(number)
    number = number.delete("^0-9")
    # for numbers like '1-800-123-1234'
    if number.length == 11 && number[0] == '1'
      return number_to_phone(number[1..-1], pattern: /(\d{3})(\d{3})(\d{4})$/, area_code: true, delimiter: '-')
    end

    # for numbers like '800-123-1234'
    return number_to_phone(number, pattern: /(\d{3})(\d{3})(\d{4})$/, area_code: true, delimiter: '-') if number.length == 10

    # for foreign numbers
    number_to_phone(number, pattern: /(\d{1,4})(\d{4})(\d{4})$/, delimiter: '-')
  end

  def flash_message_class(type)
    case type
      when 'notice' then "alert alert-info"
      when 'success' then "alert alert-success"
      when 'warning' then "alert alert-warning"
      when 'error', 'danger' then "alert alert-danger"
    end
  end
end
