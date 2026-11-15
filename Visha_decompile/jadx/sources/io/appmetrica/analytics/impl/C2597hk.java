package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import defpackage.y71;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;

public final class C2597hk {
    public final C2706m5 a;
    public final C3020yk b;
    public final C2671kk c;
    public long d;
    public long e;
    public AtomicLong f;
    public boolean g;
    public volatile C2970wk h;
    public long i;
    public long j;
    public final SystemTimeProvider k;

    public C2597hk(C2706m5 c2706m5, C3020yk c3020yk, C2671kk c2671kk, SystemTimeProvider systemTimeProvider) {
        this.a = c2706m5;
        this.b = c3020yk;
        this.c = c2671kk;
        this.k = systemTimeProvider;
        a();
    }

    public final void a() {
        C2671kk c2671kk = this.c;
        long jElapsedRealtime = this.k.elapsedRealtime();
        Long l = c2671kk.c;
        if (l != null) {
            jElapsedRealtime = l.longValue();
        }
        this.e = jElapsedRealtime;
        Long l2 = this.c.b;
        this.d = l2 == null ? -1L : l2.longValue();
        Long l3 = this.c.e;
        this.f = new AtomicLong(l3 == null ? 0L : l3.longValue());
        Boolean bool = this.c.f;
        this.g = bool == null ? true : bool.booleanValue();
        Long l4 = this.c.g;
        long jLongValue = l4 != null ? l4.longValue() : 0L;
        this.i = jLongValue;
        C2671kk c2671kk2 = this.c;
        long jLongValue2 = jLongValue - this.e;
        Long l5 = c2671kk2.h;
        if (l5 != null) {
            jLongValue2 = l5.longValue();
        }
        this.j = jLongValue2;
    }

    public final String toString() {
        return "Session{id=" + this.d + ", creationTime=" + this.e + ", currentReportId=" + this.f + ", sessionRequestParams=" + this.h + ", sleepStart=" + this.i + '}';
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0122  */
    public final boolean a(long j) {
        boolean z;
        boolean z2;
        boolean z3 = this.d >= 0;
        if (this.h == null) {
            synchronized (this) {
                if (this.h == null) {
                    try {
                        String asString = this.a.e.a(this.d, this.c.a).getAsString("report_request_parameters");
                        if (!TextUtils.isEmpty(asString)) {
                            this.h = new C2970wk(new JSONObject(asString));
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        C2970wk c2970wk = this.h;
        if (c2970wk != null) {
            C2469ch c2469ch = (C2469ch) this.a.k.a();
            List listN = y71.n(Boolean.valueOf(TextUtils.equals(c2469ch.getAnalyticsSdkVersionName(), c2970wk.a)), Boolean.valueOf(TextUtils.equals(c2469ch.getAnalyticsSdkBuildNumber(), c2970wk.b)), Boolean.valueOf(TextUtils.equals(c2469ch.getAppVersion(), c2970wk.c)), Boolean.valueOf(TextUtils.equals(c2469ch.getAppBuildNumber(), c2970wk.d)), Boolean.valueOf(TextUtils.equals(c2469ch.getOsVersion(), c2970wk.e)), Boolean.valueOf(c2970wk.f == c2469ch.getOsApiLevel()), Boolean.valueOf(c2970wk.g == c2469ch.r));
            if (!(listN instanceof Collection) || !listN.isEmpty()) {
                Iterator it = listN.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (!((Boolean) it.next()).booleanValue()) {
                            z = false;
                        }
                    }
                }
            }
            z = true;
        } else {
            z = false;
        }
        long jElapsedRealtime = this.k.elapsedRealtime();
        long j2 = this.i;
        boolean z4 = jElapsedRealtime < j2;
        long j3 = j - j2;
        long j4 = j - this.e;
        if (z4) {
            z2 = true;
        } else {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            C2671kk c2671kk = this.c;
            int iIntValue = ((C2469ch) this.a.k.a()).f;
            Integer num = c2671kk.d;
            if (num != null) {
                iIntValue = num.intValue();
            }
            if (j3 >= timeUnit.toMillis(iIntValue) || j4 >= timeUnit.toMillis(AbstractC2696lk.a)) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        return z3 && z && !z2;
    }
}
