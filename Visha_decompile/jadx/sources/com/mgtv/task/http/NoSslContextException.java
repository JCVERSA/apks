package com.mgtv.task.http;

public class NoSslContextException extends Exception {
    public NoSslContextException(String str) {
        super(str);
    }

    public NoSslContextException(String str, Throwable th) {
        super(str, th);
    }

    public NoSslContextException(Throwable th) {
        super(th);
    }
}
