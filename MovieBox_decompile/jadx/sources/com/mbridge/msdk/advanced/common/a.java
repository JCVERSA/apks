package com.mbridge.msdk.advanced.common;

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

    public String f33213e;

    public String f33214f;

    public String f33215g;

    public String f33216h;

    public String f33217i;

    public String f33218j;

    public String f33219k;

    public String f33220l;

    public String f33221m;

    public String f33222n;

    public String f33223o;

    public int f33224p;

    public int f33225q;

    public String f33211c = "android";

    public String f33209a = k0.t();

    public String f33210b = k0.q();

    public String f33212d = f.d();

    public a(Context context) {
        int iS = k0.s(context);
        this.f33213e = String.valueOf(iS);
        this.f33214f = k0.a(context, iS);
        this.f33215g = k0.l(context);
        this.f33216h = com.mbridge.msdk.foundation.controller.c.m().c();
        this.f33217i = com.mbridge.msdk.foundation.controller.c.m().b();
        this.f33218j = String.valueOf(t0.g(context));
        this.f33219k = String.valueOf(t0.f(context));
        this.f33221m = String.valueOf(t0.d(context));
        if (context.getResources().getConfiguration().orientation == 2) {
            this.f33220l = TmcStartParams.KEY_LANDSCAPE;
        } else {
            this.f33220l = "portrait";
        }
        this.f33222n = k0.u();
        this.f33223o = f.e();
        this.f33224p = f.a();
        this.f33225q = com.mbridge.msdk.foundation.controller.authoritycontroller.b.j() ? 1 : 0;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                jSONObject.put("device", this.f33209a);
                jSONObject.put("system_version", this.f33210b);
                jSONObject.put("network_type", this.f33213e);
                jSONObject.put("network_type_str", this.f33214f);
                jSONObject.put("device_ua", this.f33215g);
                jSONObject.put("has_wx", k0.D(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("integrated_wx", k0.D());
                jSONObject.put("opensdk_ver", k0.B() + "");
                jSONObject.put("wx_api_ver", k0.e(com.mbridge.msdk.foundation.controller.c.m().i()) + "");
                jSONObject.put("mnc", k0.r(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("mcc", k0.q(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("adid_limit", this.f33224p);
                jSONObject.put("adid_limit_dev", this.f33225q);
            }
            jSONObject.put("plantform", this.f33211c);
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                jSONObject.put("google_ad_id", this.f33212d);
                jSONObject.put("az_aid_info", this.f33223o);
            }
            jSONObject.put("appkey", this.f33216h);
            jSONObject.put("appId", this.f33217i);
            jSONObject.put("screen_width", this.f33218j);
            jSONObject.put("screen_height", this.f33219k);
            jSONObject.put("orientation", this.f33220l);
            jSONObject.put("scale", this.f33221m);
            if (k0.y() != 0) {
                jSONObject.put("tun", k0.y());
            }
            jSONObject.put("f", this.f33222n);
            if (DomainNameUtils.getInstance().isExcludeCNDomain()) {
                jSONObject.put("re_domain", "1");
            }
        } catch (JSONException e10) {
            o0.b("BaseDeviceInfo", e10.getMessage());
        }
        return jSONObject;
    }
}
