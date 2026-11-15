package com.transsion.audiotagger.audio.exceptions;

public class ReadOnlyFileException extends Exception {
    public ReadOnlyFileException() {
    }

    public ReadOnlyFileException(Throwable th) {
        super(th);
    }

    public ReadOnlyFileException(String str) {
        super(str);
    }

    public ReadOnlyFileException(String str, Throwable th) {
        super(str, th);
    }
}
