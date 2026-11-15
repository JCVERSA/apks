package com.tn.tranpay;

import android.app.Application;
import com.tencent.mmkv.MMKV;
import com.tn.tranpay.logger.LogLevel;
import com.tn.tranpay.logger.LoggerPlugin;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class TranPay {

    public static final TranPay f40491a = new TranPay();

    private static Application f40492b;

    private TranPay() {
    }

    public final void a(LoggerPlugin plugin) {
        Intrinsics.h(plugin, "plugin");
        lh.a.f65699a.a(plugin);
    }

    public final void b(Application application, String cpId, String appKey, String channel, LogLevel level, boolean z10, boolean z11, String str, e theme) {
        Intrinsics.h(application, "application");
        Intrinsics.h(cpId, "cpId");
        Intrinsics.h(appKey, "appKey");
        Intrinsics.h(channel, "channel");
        Intrinsics.h(level, "level");
        Intrinsics.h(theme, "theme");
        f40492b = application;
        MMKV.C(application);
        TranPayConfiguration tranPayConfiguration = TranPayConfiguration.f40495a;
        tranPayConfiguration.x(cpId);
        tranPayConfiguration.v(appKey);
        tranPayConfiguration.w(channel);
        tranPayConfiguration.B(str);
        tranPayConfiguration.y(z10);
        tranPayConfiguration.A(z11);
        e.f40541c.a(theme);
        lh.a aVar = lh.a.f65699a;
        aVar.h(level, z10);
        com.tn.tranpay.event.a.f40551a.b(application);
        k.d(o0.a(y0.b()), null, null, new TranPay$configure$1(application, z10, str, null), 3, null);
        lh.a.g(aVar, "TranPay init succeed " + cpId + ", " + level + ", " + z10 + ", " + str, null, 2, null);
        tranPayConfiguration.z(true);
    }

    public final Application d() {
        Application application = f40492b;
        if (application != null) {
            return application;
        }
        throw new IllegalStateException("TranPay SDK not initialized. Please call TranPay.configure() first.");
    }

    public final String e() {
        return "1.0.6.2";
    }
}
