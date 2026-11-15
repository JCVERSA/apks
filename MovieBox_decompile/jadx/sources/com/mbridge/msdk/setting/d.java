package com.mbridge.msdk.setting;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import org.json.JSONObject;

public class d {

    private String f36477f;

    private String f36478g;

    private int f36479h;

    private int f36472a = 1;

    private int f36473b = 1;

    private int f36474c = 0;

    private int f36475d = 30;

    private int f36476e = 0;

    private int f36480i = 0;

    public static d a(String str) {
        Exception e10;
        d dVar;
        try {
            JSONObject jSONObject = new JSONObject(str);
            dVar = new d();
            try {
                dVar.b(jSONObject.optString("h_d", com.mbridge.msdk.foundation.same.net.utils.d.h().f34640f));
                dVar.c(jSONObject.optString("t_d", com.mbridge.msdk.foundation.same.net.utils.d.h().f34646k));
                dVar.c(jSONObject.optInt("t_p", com.mbridge.msdk.foundation.same.net.utils.d.h().f34650o));
                dVar.d(jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 1));
                dVar.b(jSONObject.optInt("d_t", 30));
                dVar.a(jSONObject.optInt("d_a", 0));
            } catch (Exception e11) {
                e10 = e11;
                e10.printStackTrace();
            }
        } catch (Exception e12) {
            e10 = e12;
            dVar = null;
        }
        return dVar;
    }

    public int b() {
        return this.f36475d;
    }

    public String c() {
        return this.f36477f;
    }

    public String d() {
        return this.f36478g;
    }

    public int e() {
        return this.f36479h;
    }

    public void b(int i10) {
        this.f36475d = i10;
    }

    public void c(String str) {
        this.f36478g = str;
    }

    public void d(int i10) {
        this.f36480i = i10;
    }

    public void b(String str) {
        this.f36477f = str;
    }

    public void c(int i10) {
        this.f36479h = i10;
    }

    public int a() {
        return this.f36474c;
    }

    public void a(int i10) {
        this.f36474c = i10;
    }
}
