package defpackage;

import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONException;
import org.json.JSONObject;

public final class nfh implements deh {
    public final String a;

    public nfh(String str) {
        this.a = str;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        try {
            ((JSONObject) obj).put("ms", this.a);
        } catch (JSONException e) {
            zze.zzb("Failed putting Ad ID.", e);
        }
    }
}
