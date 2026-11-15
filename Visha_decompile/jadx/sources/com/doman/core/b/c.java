package com.doman.core.b;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.android.net.o;
import com.android.net.toolbox.p;
import com.doman.core.CoreMain;
import com.doman.core.b.a.h;
import com.doman.core.d.m;
import com.hisavana.common.tracking.TrackingKey;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.HashMap;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

public final class c {
    public static final String c = com.doman.core.d.e.a("TWFnaWNBZCMxMjM0NTY3IQ==");
    private static c d;
    public o a;
    public Context b;
    private final String e = "NetInterfaceManager";

    private c(Context context) {
        try {
            this.b = context;
            this.a = p.a(context);
        } catch (Exception unused) {
        }
    }

    public static c a(Context context) {
        if (d == null) {
            d = new c(context);
        }
        return d;
    }

    private Map<String, String> b(String str, String str2, String str3, String str4, String str5) throws JSONException {
        HashMap map = new HashMap();
        JSONObject jSONObject = new JSONObject();
        a(jSONObject);
        if (!TextUtils.isEmpty(str)) {
            jSONObject.put("event_id", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            jSONObject.put("task_info", str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            jSONObject.put("event_msg", str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            jSONObject.put("event_url", str4);
        }
        if (!TextUtils.isEmpty(str5)) {
            jSONObject.put("task_id", str5);
        }
        map.put("params", a(jSONObject.toString()));
        return map;
    }

    public static e a(f fVar, Map<String, String> map) {
        e eVar = new e(fVar);
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                eVar.a(entry.getKey(), entry.getValue());
            }
        }
        return eVar;
    }

    private static String a() {
        String aCName = CoreMain.getInstance().getACName();
        if (TextUtils.isEmpty(aCName)) {
            return "";
        }
        try {
            return com.doman.core.d.c.b.a(aCName, com.doman.core.d.c.b.b("dFzVcOTg3zkcESsXYE1/1e02fgkxiWlU", "mapkey@2023timeSave"));
        } catch (Exception unused) {
            return "";
        }
    }

    public static String a(String str) {
        return com.doman.core.d.c.b.a(str.toString(), c);
    }

    public final void a(String str, String str2, String str3, String str4, String str5) {
        try {
            this.a.a(new h(this.b, a(f.TRACKEVENT, b(str, str2, str3, str4, str5))));
        } catch (Throwable unused) {
        }
    }

    public final void a(JSONObject jSONObject) {
        try {
            jSONObject.put(DownloadFacadeEnum.USER_IMEI, com.doman.core.d.b.a.a());
            jSONObject.put("android_id", com.doman.core.d.b.a.a(this.b));
            jSONObject.put("appkey", com.doman.core.d.c.b(this.b));
            jSONObject.put(CommonUrlParts.HUAWEI_OAID, CoreMain.getInstance().getOAID());
            jSONObject.put(DownloadFacadeEnum.USER_CH, com.doman.core.d.c.a(this.b));
            jSONObject.put(DownloadFacadeEnum.USER_MAC, com.doman.core.d.b.a.j());
            jSONObject.put("os", ConstantDeviceInfo.APP_PLATFORM);
            jSONObject.put("osver", com.doman.core.d.b.a.e());
            jSONObject.put("brand", com.doman.core.d.b.a.d());
            jSONObject.put(CommonUrlParts.MODEL, com.doman.core.d.b.a.c());
            jSONObject.put("sw", m.a);
            jSONObject.put("sh", m.b);
            jSONObject.put(DownloadFacadeEnum.USER_UA, CoreMain.getInstance().getUA());
            com.doman.core.d.h.a();
            jSONObject.put("connection_type", com.doman.core.d.h.a(this.b));
            com.doman.core.d.h.a();
            jSONObject.put("carrier_type", com.doman.core.d.h.b(this.b));
            jSONObject.put(CommonUrlParts.DEVICE_TYPE, 32);
            jSONObject.put("app_version", com.doman.core.d.b.a.k());
            jSONObject.put("sdk_version", "l_1133_20240730");
            jSONObject.put("orientation", com.doman.core.d.b.a.c(this.b));
            jSONObject.put("lg", 0);
            jSONObject.put("lt", 0);
            jSONObject.put("pkgname", this.b.getPackageName());
            jSONObject.put("screen_tag", m.a());
            jSONObject.put("isappon", CoreMain.isAppOnForeground(this.b));
            jSONObject.put("isvip", CoreMain.isvip);
            jSONObject.put(DownloadFacadeEnum.USER_DID, CoreMain.getInstance().getDID());
            jSONObject.put("source", CoreMain.getInstance().getAdSdkSourceFrom());
            jSONObject.put("lm_mid", CoreMain.getInstance().getLm_mid());
            jSONObject.put("rs", com.doman.core.d.b.a.d(this.b));
            jSONObject.put("lt", com.doman.core.d.b.a.e(this.b));
            jSONObject.put("type", 32);
            long jCurrentTimeMillis = System.currentTimeMillis();
            jSONObject.put(TrackingKey.TS, jCurrentTimeMillis);
            jSONObject.put("ntime", jCurrentTimeMillis);
            jSONObject.put("dpi", com.doman.core.d.b.a.f(this.b));
            if (!TextUtils.isEmpty(com.doman.core.manager.a.a().a)) {
                jSONObject.put("vid", com.doman.core.manager.a.a().a);
            }
            if (!TextUtils.isEmpty(com.doman.core.manager.a.a().b)) {
                jSONObject.put("liveid", com.doman.core.manager.a.a().b);
            }
            String strA = a();
            if (!TextUtils.isEmpty(strA)) {
                jSONObject.put("ac_id", strA);
            }
            String strH = com.doman.core.d.b.a.h(this.b);
            if (!TextUtils.isEmpty(strH)) {
                jSONObject.put("hms", strH);
            }
            String strG = com.doman.core.d.b.a.g(this.b);
            if (!TextUtils.isEmpty(strG)) {
                jSONObject.put("ag", strG);
            }
            String strF = com.doman.core.d.b.a.f();
            if (!TextUtils.isEmpty(strF)) {
                jSONObject.put("maker", strF);
            }
            String strI = com.doman.core.d.b.a.i(this.b);
            if (!TextUtils.isEmpty(strI) && strI.length() == 5) {
                jSONObject.put("operator", strI.substring(3, 5));
                jSONObject.put("mcc", strI.substring(0, 3));
            }
            jSONObject.put("carrier_name", com.doman.core.d.b.a.b(this.b));
            jSONObject.put("local_tz_name", TimeZone.getDefault().getID());
            StringBuilder sb = new StringBuilder();
            sb.append((int) ((System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000));
            jSONObject.put("startup_time", sb.toString());
            jSONObject.put("cpu_num", com.doman.core.d.b.a.g());
            jSONObject.put("disk_total", com.doman.core.d.b.a.h());
            jSONObject.put("mem_total", com.doman.core.d.b.a.i());
        } catch (Throwable unused) {
        }
    }
}
