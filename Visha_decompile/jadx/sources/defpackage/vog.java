package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.transsion.push.PushConstants;
import org.json.JSONException;
import org.json.JSONObject;

public final class vog {
    public final String a;
    public final String b;
    public final String c;
    public final int d;
    public final String e;
    public final int f;
    public final boolean g;

    public vog(String str, String str2, String str3, int i, String str4, int i2, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = i;
        this.e = str4;
        this.f = i2;
        this.g = z;
    }

    public final JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("adapterClassName", this.a);
        jSONObject.put("version", this.c);
        if (((Boolean) zzbd.zzc().b(cye.v9)).booleanValue()) {
            jSONObject.put(PushConstants.PROVIDER_FIELD_SDK_VERSION, this.b);
        }
        jSONObject.put("status", this.d);
        jSONObject.put("description", this.e);
        jSONObject.put("initializationLatencyMillis", this.f);
        if (((Boolean) zzbd.zzc().b(cye.w9)).booleanValue()) {
            jSONObject.put("supportsInitialization", this.g);
        }
        return jSONObject;
    }
}
