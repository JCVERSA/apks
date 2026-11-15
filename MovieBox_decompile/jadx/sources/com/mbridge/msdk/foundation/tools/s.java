package com.mbridge.msdk.foundation.tools;

import android.content.Context;
import com.mbridge.msdk.MBridgeConstans;
import org.json.JSONException;
import org.json.JSONObject;

public class s extends d {

    public int f34975w;

    public int f34976x;

    public s(Context context) {
        super(context);
        this.f34976x = k0.v();
        this.f34975w = k0.h();
    }

    @Override
    public JSONObject a() {
        JSONObject jSONObjectA = super.a();
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("dmt", this.f34976x + "");
                jSONObject.put("dmf", this.f34975w);
            }
        } catch (JSONException e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("DomainDeviceInfo", e10.getMessage());
            }
        }
        return jSONObjectA;
    }
}
