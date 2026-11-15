package defpackage;

import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONException;
import org.json.JSONObject;

public final class vfh implements deh {
    public final JSONObject a;

    public vfh(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        try {
            ((JSONObject) obj).put("cache_state", this.a);
        } catch (JSONException unused) {
            zze.zza("Unable to get cache_state");
        }
    }
}
