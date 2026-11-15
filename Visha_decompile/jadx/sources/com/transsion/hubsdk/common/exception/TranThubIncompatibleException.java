package com.transsion.hubsdk.common.exception;

public class TranThubIncompatibleException extends Exception {
    public TranThubIncompatibleException() {
        this("\nT-HUBSDK does not achieve compatibility, App must handle the compatibility of this function by itself !!!");
    }

    public TranThubIncompatibleException(String str) {
        super(str);
    }

    public TranThubIncompatibleException(String str, Throwable th) {
        super(str, th);
    }
}
