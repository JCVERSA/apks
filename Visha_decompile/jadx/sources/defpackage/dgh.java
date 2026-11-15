package defpackage;

import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONException;
import org.json.JSONObject;

public final class dgh implements deh {
    public final String a;
    public final String b;

    public dgh(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        try {
            JSONObject jSONObjectZzg = zzbs.zzg((JSONObject) obj, "pii");
            jSONObjectZzg.put("doritos", this.a);
            jSONObjectZzg.put("doritos_v2", this.b);
        } catch (JSONException unused) {
            zze.zza("Failed putting doritos string.");
        }
    }
}
