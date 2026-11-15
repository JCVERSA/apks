package com.tn.lib.net.interceptor;

import kotlin.jvm.internal.Intrinsics;

public final class a implements HttpLoggingInterceptor.a {

    private String f39873c = "HttpLogInterceptor";

    @Override
    public void log(String message) {
        Intrinsics.h(message, "message");
        wf.a.C0922a.f(wf.a.f74274a, this.f39873c, message, false, 4, null);
    }
}
