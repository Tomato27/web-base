require 'faraday'

page = Faraday.get ('https://diveintocode.jp/')
text = page.body.force_encoding('utf-8')

def get_link(text)
  href_number = text.index("href=")

  if href_number == nil
    return nil, 0
  end

  start_number = text.index('"', href_number)
  end_number = text.index('"', start_number + 1)

  url = text.slice(start_number+1..end_number-1)
  return url,end_number
end

while true
  url, end_position = get_link(text)
  if url == nil
    break
  else
    puts(url)

    text = text.slice(end_position..-1)
  end

end