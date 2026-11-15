package com.facebook.biddingkit.http.client;

public class HttpRequestException extends Exception {
    private static final long serialVersionUID = -2413629666163901633L;
    private HttpResponse httpResponse;

    public HttpRequestException(Exception exc, HttpResponse httpResponse) {
        super(exc);
        this.httpResponse = httpResponse;
    }

    public HttpResponse getHttpResponse() {
        return this.httpResponse;
    }
}
