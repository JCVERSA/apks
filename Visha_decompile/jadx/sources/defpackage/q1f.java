package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zze;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class q1f implements n3f {
    public final r1f a;

    public q1f(r1f r1fVar) {
        this.a = r1fVar;
    }

    @Override
    public final void a(Object obj, Map map) {
        if (this.a == null) {
            return;
        }
        String str = (String) map.get("name");
        if (str == null) {
            int i = zze.zza;
            zzo.zzi("Ad metadata with no name parameter.");
            str = "";
        }
        Bundle bundleZza = null;
        if (map.containsKey("info")) {
            try {
                bundleZza = zzbs.zza(new JSONObject((String) map.get("info")));
            } catch (JSONException e) {
                int i2 = zze.zza;
                zzo.zzh("Failed to convert ad metadata to JSON.", e);
            }
        }
        if (bundleZza != null) {
            this.a.h(str, bundleZza);
        } else {
            int i3 = zze.zza;
            zzo.zzg("Failed to convert ad metadata to Bundle.");
        }
    }
}
