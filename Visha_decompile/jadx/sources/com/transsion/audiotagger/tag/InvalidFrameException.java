package com.transsion.audiotagger.tag;

public class InvalidFrameException extends InvalidTagException {
    public InvalidFrameException() {
    }

    public InvalidFrameException(Throwable th) {
        super(th);
    }

    public InvalidFrameException(String str) {
        super(str);
    }

    public InvalidFrameException(String str, Throwable th) {
        super(str, th);
    }
}
