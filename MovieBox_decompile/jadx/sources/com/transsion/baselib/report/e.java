package com.transsion.baselib.report;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Bundle;
import android.os.Debug;
import android.os.Process;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.therouter.TheRouter;
import com.transsion.ad.db.pslink.AppInstalledBean;
import com.transsnet.loginapi.bean.UserInfo;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

public final class e {

    public static final e f42196a = new e();

    private static final Lazy f42197b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return e.j();
        }
    });

    private static final Regex f42198c = new Regex("VmSize:\\s*(\\d+)\\s*kB");

    private static final Regex f42199d = new Regex("VmRSS:\\s*(\\d+)\\s*kB");

    private e() {
    }

    private final String d(long j10) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
        String str = String.format(Locale.ENGLISH, "%.1f", Arrays.copyOf(new Object[]{Float.valueOf((j10 / 1024.0f) / 1024.0f)}, 1));
        Intrinsics.g(str, "format(...)");
        return str + AppInstalledBean.APP_INSTALLED_BEAN_SOURCE_MB;
    }

    private final void e(File file, Charset charset, Function1 function1) {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            TextStreamsKt.c(new BufferedReader(new InputStreamReader(new FileInputStream(file), charset)), function1);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            thM456exceptionOrNullimpl.printStackTrace();
        }
    }

    static void f(e eVar, File file, Charset charset, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        eVar.e(file, charset, function1);
    }

    private final Debug.MemoryInfo h(Context context) {
        if (context == null) {
            return null;
        }
        Object systemService = context.getSystemService("activity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        ActivityManager activityManager = (ActivityManager) systemService;
        activityManager.getMemoryInfo(new ActivityManager.MemoryInfo());
        Debug.MemoryInfo[] processMemoryInfo = activityManager.getProcessMemoryInfo(new int[]{Process.myPid()});
        Intrinsics.g(processMemoryInfo, "getProcessMemoryInfo(...)");
        return processMemoryInfo[0];
    }

    private final String i(int i10) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
        String str = String.format(Locale.ENGLISH, "%.1f", Arrays.copyOf(new Object[]{Float.valueOf(i10 / 1024.0f)}, 1));
        Intrinsics.g(str, "format(...)");
        return str + AppInstalledBean.APP_INSTALLED_BEAN_SOURCE_MB;
    }

    public static final qx.a j() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    private final int k(Regex regex, String str) {
        List listA;
        String str2;
        MatchResult matchResultMatchEntire = regex.matchEntire(StringsKt.n1(str).toString());
        if (matchResultMatchEntire == null || (listA = matchResultMatchEntire.a()) == null || (str2 = (String) CollectionsKt.l0(listA, 1)) == null) {
            return 0;
        }
        return Integer.parseInt(str2);
    }

    public static final Unit m(Bundle bundle, String line) {
        Intrinsics.h(line, "line");
        if (StringsKt.W(line, "VmSize", false, 2, null)) {
            if (bundle != null) {
                e eVar = f42196a;
                bundle.putString("vss", eVar.i(eVar.k(f42198c, line)));
            }
        } else if (StringsKt.W(line, "VmRSS", false, 2, null) && bundle != null) {
            e eVar2 = f42196a;
            bundle.putString("rss", eVar2.i(eVar2.k(f42199d, line)));
        }
        return Unit.f64096a;
    }

    public static final Unit o(lb.b bVar, String line) {
        Intrinsics.h(line, "line");
        if (StringsKt.W(line, "VmSize", false, 2, null)) {
            e eVar = f42196a;
            bVar.c("vss", eVar.i(eVar.k(f42198c, line)));
        } else if (StringsKt.W(line, "VmRSS", false, 2, null)) {
            e eVar2 = f42196a;
            bVar.c("rss", eVar2.i(eVar2.k(f42199d, line)));
        }
        return Unit.f64096a;
    }

    public final qx.a g() {
        return (qx.a) f42197b.getValue();
    }

    public final void l(String event, final Bundle bundle, Context context) {
        Intrinsics.h(event, "event");
        FirebaseAnalytics firebaseAnalyticsA = lb.a.a(com.google.firebase.c.f30244a);
        Debug.MemoryInfo memoryInfoH = h(context);
        if (memoryInfoH != null) {
            if (bundle != null) {
                bundle.putString("max_heap", f42196a.d(Runtime.getRuntime().maxMemory()));
            }
            if (bundle != null) {
                bundle.putString("total_heap", f42196a.d(Runtime.getRuntime().totalMemory()));
            }
            if (bundle != null) {
                bundle.putString("free_heap", f42196a.d(Runtime.getRuntime().freeMemory()));
            }
            if (bundle != null) {
                bundle.putString("native_pss", f42196a.i(memoryInfoH.nativePss));
            }
            if (bundle != null) {
                bundle.putString("other_pss", f42196a.i(memoryInfoH.otherPss));
            }
            f(f42196a, new File("/proc/self/status"), null, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return e.m(bundle, (String) obj);
                }
            }, 1, null);
        }
        firebaseAnalyticsA.logEvent(event, bundle);
    }

    public final void n(String screenName, Long l10, Context context) {
        Intrinsics.h(screenName, "screenName");
        FirebaseAnalytics firebaseAnalyticsA = lb.a.a(com.google.firebase.c.f30244a);
        final lb.b bVar = new lb.b();
        bVar.c("screen_name", screenName);
        bVar.c("screen_class", screenName);
        if (l10 != null) {
            bVar.b("engagement_time_msec", l10.longValue());
            e eVar = f42196a;
            Debug.MemoryInfo memoryInfoH = eVar.h(context);
            if (memoryInfoH != null) {
                bVar.c("max_heap", eVar.d(Runtime.getRuntime().maxMemory()));
                bVar.c("total_heap", eVar.d(Runtime.getRuntime().totalMemory()));
                bVar.c("free_heap", eVar.d(Runtime.getRuntime().freeMemory()));
                bVar.c("native_pss", eVar.i(memoryInfoH.nativePss));
                bVar.c("other_pss", eVar.i(memoryInfoH.otherPss));
                f(eVar, new File("/proc/self/status"), null, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return e.o(bVar, (String) obj);
                    }
                }, 1, null);
            }
        }
        firebaseAnalyticsA.logEvent("screen_view", bVar.a());
    }

    public final void p(boolean z10) {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(Utils.a());
        Intrinsics.g(firebaseAnalytics, "getInstance(...)");
        firebaseAnalytics.setAnalyticsCollectionEnabled(z10);
        pb.i.a(com.google.firebase.c.f30244a).setCrashlyticsCollectionEnabled(z10);
    }

    public final void q() {
        UserInfo userInfoI;
        qx.a aVarG = g();
        String userId = (aVarG == null || (userInfoI = aVarG.i()) == null) ? null : userInfoI.getUserId();
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        String string = bVar.b().getString("firebase_id", "");
        if (TextUtils.isEmpty(string)) {
            if (TextUtils.isEmpty(userId)) {
                userId = TextUtils.isEmpty(userId) ? tg.b.f72740a.h() : string;
            }
            bVar.b().putString("firebase_id", userId);
            string = userId;
        }
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(Utils.a());
        Intrinsics.g(firebaseAnalytics, "getInstance(...)");
        firebaseAnalytics.setUserId(string);
        FirebaseCrashlytics firebaseCrashlyticsA = pb.i.a(com.google.firebase.c.f30244a);
        if (string != null) {
            firebaseCrashlyticsA.setUserId(string);
        }
    }
}
