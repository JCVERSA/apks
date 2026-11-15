package com.transsion.audiotagger.audio.exceptions;

public class NoWritePermissionsException extends CannotWriteException {
    public NoWritePermissionsException() {
    }

    public NoWritePermissionsException(Throwable th) {
        super(th);
    }

    public NoWritePermissionsException(String str) {
        super(str);
    }

    public NoWritePermissionsException(String str, Throwable th) {
        super(str, th);
    }
}
