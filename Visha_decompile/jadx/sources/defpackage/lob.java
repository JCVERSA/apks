package defpackage;

import java.net.URL;
import org.json.JSONObject;

public final class lob {
    public final String a;
    public final URL b;
    public final String c;

    public lob(String str, URL url, String str2) {
        this.a = str;
        this.b = url;
        this.c = str2;
    }

    public static lob a(String str, URL url, String str2) {
        agd.f(str, "VendorKey is null or empty");
        agd.d(url, "ResourceURL is null");
        agd.f(str2, "VerificationParameters is null or empty");
        return new lob(str, url, str2);
    }

    public static lob b(URL url) {
        agd.d(url, "ResourceURL is null");
        return new lob(null, url, null);
    }

    public URL c() {
        return this.b;
    }

    public String d() {
        return this.a;
    }

    public String e() {
        return this.c;
    }

    public JSONObject f() {
        JSONObject jSONObject = new JSONObject();
        k8d.i(jSONObject, "vendorKey", this.a);
        k8d.i(jSONObject, "resourceUrl", this.b.toString());
        k8d.i(jSONObject, "verificationParameters", this.c);
        return jSONObject;
    }
}
