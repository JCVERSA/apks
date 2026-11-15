package com.transsion.baselib.report;

import android.os.SystemClock;
import android.util.Log;
import androidx.p009lifecycle.g0;
import androidx.p009lifecycle.u;
import com.transsion.mb.config.manager.ConfigBean;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class AppPeriodReport implements androidx.p009lifecycle.f {

    public static final AppPeriodReport f42184a;

    private static Timer f42185b;

    private static TimerTask f42186c;

    private static final boolean f42187d;

    private static long f42188e;

    private static boolean f42189f;

    private static Long f42190g;

    private static long f42191h;

    static {
        AppPeriodReport appPeriodReport = new AppPeriodReport();
        f42184a = appPeriodReport;
        boolean zC = appPeriodReport.c("app_period_report_debug", 3);
        f42187d = zC;
        f42188e = zC ? 5000L : 300000L;
        f42189f = true;
        f42191h = zC ? 300L : 3000L;
    }

    private AppPeriodReport() {
    }

    private final boolean c(String str, int i10) {
        try {
            return Log.isLoggable(str, i10);
        } catch (Throwable th2) {
            th2.printStackTrace();
            return false;
        }
    }

    public static void e(AppPeriodReport appPeriodReport, Long l10, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            l10 = null;
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        appPeriodReport.d(l10, z10);
    }

    public final void b() {
        String value;
        Long lX;
        ConfigBean configBeanC = cm.f.f17019c.a().c("key_app_period_report", false);
        long jLongValue = (configBeanC == null || (value = configBeanC.getValue()) == null || (lX = StringsKt.x(value)) == null) ? f42188e : lX.longValue();
        if (jLongValue == 0) {
            jLongValue = f42188e;
        }
        f42188e = jLongValue;
        if (jLongValue > 0) {
            f(true);
            g0.f9280i.a().getLifecycle().a(f42184a);
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "AppPeriodReport", "event close period " + f42188e + " ", false, 4, null);
        g0.f9280i.a().getLifecycle().d(f42184a);
    }

    public final void d(Long l10, boolean z10) {
        Long lValueOf;
        String value;
        String value2;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j10 = f42188e;
        if (l10 != null && l10.longValue() == j10) {
            lValueOf = Long.valueOf(f42188e);
        } else {
            Long l11 = f42190g;
            lValueOf = l11 != null ? Long.valueOf(jElapsedRealtime - l11.longValue()) : null;
        }
        f42190g = Long.valueOf(jElapsedRealtime);
        if (lValueOf == null || lValueOf.longValue() <= f42191h) {
            return;
        }
        String str = z10 ? "app_background" : "app_foreground";
        String str2 = "0";
        if (z10) {
            String str3 = new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date());
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
            String string = bVar.b().getString("k_last_bg_alive_date", "");
            if (!Intrinsics.c(str3, string != null ? string : "")) {
                bVar.b().putString("k_last_bg_alive_date", str3);
                qi.h hVar = qi.h.f69682a;
                ConfigBean configBeanC = cm.f.f17019c.a().c("keyAliveOff", true);
                if (configBeanC == null || (value2 = configBeanC.getValue()) == null) {
                    value2 = "0";
                }
                hVar.q("app_bg_alive", "app_perf", MapsKt.j(TuplesKt.a("alive_off", value2)));
            }
        }
        wf.a.C0922a.f(wf.a.f74274a, "AppPeriodReport", "report event " + str + " " + lValueOf, false, 4, null);
        HashMap map = new HashMap();
        ConfigBean configBeanC2 = cm.f.f17019c.a().c("keyAliveOff", true);
        if (configBeanC2 != null && (value = configBeanC2.getValue()) != null) {
            str2 = value;
        }
        map.put("alive_off", str2);
        qi.h.f69682a.C("", str, lValueOf.longValue(), map);
    }

    public final void f(final boolean z10) {
        if (f42188e <= 0) {
            wf.a.C0922a.f(wf.a.f74274a, "AppPeriodReport", "close period " + f42188e + " ", false, 4, null);
            Timer timer = f42185b;
            if (timer != null) {
                timer.purge();
            }
            Timer timer2 = f42185b;
            if (timer2 != null) {
                timer2.cancel();
            }
            TimerTask timerTask = f42186c;
            if (timerTask != null) {
                timerTask.cancel();
            }
            g0.f9280i.a().getLifecycle().d(f42184a);
            return;
        }
        boolean z11 = f42189f;
        Unit unit = null;
        if (z10 != z11) {
            e(this, null, z11, 1, null);
        }
        f42189f = z10;
        TimerTask timerTask2 = f42186c;
        if (timerTask2 != null) {
            timerTask2.cancel();
        }
        f42186c = null;
        Timer timer3 = f42185b;
        if (timer3 != null) {
            timer3.cancel();
        }
        Timer timer4 = f42185b;
        if (timer4 != null) {
            timer4.purge();
        }
        f42185b = null;
        f42185b = new Timer();
        f42186c = new TimerTask() {
            @Override
            public void run() {
                wf.a.C0922a.f(wf.a.f74274a, "AppPeriodReport", "period event " + z10 + " period " + AppPeriodReport.f42188e + " ", false, 4, null);
                AppPeriodReport.f42184a.d(Long.valueOf(AppPeriodReport.f42188e), z10);
            }
        };
        try {
            Result.Companion companion = Result.INSTANCE;
            Timer timer5 = f42185b;
            if (timer5 != null) {
                TimerTask timerTask3 = f42186c;
                long j10 = f42188e;
                timer5.schedule(timerTask3, j10, j10);
                unit = Unit.f64096a;
            }
            Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    @Override
    public void onCreate(u uVar) {
        androidx.p009lifecycle.e.a(this, uVar);
    }

    @Override
    public void onDestroy(u uVar) {
        androidx.p009lifecycle.e.b(this, uVar);
    }

    @Override
    public void onPause(u uVar) {
        androidx.p009lifecycle.e.c(this, uVar);
    }

    @Override
    public void onResume(u uVar) {
        androidx.p009lifecycle.e.d(this, uVar);
    }

    @Override
    public void onStart(u owner) {
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.e(this, owner);
        wf.a.C0922a.f(wf.a.f74274a, "AppPeriodReport", "onStart " + f42188e + " ", false, 4, null);
        if (f42190g == null) {
            f42190g = Long.valueOf(SystemClock.elapsedRealtime());
        }
        f(false);
    }

    @Override
    public void onStop(u owner) {
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.f(this, owner);
        wf.a.C0922a.f(wf.a.f74274a, "AppPeriodReport", "onStop " + f42188e + " ", false, 4, null);
        f(true);
    }
}
