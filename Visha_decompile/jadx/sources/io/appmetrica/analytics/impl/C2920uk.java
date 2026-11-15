package io.appmetrica.analytics.impl;

import okhttp3.internal.connection.RealConnection;

public final class C2920uk {
    public final Un a;

    public C2920uk(Un un) {
        this.a = un;
    }

    public final long a() {
        long jOptLong;
        Un un = this.a;
        synchronized (un) {
            jOptLong = un.a.a().optLong("session_id", -1L);
        }
        long j = RealConnection.IDLE_CONNECTION_HEALTHY_NS;
        if (jOptLong >= RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
            j = 1 + jOptLong;
        }
        this.a.c(j);
        return j;
    }
}
