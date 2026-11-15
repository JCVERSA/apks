package com.iab.omid.library.vungle.adsession;

import java.net.URL;
import org.json.JSONObject;

public final class g {

    private final String f32954a;

    private final URL f32955b;

    private final String f32956c;

    private g(String str, URL url, String str2) {
        this.f32954a = str;
        this.f32955b = url;
        this.f32956c = str2;
    }

    public static g a(String str, URL url, String str2) {
        xe.g.f(str, "VendorKey is null or empty");
        xe.g.d(url, "ResourceURL is null");
        xe.g.f(str2, "VerificationParameters is null or empty");
        return new g(str, url, str2);
    }

    public URL b() {
        return this.f32955b;
    }

    public String c() {
        return this.f32954a;
    }

    public String d() {
        return this.f32956c;
    }

    public JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        xe.c.i(jSONObject, "vendorKey", this.f32954a);
        xe.c.i(jSONObject, "resourceUrl", this.f32955b.toString());
        xe.c.i(jSONObject, "verificationParameters", this.f32956c);
        return jSONObject;
    }
}
