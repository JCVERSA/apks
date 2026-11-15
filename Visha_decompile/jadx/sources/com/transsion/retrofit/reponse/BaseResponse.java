package com.transsion.retrofit.reponse;

import androidx.annotation.NonNull;

public class BaseResponse<T> {
    private int code;
    private T data;
    private String message;
    private String msg;
    private T records;
    private int size;
    private int sub_code;
    private String sub_message;
    private boolean success;
    private int total;

    public int getCode() {
        return this.code;
    }

    public T getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public String getMsg() {
        return this.msg;
    }

    public T getRecords() {
        return this.records;
    }

    public int getSize() {
        return this.size;
    }

    public int getSub_code() {
        return this.sub_code;
    }

    public String getSub_message() {
        return this.sub_message;
    }

    public int getTotal() {
        return this.total;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public void setData(T t) {
        this.data = t;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setRecords(T t) {
        this.records = t;
    }

    public void setSize(int i) {
        this.size = i;
    }

    public void setSub_code(int i) {
        this.sub_code = i;
    }

    public void setSub_message(String str) {
        this.sub_message = str;
    }

    public void setTotal(int i) {
        this.total = i;
    }

    @NonNull
    public String toString() {
        return "BaseResponse{code='" + this.code + "', msg='" + this.msg + "', data=" + this.data + ", records=" + this.records + '}';
    }
}
