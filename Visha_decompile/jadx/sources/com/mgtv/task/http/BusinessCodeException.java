package com.mgtv.task.http;

import java.io.IOException;

public class BusinessCodeException extends IOException {
    public BusinessCodeException() {
    }

    public BusinessCodeException(String str) {
        super(str);
    }

    public BusinessCodeException(String str, Throwable th) {
        super(str, th);
    }

    public BusinessCodeException(Throwable th) {
        super(th);
    }
}
