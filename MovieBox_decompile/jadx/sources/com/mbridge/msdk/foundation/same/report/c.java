package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import org.json.JSONObject;

public class c {

    private static final String f34689a = "c";

    class a implements com.mbridge.msdk.tracker.h {
        a() {
        }

        @Override
        public JSONObject a(com.mbridge.msdk.tracker.e eVar) {
            if (eVar == null) {
                return null;
            }
            JSONObject jSONObjectD = eVar.d();
            if (jSONObjectD == null) {
                jSONObjectD = new JSONObject();
            }
            try {
                jSONObjectD.put("key", eVar.b());
                Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                int iS = k0.s(contextD);
                if (!jSONObjectD.has("network_type")) {
                    jSONObjectD.put("network_type", iS);
                    jSONObjectD.put("network_str", k0.a(contextD, iS));
                }
                if (!jSONObjectD.has("st")) {
                    jSONObjectD.put("st", System.currentTimeMillis());
                }
                String strOptString = jSONObjectD.optString(MBridgeConstans.PROPERTIES_UNIT_ID, "");
                if (!TextUtils.isEmpty(strOptString)) {
                    String str = com.mbridge.msdk.foundation.controller.a.f34162r.get(strOptString);
                    jSONObjectD.put("u_stid", str != null ? str : "");
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V) && !jSONObjectD.has(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B)) {
                    jSONObjectD.put(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f34503g) && !jSONObjectD.has("c")) {
                    jSONObjectD.put("c", com.mbridge.msdk.foundation.same.a.f34503g);
                }
            } catch (Exception e10) {
                o0.b(c.f34689a, e10.getMessage());
            }
            return jSONObjectD;
        }
    }

    public static JSONObject b() {
        return com.mbridge.msdk.foundation.same.report.a.a();
    }

    public static com.mbridge.msdk.tracker.f c() {
        return new com.mbridge.msdk.tracker.n();
    }

    public static com.mbridge.msdk.tracker.h d() {
        return new a();
    }

    public static boolean a(String str) {
        com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (gVarD == null) {
            return true;
        }
        return b.a(gVarD, str);
    }

    public static void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            jSONObject.remove("model");
            jSONObject.remove("brand");
            jSONObject.remove("screen_size");
            jSONObject.remove("sub_ip");
            jSONObject.remove("network_type");
            jSONObject.remove("useragent");
            jSONObject.remove("ua");
            jSONObject.remove(TmcConstants.KEY_LANGUAGE);
            jSONObject.remove("network_str");
            jSONObject.remove("mnc");
            jSONObject.remove("mcc");
            jSONObject.remove("os_version");
            jSONObject.remove("gp_version");
            jSONObject.remove("country_code");
        }
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER)) {
            jSONObject.remove(com.mbridge.msdk.foundation.same.net.wrapper.e.f34665d);
            jSONObject.remove(com.mbridge.msdk.foundation.same.net.wrapper.e.f34666e);
            jSONObject.remove("power_rate");
            jSONObject.remove("charging");
            jSONObject.remove("timezone");
        }
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            return;
        }
        jSONObject.remove(UrlKt.KEY_MINI_GAID);
        jSONObject.remove("gaid2");
        jSONObject.remove("oaid");
        jSONObject.remove("az_aid_info");
    }
}
