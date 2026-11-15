package defpackage;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import org.json.JSONObject;

public final class fue {
    public final String a;
    public final JSONObject b;
    public final String c;
    public final String d;
    public final boolean e;

    public fue(String str, VersionInfoParcel versionInfoParcel, String str2, JSONObject jSONObject, boolean z, boolean z2) {
        this.d = versionInfoParcel.afmaVersion;
        this.b = jSONObject;
        this.c = str;
        this.a = str2;
        this.e = z2;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.d;
    }

    public final String c() {
        return this.c;
    }

    public final JSONObject d() {
        return this.b;
    }

    public final boolean e() {
        return this.e;
    }
}
