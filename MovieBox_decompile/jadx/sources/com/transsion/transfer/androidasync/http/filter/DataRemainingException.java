package com.transsion.transfer.androidasync.http.filter;

public class DataRemainingException extends Exception {
    public DataRemainingException(String str, Exception exc) {
        super(str, exc);
    }
}
