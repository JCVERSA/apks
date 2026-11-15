package com.transsion.audiotagger.tag;

public class FieldDataInvalidException extends TagException {
    public FieldDataInvalidException() {
    }

    public FieldDataInvalidException(Throwable th) {
        super(th);
    }

    public FieldDataInvalidException(String str) {
        super(str);
    }

    public FieldDataInvalidException(String str, Throwable th) {
        super(str, th);
    }
}
