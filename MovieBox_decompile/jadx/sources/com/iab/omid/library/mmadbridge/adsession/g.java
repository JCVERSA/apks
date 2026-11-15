package com.iab.omid.library.mmadbridge.adsession;

import java.net.URL;
import org.json.JSONObject;

public final class g {

    private final String f32834a;

    private final URL f32835b;

    private final String f32836c;

    private g(String str, URL url, String str2) {
        this.f32834a = str;
        this.f32835b = url;
        this.f32836c = str2;
    }

    public static g a(String str, URL url, String str2) {
        re.g.f(str, "VendorKey is null or empty");
        re.g.d(url, "ResourceURL is null");
        re.g.f(str2, "VerificationParameters is null or empty");
        return new g(str, url, str2);
    }

    public static g b(URL url) {
        re.g.d(url, "ResourceURL is null");
        return new g(null, url, null);
    }

    public URL c() {
        return this.f32835b;
    }

    public String d() {
        return this.f32834a;
    }

    public String e() {
        return this.f32836c;
    }

    public JSONObject f() {
        JSONObject jSONObject = new JSONObject();
        re.c.i(jSONObject, "vendorKey", this.f32834a);
        re.c.i(jSONObject, "resourceUrl", this.f32835b.toString());
        re.c.i(jSONObject, "verificationParameters", this.f32836c);
        return jSONObject;
    }
}
