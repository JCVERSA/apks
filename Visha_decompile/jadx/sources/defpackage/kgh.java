package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONException;
import org.json.JSONObject;

public final class kgh implements deh {
    public final Bundle a;

    public kgh(Bundle bundle) {
        this.a = bundle;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        Bundle bundle = this.a;
        if (bundle != null) {
            try {
                zzbs.zzg(zzbs.zzg(jSONObject, "device"), "play_store").put("parental_controls", zzbb.zzb().zzj(bundle));
            } catch (JSONException unused) {
                zze.zza("Failed putting parental controls bundle.");
            }
        }
    }
}
