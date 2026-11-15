package com.transsion.palmsdk.exception;

public class PalmServerException extends Exception {
    public int errorCode;
    public String errorMessage;

    public PalmServerException(int i, String str) {
        this.errorCode = i;
        this.errorMessage = str;
    }
}
