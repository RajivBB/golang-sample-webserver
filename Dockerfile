FROM golang:1.20-alpine
WORKDIR /app
COPY . .
RUN go build -o server
ENV PORT 8000
EXPOSE $PORT
CMD ["./server"]
