package com.transsion.audiotagger.tag;

public class TagNotFoundException extends TagException {
    public TagNotFoundException() {
    }

    public TagNotFoundException(Throwable th) {
        super(th);
    }

    public TagNotFoundException(String str) {
        super(str);
    }

    public TagNotFoundException(String str, Throwable th) {
        super(str, th);
    }
}
