package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import com.lzy.okgo.cookie.SerializableCookie;
import io.appmetrica.analytics.billinginterface.internal.config.BillingConfig;
import io.appmetrica.analytics.coreutils.internal.parsing.RemoteConfigJsonUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.appmetrica.analytics.networktasks.internal.RetryPolicyConfig;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class Al {
    public final Ea a;
    public final C2487da b;
    public final C2943vi c;
    public final C2765oe d;
    public final C2673km e;
    public final C2877t2 f;
    public final A3 g;
    public final C2827r2 h;
    public final C2737nb i;
    public final C2599hm j;
    public final C2838rd k;
    public final K9 l;

    public Al() {
        this(new C2737nb(), new Ea(), new C2487da(), new C2943vi(), new C2765oe(), new C2673km(), new A3(), new C2877t2(), new C2827r2(), new C2599hm(), new C2838rd(), new K9());
    }

    public final void a(Fl fl, C2687lb c2687lb) {
        long jOptLong;
        long jOptLong2;
        String string;
        ArrayList arrayListA;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        JSONObject jSONObjectOptJSONObject3;
        JSONObject jSONObjectOptJSONObject4 = c2687lb.optJSONObject("queries");
        if (jSONObjectOptJSONObject4 != null && (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject4.optJSONObject("list")) != null && (jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject(SerializableCookie.HOST)) != null) {
            fl.g = jSONObjectOptJSONObject3.optString("url", null);
        }
        Object jSONObject = new JSONObject();
        try {
            jSONObject = c2687lb.get("distribution_customization");
        } catch (Throwable unused) {
        }
        JSONObject jSONObjectOptJSONObject5 = ((JSONObject) jSONObject).optJSONObject("clids");
        if (jSONObjectOptJSONObject5 != null) {
            HashMap map = new HashMap();
            Iterator<String> itKeys = jSONObjectOptJSONObject5.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONObject jSONObjectOptJSONObject6 = jSONObjectOptJSONObject5.optJSONObject(next);
                if (jSONObjectOptJSONObject6 != null && jSONObjectOptJSONObject6.has(ES6Iterator.VALUE_PROPERTY)) {
                    map.put(next, jSONObjectOptJSONObject6.getString(ES6Iterator.VALUE_PROPERTY));
                }
            }
            fl.j = AbstractC2623im.a((Map) map);
        }
        JSONObject jSONObjectOptJSONObject7 = c2687lb.optJSONObject(CommonUrlParts.LOCALE);
        String string2 = "";
        fl.m = (jSONObjectOptJSONObject7 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject7.optJSONObject("country")) == null || !jSONObjectOptJSONObject.optBoolean("reliable", false)) ? "" : jSONObjectOptJSONObject.optString(ES6Iterator.VALUE_PROPERTY, "");
        JSONObject jSONObjectOptJSONObject8 = c2687lb.optJSONObject("time");
        if (jSONObjectOptJSONObject8 != null) {
            try {
                fl.l = Long.valueOf(jSONObjectOptJSONObject8.getLong("max_valid_difference_seconds"));
            } catch (Throwable unused2) {
            }
        }
        Yl yl = new Yl();
        JSONObject jSONObjectOptJSONObject9 = c2687lb.optJSONObject("stat_sending");
        if (jSONObjectOptJSONObject9 != null) {
            yl.a = RemoteConfigJsonUtils.extractMillisFromSecondsOrDefault(jSONObjectOptJSONObject9, "disabled_reporting_interval_seconds", yl.a);
        }
        this.e.getClass();
        fl.p = new C2648jm(yl.a);
        this.b.getClass();
        Ul ul = new Ul();
        try {
            Object jSONObject2 = new JSONObject();
            try {
                jSONObject2 = c2687lb.get("features");
            } catch (Throwable unused3) {
            }
            JSONObject jSONObjectOptJSONObject10 = ((JSONObject) jSONObject2).optJSONObject("list");
            if (jSONObjectOptJSONObject10 != null) {
                A4 a4 = new A4();
                a4.a = C2487da.a(jSONObjectOptJSONObject10, "permissions_collecting", ul.a);
                a4.b = C2487da.a(jSONObjectOptJSONObject10, "features_collecting", ul.b);
                a4.c = C2487da.a(jSONObjectOptJSONObject10, "google_aid", ul.c);
                a4.d = C2487da.a(jSONObjectOptJSONObject10, "sim_info", ul.d);
                a4.e = C2487da.a(jSONObjectOptJSONObject10, "huawei_oaid", ul.e);
                a4.f = jSONObjectOptJSONObject10.has("ssl_pinning") ? Boolean.valueOf(jSONObjectOptJSONObject10.getJSONObject("ssl_pinning").getBoolean("enabled")) : null;
                fl.b = new C4(a4);
            }
        } catch (Throwable unused4) {
        }
        this.a.getClass();
        try {
            Object jSONObject3 = new JSONObject();
            try {
                jSONObject3 = c2687lb.get("query_hosts");
            } catch (Throwable unused5) {
            }
            JSONObject jSONObjectOptJSONObject11 = ((JSONObject) jSONObject3).optJSONObject("list");
            if (jSONObjectOptJSONObject11 != null) {
                try {
                    string = jSONObjectOptJSONObject11.getJSONObject("get_ad").getJSONArray("urls").getString(0);
                } catch (Throwable unused6) {
                    string = "";
                }
                if (!TextUtils.isEmpty(string)) {
                    fl.d = string;
                }
                ArrayList arrayListA2 = Ea.a(jSONObjectOptJSONObject11, "report");
                if (!In.a((Collection) arrayListA2)) {
                    fl.e = arrayListA2;
                }
                try {
                    string2 = jSONObjectOptJSONObject11.getJSONObject("report_ad").getJSONArray("urls").getString(0);
                } catch (Throwable unused7) {
                }
                if (!TextUtils.isEmpty(string2)) {
                    fl.f = string2;
                }
                ArrayList arrayListA3 = Ea.a(jSONObjectOptJSONObject11, "startup");
                if (!In.a((Collection) arrayListA3)) {
                    fl.c = arrayListA3;
                }
                ArrayList arrayListA4 = Ea.a(jSONObjectOptJSONObject11, "diagnostic");
                if (!In.a((Collection) arrayListA4)) {
                    fl.n = arrayListA4;
                }
                HashMap map2 = new HashMap();
                Iterator<String> itKeys2 = jSONObjectOptJSONObject11.keys();
                while (itKeys2.hasNext()) {
                    String next2 = itKeys2.next();
                    if (!Ea.a.contains(next2) && (arrayListA = Ea.a(jSONObjectOptJSONObject11, next2)) != null) {
                        map2.put(next2, arrayListA);
                    }
                }
                fl.o = map2;
            }
        } catch (Throwable unused8) {
        }
        this.c.getClass();
        Zl zl = new Zl();
        JSONObject jSONObjectOptJSONObject12 = c2687lb.optJSONObject("retry_policy");
        int iOptInt = zl.w;
        int iOptInt2 = zl.x;
        if (jSONObjectOptJSONObject12 != null) {
            iOptInt = jSONObjectOptJSONObject12.optInt("max_interval_seconds", iOptInt);
            iOptInt2 = jSONObjectOptJSONObject12.optInt("exponential_multiplier", zl.x);
        }
        fl.q = new RetryPolicyConfig(iOptInt, iOptInt2);
        this.d.getClass();
        if (fl.b.a) {
            JSONObject jSONObjectOptJSONObject13 = c2687lb.optJSONObject("permissions_collecting");
            Wl wl = new Wl();
            if (jSONObjectOptJSONObject13 != null) {
                jOptLong = jSONObjectOptJSONObject13.optLong("check_interval_seconds", wl.a);
                jOptLong2 = jSONObjectOptJSONObject13.optLong("force_send_interval_seconds", wl.b);
            } else {
                jOptLong = wl.a;
                jOptLong2 = wl.b;
            }
            fl.k = new C2715me(jOptLong, jOptLong2);
        }
        C2852s2 c2852s2 = this.f.a;
        Ql ql = new Ql();
        JSONObject jSONObjectOptJSONObject14 = c2687lb.optJSONObject("auto_inapp_collecting");
        if (jSONObjectOptJSONObject14 != null) {
            ql.a = jSONObjectOptJSONObject14.optInt("send_frequency_seconds", ql.a);
            ql.b = jSONObjectOptJSONObject14.optInt("first_collecting_inapp_max_age_seconds", ql.b);
        }
        c2852s2.getClass();
        fl.r = new BillingConfig(ql.a, ql.b);
        A3 a3 = this.g;
        a3.getClass();
        Rl rl = new Rl();
        JSONObject jSONObjectOptJSONObject15 = c2687lb.optJSONObject("cache_control");
        if (jSONObjectOptJSONObject15 != null) {
            rl.a = RemoteConfigJsonUtils.extractMillisFromSecondsOrDefault(jSONObjectOptJSONObject15, "last_known_location_ttl", rl.a);
        }
        a3.a.getClass();
        fl.s = new C2978x3(rl.a);
        this.h.getClass();
        C2827r2.a(fl, c2687lb);
        C2599hm c2599hm = this.j;
        c2599hm.getClass();
        JSONObject jSONObjectOptJSONObject16 = c2687lb.optJSONObject("startup_update");
        Xl xl = new Xl();
        Integer numA = AbstractC2712mb.a(jSONObjectOptJSONObject16, "interval_seconds", null);
        if (numA != null) {
            xl.a = numA.intValue();
        }
        c2599hm.a.getClass();
        fl.u = new C2549fm(xl.a);
        Map<String, C2490dd> mapC = this.k.a.c();
        C2814qd c2814qd = new C2814qd(c2687lb);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, C2490dd> entry : mapC.entrySet()) {
            Object objInvoke = c2814qd.invoke(entry);
            if (objInvoke != null) {
                linkedHashMap.put(entry.getKey(), objInvoke);
            }
        }
        fl.v = linkedHashMap;
        J9 j9 = this.l.a;
        Tl tl = new Tl();
        JSONObject jSONObjectOptJSONObject17 = c2687lb.optJSONObject("external_attribution");
        if (jSONObjectOptJSONObject17 != null) {
            tl.a = RemoteConfigJsonUtils.extractMillisFromSecondsOrDefault(jSONObjectOptJSONObject17, "collecting_interval_seconds", tl.a);
        }
        j9.getClass();
        fl.w = new I9(tl.a);
    }

    public Al(C2737nb c2737nb, Ea ea, C2487da c2487da, C2943vi c2943vi, C2765oe c2765oe, C2673km c2673km, A3 a3, C2877t2 c2877t2, C2827r2 c2827r2, C2599hm c2599hm, C2838rd c2838rd, K9 k9) {
        this.a = ea;
        this.b = c2487da;
        this.c = c2943vi;
        this.d = c2765oe;
        this.e = c2673km;
        this.g = a3;
        this.f = c2877t2;
        this.h = c2827r2;
        this.i = c2737nb;
        this.j = c2599hm;
        this.k = c2838rd;
        this.l = k9;
    }
}
