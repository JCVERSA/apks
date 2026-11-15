package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class C2714md extends SafeRunnable {
    public final C2739nd a;
    public final String b;
    public final byte[] c;

    public C2714md(C2739nd c2739nd, String str, byte[] bArr) {
        this.a = c2739nd;
        this.b = str;
        this.c = bArr;
    }

    @Override
    public final void runSafety() {
        C2739nd.a(this.a).setSessionExtra(this.b, this.c);
    }
}
