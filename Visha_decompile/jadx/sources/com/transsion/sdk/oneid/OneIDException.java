package com.transsion.sdk.oneid;

public class OneIDException extends IllegalStateException {
    public OneIDException() {
    }

    public OneIDException(String str) {
        super(str);
    }

    public OneIDException(String str, Throwable th) {
        super(str, th);
    }

    public OneIDException(Throwable th) {
        super(th);
    }
}
