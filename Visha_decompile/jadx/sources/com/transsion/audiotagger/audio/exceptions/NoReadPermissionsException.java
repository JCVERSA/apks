package com.transsion.audiotagger.audio.exceptions;

public class NoReadPermissionsException extends CannotReadException {
    public NoReadPermissionsException() {
    }

    public NoReadPermissionsException(Throwable th) {
        super(th);
    }

    public NoReadPermissionsException(String str) {
        super(str);
    }

    public NoReadPermissionsException(String str, Throwable th) {
        super(str, th);
    }
}
