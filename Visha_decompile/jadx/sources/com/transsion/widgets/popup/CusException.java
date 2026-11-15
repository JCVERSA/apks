package com.transsion.widgets.popup;

public class CusException extends RuntimeException {
    private String message;

    public CusException() {
    }

    @Override
    public String toString() {
        return "CusException{message='" + this.message + "'}";
    }

    public CusException(String str) {
        super(str);
        this.message = str;
    }
}
