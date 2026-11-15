package com.mgtv.task.http;

import java.io.IOException;

public class HttpFormatException extends IOException {
    public HttpFormatException() {
    }

    public HttpFormatException(String str) {
        super(str);
    }

    public HttpFormatException(String str, Throwable th) {
        super(str, th);
    }

    public HttpFormatException(Throwable th) {
        super(th);
    }
}
