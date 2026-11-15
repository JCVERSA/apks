package com.tn.tranpay.report;

import android.app.Application;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.tn.tranpay.TranPay;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.push.PushConstants;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

public final class e {

    public static final e f40678a = new e();

    private static String f40679b = "";

    private static int f40680c = 3560;

    private static f f40681d;

    private e() {
    }

    private final void b(String str, String str2, Map map) {
        f fVar = f40681d;
        if (fVar != null) {
            fVar.b(str, str2, map);
        }
    }

    private final String d(Map map) {
        String string = new JSONObject(map).toString();
        Intrinsics.g(string, "JSONObject(map).toString()");
        return string;
    }

    private final void h(final String str, final String str2, final String str3, final Map map) {
        ThreadSingleExecutor.f40657b.a().b(new Runnable() {
            @Override
            public final void run() {
                e.i(str, str3, str2, map);
            }
        });
    }

    public static final void i(String category, String event, String pageName, Map map) {
        Intrinsics.h(category, "$category");
        Intrinsics.h(event, "$event");
        Intrinsics.h(pageName, "$pageName");
        Intrinsics.h(map, "$map");
        lh.a.f65699a.b(category + " event=" + event + "  pageName=" + pageName + " map=" + map, "Report");
        Bundle bundle = new Bundle();
        bundle.putString("page_name", pageName);
        e eVar = f40678a;
        bundle.putString("ext", eVar.d(map));
        eVar.j(event, bundle);
        eVar.b(pageName, event, map);
    }

    private final void j(String str, Bundle bundle) {
        Bundle bundleA;
        try {
            bundle.putString(PushConstants.PROVIDER_VAID, AthenaAnalytics.G(TranPay.f40491a.d()));
            f fVar = f40681d;
            if (fVar != null && (bundleA = fVar.a(str, bundle)) != null) {
                bundle = bundleA;
            }
            new hi.a(str, f40680c).c(bundle, null).b();
        } catch (Exception e10) {
            lh.a.f65699a.d("event " + str + " exception " + e10, "Report");
        }
    }

    public final void c(Application context, String channel, boolean z10, boolean z11, f fVar) {
        Intrinsics.h(context, "context");
        Intrinsics.h(channel, "channel");
        AthenaAnalytics.Q(context, channel, f40680c, true, z11);
        AthenaAnalytics.d0(z10);
        f40681d = fVar;
        lh.a.f65699a.f("init athena debug " + z10, "Report");
    }

    public final void e(String pageName, String event, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
        h("reportClick", pageName, event, map);
    }

    public final void f(c logConfig) {
        Intrinsics.h(logConfig, "logConfig");
        HashMap mapG = logConfig.g();
        String strA = logConfig.a();
        if (strA == null) {
            strA = f40679b;
        }
        mapG.put(WebConstants.PAGE_FROM, strA);
        logConfig.g().put("duration", String.valueOf(SystemClock.elapsedRealtime() - logConfig.h()));
        logConfig.g().put("is_load_success", String.valueOf(logConfig.i()));
        String strE = logConfig.e();
        if (strE != null) {
            logConfig.g().put("ops", strE);
        }
        h("reportPT", logConfig.f(), "pt", logConfig.g());
        if (TextUtils.equals(f40679b, logConfig.f()) || !logConfig.b()) {
            return;
        }
        f40679b = logConfig.f();
    }

    public final void g(c logConfig) {
        Intrinsics.h(logConfig, "logConfig");
        HashMap mapG = logConfig.g();
        String strA = logConfig.a();
        if (strA == null) {
            strA = f40679b;
        }
        mapG.put(WebConstants.PAGE_FROM, strA);
        String strE = logConfig.e();
        if (strE != null) {
            logConfig.g().put("ops", strE);
        }
        h("reportPV", logConfig.f(), "pv", logConfig.g());
    }
}
