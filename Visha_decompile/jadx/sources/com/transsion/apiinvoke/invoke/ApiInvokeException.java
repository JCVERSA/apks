package com.transsion.apiinvoke.invoke;

public class ApiInvokeException extends RuntimeException {
    private int code;

    public ApiInvokeException(int i, String str) {
        super("InvokeException code " + i + " errorMsg " + str);
        this.code = i;
    }

    public int getCode() {
        return this.code;
    }
}
