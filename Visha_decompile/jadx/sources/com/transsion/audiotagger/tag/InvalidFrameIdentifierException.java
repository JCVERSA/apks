package com.transsion.audiotagger.tag;

public class InvalidFrameIdentifierException extends InvalidFrameException {
    public InvalidFrameIdentifierException() {
    }

    public InvalidFrameIdentifierException(Throwable th) {
        super(th);
    }

    public InvalidFrameIdentifierException(String str) {
        super(str);
    }

    public InvalidFrameIdentifierException(String str, Throwable th) {
        super(str, th);
    }
}
