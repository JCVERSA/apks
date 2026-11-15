package com.iab.omid.library.hisavana.adsession;

import java.net.URL;
import org.json.JSONObject;

public final class g {

    private final String f32720a;

    private final URL f32721b;

    private final String f32722c;

    private g(String str, URL url, String str2) {
        this.f32720a = str;
        this.f32721b = url;
        this.f32722c = str2;
    }

    public static g a(String str, URL url, String str2) {
        le.g.f(str, "VendorKey is null or empty");
        le.g.d(url, "ResourceURL is null");
        le.g.f(str2, "VerificationParameters is null or empty");
        return new g(str, url, str2);
    }

    public static g b(URL url) {
        le.g.d(url, "ResourceURL is null");
        return new g(null, url, null);
    }

    public URL c() {
        return this.f32721b;
    }

    public String d() {
        return this.f32720a;
    }

    public String e() {
        return this.f32722c;
    }

    public JSONObject f() {
        JSONObject jSONObject = new JSONObject();
        le.c.i(jSONObject, "vendorKey", this.f32720a);
        le.c.i(jSONObject, "resourceUrl", this.f32721b.toString());
        le.c.i(jSONObject, "verificationParameters", this.f32722c);
        return jSONObject;
    }
}
