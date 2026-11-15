package com.transsion.retrofit.exception;

public class ApiException extends Exception {
    private int code;
    private String displayMessage;

    public ApiException(Throwable th, int i) {
        super(th);
        this.code = i;
    }

    public int getCode() {
        return this.code;
    }

    public String getDisplayMessage() {
        return this.displayMessage;
    }

    public void setDisplayMessage(String str) {
        this.displayMessage = str;
    }
}
