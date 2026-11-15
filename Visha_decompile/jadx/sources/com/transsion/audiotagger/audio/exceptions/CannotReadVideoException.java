package com.transsion.audiotagger.audio.exceptions;

public class CannotReadVideoException extends CannotReadException {
    public CannotReadVideoException() {
    }

    public CannotReadVideoException(Throwable th) {
        super(th);
    }

    public CannotReadVideoException(String str) {
        super(str);
    }

    public CannotReadVideoException(String str, Throwable th) {
        super(str, th);
    }
}
