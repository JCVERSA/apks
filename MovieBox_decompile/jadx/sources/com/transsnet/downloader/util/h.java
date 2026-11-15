package com.transsnet.downloader.util;

import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

public final class h {

    private static long f57718c;

    private static boolean f57719d;

    private static boolean f57720e;

    private static boolean f57721f;

    public static final h f57716a = new h();

    private static String f57717b = "";

    private static String f57722g = "";

    private static final ConcurrentHashMap f57723h = new ConcurrentHashMap();

    private h() {
    }

    public final Map a() {
        if (f57719d) {
            c(PrepareException.ERROR_NO_URL);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ConcurrentHashMap concurrentHashMap = f57723h;
        linkedHashMap.putAll(concurrentHashMap);
        concurrentHashMap.clear();
        f57720e = false;
        f57721f = false;
        return linkedHashMap;
    }

    public final void b(String step) {
        Intrinsics.h(step, "step");
        if (f57719d && !Intrinsics.c(f57722g, step)) {
            if (Intrinsics.c(step, "4")) {
                if (f57720e) {
                    return;
                } else {
                    f57720e = true;
                }
            }
            if (Intrinsics.c(step, "3")) {
                if (f57721f) {
                    return;
                } else {
                    f57721f = true;
                }
            }
            f57722g = step;
            wf.a.C0922a.f(wf.a.f74274a, "DownloadProxyLog", "logPoint, step = " + step, false, 4, null);
            long jCurrentTimeMillis = System.currentTimeMillis();
            f57723h.put("delay_step_" + f57717b + "_" + step, Long.valueOf(jCurrentTimeMillis - f57718c));
            f57717b = step;
            f57718c = jCurrentTimeMillis;
        }
    }

    public final void c(String step) {
        Intrinsics.h(step, "step");
        wf.a.C0922a.v(wf.a.f74274a, "DownloadProxyLog", "onFinish, step = " + step, false, 4, null);
        b(step);
        f57719d = false;
        f57718c = 0L;
    }

    public final void d(String step) {
        Intrinsics.h(step, "step");
        wf.a.C0922a.v(wf.a.f74274a, "DownloadProxyLog", "onStart, step = " + step, false, 4, null);
        f57719d = true;
        f57717b = step;
        f57718c = System.currentTimeMillis();
        f57723h.clear();
    }
}
