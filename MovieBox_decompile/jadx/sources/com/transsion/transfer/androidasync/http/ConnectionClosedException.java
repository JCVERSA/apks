package com.transsion.transfer.androidasync.http;

public class ConnectionClosedException extends Exception {
    public ConnectionClosedException(String str) {
        super(str);
    }

    public ConnectionClosedException(String str, Throwable th2) {
        super(str, th2);
    }
}
