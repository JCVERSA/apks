package com.google.android.gms.internal.ads;

import defpackage.m8i;
import java.util.concurrent.TimeoutException;

final class zzgco extends TimeoutException {
    public zzgco(String str, m8i m8iVar) {
        super(str);
    }

    @Override
    public final synchronized Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
