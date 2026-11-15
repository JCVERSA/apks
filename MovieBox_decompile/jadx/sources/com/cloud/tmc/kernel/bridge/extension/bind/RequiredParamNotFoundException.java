package com.cloud.tmc.kernel.bridge.extension.bind;

public class RequiredParamNotFoundException extends BindException {
    public RequiredParamNotFoundException(String str) {
        super(str);
    }

    public RequiredParamNotFoundException(String str, Throwable th2) {
        super(str, th2);
    }
}
