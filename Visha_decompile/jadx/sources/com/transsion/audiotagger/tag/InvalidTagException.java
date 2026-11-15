package com.transsion.audiotagger.tag;

public class InvalidTagException extends TagException {
    public InvalidTagException() {
    }

    public InvalidTagException(Throwable th) {
        super(th);
    }

    public InvalidTagException(String str) {
        super(str);
    }

    public InvalidTagException(String str, Throwable th) {
        super(str, th);
    }
}
