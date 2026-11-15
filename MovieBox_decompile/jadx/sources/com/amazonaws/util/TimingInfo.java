package com.amazonaws.util;

import java.util.Collections;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class TimingInfo {

    private final Long f18388a;

    private final long f18389b;

    private Long f18390c;

    protected TimingInfo(Long l10, long j10, Long l11) {
        this.f18388a = l10;
        this.f18389b = j10;
        this.f18390c = l11;
    }

    public static double b(long j10, long j11) {
        return TimeUnit.NANOSECONDS.toMicros(j11 - j10) / 1000.0d;
    }

    public static TimingInfo m() {
        return new TimingInfo(Long.valueOf(System.currentTimeMillis()), System.nanoTime(), null);
    }

    public static TimingInfo n() {
        return new TimingInfoFullSupport(Long.valueOf(System.currentTimeMillis()), System.nanoTime(), null);
    }

    public static TimingInfo o(long j10) {
        return new TimingInfoFullSupport(null, j10, null);
    }

    public static TimingInfo p(long j10, Long l10) {
        return new TimingInfoUnmodifiable(null, j10, l10);
    }

    public TimingInfo c() {
        this.f18390c = Long.valueOf(System.nanoTime());
        return this;
    }

    public Map d() {
        return Collections.emptyMap();
    }

    public final long e() {
        Long l10 = this.f18390c;
        if (l10 == null) {
            return -1L;
        }
        return l10.longValue();
    }

    public final long f() {
        return this.f18389b;
    }

    public Map g() {
        return Collections.emptyMap();
    }

    public final double h() {
        Double dI = i();
        if (dI == null) {
            return -1.0d;
        }
        return dI.doubleValue();
    }

    public final Double i() {
        if (k()) {
            return Double.valueOf(b(this.f18389b, this.f18390c.longValue()));
        }
        return null;
    }

    public final boolean k() {
        return this.f18390c != null;
    }

    public final String toString() {
        return String.valueOf(h());
    }

    public void j(String str) {
    }

    public void a(String str, TimingInfo timingInfo) {
    }

    public void l(String str, long j10) {
    }
}
