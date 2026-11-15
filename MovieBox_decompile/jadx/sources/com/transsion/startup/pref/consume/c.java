package com.transsion.startup.pref.consume;

import android.R;
import android.app.Activity;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.Arrays;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import qi.h;

public final class c {

    private static long f52519b;

    private static long f52520c;

    private static long f52521d;

    private static long f52522e;

    private static long f52523f;

    private static long f52524g;

    private static boolean f52526i;

    private static boolean f52527j;

    private static boolean f52528k;

    private static boolean f52529l;

    private static boolean f52530m;

    public static final c f52518a = new c();

    private static boolean f52525h = true;

    public static final class a implements ViewTreeObserver.OnPreDrawListener {

        final View f52531a;

        a(View view) {
            this.f52531a = view;
        }

        @Override
        public boolean onPreDraw() {
            ViewTreeObserver viewTreeObserver;
            View view = this.f52531a;
            if (view != null && (viewTreeObserver = view.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
            c cVar = c.f52518a;
            c.f52523f = SystemClock.elapsedRealtime();
            long j10 = c.f52523f - c.f52519b;
            long jH = c.f52518a.h();
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.l(c0922a, "AppStartup", "🚀 [Phase 3] MainActivity TTID:", false, 4, null);
            wf.a.C0922a.l(c0922a, "AppStartup", "   ├─ 总耗时 (含广告等待): " + j10 + "ms", false, 4, null);
            wf.a.C0922a.l(c0922a, "AppStartup", "   ├─ 广告等待时长: " + jH + "ms", false, 4, null);
            wf.a.C0922a.l(c0922a, "AppStartup", "   └─ 真实启动时间 (TTID): " + (j10 - jH) + "ms", false, 4, null);
            c.f52527j = true;
            return true;
        }
    }

    public static final class b implements ViewTreeObserver.OnPreDrawListener {

        final View f52532a;

        b(View view) {
            this.f52532a = view;
        }

        @Override
        public boolean onPreDraw() {
            ViewTreeObserver viewTreeObserver;
            View view = this.f52532a;
            if (view != null && (viewTreeObserver = view.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
            c cVar = c.f52518a;
            c.f52520c = SystemClock.elapsedRealtime();
            long j10 = c.f52520c - c.f52519b;
            wf.a.C0922a.l(wf.a.f74274a, "AppStartup", "🚀 [Phase 1] Splash TTID: " + j10 + "ms (进程启动 → Splash首帧)", false, 4, null);
            c.f52526i = true;
            return true;
        }
    }

    private c() {
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001f A[PHI: r10
      0x001f: PHI (r10v8 long) = (r10v3 long), (r10v10 long) binds: [B:14:0x002a, B:9:0x001d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:11:0x0022  */
    /* JADX WARN: Code duplicated, block: B:13:0x0026  */
    private final void n() {
        long j10;
        long j11;
        long j12 = f52520c;
        long j13 = 0;
        long j14 = j12 > 0 ? j12 - f52519b : 0L;
        long jH = h();
        long j15 = f52523f;
        if (j15 > 0) {
            j11 = f52522e;
            if (j11 > 0) {
                j10 = j15 - j11;
            } else {
                if (j15 > 0) {
                    j11 = f52520c;
                    if (j11 > 0) {
                        j10 = j15 - j11;
                    }
                }
                j10 = 0;
            }
        } else {
            if (j15 > 0) {
                j11 = f52520c;
                if (j11 > 0) {
                    j10 = j15 - j11;
                }
            }
            j10 = 0;
        }
        long j16 = f52524g;
        if (j16 > 0 && j15 > 0) {
            j13 = j16 - j15;
        }
        long j17 = j16 - f52519b;
        long j18 = j17 - jH;
        String strValueOf = f52530m ? String.valueOf(jH) : "无广告";
        wf.a.C0922a c0922a = wf.a.f74274a;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
        String str = String.format("%6d", Arrays.copyOf(new Object[]{Long.valueOf(j14)}, 1));
        Intrinsics.g(str, "format(...)");
        String str2 = String.format("%6s", Arrays.copyOf(new Object[]{strValueOf}, 1));
        Intrinsics.g(str2, "format(...)");
        String str3 = String.format("%6d", Arrays.copyOf(new Object[]{Long.valueOf(j10)}, 1));
        Intrinsics.g(str3, "format(...)");
        String str4 = String.format("%6d", Arrays.copyOf(new Object[]{Long.valueOf(j13)}, 1));
        Intrinsics.g(str4, "format(...)");
        String str5 = String.format("%6d", Arrays.copyOf(new Object[]{Long.valueOf(j17)}, 1));
        Intrinsics.g(str5, "format(...)");
        String str6 = String.format("%6d", Arrays.copyOf(new Object[]{Long.valueOf(j18)}, 1));
        Intrinsics.g(str6, "format(...)");
        wf.a.C0922a.l(c0922a, "AppStartup", StringsKt.p("\n            |\n            |╔══════════════════════════════════════════════════════════════╗\n            |║                    🚀 启动性能分析报告                        ║\n            |╠══════════════════════════════════════════════════════════════╣\n            |║ 阶段分解：                                                    ║\n            |║   [1] 进程启动 → Splash首帧:        " + str + "ms              ║\n            |║   [2] 广告等待时长:                 " + str2 + "ms  (已排除)    ║\n            |║   [3] 广告结束 → MainActivity首帧:  " + str3 + "ms              ║\n            |║   [4] MainActivity首帧 → 数据加载:  " + str4 + "ms              ║\n            |╠══════════════════════════════════════════════════════════════╣\n            |║ 汇总：                                                        ║\n            |║   总耗时 (含广告等待):             " + str5 + "ms              ║\n            |║   真实启动时间 (TTFD):             " + str6 + "ms              ║\n            |╚══════════════════════════════════════════════════════════════╝\n        ", null, 1, null), false, 4, null);
    }

    private final void p() {
        f52520c = 0L;
        f52521d = 0L;
        f52522e = 0L;
        f52523f = 0L;
        f52524g = 0L;
        f52525h = true;
        f52526i = false;
        f52527j = false;
        f52528k = false;
        f52529l = false;
        f52530m = false;
    }

    public final long h() {
        boolean z10 = f52530m;
        if (z10) {
            long j10 = f52522e;
            long j11 = f52521d;
            if (j10 > j11) {
                return j10 - j11;
            }
        }
        if (z10 && f52529l) {
            return SystemClock.elapsedRealtime() - f52521d;
        }
        return 0L;
    }

    public final com.transsion.startup.pref.consume.b i() {
        long jH = h();
        long j10 = f52524g;
        long j11 = j10 > 0 ? j10 - f52519b : 0L;
        long j12 = f52520c;
        long j13 = j12 > 0 ? j12 - f52519b : 0L;
        long j14 = f52523f;
        return new com.transsion.startup.pref.consume.b(j13, jH, j14 > 0 ? (j14 - f52519b) - jH : 0L, j11, j11 - jH, f52530m);
    }

    public final void j() {
        f52519b = Build.VERSION.SDK_INT >= 24 ? Process.getStartElapsedRealtime() : SystemClock.elapsedRealtime();
        p();
        wf.a.C0922a.l(wf.a.f74274a, "AppStartup", "📍 [Phase 0] App Process Started at: " + f52519b, false, 4, null);
    }

    public final void k(Activity activity) {
        View viewFindViewById;
        ViewTreeObserver viewTreeObserver;
        Intrinsics.h(activity, "activity");
        if (!f52525h || f52527j || (viewFindViewById = activity.findViewById(R.id.content)) == null || (viewTreeObserver = viewFindViewById.getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnPreDrawListener(new a(viewFindViewById));
    }

    public final void l(Activity activity) {
        View viewFindViewById;
        ViewTreeObserver viewTreeObserver;
        Intrinsics.h(activity, "activity");
        if (!f52525h || f52526i || (viewFindViewById = activity.findViewById(R.id.content)) == null || (viewTreeObserver = viewFindViewById.getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnPreDrawListener(new b(viewFindViewById));
    }

    public final void m() {
        if (!f52525h || f52529l) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        f52521d = jElapsedRealtime;
        f52529l = true;
        f52530m = true;
        long j10 = jElapsedRealtime - f52519b;
        wf.a.C0922a.l(wf.a.f74274a, "AppStartup", "⏸️ [Phase 2] Paused for Ad at: " + f52521d + " (已运行 " + j10 + "ms)", false, 4, null);
    }

    public final void o(Activity activity) {
        if (!f52525h || f52528k) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        f52524g = jElapsedRealtime;
        long j10 = jElapsedRealtime - f52519b;
        long jH = h();
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.l(c0922a, "AppStartup", "✅ [Phase 4] TTFD (Full Display):", false, 4, null);
        wf.a.C0922a.l(c0922a, "AppStartup", "   ├─ 总耗时 (含广告等待): " + j10 + "ms", false, 4, null);
        wf.a.C0922a.l(c0922a, "AppStartup", "   ├─ 广告等待时长: " + jH + "ms", false, 4, null);
        wf.a.C0922a.l(c0922a, "AppStartup", "   └─ 真实启动时间 (TTFD): " + (j10 - jH) + "ms", false, 4, null);
        n();
        com.transsion.startup.pref.consume.b bVarI = i();
        h.f69682a.q("app_startup_stat_ab_new", "app_perf", MapsKt.l(TuplesKt.a("splash_ttid", String.valueOf(bVarI.e())), TuplesKt.a("ad_wait_duration", String.valueOf(bVarI.a())), TuplesKt.a("main_activity_ttid", String.valueOf(bVarI.c())), TuplesKt.a("total_ttfd", String.valueOf(bVarI.f())), TuplesKt.a("real_ttfd", String.valueOf(bVarI.d())), TuplesKt.a("has_ad", String.valueOf(bVarI.b()))));
        f52528k = true;
        f52525h = false;
    }

    public final void q() {
        if (f52525h && f52529l) {
            f52522e = SystemClock.elapsedRealtime();
            f52529l = false;
            long jH = h();
            wf.a.C0922a.l(wf.a.f74274a, "AppStartup", "▶️ [Phase 2] Resumed after Ad, Wait Duration: " + jH + "ms (广告等待时间，已从统计中排除)", false, 4, null);
        }
    }

    public final void r() {
        if (f52525h) {
            if (f52529l) {
                wf.a.C0922a.l(wf.a.f74274a, "AppStartup", "⏭️ [Phase 2] Ad Skipped - No ad shown, resuming timer", false, 4, null);
            }
            f52529l = false;
            f52530m = false;
            f52521d = 0L;
            f52522e = 0L;
        }
    }
}
