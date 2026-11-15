package com.mbridge.msdk.foundation.same.net.wrapper;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import org.json.JSONObject;

public class g {

    private static String f34675a = "";

    private static String f34676b = "";

    public static void a(e eVar) {
    }

    public static void b(e eVar) {
    }

    public static void c(e eVar) {
    }

    public static void a(e eVar, Context context) {
    }

    public static void a(e eVar, Context context, boolean z10, com.mbridge.msdk.setting.g gVar) {
        if (eVar == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                jSONObject.put("dmt", k0.v() + "");
                jSONObject.put("dmf", k0.h());
                jSONObject.put("adid_limit", com.mbridge.msdk.foundation.tools.f.a() + "");
                jSONObject.put("adid_limit_dev", com.mbridge.msdk.foundation.controller.authoritycontroller.b.j() ? "1" : "0");
            }
            if (gVar.s0() == 1 && !TextUtils.isEmpty(com.mbridge.msdk.foundation.tools.f.e()) && com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                jSONObject.put("az_aid_info", com.mbridge.msdk.foundation.tools.f.e());
            }
            if (TextUtils.isEmpty(jSONObject.toString())) {
                return;
            }
            if (!jSONObject.equals(f34676b)) {
                f34675a = i0.b(jSONObject.toString());
            }
            if (TextUtils.isEmpty(f34675a)) {
                return;
            }
            eVar.a("dvi", f34675a);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonRequestParamsForAddDiff", e10.getMessage());
            }
        }
    }
}
