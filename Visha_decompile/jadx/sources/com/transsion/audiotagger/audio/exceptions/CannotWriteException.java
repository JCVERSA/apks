package com.transsion.audiotagger.audio.exceptions;

public class CannotWriteException extends Exception {
    public CannotWriteException() {
    }

    public CannotWriteException(String str) {
        super(str);
    }

    public CannotWriteException(String str, Throwable th) {
        super(str, th);
    }

    public CannotWriteException(Throwable th) {
        super(th);
    }
}
