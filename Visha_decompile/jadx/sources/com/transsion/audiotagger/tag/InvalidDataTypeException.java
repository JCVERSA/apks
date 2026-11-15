package com.transsion.audiotagger.tag;

public class InvalidDataTypeException extends InvalidTagException {
    public InvalidDataTypeException() {
    }

    public InvalidDataTypeException(Throwable th) {
        super(th);
    }

    public InvalidDataTypeException(String str) {
        super(str);
    }

    public InvalidDataTypeException(String str, Throwable th) {
        super(str, th);
    }
}
