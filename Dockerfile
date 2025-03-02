# استفاده از ایماژ سبک Alpine
FROM alpine:latest

# نصب وردیابی و unzip
RUN apk add --no-cache wget unzip

# دانلود PocketBase
RUN wget https://github.com/pocketbase/pocketbase/releases/download/v0.22.4/pocketbase_0.22.4_linux_amd64.zip

# اکسترکت فایل
RUN unzip pocketbase_0.22.4_linux_amd64.zip

# اجرای PocketBase روی پورت ۸۰۸۰
CMD ["./pocketbase", "serve", "--http=0.0.0.0:8080"]
