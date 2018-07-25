library(tesseract)
text<-ocr("http://jeroen.github.io/images/testocr.png")
cat(text)