dnf module disable nginx -y
dnf module enable nginx:1.24 -y
dnf install nginx -y

rm -rf /usr/share/nginx/html/*
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend-v3.zip

rm -f/etc/nginx/nginx.Con
cp nginx.conf /etc/nginx.conf


cd /usr/share/nginx/html
unzip /tmp/frontend.zip


systemctl enable nginx
systemctl start nginx