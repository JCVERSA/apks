package com.transsion.mediationads.manager;

import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.mediationads.beans.AdDisplayResponse;
import com.transsion.mediationads.beans.TabStrategy;
import defpackage.fec;
import defpackage.y45;
import defpackage.zfb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.lang3.time.DateUtils;

public final class c {
    public static volatile c b;
    public static boolean c;
    public static TabStrategy d;
    public static TabStrategy e;
    public static TabStrategy f;
    public static long g;
    public static volatile long i;
    public static volatile long j;
    public static volatile boolean k;
    public static volatile int l;
    public static volatile long m;
    public static final a a = new a(null);
    public static final Map h = new LinkedHashMap();
    public static final Object n = new Object();
    public static final Object o = new Object();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a() {
            c cVar = c.b;
            if (cVar == null) {
                synchronized (this) {
                    cVar = c.b;
                    if (cVar == null) {
                        cVar = new c(null);
                        c.b = cVar;
                    }
                }
            }
            return cVar;
        }

        public a() {
        }
    }

    public c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final void c(TabStrategy tabStrategy) {
        if (tabStrategy == null || tabStrategy.getStartPosition() > 0) {
            return;
        }
        Log.w("mediation_ad_TabStrategyManagerCore", "checkStrategyParameter " + tabStrategy);
        tabStrategy.setStartPosition(1);
    }

    public final void d() {
        if (l > 0) {
            s();
            LogUtils.w("mediation_ad_TabStrategyManagerCore", "Force saved daily ad show count data");
        }
    }

    public final long e() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - j < DateUtils.MILLIS_PER_HOUR && i > 0) {
            return i;
        }
        long jF = f();
        i = jF;
        j = jCurrentTimeMillis;
        return jF;
    }

    public final long f() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long offset = TimeZone.getDefault().getOffset(jCurrentTimeMillis);
            return (((jCurrentTimeMillis + offset) / 86400000) * 86400000) - offset;
        } catch (Exception e2) {
            Log.e("mediation_ad_TabStrategyManagerCore", "Failed to calculate day timestamp using math method, fallback to Calendar: " + e2.getMessage());
            return System.currentTimeMillis();
        }
    }

    public final int g(int i2) {
        int iIntValue;
        try {
            long jE = e();
            if (k && g == jE) {
                return ((Number) h.getOrDefault(Integer.valueOf(i2), 0)).intValue();
            }
            synchronized (this) {
                try {
                    if (!k || g != jE) {
                        o();
                        k = true;
                    }
                    iIntValue = ((Number) h.getOrDefault(Integer.valueOf(i2), 0)).intValue();
                    LogUtils.j("mediation_ad_TabStrategyManagerCore", "getDailyAdShowCount tabType " + i2 + ": " + iIntValue);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return iIntValue;
        } catch (Exception e2) {
            Log.e("mediation_ad_TabStrategyManagerCore", "Failed to get daily ad show count for tabType " + i2 + ": " + e2.getMessage());
            return 0;
        }
    }

    public final TabStrategy h(int i2) {
        if (!k()) {
            return null;
        }
        if (i2 == 1) {
            return d;
        }
        if (i2 == 2) {
            return e;
        }
        if (i2 != 3) {
            return null;
        }
        return f;
    }

    public final int i(int i2) {
        int iIntValue;
        long jE = e();
        synchronized (n) {
            try {
                if (!k || g != jE) {
                    o();
                    k = true;
                }
                Map map = h;
                iIntValue = ((Number) map.getOrDefault(Integer.valueOf(i2), 0)).intValue() + 1;
                map.put(Integer.valueOf(i2), Integer.valueOf(iIntValue));
                l++;
                Log.d("mediation_ad_TabStrategyManagerCore", "incrementDailyAdShowCount tabType:" + i2 + ", " + l + StringUtils.COMMA + map.get(Integer.valueOf(i2)));
            } catch (Throwable th) {
                throw th;
            }
        }
        s();
        LogUtils.j("mediation_ad_TabStrategyManagerCore", "Daily ad show count for tabType " + i2 + ": " + iIntValue + " (pending saves: " + l + ")");
        return iIntValue;
    }

    public final synchronized void j() {
        try {
            try {
                long jE = e();
                if (!k || g != jE) {
                    o();
                    k = true;
                }
            } catch (Exception e2) {
                Log.e("mediation_ad_TabStrategyManagerCore", "Failed to initialize daily ad show count: " + e2.getMessage());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean k() {
        return c;
    }

    public final boolean l(int i2) {
        try {
            long jC = fec.c("visha_first_launch_date", -1L);
            if (jC != -1) {
                return (e() - jC) / ((long) 86400000) < ((long) i2);
            }
            Log.w("mediation_ad_TabStrategyManagerCore", "First launch date not recorded, assuming in protection period");
            return true;
        } catch (Exception e2) {
            Log.e("mediation_ad_TabStrategyManagerCore", "Failed to check ad protection period: " + e2.getMessage());
            return true;
        }
    }

    public final boolean m(int i2) {
        try {
            TabStrategy tabStrategyH = h(i2);
            if (tabStrategyH != null) {
                return tabStrategyH.getMaxAdvertisingCount() >= 0;
            }
            Log.w("mediation_ad_TabStrategyManagerCore", "TabStrategy not found for tabType: " + i2 + ", rejecting ad request");
            return false;
        } catch (Exception e2) {
            Log.e("mediation_ad_TabStrategyManagerCore", "Failed to validate ad request for tabType " + i2 + ": " + e2.getMessage());
            return true;
        }
    }

    public final boolean n(TabStrategy tabStrategy) {
        String advertisingId;
        if (tabStrategy != null) {
            return (tabStrategy.getMaxAdvertisingCount() == 0 || tabStrategy.getVideoIntervals() <= 0 || (advertisingId = tabStrategy.getAdvertisingId()) == null || advertisingId.length() == 0) ? false : true;
        }
        return true;
    }

    public final synchronized void o() {
        try {
            Log.d("mediation_ad_TabStrategyManagerCore", "loadDailyAdShowCountFromPrefs");
            try {
                long jC = fec.c("visha_daily_ad_count_date", 0L);
                long jE = e();
                if (jC == jE) {
                    g = jC;
                    h.clear();
                    Integer[] numArr = {1, 2, 3};
                    for (int i2 = 0; i2 < 3; i2++) {
                        Integer num = numArr[i2];
                        int iIntValue = num.intValue();
                        int iB = fec.b("visha_daily_ad_count_" + iIntValue, 0);
                        if (iB > 0) {
                            h.put(num, Integer.valueOf(iB));
                        }
                        LogUtils.j("mediation_ad_TabStrategyManagerCore", "loadDailyAdShowCountFromPrefs tabType: " + iIntValue + StringUtils.COMMA + h.get(num));
                    }
                } else {
                    r(jE);
                }
            } catch (Exception e2) {
                Log.e("mediation_ad_TabStrategyManagerCore", "Failed to load daily ad show count from prefs: " + e2.getMessage());
                r(e());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void p(AdDisplayResponse adDisplayResponse) {
        TabStrategy tabStrategy;
        TabStrategy tabStrategy2;
        TabStrategy tabStrategy3;
        Object next;
        Object next2;
        Object next3;
        y45.j(adDisplayResponse, "adDisplayResponse");
        try {
            boolean z = adDisplayResponse.getDisplayStatus() == 1;
            c = z;
            if (z) {
                List<TabStrategy> tabStrategyList = adDisplayResponse.getTabStrategyList();
                if (tabStrategyList != null) {
                    Iterator<T> it = tabStrategyList.iterator();
                    do {
                        if (!it.hasNext()) {
                            next3 = null;
                            break;
                        }
                        next3 = it.next();
                    } while (((TabStrategy) next3).getTabType() != 1);
                    tabStrategy = (TabStrategy) next3;
                } else {
                    tabStrategy = null;
                }
                d = tabStrategy;
                c(tabStrategy);
                if (!n(d)) {
                    Log.e("mediation_ad_TabStrategyManagerCore", "Ineffective strategy " + d);
                    d = null;
                }
                List<TabStrategy> tabStrategyList2 = adDisplayResponse.getTabStrategyList();
                if (tabStrategyList2 != null) {
                    Iterator<T> it2 = tabStrategyList2.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it2.next();
                    } while (((TabStrategy) next2).getTabType() != 2);
                    tabStrategy2 = (TabStrategy) next2;
                } else {
                    tabStrategy2 = null;
                }
                e = tabStrategy2;
                c(tabStrategy2);
                if (!n(e)) {
                    Log.e("mediation_ad_TabStrategyManagerCore", "Ineffective strategy " + e);
                    e = null;
                }
                List<TabStrategy> tabStrategyList3 = adDisplayResponse.getTabStrategyList();
                if (tabStrategyList3 != null) {
                    Iterator<T> it3 = tabStrategyList3.iterator();
                    do {
                        if (!it3.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it3.next();
                    } while (((TabStrategy) next).getTabType() != 3);
                    tabStrategy3 = (TabStrategy) next;
                } else {
                    tabStrategy3 = null;
                }
                f = tabStrategy3;
                c(tabStrategy3);
                if (!n(f)) {
                    Log.e("mediation_ad_TabStrategyManagerCore", "Ineffective strategy " + f);
                    f = null;
                }
            } else {
                d = null;
                e = null;
                f = null;
            }
            Log.i("mediation_ad_TabStrategyManagerCore", "Ad strategies - list: " + d + ",\n grid: " + e + ",\n section: " + f);
            j();
        } catch (Exception e2) {
            Log.e("mediation_ad_TabStrategyManagerCore", "Failed to parse ad strategy: " + e2.getMessage());
        }
    }

    public final void q() {
        try {
            if (fec.c("visha_first_launch_date", -1L) == -1) {
                long jF = f();
                fec.e("visha_first_launch_date", jF);
                Log.i("mediation_ad_TabStrategyManagerCore", "First launch date recorded: " + jF);
            }
        } catch (Exception e2) {
            Log.e("mediation_ad_TabStrategyManagerCore", "Failed to record first launch date: " + e2.getMessage());
        }
    }

    public final synchronized void r(long j2) {
        try {
            h.clear();
            g = j2;
            fec.e("visha_daily_ad_count_date", j2);
            Integer[] numArr = {1, 2, 3};
            for (int i2 = 0; i2 < 3; i2++) {
                fec.d("visha_daily_ad_count_" + numArr[i2].intValue(), 0);
            }
        } catch (Exception e2) {
            Log.e("mediation_ad_TabStrategyManagerCore", "Failed to reset daily ad show count: " + e2.getMessage());
        }
    }

    public final void s() {
        synchronized (o) {
            try {
                try {
                    l = 0;
                    m = System.currentTimeMillis();
                    fec.e("visha_daily_ad_count_date", e());
                    synchronized (n) {
                        try {
                            for (Map.Entry entry : h.entrySet()) {
                                int iIntValue = ((Number) entry.getKey()).intValue();
                                fec.d("visha_daily_ad_count_" + iIntValue, ((Number) entry.getValue()).intValue());
                            }
                            zfb zfbVar = zfb.a;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } catch (Exception e2) {
                    Log.e("mediation_ad_TabStrategyManagerCore", "Failed to batch save daily ad show count to prefs: " + e2.getMessage());
                    l = 0;
                }
                zfb zfbVar2 = zfb.a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public c() {
    }
}
