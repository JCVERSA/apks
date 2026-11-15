package defpackage;

import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.util.zze;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class fhh implements deh {
    public final Map a;

    public fhh(Map map) {
        this.a = map;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        try {
            ((JSONObject) obj).put("video_decoders", zzbb.zzb().zzk(this.a));
        } catch (JSONException e) {
            zze.zza("Could not encode video decoder properties: ".concat(String.valueOf(e.getMessage())));
        }
    }
}
