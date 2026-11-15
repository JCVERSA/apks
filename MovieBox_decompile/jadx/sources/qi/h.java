package qi;

import android.app.Application;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.Utils;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.gslb.GslbSdk;
import com.transsion.push.PushConstants;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

public final class h {

    private static i f69684c;

    public static final h f69682a = new h();

    private static String f69683b = "";

    private static final ExecutorService f69685d = Executors.newSingleThreadExecutor();

    public static final class a implements GslbSdk.InitListener {

        final String f69686a;

        a(String str) {
            this.f69686a = str;
        }

        @Override
        public void onInitFail() {
        }

        @Override
        public void onInitSuccess(Map map) {
            Intrinsics.h(map, "map");
            wf.a.C0922a.f(wf.a.f74274a, "Report", "gslbSdk success did 11 " + this.f69686a + " map " + map, false, 4, null);
        }
    }

    public static final class b implements GslbSdk.InitListener {

        final String f69687a;

        b(String str) {
            this.f69687a = str;
        }

        @Override
        public void onInitFail() {
        }

        @Override
        public void onInitSuccess(Map map) {
            Intrinsics.h(map, "map");
            wf.a.C0922a.f(wf.a.f74274a, "Report", "gslbSdk success did 22 " + this.f69687a + " map " + map, false, 4, null);
        }
    }

    private h() {
    }

    public static final void B(String str, Map map, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("page_name", str);
        h hVar = f69682a;
        bundle.putString("ext", hVar.n(map));
        if (E(hVar, str2, bundle, null, null, 12, null)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                wf.a.C0922a.f(wf.a.f74274a, "Report", "reportUIEvent() --> event=" + str2 + "  pageName=" + str + " map=" + map, false, 4, null);
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
        f69682a.f(str, str2, map);
    }

    private final boolean D(String str, Bundle bundle, Integer num, String str2) {
        Pair account;
        com.transsion.base.report.athena.sampler.c cVar = com.transsion.base.report.athena.sampler.c.f41885a;
        String strG = AthenaAnalytics.G(Utils.a());
        Intrinsics.g(strG, "getAppVAID(...)");
        if (cVar.b(str, bundle, strG)) {
            return false;
        }
        try {
            bundle.putString(PushConstants.PROVIDER_VAID, AthenaAnalytics.G(Utils.a()));
            i iVar = f69684c;
            Bundle bundleA = iVar != null ? iVar.a(str, bundle) : null;
            i iVar2 = f69684c;
            if (iVar2 != null && (account = iVar2.getAccount()) != null) {
                AthenaAnalytics.Z(((Number) account.getFirst()).shortValue(), (String) account.getSecond());
            }
            if (num != null) {
                if (!TextUtils.isEmpty(str2)) {
                    if (bundleA == null) {
                        bundleA = new Bundle();
                    }
                    bundleA.putString("biz_line", str2);
                }
                new hi.a(str, num.intValue()).c(bundleA, null).b();
            } else {
                new hi.a(str).c(bundleA, null).b();
            }
            return true;
        } catch (Exception e10) {
            wf.a.f74274a.i("report", "event " + str + " exception " + e10, true);
            return false;
        }
    }

    static boolean E(h hVar, String str, Bundle bundle, Integer num, String str2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            num = null;
        }
        if ((i10 & 8) != 0) {
            str2 = null;
        }
        return hVar.D(str, bundle, num, str2);
    }

    private final void f(String str, String str2, Map map) {
        i iVar = f69684c;
        if (iVar != null) {
            iVar.b(str, str2, map);
        }
    }

    private final String[] i() {
        return new String[]{"dsu-a.shalltry.com"};
    }

    public static final void m(int i10, String str) {
        wf.a.C0922a.f(wf.a.f74274a, "Report", "loginActive:userType" + i10 + ",userid:" + str, false, 4, null);
        HashMap map = new HashMap();
        map.put("userType", String.valueOf(i10));
        if (str == null) {
            str = "0";
        }
        map.put("userId", str);
        h hVar = f69682a;
        String strN = hVar.n(map);
        Bundle bundle = new Bundle();
        bundle.putString(NotificationCompat.CATEGORY_EVENT, "login_active");
        bundle.putString("ext", strN);
        E(hVar, "login_active", bundle, null, null, 12, null);
    }

