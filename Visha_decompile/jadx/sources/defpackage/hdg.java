package defpackage;

import com.google.android.gms.ads.internal.util.zzbs;
import org.json.JSONException;
import org.json.JSONObject;

public final class hdg extends idg {
    public final JSONObject b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final String g;
    public final JSONObject h;

    public hdg(hmh hmhVar, JSONObject jSONObject) {
        super(hmhVar);
        this.b = zzbs.zzh(jSONObject, "tracking_urls_and_actions", "active_view");
        this.c = zzbs.zzl(false, jSONObject, "allow_pub_owned_ad_view");
        this.d = zzbs.zzl(false, jSONObject, "attribution", "allow_pub_rendering");
        this.e = zzbs.zzl(false, jSONObject, "enable_omid");
        this.g = zzbs.zzb("", jSONObject, "watermark_overlay_png_base64");
        this.f = jSONObject.optJSONObject("overlay") != null;
        this.h = jSONObject.optJSONObject("omid_settings");
    }

    @Override
    public final hnh a() {
        JSONObject jSONObject = this.h;
        return jSONObject != null ? new hnh(jSONObject) : this.a.V;
    }

    @Override
    public final String b() {
        return this.g;
    }

    @Override
    public final JSONObject c() {
        JSONObject jSONObject = this.b;
        if (jSONObject != null) {
            return jSONObject;
        }
        try {
            return new JSONObject(this.a.z);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override
    public final boolean d() {
        return this.e;
    }

    @Override
    public final boolean e() {
        return this.c;
    }

    @Override
    public final boolean f() {
        return this.d;
    }

    @Override
    public final boolean g() {
        return this.f;
    }
}
