package com.mbridge.msdk.splash.common;

import android.content.Context;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.tools.f;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import org.json.JSONException;
import org.json.JSONObject;

public class a {

    public String f36538e;

    public String f36539f;

    public String f36540g;

    public String f36541h;

    public String f36542i;

    public String f36543j;

    public String f36544k;

    public String f36545l;

    public String f36546m;

    public String f36547n;

    public String f36548o;

    public int f36549p;

    public int f36550q;

    public String f36536c = "android";

    public String f36534a = k0.t();

    public String f36535b = k0.q();

    public String f36537d = f.d();

    public a(Context context) {
        int iS = k0.s(context);
        this.f36538e = String.valueOf(iS);
        this.f36539f = k0.a(context, iS);
        this.f36540g = k0.l(context);
        this.f36541h = com.mbridge.msdk.foundation.controller.c.m().c();
        this.f36542i = com.mbridge.msdk.foundation.controller.c.m().b();
        this.f36543j = String.valueOf(t0.g(context));
        this.f36544k = String.valueOf(t0.f(context));
        this.f36546m = String.valueOf(t0.d(context));
        if (context.getResources().getConfiguration().orientation == 2) {
            this.f36545l = TmcStartParams.KEY_LANDSCAPE;
        } else {
            this.f36545l = "portrait";
        }
        this.f36547n = k0.u();
        this.f36548o = f.e();
        this.f36549p = f.a();
        this.f36550q = com.mbridge.msdk.foundation.controller.authoritycontroller.b.j() ? 1 : 0;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                jSONObject.put("device", this.f36534a);
                jSONObject.put("system_version", this.f36535b);
                jSONObject.put("network_type", this.f36538e);
                jSONObject.put("network_type_str", this.f36539f);
                jSONObject.put("device_ua", this.f36540g);
                jSONObject.put("has_wx", k0.D(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("integrated_wx", k0.D());
                jSONObject.put("mnc", k0.r(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("mcc", k0.q(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("adid_limit", this.f36549p);
                jSONObject.put("adid_limit_dev", this.f36550q);
            }
            jSONObject.put("plantform", this.f36536c);
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                jSONObject.put("google_ad_id", this.f36537d);
                jSONObject.put("az_aid_info", this.f36548o);
            }
            jSONObject.put("appkey", this.f36541h);
            jSONObject.put("appId", this.f36542i);
            jSONObject.put("screen_width", this.f36543j);
            jSONObject.put("screen_height", this.f36544k);
            jSONObject.put("orientation", this.f36545l);
            jSONObject.put("scale", this.f36546m);
            if (k0.y() != 0) {
                jSONObject.put("tun", k0.y());
            }
            jSONObject.put("f", this.f36547n);
            if (DomainNameUtils.getInstance().isExcludeCNDomain()) {
                jSONObject.put("re_domain", "1");
            }
        } catch (JSONException e10) {
            o0.b("BaseDeviceInfo", e10.getMessage());
        }
        return jSONObject;
    }
}
