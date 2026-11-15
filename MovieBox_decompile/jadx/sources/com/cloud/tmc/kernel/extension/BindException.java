package com.cloud.tmc.kernel.extension;

public class BindException extends RuntimeException {
    public BindException(String str) {
        super(str);
    }

    public BindException(String str, Throwable th2) {
        super(str, th2);
    }
}
