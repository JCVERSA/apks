package com.mbridge.msdk.setting;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import org.json.JSONObject;

public class a {

    private String f36377e;

    private String f36378f;

    private int f36379g;

    private int f36373a = 1;

    private int f36374b = 0;

    private int f36375c = 0;

    private int f36376d = 0;

    private int f36380h = 0;

    public static a a(String str) {
        Exception e10;
        a aVar;
        try {
            JSONObject jSONObject = new JSONObject(str);
            aVar = new a();
            try {
                aVar.b(jSONObject.optString("http_domain", com.mbridge.msdk.foundation.same.net.utils.d.h().f34643h));
                aVar.c(jSONObject.optString("tcp_domain", com.mbridge.msdk.foundation.same.net.utils.d.h().f34647l));
                aVar.e(jSONObject.optInt("tcp_port", com.mbridge.msdk.foundation.same.net.utils.d.h().f34651p));
                aVar.f(jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 0));
                aVar.a(jSONObject.optInt("batch_size", 1));
                aVar.c(jSONObject.optInt("duration", 0));
                aVar.b(jSONObject.optInt("disable", 0));
                aVar.d(jSONObject.optInt("e_t_l", 0));
            } catch (Exception e11) {
                e10 = e11;
                e10.printStackTrace();
            }
        } catch (Exception e12) {
            e10 = e12;
            aVar = null;
        }
        return aVar;
    }

    public int b() {
        return this.f36374b;
    }

    public int c() {
        return this.f36375c;
    }

    public int d() {
        return this.f36376d;
    }

    public String e() {
        return this.f36377e;
    }

    public String f() {
        return this.f36378f;
    }

    public int g() {
        return this.f36379g;
    }

    public int h() {
        return this.f36380h;
    }

    public void b(int i10) {
        this.f36374b = i10;
    }

    public void c(int i10) {
        this.f36375c = i10;
    }

    public void d(int i10) {
        this.f36376d = i10;
    }

    public void e(int i10) {
        this.f36379g = i10;
    }

    public void f(int i10) {
        this.f36380h = i10;
    }

    public void b(String str) {
        this.f36377e = str;
    }

    public void c(String str) {
        this.f36378f = str;
    }

    public int a() {
        return this.f36373a;
    }

    public void a(int i10) {
        if (i10 < 1) {
            i10 = 1;
        }
        this.f36373a = i10;
    }
}
