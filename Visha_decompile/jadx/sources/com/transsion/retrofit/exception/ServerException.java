package com.transsion.retrofit.exception;

public class ServerException extends RuntimeException {
    private final int code;
    private final String msg;

    public ServerException(int i, String str) {
        this.code = i;
        this.msg = str;
    }

    public int getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }
}
