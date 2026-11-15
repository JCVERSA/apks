package com.mbridge.msdk.foundation.tools;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.same.broadcast.NetWorkChangeReceiver;
import org.json.JSONObject;

public class e0 {

    private JSONObject f34889a;

    private com.mbridge.msdk.setting.j f34890b;

    private long f34891c;

    private final BroadcastReceiver f34892d;

    IntentFilter f34893e;

    private static final class b {

        static final e0 f34894a = new e0();
    }

    public static e0 a() {
        return b.f34894a;
    }

    public String b() {
        try {
            if (this.f34889a == null) {
                this.f34889a = new JSONObject();
            }
            if (this.f34889a.length() < 2) {
                try {
                    this.f34889a.put("KEY_INFO", (String) c.a(com.mbridge.msdk.foundation.controller.c.m().d(), "KEY_INFO", ""));
                } catch (Exception e10) {
                    o0.b("NetAddressManager", e10.getMessage());
                }
                try {
                    this.f34889a.put("KEY_TIME", ((Long) c.a(com.mbridge.msdk.foundation.controller.c.m().d(), "KEY_TIME", 0L)).longValue());
                } catch (Exception e11) {
                    o0.b("NetAddressManager", e11.getMessage());
                }
            }
            String strOptString = this.f34889a.optString("KEY_INFO");
            if (TextUtils.isEmpty(strOptString)) {
                return "";
            }
            com.mbridge.msdk.setting.g gVarB = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
            return System.currentTimeMillis() - this.f34889a.optLong("KEY_TIME") > (gVarB != null ? gVarB.R() : 3600L) * 1000 ? "" : strOptString;
        } catch (Exception e12) {
            o0.b("NetAddressManager", e12.getMessage());
            return "";
        }
    }

    public void c() {
        Context contextD;
        try {
            if (com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b()).S() != 1 || (contextD = com.mbridge.msdk.foundation.controller.c.m().d()) == null) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            this.f34893e = intentFilter;
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            contextD.registerReceiver(this.f34892d, this.f34893e);
        } catch (Exception e10) {
            o0.b("NetAddressManager", e10.getMessage());
        }
    }

    public void d() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f34891c > 3000) {
            if (this.f34890b == null) {
                this.f34890b = new com.mbridge.msdk.setting.j();
            }
            this.f34890b.c(com.mbridge.msdk.foundation.controller.c.m().d(), com.mbridge.msdk.foundation.controller.c.m().b(), com.mbridge.msdk.foundation.controller.c.m().c());
            this.f34891c = jCurrentTimeMillis;
        }
    }

    public void e() {
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        if (contextD != null) {
            try {
                contextD.unregisterReceiver(this.f34892d);
            } catch (Exception e10) {
                o0.b("NetAddressManager", e10.getMessage());
            }
        }
    }

    private e0() {
        this.f34889a = new JSONObject();
        this.f34892d = new NetWorkChangeReceiver();
        IntentFilter intentFilter = new IntentFilter();
        this.f34893e = intentFilter;
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    }

    public void a(String str) {
        if (this.f34889a == null) {
            this.f34889a = new JSONObject();
        }
        try {
            if (!this.f34889a.optString("KEY_INFO", "").equals(str)) {
                this.f34889a.put("KEY_INFO", str);
                c.b(com.mbridge.msdk.foundation.controller.c.m().d(), "KEY_INFO", str);
            }
        } catch (Exception e10) {
            o0.b("NetAddressManager", e10.getMessage());
        }
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f34889a.put("KEY_TIME", jCurrentTimeMillis);
            c.b(com.mbridge.msdk.foundation.controller.c.m().d(), "KEY_TIME", Long.valueOf(jCurrentTimeMillis));
        } catch (Exception e11) {
            o0.b("NetAddressManager", e11.getMessage());
        }
    }
}