    public static final void s(Map map, String str) {
        try {
            Result.Companion companion = Result.INSTANCE;
            wf.a.C0922a.f(wf.a.f74274a, "Report", "reportEvent event=" + str + " map=" + map + ' ', false, 4, null);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        Bundle bundle = new Bundle();
        h hVar = f69682a;
        bundle.putString("ext", hVar.n(map));
        E(hVar, str, bundle, null, null, 12, null);
    }

    public static final void u(Map map, String str, String str2, int i10, String str3) {
        Bundle bundle = new Bundle();
        String string = new JSONObject(map).toString();
        Intrinsics.g(string, "toString(...)");
        bundle.putString("ext", string);
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("page_name", str);
        }
        if (f69682a.D(str2, bundle, Integer.valueOf(i10), str3)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                wf.a.C0922a.f(wf.a.f74274a, "Report_ad", "reportEventAd() --> appId = " + i10 + " -- bizLine = " + str3 + " -- event = " + str2 + " -- pageName = " + str + " -- bundle = " + bundle, false, 4, null);
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public static final void w(Map map, String str, String str2) {
        Bundle bundle = new Bundle();
        h hVar = f69682a;
        bundle.putString("ext", hVar.n(map));
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("page_name", str);
        }
        if (E(hVar, str2, bundle, null, null, 12, null)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                wf.a.C0922a.f(wf.a.f74274a, "Report_ad", "reportEventV2() --> event = " + str2 + " --> bundle = " + bundle, false, 4, null);
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public final void A(final String pageName, final String event, final Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
        try {
            map = MapsKt.u(map);
        } catch (Exception unused) {
        }
        f69685d.execute(new Runnable() {
            @Override
            public final void run() {
                h.B(pageName, map, event);
            }
        });
    }

    public final void C(String pageName, String event, long j10, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
        map.put("duration", String.valueOf(j10));
        A(pageName, event, map);
    }

    public final boolean g(String event, Bundle bundle, int i10) {
        Intrinsics.h(event, "event");
        Intrinsics.h(bundle, "bundle");
        return E(this, event, bundle, Integer.valueOf(i10), null, 8, null);
    }

    public final String h() {
        return f69683b;
    }

    public final void j(Application context, boolean z10, i api, String channelId, int i10, boolean z11, String str, boolean z12) {
        String strValueOf;
        String strSubstring;
        Intrinsics.h(context, "context");
        Intrinsics.h(api, "api");
        Intrinsics.h(channelId, "channelId");
        String strH = tg.b.f72740a.h();
        if ((str != null ? str.length() : 0) >= 3) {
            if (str != null) {
                strSubstring = str.substring(0, 3);
                Intrinsics.g(strSubstring, "substring(...)");
            } else {
                strSubstring = null;
            }
            strValueOf = String.valueOf(strSubstring);
        } else {
            strValueOf = "";
        }
        if (z12) {
            GslbSdk.init(context, "404", strH, i(), new a(strH));
        } else if (TextUtils.equals("250", strValueOf)) {
            GslbSdk.init(context, "621", strH, i(), new b(strH));
        }
        AthenaAnalytics.e0(1);
        AthenaAnalytics.Q(context, channelId, i10, true, z11);
        AthenaAnalytics.d0(z10);
        AthenaAnalytics.D(true);
        AthenaAnalytics.c0(2000);
        AthenaAnalytics.f0();
        f69684c = api;
        wf.a.C0922a.f(wf.a.f74274a, "Report", "initSDK debug " + z10, false, 4, null);
    }

    public final void l(final int i10, final String str) {
        f69685d.execute(new Runnable() {
            @Override
            public final void run() {
                h.m(i10, str);
            }
        });
    }

    public final String n(Map map) {
        Intrinsics.h(map, "map");
        String string = new JSONObject(map).toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public final void o(String pageName, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(map, "map");
        A(pageName, "click", map);
    }

    public final void p(String pageName, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(map, "map");
        A(pageName, "dialog_show", map);
    }

    public final void q(String pageName, String event, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
        A(pageName, event, map);
    }

    public final void r(final String event, final Map map) {
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
        try {
            map = MapsKt.u(map);
        } catch (Exception unused) {
        }
        f69685d.execute(new Runnable() {
            @Override
            public final void run() {
                h.s(map, event);
            }
        });
    }

    public final void t(final String event, Map map, final String pageName, final int i10, final String bizLine) {
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(bizLine, "bizLine");
        try {
            map = MapsKt.u(map);
        } catch (Exception unused) {
        }
        final Map map2 = map;
        f69685d.execute(new Runnable() {
            @Override
            public final void run() {
                h.u(map2, pageName, event, i10, bizLine);
            }
        });
    }

    public final void v(final String event, final Map map, final String pageName) {
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
        Intrinsics.h(pageName, "pageName");
        try {
            map = MapsKt.u(map);
        } catch (Exception unused) {
        }
        f69685d.execute(new Runnable() {
            @Override
            public final void run() {
                h.w(map, pageName, event);
            }
        });
    }

    public final void x(qi.b logConfig) {
        Intrinsics.h(logConfig, "logConfig");
        HashMap mapG = logConfig.g();
        String strA = logConfig.a();
        if (strA == null) {
            strA = f69683b;
        }
        mapG.put(WebConstants.PAGE_FROM, strA);
        logConfig.g().put("duration", String.valueOf(SystemClock.elapsedRealtime() - logConfig.h()));
        logConfig.g().put("is_load_success", String.valueOf(logConfig.i()));
        String strE = logConfig.e();
        if (strE != null) {
            logConfig.g().put("ops", strE);
        }
        A(logConfig.f(), "pt", logConfig.g());
        if (TextUtils.equals(f69683b, logConfig.f()) || !logConfig.b()) {
            return;
        }
        f69683b = logConfig.f();
    }

    public final void y(qi.b logConfig) {
        Intrinsics.h(logConfig, "logConfig");
        HashMap mapG = logConfig.g();
        String strA = logConfig.a();
        if (strA == null) {
            strA = f69683b;
        }
        mapG.put(WebConstants.PAGE_FROM, strA);
        String strE = logConfig.e();
        if (strE != null) {
            logConfig.g().put("ops", strE);
        }
        A(logConfig.f(), "pv", logConfig.g());
    }

    public final void z(String pageName, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(map, "map");
        A(pageName, "browse", map);
    }
}
