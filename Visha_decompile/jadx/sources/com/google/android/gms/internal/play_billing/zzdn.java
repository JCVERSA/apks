package com.google.android.gms.internal.play_billing;

import defpackage.njg;
import java.util.concurrent.TimeoutException;

final class zzdn extends TimeoutException {
    public zzdn(String str, njg njgVar) {
        super(str);
    }

    @Override
    public final synchronized Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
