package com.transsion.audiotagger.tag;

public class PaddingException extends InvalidFrameIdentifierException {
    public PaddingException() {
    }

    public PaddingException(Throwable th) {
        super(th);
    }

    public PaddingException(String str) {
        super(str);
    }

    public PaddingException(String str, Throwable th) {
        super(str, th);
    }
}
