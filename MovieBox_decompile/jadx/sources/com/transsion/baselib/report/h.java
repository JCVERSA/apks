package com.transsion.baselib.report;

import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.text.format.DateUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.push.bean.MsgStyle;
import com.transsion.startup.pref.consume.AppStartDotState;
import java.util.Calendar;
import java.util.HashMap;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class h {

    public static final h f42200a = new h();

    private static String f42201b = "cold";

    private static long f42202c = SystemClock.elapsedRealtime();

    private static String f42203d = "";

    private static String f42204e = "";

    private static Uri f42205f;

    private h() {
    }

    private final int a(long j10) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j10);
        return (calendar.get(1) * 10000) + ((calendar.get(2) + 1) * 100) + calendar.get(5);
    }

    private final String c(Uri uri) {
        if (uri == null) {
            return "launch";
        }
        return Intrinsics.c(com.transsion.baselib.helper.b.f42123a.c(uri).getUtmSource(), MsgStyle.SOURCE_PUSH) ? MsgStyle.SOURCE_PUSH : "deeplink";
    }

    private final void f(long j10) {
        HashMap map = new HashMap();
        map.put(EventConstants.KEY_SOURCE, f42203d);
        map.put("channel", f42204e);
        map.put("duration", String.valueOf(j10));
        qi.h.f69682a.r("app_stop", map);
    }

    private final void g(String str) {
        f42203d = c(f42205f);
        String utmSource = com.transsion.baselib.helper.b.f42123a.c(f42205f).getUtmSource();
        if (utmSource == null) {
            utmSource = "";
        }
        f42204e = utmSource;
        f42205f = null;
        HashMap map = new HashMap();
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, str);
        map.put(EventConstants.KEY_SOURCE, f42203d);
        map.put("channel", f42204e);
        qi.h hVar = qi.h.f69682a;
        hVar.r(AppStartDotState.APP_START, map);
        if (Intrinsics.c(f42203d, "launch")) {
            hVar.r("app_launch_channel", map);
            i(f42204e);
        }
    }

    private final void i(String str) {
        Long lX;
        try {
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
            bVar.b().putString("k_last_open_channel", str);
            String string = bVar.b().getString("k_last_open_time", "0");
            long jLongValue = (string == null || (lX = StringsKt.x(string)) == null) ? 0L : lX.longValue();
            if (!DateUtils.isToday(jLongValue)) {
                int i10 = bVar.b().getInt("k_open_day_count", 0);
                int iA = a(jLongValue);
                int iA2 = a(System.currentTimeMillis());
                int i11 = iA2 - iA == 1 ? i10 + 1 : 1;
                bVar.b().putInt("k_open_day_count", i11);
                wf.a.C0922a.f(wf.a.f74274a, "ReportLaunchManager", "openDayCount:" + i11 + ", lastDay:" + iA + ", curDay:" + iA2, false, 4, null);
                qi.h.f69682a.q("app_fg_alive", "app_perf", MapsKt.j(TuplesKt.a(EventConstants.KEY_SOURCE, f42203d), TuplesKt.a("channel", str)));
            }
            bVar.b().putString("k_last_open_time", String.valueOf(System.currentTimeMillis()));
            bVar.b().putString("k_last_open_version", com.transsion.core.utils.a.c());
        } catch (Exception unused) {
        }
    }

    public final Uri b() {
        return f42205f;
    }

    public final String d() {
        return TextUtils.isEmpty(f42203d) ? "launch" : f42203d;
    }

    public final void e(boolean z10) {
        if (z10) {
            f42201b = "warm";
            f(SystemClock.elapsedRealtime() - f42202c);
        } else {
            f42202c = SystemClock.elapsedRealtime();
            g(f42201b);
        }
    }

    public final void h(String shortUrl, String wholeUrl) {
        String queryParameter;
        String queryParameter2;
        Intrinsics.h(shortUrl, "shortUrl");
        Intrinsics.h(wholeUrl, "wholeUrl");
        String str = "";
        Uri uri = !Intrinsics.c(wholeUrl, "") ? Uri.parse(wholeUrl) : Uri.parse(shortUrl);
        f42203d = c(uri);
        String utmSource = com.transsion.baselib.helper.b.f42123a.c(uri).getUtmSource();
        if (utmSource == null) {
            utmSource = "";
        }
        f42204e = utmSource;
        HashMap map = new HashMap();
        map.put(EventConstants.KEY_SOURCE, f42203d);
        map.put("channel", f42204e);
        if (uri == null || (queryParameter = uri.getQueryParameter("msgId")) == null) {
            queryParameter = "";
        }
        map.put("msgId", queryParameter);
        if (uri != null && (queryParameter2 = uri.getQueryParameter("msg_type")) != null) {
            str = queryParameter2;
        }
        map.put("msg_type", str);
        map.put("url", wholeUrl);
        map.put("surl", shortUrl);
        qi.h.f69682a.r("app_launch_channel", map);
        i(f42204e);
    }

    public final void j(Uri uri) {
        f42205f = uri;
    }
}
