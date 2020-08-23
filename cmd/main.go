package main

import (
    "fmt"
    "time"
    "net/http"
)

func helloHandler(w http.ResponseWriter, req *http.Request) {
    fmt.Fprintf(w, "hello\n")
}

func rootHandler(w http.ResponseWriter, req *http.Request) {
    fmt.Fprintf(w, fmt.Sprintf(`date_time: "%v"`, time.Now().Format("2006-01-02 15:04:05")))
}

func main() {
    http.HandleFunc("/", rootHandler)
    http.HandleFunc("/hello", helloHandler)
    http.ListenAndServe(":8090", nil)
}
