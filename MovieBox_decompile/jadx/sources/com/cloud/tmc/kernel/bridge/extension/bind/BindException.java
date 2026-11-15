package com.cloud.tmc.kernel.bridge.extension.bind;

public class BindException extends RuntimeException {
    public BindException(String str) {
        super(str);
    }

    public BindException(String str, Throwable th2) {
        super(str, th2);
    }
}
