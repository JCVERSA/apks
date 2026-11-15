package com.lzy.okgo.exception;

import defpackage.hu8;
import defpackage.ut4;

public class HttpException extends RuntimeException {
    private static final long serialVersionUID = 8773734741709178425L;
    private int code;
    private String message;
    private transient hu8 response;

    public HttpException(String str) {
        super(str);
    }

    public static HttpException COMMON(String str) {
        return new HttpException(str);
    }

    public static HttpException NET_ERROR() {
        return new HttpException("network error! http response code is 404 or 5xx!");
    }

    private static String getMessage(hu8 hu8Var) {
        ut4.b(hu8Var, "response == null");
        return "HTTP " + hu8Var.b() + " " + hu8Var.g();
    }

    public int code() {
        return this.code;
    }

    public String message() {
        return this.message;
    }

    public hu8 response() {
        return this.response;
    }

    public HttpException(hu8 hu8Var) {
        super(getMessage(hu8Var));
        this.code = hu8Var.b();
        this.message = hu8Var.g();
        this.response = hu8Var;
    }

    public static HttpException NET_ERROR(int i) {
        return new HttpException("network error! http response code is " + i + "!");
    }
}
