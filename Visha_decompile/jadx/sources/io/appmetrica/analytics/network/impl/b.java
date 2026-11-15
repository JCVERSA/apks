package io.appmetrica.analytics.network.impl;

import defpackage.c74;
import javax.net.ssl.HttpsURLConnection;
import kotlin.jvm.internal.Lambda;

public final class b extends Lambda implements c74 {
    public final HttpsURLConnection a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(HttpsURLConnection httpsURLConnection) {
        super(0);
        this.a = httpsURLConnection;
    }

    @Override
    public final Object invoke() {
        return this.a.getErrorStream();
    }
}
