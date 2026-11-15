package com.transsion.audiotagger.audio.exceptions;

public class CannotReadException extends Exception {
    public CannotReadException() {
    }

    public CannotReadException(Throwable th) {
        super(th);
    }

    public CannotReadException(String str) {
        super(str);
    }

    public CannotReadException(String str, Throwable th) {
        super(str, th);
    }
}
