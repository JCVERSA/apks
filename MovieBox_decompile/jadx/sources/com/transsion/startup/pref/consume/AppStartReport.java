package com.transsion.startup.pref.consume;

import android.app.ActivityManager;
import android.app.Application;
import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniapp.bridge.BluetoothBridge;
import com.transsion.baselib.report.h;
import com.transsnet.downloader.util.DownloadSDCardUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import yw.f;

public final class AppStartReport {

    private static boolean f52509b;

    private static boolean f52510c;

    public static final AppStartReport f52508a = new AppStartReport();

    private static final Map f52511d = new HashMap();

    private AppStartReport() {
    }

    public final Map f() {
        long timestamp;
        long timestamp2;
        long timestamp3;
        try {
            Result.Companion companion = Result.INSTANCE;
            HashMap map = new HashMap();
            Map map2 = f52511d;
            AppStartDotState appStartDotState = (AppStartDotState) map2.get(AppStartDotState.APP_START);
            AppStartDotState appStartDotState2 = (AppStartDotState) map2.get(AppStartDotState.APP_END);
            AppStartDotState appStartDotState3 = (AppStartDotState) map2.get(AppStartDotState.MAIN_CREATE);
            AppStartDotState appStartDotState4 = (AppStartDotState) map2.get(AppStartDotState.TRENDING_END);
            if (appStartDotState3 != null) {
                timestamp = appStartDotState3.getTimestamp() - (appStartDotState2 != null ? appStartDotState2.getTimestamp() : appStartDotState3.getTimestamp());
            } else {
                timestamp = 0;
            }
            Object obj = ((appStartDotState2 != null ? appStartDotState2.getTimestamp() : 0L) <= 0 || timestamp > 10000 || timestamp <= 0) ? "warm" : "cold";
            if (Intrinsics.c(obj, "warm")) {
                if (appStartDotState4 != null) {
                    timestamp3 = appStartDotState4.getTimestamp() - (appStartDotState3 != null ? appStartDotState3.getTimestamp() : appStartDotState4.getTimestamp());
                } else {
                    timestamp3 = 0;
                }
                map.put("act_app_gap", "0");
            } else {
                if (appStartDotState4 != null) {
                    timestamp2 = appStartDotState4.getTimestamp() - (appStartDotState != null ? appStartDotState.getTimestamp() : appStartDotState4.getTimestamp());
                } else {
                    timestamp2 = 0;
                }
                map.put("act_app_gap", String.valueOf(timestamp));
                timestamp3 = timestamp2;
            }
            if (timestamp3 <= 0) {
                return null;
            }
            map.put("total_time", String.valueOf(timestamp3));
            map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, h.f42200a.d());
            map.put("model", obj);
            tg.b bVar = tg.b.f72740a;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            ActivityManager.MemoryInfo memoryInfoK = bVar.k(applicationA);
            map.put("mem_size", String.valueOf(memoryInfoK.totalMem));
            map.put("low_memory", String.valueOf(memoryInfoK.lowMemory));
            Iterator it = DownloadSDCardUtil.f57674a.b().iterator();
            long jA = 0;
            while (it.hasNext()) {
                jA += ((f) it.next()).a();
            }
            map.put(BluetoothBridge.EXTEA_AVALIABLE, String.valueOf(jA));
            map.put("cpu_size", String.valueOf(Runtime.getRuntime().availableProcessors()));
            boolean z10 = f52510c;
            if (z10) {
                map.put("first_open", String.valueOf(z10));
            }
            Function1 function1 = new Function1() {
                @Override
                public final Object invoke(Object obj2) {
                    return Long.valueOf(AppStartReport.g((String) obj2));
                }
            };
            long timestamp4 = appStartDotState != null ? appStartDotState.getTimestamp() : 0L;
            map.put(AppStartDotState.APP_START, "0");
            map.put(AppStartDotState.APP_END, String.valueOf(((Number) function1.invoke(AppStartDotState.APP_END)).longValue() - timestamp4));
            map.put(AppStartDotState.SPLASH_START, String.valueOf(((Number) function1.invoke(AppStartDotState.SPLASH_START)).longValue() - timestamp4));
            map.put(AppStartDotState.SPLASH_RESUME, String.valueOf(((Number) function1.invoke(AppStartDotState.SPLASH_RESUME)).longValue() - timestamp4));
            map.put(AppStartDotState.AD_LOADING, String.valueOf(((Number) function1.invoke(AppStartDotState.AD_LOADING)).longValue() - timestamp4));
            map.put(AppStartDotState.AD_END, String.valueOf(((Number) function1.invoke(AppStartDotState.AD_END)).longValue() - timestamp4));
            map.put(AppStartDotState.AD_RENDERING, String.valueOf(((Number) function1.invoke(AppStartDotState.AD_RENDERING)).longValue() - timestamp4));
            map.put(AppStartDotState.MAIN_CREATE, String.valueOf(((Number) function1.invoke(AppStartDotState.MAIN_CREATE)).longValue() - timestamp4));
            map.put(AppStartDotState.TRENDING_CREATE, String.valueOf(((Number) function1.invoke(AppStartDotState.TRENDING_CREATE)).longValue() - timestamp4));
            map.put(AppStartDotState.TRENDING_RENDER, String.valueOf(((Number) function1.invoke(AppStartDotState.TRENDING_RENDER)).longValue() - timestamp4));
            map.put(AppStartDotState.TRENDING_END, String.valueOf(((Number) function1.invoke(AppStartDotState.TRENDING_END)).longValue() - timestamp4));
            return map;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            if (Result.m456exceptionOrNullimpl(Result.m453constructorimpl(ResultKt.a(th2))) == null) {
                throw new KotlinNothingValueException();
            }
            f52508a.h("error error error --- failed to obtain device information");
            return null;
        }
    }

    public static final long g(String dot) {
        Intrinsics.h(dot, "dot");
        AppStartDotState appStartDotState = (AppStartDotState) f52511d.get(dot);
        if (appStartDotState != null) {
            return appStartDotState.getTimestamp();
        }
        return 0L;
    }

    private final void h(String str) {
        Log.w("zxb_log_dot", str);
    }

    public final void e(AppStartDotState dot) {
        Intrinsics.h(dot, "dot");
        if (f52509b) {
            return;
        }
        Map map = f52511d;
        if (map.containsKey(dot.getState())) {
            return;
        }
        map.put(dot.getState(), dot);
        if (Intrinsics.c(dot.getState(), AppStartDotState.MAIN_CREATE)) {
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
            f52510c = bVar.b().getBoolean("first_open", true);
            bVar.b().putBoolean("first_open", false);
        } else if (Intrinsics.c(dot.getState(), AppStartDotState.TRENDING_END)) {
            i();
        }
    }

    public final void i() {
        if (f52509b) {
            return;
        }
        k.d(o0.a(y0.b()), null, null, new AppStartReport$report$1(null), 3, null);
    }

    public final void j() {
        f52509b = false;
    }
}
