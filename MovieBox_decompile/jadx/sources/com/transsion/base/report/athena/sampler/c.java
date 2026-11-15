package com.transsion.base.report.athena.sampler;

import android.os.Bundle;
import java.security.NoSuchAlgorithmException;
import kotlin.Triple;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    public static final c f41885a = new c();

    private c() {
    }

    public final Bundle a(Bundle bundle) {
        Intrinsics.h(bundle, "<this>");
        Bundle bundle2 = new Bundle();
        for (String str : bundle.keySet()) {
            bundle2.putString(str, bundle.getString(str));
        }
        return bundle2;
    }

    public final boolean b(String event, Bundle bundle, String deviceId) throws NoSuchAlgorithmException {
        Intrinsics.h(event, "event");
        Intrinsics.h(bundle, "bundle");
        Intrinsics.h(deviceId, "deviceId");
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "sampler", "ReportInterception --> intercept() --> 开始处理埋点拦截逻辑 --> event = " + event, false, 4, null);
        Triple tripleA = a.f41883a.a(event, a(bundle));
        boolean z10 = false;
        if (Intrinsics.c(tripleA.getFirst(), Boolean.TRUE)) {
            wf.a.C0922a.f(c0922a, "sampler", "ReportInterception --> intercept() --> 事件表达式 命中 --> 下一步采样率判断", false, 4, null);
            b bVar = b.f41884a;
            Integer num = (Integer) tripleA.getSecond();
            double dIntValue = num != null ? num.intValue() : 100.0d;
            String str = (String) tripleA.getThird();
            if (str == null) {
                str = "";
            }
            boolean zA = bVar.a(dIntValue, deviceId, str, 100);
            wf.a.C0922a.f(c0922a, "sampler", "ReportInterception --> intercept() --> 采样率命中 = " + zA, false, 4, null);
            if (zA) {
                bundle.putString("sampling_rate", String.valueOf(tripleA.getSecond()));
                EventConfig eventConfig = EventConfig.f41878a;
                eventConfig.i(event);
                eventConfig.h(event);
            } else {
                Integer num2 = (Integer) tripleA.getSecond();
                if (Intrinsics.a(num2 != null ? Double.valueOf(num2.intValue()) : null, 0.0d)) {
                    EventConfig.f41878a.a(event);
                } else {
                    EventConfig.f41878a.b(event);
                }
            }
            if (!zA) {
                z10 = true;
            }
        } else {
            wf.a.C0922a.f(c0922a, "sampler", "ReportInterception --> intercept() --> 事件表达式 没有命中 --> 不需要处理采样率 --> 直接上报埋点 --> event = " + event, false, 4, null);
        }
        if (z10) {
            wf.a.C0922a.f(c0922a, "sampler", "埋点拒绝上报 --> event = " + event, false, 4, null);
        } else {
            EventConfig eventConfig2 = EventConfig.f41878a;
            bundle.putString("close_event", eventConfig2.c().toString());
            bundle.putString("miss_event", eventConfig2.d().toString());
            wf.a.C0922a.f(c0922a, "sampler", "track: 日志上报 --> bundle = " + bundle, false, 4, null);
        }
        return z10;
    }
}
