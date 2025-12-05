library(rvest)
url <- "https://books.toscrape.com"
html_content <- read_html(url)
print(html_content)

title_xpath <- '//*[@class="product_pod"]/h3/a'
price_xpath <- '//*[@class="product_pod"]/div[2]/p[1]'

titles <- html_content %>%
  html_nodes(xpath = title_xpath) %>%
  html_text() %>%
  trimws()

prices <- html_content %>%
  html_nodes(xpath = price_xpath) %>%
  html_text() %>%
  trimws()

book_data <- data.frame(Titles = titles, Prices = prices)
write.csv(book_data, "book_data.csv", row.names = FALSE)
