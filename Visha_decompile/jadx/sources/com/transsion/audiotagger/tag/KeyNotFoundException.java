package com.transsion.audiotagger.tag;

public class KeyNotFoundException extends RuntimeException {
    public KeyNotFoundException() {
    }

    public KeyNotFoundException(Throwable th) {
        super(th);
    }

    public KeyNotFoundException(String str) {
        super(str);
    }

    public KeyNotFoundException(String str, Throwable th) {
        super(str, th);
    }
}
