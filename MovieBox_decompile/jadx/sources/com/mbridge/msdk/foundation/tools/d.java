package com.mbridge.msdk.foundation.tools;

import android.content.Context;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class d {

    public int f34867a;

    public int f34868b;

    public String f34869c;

    public String f34870d;

    public String f34871e;

    public String f34872f;

    public String f34873g;

    public String f34874h;

    public String f34876j;

    public String f34877k;

    public int f34879m;

    public String f34880n;

    public String f34881o;

    public String f34882p;

    public String f34884r;

    public String f34885s;

    public String f34886t;

    public String f34888v;

    public String f34883q = "android";

    public String f34875i = k0.t();

    public String f34887u = k0.q();

    public String f34878l = f.d();

    public d(Context context) {
        int iS = k0.s(context);
        this.f34880n = String.valueOf(iS);
        this.f34881o = k0.a(context, iS);
        this.f34876j = k0.l(context);
        this.f34871e = com.mbridge.msdk.foundation.controller.c.m().c();
        this.f34870d = com.mbridge.msdk.foundation.controller.c.m().b();
        this.f34886t = String.valueOf(t0.g(context));
        this.f34885s = String.valueOf(t0.f(context));
        this.f34884r = String.valueOf(t0.d(context));
        this.f34888v = com.mbridge.msdk.foundation.controller.c.m().j().toString();
        this.f34873g = k0.s();
        this.f34879m = t0.a();
        if (context.getResources().getConfiguration().orientation == 2) {
            this.f34882p = TmcStartParams.KEY_LANDSCAPE;
        } else {
            this.f34882p = "portrait";
        }
        this.f34872f = com.mbridge.msdk.foundation.same.a.V;
        this.f34874h = com.mbridge.msdk.foundation.same.a.f34503g;
        this.f34877k = k0.u();
        this.f34869c = f.e();
        this.f34867a = f.a();
        this.f34868b = com.mbridge.msdk.foundation.controller.authoritycontroller.b.j() ? 1 : 0;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                jSONObject.put("device", this.f34875i);
                jSONObject.put("system_version", this.f34887u);
                jSONObject.put("network_type", this.f34880n);
                jSONObject.put("network_type_str", this.f34881o);
                jSONObject.put("device_ua", this.f34876j);
                jSONObject.put("has_wx", k0.D(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("integrated_wx", k0.D());
                jSONObject.put("opensdk_ver", k0.B() + "");
                jSONObject.put("wx_api_ver", k0.e(com.mbridge.msdk.foundation.controller.c.m().i()) + "");
                jSONObject.put("brand", this.f34873g);
                jSONObject.put("mnc", k0.r(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("mcc", k0.q(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("adid_limit", this.f34867a);
                jSONObject.put("adid_limit_dev", this.f34868b);
            }
            jSONObject.put("plantform", this.f34883q);
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                jSONObject.put("google_ad_id", this.f34878l);
                jSONObject.put("az_aid_info", this.f34869c);
            }
            jSONObject.put("appkey", this.f34871e);
            jSONObject.put("appId", this.f34870d);
            jSONObject.put("screen_width", this.f34886t);
            jSONObject.put("screen_height", this.f34885s);
            jSONObject.put("orientation", this.f34882p);
            jSONObject.put("scale", this.f34884r);
            jSONObject.put(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, this.f34872f);
            jSONObject.put("c", this.f34874h);
            jSONObject.put("web_env", this.f34888v);
            jSONObject.put("f", this.f34877k);
            jSONObject.put("misk_spt", this.f34879m);
            if (k0.y() != 0) {
                jSONObject.put("tun", k0.y());
            }
            jSONObject.put(com.mbridge.msdk.foundation.same.net.wrapper.e.f34667f, com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c() + "");
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("adid_limit", this.f34867a);
                jSONObject2.put("adid_limit_dev", this.f34868b);
                jSONObject.put("dvi", i0.b(jSONObject2.toString()));
            }
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.b.i()) {
                jSONObject.put("dev_source", "2");
            }
            if (DomainNameUtils.getInstance().isExcludeCNDomain()) {
                jSONObject.put("re_domain", "1");
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }
}
