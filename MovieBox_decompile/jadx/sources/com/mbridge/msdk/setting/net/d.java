package com.mbridge.msdk.setting.net;

import android.content.Context;
import com.cloud.tmc.integration.net.UrlKt;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.net.wrapper.e;
import com.mbridge.msdk.foundation.tools.f;
import com.mbridge.msdk.foundation.tools.o0;

public class d {
    public static void a(Context context, e eVar) {
        if (eVar == null) {
            return;
        }
        try {
            eVar.a(UrlKt.KEY_MINI_GAID, f.d());
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("SettingRequestDiff", e10.getMessage());
            }
        }
    }
}
