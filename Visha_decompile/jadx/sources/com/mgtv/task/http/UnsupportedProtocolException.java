package com.mgtv.task.http;

public class UnsupportedProtocolException extends Exception {
    public UnsupportedProtocolException(String str) {
        super(str);
    }

    public UnsupportedProtocolException(String str, Throwable th) {
        super(str, th);
    }

    public UnsupportedProtocolException(Throwable th) {
        super(th);
    }
}
