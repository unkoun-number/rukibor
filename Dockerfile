FROM fusuf/whatsasena:latest

RUN git clone https://github.com/unkoun-number/rukibor /root/rukibor
WORKDIR /root/rukibor/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
