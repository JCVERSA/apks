package com.transsion.mediationads.manager;

import android.util.Log;
import com.transsion.mediationads.beans.AdDisplayResponse;
import com.transsion.mediationads.beans.TTStrategy;
import defpackage.fec;
import defpackage.i81;
import defpackage.y45;
import defpackage.zfb;
import java.util.List;
import java.util.TimeZone;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class d {
    public static final a f = new a(null);
    public static volatile d g;
    public volatile boolean a;
    public volatile TTStrategy b;
    public volatile int c;
    public volatile long d;
    public final Object e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a() {
            d dVar = d.g;
            if (dVar == null) {
                synchronized (this) {
                    dVar = d.g;
                    if (dVar == null) {
                        dVar = new d(null);
                        d.g = dVar;
                    }
                }
            }
            return dVar;
        }

        public a() {
        }
    }

    public d(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final void c(TTStrategy tTStrategy) {
        if (tTStrategy == null || tTStrategy.getStartPosition() > 0) {
            return;
        }
        Log.w("mediation_ad_TtStrategyManagerCore", "checkStrategyParameter " + tTStrategy);
        tTStrategy.setStartPosition(1);
    }

    public final long d() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long offset = TimeZone.getDefault().getOffset(jCurrentTimeMillis);
            return (((jCurrentTimeMillis + offset) / 86400000) * 86400000) - offset;
        } catch (Exception unused) {
            return System.currentTimeMillis();
        }
    }

    public final int e() {
        int i;
        long jD = d();
        synchronized (this.e) {
            try {
                if (this.d != jD) {
                    m(jD);
                }
                i = this.c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    public final TTStrategy f() {
        if (this.a) {
            return this.b;
        }
        return null;
    }

    public final int g() {
        int i;
        long jD = d();
        synchronized (this.e) {
            try {
                if (this.d != jD) {
                    m(jD);
                }
                this.c++;
                this.d = jD;
                o();
                Log.d("mediation_ad_TtStrategyManagerCore", "incrementDailyAdShowCount: " + this.c);
                i = this.c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    public final void h() {
    }

    public final void i() {
        long jD = d();
        synchronized (this.e) {
            try {
                if (this.d != jD) {
                    m(jD);
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean j() {
        return this.a;
    }

    public final boolean k(int i) {
        return c.a.a().l(i);
    }

    public final boolean l(TTStrategy tTStrategy) {
        String advertisingId;
        return (tTStrategy == null || (advertisingId = tTStrategy.getAdvertisingId()) == null || advertisingId.length() == 0 || tTStrategy.getMaxAdvertisingCount() == 0 || tTStrategy.getVideoIntervalsMin() <= 0 || tTStrategy.getVideoIntervalsMax() <= 0 || tTStrategy.getVideoIntervalsMin() > tTStrategy.getVideoIntervalsMax()) ? false : true;
    }

    public final void m(long j) {
        try {
            long jC = fec.c("visha_tt_daily_ad_count_date", 0L);
            if (jC == j) {
                this.c = fec.b("visha_tt_daily_ad_count_value", 0);
                this.d = jC;
            } else {
                this.c = 0;
                this.d = j;
                fec.e("visha_tt_daily_ad_count_date", j);
                fec.d("visha_tt_daily_ad_count_value", 0);
            }
        } catch (Exception e) {
            Log.e("mediation_ad_TtStrategyManagerCore", "loadFromPrefs failed: " + e.getMessage());
            this.c = 0;
            this.d = j;
        }
    }

    public final void n(AdDisplayResponse adDisplayResponse) {
        y45.j(adDisplayResponse, "adDisplayResponse");
        try {
            boolean z = true;
            if (adDisplayResponse.getDisplayStatus() != 1) {
                z = false;
            }
            this.a = z;
            if (this.a) {
                List<TTStrategy> ttStrategyList = adDisplayResponse.getTtStrategyList();
                TTStrategy tTStrategy = ttStrategyList != null ? (TTStrategy) i81.q0(ttStrategyList) : null;
                c(tTStrategy);
                this.b = l(tTStrategy) ? tTStrategy : null;
            } else {
                this.b = null;
            }
            h();
            Log.i("mediation_ad_TtStrategyManagerCore", "TT ad strategy: " + this.b + ", enabled=" + this.a);
            i();
        } catch (Exception e) {
            Log.e("mediation_ad_TtStrategyManagerCore", "Failed to parse TT ad strategy: " + e.getMessage());
        }
    }

    public final void o() {
        try {
            fec.e("visha_tt_daily_ad_count_date", this.d);
            fec.d("visha_tt_daily_ad_count_value", this.c);
        } catch (Exception e) {
            Log.e("mediation_ad_TtStrategyManagerCore", "persist failed: " + e.getMessage());
        }
    }

    public final boolean p() {
        TTStrategy tTStrategy = this.b;
        if (tTStrategy == null) {
            return true;
        }
        int maxAdvertisingCount = tTStrategy.getMaxAdvertisingCount();
        if (maxAdvertisingCount <= -1) {
            return false;
        }
        return maxAdvertisingCount == 0 || e() >= maxAdvertisingCount;
    }

    public d() {
        this.e = new Object();
    }
}
