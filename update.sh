#curl 'https://www.amazon.com/gp/help/customer/display.html?nodeId=GKMQC26VQQMM8XSW' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Accept-Language: en-US,en;q=0.5' -H 'Referer: https://www.amazon.com/gp/help/customer/display.html?nodeId=200529680' -H 'Upgrade-Insecure-Requests: 1' -H 'Cache-Control: max-age=0' -H 'TE: Trailers' | sed 's/"/\n/g' | grep bin | grep https >tmp
curl https://www.amazon.com/update_Kindle_7th_Gen | sed 's/"/\n/g' | grep bin >>tmp
curl https://www.amazon.com/update_Kindle_8th_Gen | sed 's/"/\n/g' | grep bin >>tmp
curl https://www.amazon.com/update_Kindle_10th_Gen | sed 's/"/\n/g' | grep bin >>tmp
curl https://www.amazon.com/update_Kindle_Oasis_8th_Gen | sed 's/"/\n/g' | grep bin >>tmp
curl https://www.amazon.com/update_Kindle_Oasis_9th_Gen | sed 's/"/\n/g' | grep bin >>tmp
curl https://www.amazon.com/update_Kindle_Oasis_10th_Gen | sed 's/"/\n/g' | grep bin >>tmp
curl https://www.amazon.com/update_Kindle_Paperwhite_6th_Gen | sed 's/"/\n/g' | grep bin >>tmp
curl https://www.amazon.com/update_Kindle_Paperwhite_7th_Gen | sed 's/"/\n/g' | grep bin >>tmp
curl https://www.amazon.com/update_Kindle_Paperwhite_10th_Gen | sed 's/"/\n/g' | grep bin >>tmp
curl https://www.amazon.com/update_Kindle_Paperwhite_11th_Gen | sed 's/"/\n/g' | grep bin >>tmp
curl https://www.amazon.com/update_Kindle_Voyage_7th_Gen | sed 's/"/\n/g' | grep bin >>tmp
wget https://s3.amazonaws.com/firmwarereleasenotes/update_kindle_all_new_oasis_v2/AAHKV2X7AFYLW/zh_CN.html -O Kindle_Oasis_10th_zh.html
wget https://s3.amazonaws.com/firmwarereleasenotes/update_kindle_all_new_oasis_v2/ATVPDKIKX0DER/en_US.html -O Kindle_Oasis_10th_en.html
wget https://s3.amazonaws.com/firmwarereleasenotes/update_kindle_all_new_oasis/AAHKV2X7AFYLW/zh_CN.html -O Kindle_Oasis_9th_zh.html
wget https://s3.amazonaws.com/firmwarereleasenotes/update_kindle_all_new_oasis/ATVPDKIKX0DER/en_US.html -O Kindle_Oasis_9th_en.html
wget https://s3.amazonaws.com/firmwarereleasenotes/update_kindle_oasis/AAHKV2X7AFYLW/zh_CN.html -O Kindle_Oasis_8th_zh.html
wget https://s3.amazonaws.com/firmwarereleasenotes/update_kindle_oasis/ATVPDKIKX0DER/en_US.html -O Kindle_Oasis_8th_en.html
wget https://s3.amazonaws.com/firmwarereleasenotes/update_kindle_voyage/AAHKV2X7AFYLW/zh_CN.html -O Kindle_Voyage_7th_zh.html
wget https://s3.amazonaws.com/firmwarereleasenotes/update_kindle_voyage/ATVPDKIKX0DER/en_US.html -O Kindle_Voyage_7th_en.html
wget https://s3.amazonaws.com/firmwarereleasenotes/update_kindle_all_new_paperwhite_v2/AAHKV2X7AFYLW/zh_CN.html -O Kindle_Paperwhite_10th_zh.html
wget https://s3.amazonaws.com/firmwarereleasenotes/update_kindle_all_new_paperwhite_v2/ATVPDKIKX0DER/en_US.html -O Kindle_Paperwhite_10th_en.html
wget https://s3.amazonaws.com/firmwarereleasenotes/update_kindle_all_new_paperwhite/AAHKV2X7AFYLW/zh_CN.html -O Kindle_Paperwhite_7th_zh.html
wget https://s3.amazonaws.com/firmwarereleasenotes/update_kindle_all_new_paperwhite/ATVPDKIKX0DER/en_US.html -O Kindle_Paperwhite_7th_en.html
wget https://s3.amazonaws.com/firmwarereleasenotes/update_kindle_10th/AAHKV2X7AFYLW/zh_CN.html -O Kindle_10th_zh.html
wget https://s3.amazonaws.com/firmwarereleasenotes/update_kindle_10th/ATVPDKIKX0DER/en_US.html -O Kindle_10th_en.html
wget https://s3.amazonaws.com/firmwarereleasenotes/update_kindle_8th/AAHKV2X7AFYLW/zh_CN.html -O Kindle_8th_zh.html
wget https://s3.amazonaws.com/firmwarereleasenotes/update_kindle_8th/ATVPDKIKX0DER/en_US.html -O Kindle_8th_en.html
wget https://s3.amazonaws.com/firmwarereleasenotes/update_kindle_all_new_paperwhite_11th/AAHKV2X7AFYLW/zh_CN.html -O Kindle_Paperwhite_11th_zh.html
wget https://s3.amazonaws.com/firmwarereleasenotes/update_kindle_all_new_paperwhite_11th/ATVPDKIKX0DER/en_US.html -O Kindle_Paperwhite_11th_en.html
cat tmp | sort | uniq >KindleE-ReaderSoftwareUpdates
rm tmp
git add .
git commit -m "`date`"
git push 
