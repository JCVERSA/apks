package com.transsion.audiotagger.tag;

public class TagException extends Exception {
    public TagException() {
    }

    public TagException(Throwable th) {
        super(th);
    }

    public TagException(String str) {
        super(str);
    }

    public TagException(String str, Throwable th) {
        super(str, th);
    }
}
