package com.transsion.audiotagger.tag;

public class EmptyFrameException extends InvalidFrameException {
    public EmptyFrameException() {
    }

    public EmptyFrameException(Throwable th) {
        super(th);
    }

    public EmptyFrameException(String str) {
        super(str);
    }

    public EmptyFrameException(String str, Throwable th) {
        super(str, th);
    }
}
