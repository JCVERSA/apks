package com.mgmi.f;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.hisavana.common.tracking.TrackingKey;
import com.mgmi.ads.api.e.i;
import com.mgmi.model.n;
import com.mgmi.ssp.MGTVAdFactory;
import com.mgmi.thirdparty.IpdxManager;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.yandex.mobile.ads.common.Gender;
import defpackage.fyd;
import defpackage.g4d;
import defpackage.i2d;
import defpackage.mpd;
import defpackage.n3d;
import defpackage.n4d;
import defpackage.u7d;
import defpackage.wrd;
import defpackage.znd;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class b {
    private static final String a = "com.mgmi.f.b";

    private static void a(Context context, JSONObject jSONObject) throws JSONException {
    }

    public static Map<String, String> b(Context context, n nVar, com.mgmi.ads.api.a.d dVar) {
        HashMap map = new HashMap();
        map.put(TtmlNode.TAG_P, a("ADS_OFFVIDEO_ONLINE", context, nVar.a(), nVar.b(), nVar.c(), -1, nVar.e(), dVar));
        map.put("v", b(nVar.a()));
        map.put("s", g(nVar.a()));
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TtmlNode.ATTR_ID, nVar.f());
            map.put(TtmlNode.ATTR_ID, jSONObject.toString());
        } catch (Exception unused) {
        }
        map.put(TtmlNode.ATTR_ID, jSONObject.toString());
        return map;
    }

    private static String c() {
        try {
            String strB = b();
            return !TextUtils.isEmpty(strB) ? n4d.j(strB, n4d.m("dFzVcOTg3zkcESsXYE1/1e02fgkxiWlU", "mapkey@2023timeSave")) : "";
        } catch (Exception unused) {
            return "";
        }
    }

    private static int d() {
        return 18;
    }

    private static JSONObject e(com.mgmi.g.a aVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(CmcdConfiguration.KEY_CONTENT_ID, aVar.B());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    private static String f(com.mgmi.g.a aVar) {
        if (TextUtils.isEmpty(aVar.D())) {
            aVar.c("");
        }
        return aVar.D();
    }

    private static String g(com.mgmi.g.a aVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mid", aVar.f());
            jSONObject.put("pid", aVar.g());
            jSONObject.put("cnt", aVar.e());
            jSONObject.put("nid", aVar.F());
            jSONObject.put("npos", aVar.E());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    public static Map<String, String> a(Context context, n nVar) {
        return a(context, nVar, (com.mgmi.ads.api.a.d) null);
    }

    private static JSONObject d(com.mgmi.g.a aVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("vip", f.i() ? 1 : 0);
            jSONObject.put("isContinue", aVar.o());
            jSONObject.put("passport", aVar.p());
            jSONObject.put("uuid", f.h());
            jSONObject.put("acid", f.u());
            jSONObject.put(Gender.MALE, f.t());
            jSONObject.put("nick", f.s());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public static Map<String, String> a(Context context, n nVar, com.mgmi.ads.api.a.d dVar) {
        HashMap map = new HashMap();
        map.put(TtmlNode.TAG_P, a("ADS_ONLINE_VIDEO", context, nVar.a(), nVar.b(), nVar.c(), nVar.d(), nVar.e(), dVar));
        map.put("v", a(nVar.a()));
        map.put("s", a(nVar.a(), nVar.b()));
        String strA = a(nVar);
        if (strA != null) {
            map.put(CmcdData.OBJECT_TYPE_INIT_SEGMENT, strA);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TtmlNode.ATTR_ID, nVar.f());
            map.put(TtmlNode.ATTR_ID, jSONObject.toString());
        } catch (Exception unused) {
        }
        return map;
    }

    private static JSONObject c(com.mgmi.g.a aVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("vip", f.i() ? 1 : 0);
            jSONObject.put("isContinue", aVar.o());
            jSONObject.put("passport", aVar.p());
            jSONObject.put("uuid", f.h());
            jSONObject.put("acid", f.u());
            jSONObject.put(Gender.MALE, f.t());
            jSONObject.put("nick", f.s());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    private static JSONObject b(com.mgmi.ads.api.a.d dVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(dVar.k().k());
            if (dVar.k().d() != -1) {
                jSONObject.put("el_t", dVar.k().d());
            }
            if (dVar.j().equals("ADS_BANNER")) {
                jSONObject.put(TtmlNode.TAG_P, 4580);
            }
            if (dVar.j().equals("ADS_TYPE_PULL_REFRESH")) {
                jSONObject.put("ptype", "el");
            } else if (dVar.j().equals("ADS_VIDEO_RED_MAIN")) {
                jSONObject.put("ptype", "rprain");
            } else if (dVar.j().equals("ADS_INTENIVE")) {
                jSONObject.put("ptype", "reward");
            }
            jSONObject.put("aids", jSONArray);
            jSONObject.put("pu", "");
            jSONObject.put("vm", f.r());
            jSONObject.put("aid_info", dVar.k().c());
            if (dVar.k().y() > -1) {
                jSONObject.put("min_price", wrd.a("" + dVar.k().y()));
            }
            if (dVar.k().z() != -999) {
                jSONObject.put("width", dVar.k().z());
            }
            if (dVar.k().A() != -999) {
                jSONObject.put("height", dVar.k().A());
            }
            a(jSONObject, dVar.k().k());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public static Map<String, String> a(Context context, com.mgmi.ads.api.a.d dVar, String str) {
        HashMap map = new HashMap();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("_v", f.e());
            jSONObject.put("c", a(context, dVar.a(context)));
            jSONObject.put("permission", i2d.a(context));
            jSONObject.put("dev_param", u7d.a(context));
            jSONObject.put("oversea", com.mgmi.platform.b.b.a().c());
            jSONObject.put(TtmlNode.TAG_REGION, com.mgmi.platform.b.b.a().c());
            jSONObject.put("sdkversion", com.mgmi.platform.b.b.a().b());
            jSONObject.put("iplay", a(dVar));
            jSONObject.put(MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, 67670015L);
            jSONObject.put(DownloadFacadeEnum.USER_CH, f.m());
            jSONObject.put("u", c(dVar.k()));
            jSONObject.put("d", e(dVar.k()));
            jSONObject.put(CmcdData.OBJECT_TYPE_MANIFEST, b(dVar));
            jSONObject.put("rdc", dVar.k().v());
            jSONObject.put("rch", dVar.k().w());
            jSONObject.put("auid", f(dVar.k()));
            try {
                JSONObject jSONObject2 = new JSONObject();
                String str2 = "";
                jSONObject2.put("dx_ip", IpdxManager.a(context).a == null ? "" : IpdxManager.a(context).a.ip);
                jSONObject2.put("dx_geo", IpdxManager.a(context).a == null ? "" : IpdxManager.a(context).a.geocode);
                if (IpdxManager.a(context).a != null) {
                    str2 = IpdxManager.a(context).a.id;
                }
                jSONObject2.put("dx_id", str2);
                jSONObject2.put("dx_exp", IpdxManager.a(context).a == null ? 0 : IpdxManager.a(context).a.exptime);
                jSONObject.put("ipdx", jSONObject2);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            String strB = a.b();
            if (!TextUtils.isEmpty(strB)) {
                jSONObject.put("dex", strB);
            }
            jSONObject.put("pkgch", com.mgmi.platform.b.b.a().g());
            jSONObject.put("icf", a());
            String strQ = dVar.q();
            if (!TextUtils.isEmpty(strQ)) {
                jSONObject.put("castid", strQ);
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        JSONObject jSONObject3 = new JSONObject();
        try {
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put(TtmlNode.ATTR_ID, dVar.k().h());
            jSONObject4.put("hid", dVar.k().l());
            jSONObject4.put("channel_id", dVar.k().m());
            jSONObject3.put("v", jSONObject4);
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        map.put(TtmlNode.TAG_P, jSONObject.toString());
        map.put("v", jSONObject3.toString());
        map.put("s", g(dVar.k()));
        JSONObject jSONObject5 = new JSONObject();
        try {
            jSONObject5.put(TtmlNode.ATTR_ID, str);
            map.put(TtmlNode.ATTR_ID, jSONObject5.toString());
        } catch (Exception unused) {
        }
        map.put(TtmlNode.ATTR_ID, jSONObject5.toString());
        map.put("_op", "post");
        map.put("_type_object", "p,v");
        return map;
    }

    private static String b(com.mgmi.g.a aVar) {
        if (aVar.s() != null && !aVar.s().isEmpty()) {
            return aVar.s();
        }
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject.put(TtmlNode.ATTR_ID, aVar.h());
            jSONObject.put("channel_id", aVar.m());
            jSONObject.put("activity_id", aVar.a());
            jSONObject.put("camera_id", aVar.h());
            jSONObject.put("hid", aVar.l());
            jSONObject.put("ispay", aVar.q());
            jSONObject.put("ispreview", aVar.r());
            jSONObject2.put("v", jSONObject);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject2.toString();
    }

    private static String b() {
        WeakReference<Activity> weakReferenceB;
        if (com.mgmi.platform.a.a() != null && (weakReferenceB = com.mgmi.platform.a.a().b()) != null && weakReferenceB.get() != null && weakReferenceB.get().getComponentName() != null) {
            return weakReferenceB.get().getComponentName().getClassName();
        }
        return "";
    }

    public static String a(com.mgmi.g.a aVar) {
        if (aVar.s() != null && !aVar.s().isEmpty()) {
            return aVar.s();
        }
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject.put("channellive", aVar.t());
            jSONObject.put(TtmlNode.ATTR_ID, aVar.h());
            jSONObject.put("activity_id", aVar.a());
            jSONObject.put("camera_id", aVar.h());
            jSONObject.put("channel_id", aVar.m());
            jSONObject.put("hid", aVar.l());
            jSONObject.put("vip", f.i() ? 1 : 0);
            jSONObject.put("ispay", aVar.q());
            jSONObject.put("ispreview", aVar.r());
            jSONObject2.put("v", jSONObject);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject2.toString();
    }

    private static String a(n nVar) {
        if (nVar == null || nVar.g() == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("branch", Integer.parseInt(nVar.g()));
            jSONObject.put("reload", nVar.h());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    public static String a(String str, Context context, com.mgmi.g.a aVar, com.mgmi.platform.view.a aVar2, int i, int i2, int i3, com.mgmi.ads.api.a.d dVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("c", a(context));
            jSONObject.put("permission", i2d.a(context));
            jSONObject.put("dev_param", u7d.a(context));
            jSONObject.put(CmcdData.OBJECT_TYPE_MANIFEST, a(str, i, i2, i3, 1, aVar2));
            jSONObject.put("u", c(aVar));
            jSONObject.put("oversea", com.mgmi.platform.b.b.a().c());
            jSONObject.put(TtmlNode.TAG_REGION, com.mgmi.platform.b.b.a().c());
            jSONObject.put("iplay", a(dVar, aVar2));
            jSONObject.put(MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, 67670015L);
            if (com.mgmi.platform.b.a().h()) {
                jSONObject.put("float_ex", 5);
            } else {
                jSONObject.put("float_ex", 4);
            }
            jSONObject.put("sdkversion", com.mgmi.platform.b.b.a().b());
            jSONObject.put(DownloadFacadeEnum.USER_CH, f.m());
            jSONObject.put("from", aVar.u());
            jSONObject.put("source", aVar.n());
            jSONObject.put("fpn", f.a());
            jSONObject.put("rdc", aVar.v());
            jSONObject.put("rch", aVar.w());
            jSONObject.put("auid", f(aVar));
            a(jSONObject);
            jSONObject.put("icf", a());
            try {
                JSONObject jSONObject2 = new JSONObject();
                String str2 = "";
                jSONObject2.put("dx_ip", IpdxManager.a(context).a == null ? "" : IpdxManager.a(context).a.ip);
                jSONObject2.put("dx_geo", IpdxManager.a(context).a == null ? "" : IpdxManager.a(context).a.geocode);
                if (IpdxManager.a(context).a != null) {
                    str2 = IpdxManager.a(context).a.id;
                }
                jSONObject2.put("dx_id", str2);
                jSONObject2.put("dx_exp", IpdxManager.a(context).a == null ? 0 : IpdxManager.a(context).a.exptime);
                jSONObject.put("ipdx", jSONObject2);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            String strB = a.b();
            if (!TextUtils.isEmpty(strB)) {
                jSONObject.put("dex", strB);
            }
            jSONObject.put("pkgch", com.mgmi.platform.b.b.a().g());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }

    private static int a() {
        return !com.mgmi.platform.b.b.a().i() ? 1 : 0;
    }

    private static JSONObject a(String str, int i, int i2, int i3, int i4, com.mgmi.platform.view.a aVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TtmlNode.TAG_P, i);
            if (i2 != -1) {
                jSONObject.put("p_refer", i2);
            }
            if (aVar == null) {
                jSONObject.put("ptype", "front");
            } else if (aVar.s() == 10) {
                jSONObject.put("ptype", "ad_dot");
            } else if (aVar.s() == 1) {
                jSONObject.put("ptype", TypedValues.Custom.S_FLOAT);
                jSONObject.put(TtmlNode.ATTR_ID, aVar.v());
                a(jSONObject, aVar.v());
                if (aVar.w()) {
                    jSONObject.put("trigger_time", aVar.t());
                }
                if (com.mgmi.ads.api.e.d.a(aVar)) {
                    jSONObject.put("trigger_nt", aVar.m());
                }
            } else if (aVar.s() == 8) {
                jSONObject.put("ptype", "rprain");
                jSONObject.put(TtmlNode.ATTR_ID, aVar.v());
                if (aVar.w()) {
                    jSONObject.put("trigger_time", aVar.t());
                }
                a(jSONObject, aVar.v());
            } else if (aVar.s() == 9) {
                jSONObject.put("ptype", TypedValues.Custom.S_FLOAT);
                jSONObject.put(TtmlNode.ATTR_ID, aVar.v());
                jSONObject.put("trigger_nt", aVar.m());
                a(jSONObject, aVar.v());
            } else if (aVar.s() == 100) {
                jSONObject.put("ptype", "paster");
                jSONObject.put(TtmlNode.ATTR_ID, aVar.v());
                a(jSONObject, aVar.v());
            } else if (aVar.s() == 0) {
                jSONObject.put("ptype", "mid");
                jSONObject.put(TtmlNode.ATTR_ID, aVar.v());
                a(jSONObject, aVar.v());
            } else if (aVar.s() == 11) {
                jSONObject.put("ptype", "backend");
                jSONObject.put(TtmlNode.ATTR_ID, aVar.v());
                a(jSONObject, aVar.v());
            } else if (aVar.s() == 3) {
                jSONObject.put("ptype", "progress");
                jSONObject.put(TtmlNode.ATTR_ID, aVar.v());
                a(jSONObject, aVar.v());
            } else if (aVar.s() == 2) {
                jSONObject.put("ptype", "pause");
                jSONObject.put(TtmlNode.ATTR_ID, aVar.v());
                a(jSONObject, aVar.v());
            } else if (aVar.s() == 4) {
                jSONObject.put("ptype", "focus");
                jSONObject.put(TtmlNode.ATTR_ID, aVar.v());
                a(jSONObject, aVar.v());
            } else if (aVar.s() == 5) {
                jSONObject.put("ptype", "barrage");
                jSONObject.put(TtmlNode.ATTR_ID, aVar.v());
                jSONObject.put("trigger_time", aVar.t());
                a(jSONObject, aVar.v());
            } else if (aVar.s() == 6) {
                jSONObject.put("ptype", "ai_implant");
                jSONObject.put(TtmlNode.ATTR_ID, aVar.v());
                jSONObject.put("ai_plan", aVar.u);
                a(jSONObject, aVar.v());
            } else if (aVar.s() == 13) {
                jSONObject.put("ptype", "baike_float");
                jSONObject.put(TtmlNode.ATTR_ID, aVar.v());
                a(jSONObject, aVar.v());
                if (aVar.w()) {
                    jSONObject.put("trigger_time", aVar.t());
                }
            }
            jSONObject.put("allowad", i3);
            jSONObject.put("vip_report", i4);
            jSONObject.put("vm", f.r());
            String strC = c();
            if (!TextUtils.isEmpty(strC)) {
                jSONObject.put("ac_id", n4d.j(strC, n4d.m("dFzVcOTg3zkcESsXYE1/1e02fgkxiWlU", "mapkey@2023timeSave")));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    private static void a(JSONObject jSONObject, long j) throws JSONException {
        int size;
        JSONArray jSONArray = new JSONArray();
        if (j > 0) {
            List<i.a> listA = i.a().a(j + "");
            if (listA == null || (size = listA.size()) <= 0) {
                return;
            }
            for (int i = 0; i < size; i++) {
                int i2 = listA.get(i).a;
                int i3 = listA.get(i).b;
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("aid", j);
                jSONObject2.put("mid", i2);
                jSONObject2.put(TtmlNode.ATTR_ID, i3);
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("pair", jSONArray);
        }
    }

    private static JSONObject a(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            a(jSONObject, context);
            jSONObject.put("type", f.e(context));
            jSONObject.put("os", f.d());
            jSONObject.put("version", f.e());
            jSONObject.put("mn", mpd.e());
            jSONObject.put("rs", mpd.t(context));
            jSONObject.put(DownloadFacadeEnum.USER_MAC, "");
            jSONObject.put("lmac", f.c(context));
            jSONObject.put("muid", f.f(context));
            jSONObject.put("anid", "");
            jSONObject.put("lanid", f.g(context));
            jSONObject.put(CommonUrlParts.HUAWEI_OAID, f.m(context));
            jSONObject.put(DownloadFacadeEnum.USER_NET, fyd.b(context));
            jSONObject.put(DownloadFacadeEnum.USER_UA, f.j());
            jSONObject.put("lct", f.k(context));
            jSONObject.put(TrackingKey.TS, System.currentTimeMillis());
            jSONObject.put("openudid", f.k());
            jSONObject.put(DownloadFacadeEnum.USER_DID, mpd.x(context));
            jSONObject.put("sid", f.n());
            jSONObject.put("paid", f.q());
            jSONObject.put("ntime", System.currentTimeMillis());
            jSONObject.put("odin", n3d.a(context));
            jSONObject.put("lt", f.h(context));
            jSONObject.put("dpi", f.i(context));
            jSONObject.put("brand", mpd.b());
            jSONObject.put("pkgname", f.d(context));
            String strU = mpd.u();
            if (!TextUtils.isEmpty(strU)) {
                jSONObject.put("hms", strU);
            }
            String strS = mpd.s();
            if (!TextUtils.isEmpty(strS)) {
                jSONObject.put("ag", strS);
            }
            String strW = mpd.w();
            if (!TextUtils.isEmpty(strW)) {
                jSONObject.put("maker", strW);
            }
            a(context, jSONObject);
            String strJ = f.j(context);
            if (!TextUtils.isEmpty(strJ) && strJ.length() == 5) {
                jSONObject.put("operator", strJ.substring(3, 5));
                jSONObject.put("mcc", strJ.substring(0, 3));
            }
            if (!TextUtils.isEmpty(MGTVAdFactory.getInstance().getGaid())) {
                jSONObject.put("aaid", MGTVAdFactory.getInstance().getGaid());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    private static JSONObject a(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                jSONObject.put("bk_msg_switch", com.mgmi.platform.c.d() ? "1" : "0");
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return jSONObject;
    }

    private static JSONObject a(Context context, int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            a(jSONObject, context);
            jSONObject.put("type", f.e(context));
            jSONObject.put("os", f.d());
            jSONObject.put("version", f.e());
            jSONObject.put("mn", mpd.e());
            jSONObject.put("rs", mpd.t(context));
            jSONObject.put(DownloadFacadeEnum.USER_MAC, "");
            jSONObject.put("lmac", f.c(context));
            jSONObject.put("muid", f.f(context));
            jSONObject.put("anid", "");
            jSONObject.put("lanid", f.g(context));
            jSONObject.put(CommonUrlParts.HUAWEI_OAID, f.m(context));
            jSONObject.put(DownloadFacadeEnum.USER_NET, fyd.b(context));
            jSONObject.put(DownloadFacadeEnum.USER_UA, f.j());
            jSONObject.put("lct", f.k(context));
            jSONObject.put(TrackingKey.TS, System.currentTimeMillis());
            jSONObject.put("openudid", f.k());
            jSONObject.put(DownloadFacadeEnum.USER_DID, mpd.x(context));
            jSONObject.put("sid", f.n());
            jSONObject.put("paid", f.q());
            jSONObject.put("ntime", System.currentTimeMillis());
            jSONObject.put("odin", n3d.a(context));
            jSONObject.put("lt", i);
            jSONObject.put("dpi", f.i(context));
            jSONObject.put("brand", mpd.b());
            jSONObject.put("pkgname", f.d(context));
            String strU = mpd.u();
            if (!TextUtils.isEmpty(strU)) {
                jSONObject.put("hms", strU);
            }
            String strS = mpd.s();
            if (!TextUtils.isEmpty(strS)) {
                jSONObject.put("ag", strS);
            }
            String strW = mpd.w();
            if (!TextUtils.isEmpty(strW)) {
                jSONObject.put("maker", strW);
            }
            String strJ = f.j(context);
            if (!TextUtils.isEmpty(strJ) && strJ.length() == 5) {
                jSONObject.put("operator", strJ.substring(3, 5));
                jSONObject.put("mcc", strJ.substring(0, 3));
            }
            if (!TextUtils.isEmpty(MGTVAdFactory.getInstance().getGaid())) {
                jSONObject.put("aaid", MGTVAdFactory.getInstance().getGaid());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    private static JSONObject a(com.mgmi.g.a aVar, String str, int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TtmlNode.TAG_P, aVar.x());
            jSONObject.put("aid", aVar.k());
            jSONObject.put("eaid", aVar.j());
            jSONObject.put("pu", str);
            jSONObject.put("init", i);
            jSONObject.put("vm", f.r());
            int iC = aVar.C();
            if (iC > 0) {
                jSONObject.put("c2s_preload", iC);
            }
            if (aVar.y() > -1) {
                jSONObject.put("min_price", wrd.a("" + aVar.y()));
            }
            if (aVar.z() != -999) {
                jSONObject.put("width", aVar.z());
            }
            if (aVar.A() != -999) {
                jSONObject.put("height", aVar.A());
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    private static JSONObject a(int i, long j, String str, int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TtmlNode.TAG_P, i);
            jSONObject.put("aid", j);
            jSONObject.put("pu", str);
            jSONObject.put("init", i2);
            jSONObject.put("ptype", "loading");
            jSONObject.put("vm", f.r());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public static Map<String, String> a(Context context, com.mgmi.g.a aVar, String str, boolean z) {
        if (z) {
            return a(context, aVar, str, 1);
        }
        return a(context, aVar, str, 0);
    }

    public static Map<String, String> a(Context context, com.mgmi.g.a aVar, String str, int i) {
        HashMap map = new HashMap();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("_v", f.e());
            jSONObject.put("oversea", com.mgmi.platform.b.b.a().c());
            jSONObject.put(TtmlNode.TAG_REGION, com.mgmi.platform.b.b.a().c());
            jSONObject.put("sdkversion", com.mgmi.platform.b.b.a().b());
            jSONObject.put("iplay", d());
            jSONObject.put(MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, 67670015L);
            jSONObject.put(DownloadFacadeEnum.USER_CH, f.m());
            aVar.C();
            jSONObject.put(CmcdData.OBJECT_TYPE_MANIFEST, a(aVar, "", 0));
            jSONObject.put("u", d(new com.mgmi.g.a().a(aVar.k())));
            jSONObject.put("c", a(context));
            jSONObject.put("permission", i2d.a(context));
            jSONObject.put("dev_param", u7d.a(context));
            if (i == 1 || i == 2) {
                jSONObject.put("warm_boot", i);
            }
            jSONObject.put("rdc", aVar.v());
            jSONObject.put("rch", aVar.w());
            String strB = a.b();
            if (!TextUtils.isEmpty(strB)) {
                jSONObject.put("dex", strB);
            }
            jSONObject.put("pkgch", com.mgmi.platform.b.b.a().g());
            if (!mpd.z() && !mpd.B()) {
                jSONObject.put("debug", 0);
            } else {
                jSONObject.put("debug", 1);
            }
            jSONObject.put("icf", a());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        map.put(TtmlNode.TAG_P, jSONObject.toString());
        map.put("v", "");
        map.put("s", g(aVar));
        if (!TextUtils.isEmpty(str)) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(TtmlNode.ATTR_ID, str);
                map.put(TtmlNode.ATTR_ID, jSONObject2.toString());
            } catch (Exception unused) {
            }
            map.put(TtmlNode.ATTR_ID, jSONObject2.toString());
        }
        map.put("_op", "get");
        map.put("_type_object", TtmlNode.TAG_P);
        return map;
    }

    public static Map<String, String> a(Context context, com.mgmi.g.a aVar, String str) {
        HashMap map = new HashMap();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("_v", f.e());
            jSONObject.put("oversea", com.mgmi.platform.b.b.a().c());
            jSONObject.put(TtmlNode.TAG_REGION, com.mgmi.platform.b.b.a().c());
            jSONObject.put("sdkversion", com.mgmi.platform.b.b.a().b());
            jSONObject.put(MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, 67670015L);
            jSONObject.put(DownloadFacadeEnum.USER_CH, f.m());
            jSONObject.put(CmcdData.OBJECT_TYPE_MANIFEST, a(aVar.x(), aVar.k(), "", 0));
            jSONObject.put("u", d(new com.mgmi.g.a().a(aVar.k())));
            jSONObject.put("c", a(context));
            jSONObject.put("permission", i2d.a(context));
            jSONObject.put("dev_param", u7d.a(context));
            jSONObject.put("auid", f(aVar));
            jSONObject.put("rdc", aVar.v());
            jSONObject.put("rch", aVar.w());
            String strB = a.b();
            if (!TextUtils.isEmpty(strB)) {
                jSONObject.put("dex", strB);
            }
            jSONObject.put("pkgch", com.mgmi.platform.b.b.a().g());
            jSONObject.put("icf", a());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        map.put(TtmlNode.TAG_P, jSONObject.toString());
        map.put("v", "");
        map.put("s", g(aVar));
        if (!TextUtils.isEmpty(str)) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(TtmlNode.ATTR_ID, str);
                map.put(TtmlNode.ATTR_ID, jSONObject2.toString());
            } catch (Exception unused) {
            }
            map.put(TtmlNode.ATTR_ID, jSONObject2.toString());
        }
        map.put("_op", "get");
        map.put("_type_object", TtmlNode.TAG_P);
        return map;
    }

    public static StringBuilder a(StringBuilder sb, int i, int i2, String str, int i3, int i4, String str2, Context context) {
        String str3;
        String str4;
        String strB = g4d.b(str2);
        String[] strArrH = g4d.h(str);
        if (strArrH.length >= 2) {
            str4 = strArrH[0];
            str3 = strArrH[1];
        } else if (strArrH.length >= 1) {
            str4 = strArrH[0];
            str3 = "";
        } else {
            str3 = "";
            str4 = str3;
        }
        if (sb != null) {
            sb.append("?e=");
            sb.append(i);
            sb.append("&f=");
            sb.append(i2);
            sb.append("&h=");
            sb.append(g4d.b(str4));
            sb.append("&s=");
            sb.append(i3);
            sb.append("&l=");
            sb.append(g4d.b(str3));
            sb.append("&t=");
            sb.append(i4);
            sb.append("&m=");
            sb.append("");
            sb.append("&lm=");
            sb.append(g4d.b(f.c(context)));
            sb.append("&mf=");
            sb.append(g4d.b(mpd.b()));
            sb.append("&mod=");
            sb.append(g4d.b(mpd.e()));
            sb.append("&net=");
            sb.append(fyd.d(context));
            sb.append("&sv=");
            sb.append(g4d.b(f.d()));
            sb.append("&v=");
            sb.append(g4d.b(f.e()));
            sb.append("&msg=");
            sb.append(strB);
            sb.append("&uuid=");
            sb.append(f.h());
            sb.append("&osv=");
            sb.append(com.mgmi.platform.b.b.a().c());
            sb.append("&sdkver=");
            sb.append(g4d.b(com.mgmi.platform.b.b.a().b()));
            sb.append("&oaid=");
            sb.append(f.m(context));
            sb.append("&did=");
            sb.append(f.l(context));
            sb.append("&aver=");
            sb.append(g4d.b(f.e()));
            sb.append("&sver=");
            sb.append(g4d.b("aphone-" + f.d()));
            sb.append("&ch=");
            sb.append(g4d.b(f.m()));
            sb.append("&time=");
            sb.append(znd.a(znd.a));
            sb.append("&c=");
            sb.append(i);
            sb.append("&d=");
            sb.append(strB);
            sb.append("&paid=");
            sb.append(f.q());
            sb.append("&ntime=");
            sb.append(System.currentTimeMillis());
            sb.append("&pt=");
            sb.append(0);
        }
        return sb;
    }

    public static StringBuilder a(StringBuilder sb, int i, int i2, String str, String str2, int i3, int i4, String str3, Context context) {
        String strB = g4d.b(str3);
        if (sb != null) {
            sb.append("?e=");
            sb.append(i);
            sb.append("&f=");
            sb.append(i2);
            sb.append("&h=");
            sb.append(g4d.b(str));
            sb.append("&s=");
            sb.append(i3);
            sb.append("&l=");
            sb.append(g4d.b(str2));
            sb.append("&t=");
            sb.append(i4);
            sb.append("&m=");
            sb.append("");
            sb.append("&lm=");
            sb.append(g4d.b(f.c(context)));
            sb.append("&mf=");
            sb.append(g4d.b(mpd.b()));
            sb.append("&mod=");
            sb.append(g4d.b(mpd.e()));
            sb.append("&net=");
            sb.append(fyd.d(context));
            sb.append("&sv=");
            sb.append(g4d.b(f.d()));
            sb.append("&v=");
            sb.append(g4d.b(f.e()));
            sb.append("&msg=");
            sb.append(strB);
            sb.append("&uuid=");
            sb.append(f.h());
            sb.append("&osv=");
            sb.append(com.mgmi.platform.b.b.a().c());
            sb.append("&sdkver=");
            sb.append(g4d.b(com.mgmi.platform.b.b.a().b()));
            sb.append("&oaid=");
            sb.append(f.m(context));
            sb.append("&did=");
            sb.append(f.l(context));
            sb.append("&aver=");
            sb.append(g4d.b(f.e()));
            sb.append("&sver=");
            sb.append(g4d.b("aphone-" + f.d()));
            sb.append("&ch=");
            sb.append(g4d.b(f.m()));
            sb.append("&time=");
            sb.append(znd.a(znd.a));
            sb.append("&c=");
            sb.append(i);
            sb.append("&d=");
            sb.append(strB);
            sb.append("&paid=");
            sb.append(f.q());
            sb.append("&ntime=");
            sb.append(System.currentTimeMillis());
            sb.append("&pt=");
            sb.append(0);
        }
        return sb;
    }

    private static void a(JSONObject jSONObject, Context context) {
        if (jSONObject != null) {
            try {
                jSONObject.put("carrier_name", mpd.G(context) + "");
                jSONObject.put("local_tz_name", TimeZone.getDefault().getID() + "");
                jSONObject.put("startup_time", ((int) ((System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000)) + "");
                jSONObject.put("cpu_num", mpd.m());
                jSONObject.put("disk_total", mpd.o());
                jSONObject.put("mem_total", mpd.r());
                jSONObject.put("pit", com.mgmi.platform.b.b.a().d() + "");
                int i = 1;
                if (com.mgmi.platform.b.b.a().e() != 1) {
                    i = 0;
                }
                jSONObject.put("pits", i);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static int a(com.mgmi.ads.api.a.d dVar) {
        if (dVar != null) {
            return ("ADS_TYPE_SLIDEBANNER".equals(dVar.j()) || "ADS_BANNER".equals(dVar.j()) || "ADS_TYPE_PAUSED".equals(dVar.j())) ? 18 : 0;
        }
        return 0;
    }

    private static int a(com.mgmi.ads.api.a.d dVar, com.mgmi.platform.view.a aVar) {
        return ((dVar != null && ("ADS_TYPE_SLIDEBANNER".equals(dVar.j()) || "ADS_BANNER".equals(dVar.j()) || "ADS_TYPE_PAUSED".equals(dVar.j()) || "ADS_VIDEO_WIDGET_CORNNER".equals(dVar.j()))) || aVar == null || aVar.s() == 100 || aVar.s() == 2 || aVar.s() == 1 || aVar.s() == 9) ? 18 : 0;
    }

    private static String a(com.mgmi.g.a aVar, com.mgmi.platform.view.a aVar2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mid", aVar.f());
            if (aVar2 == null || TextUtils.isEmpty(aVar2.c())) {
                jSONObject.put("pid", aVar.g());
            } else {
                jSONObject.put("pid", aVar2.c());
            }
            jSONObject.put("cnt", aVar.e());
            jSONObject.put("nid", aVar.F());
            jSONObject.put("npos", aVar.E());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }
}
