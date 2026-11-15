package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONException;
import org.json.JSONObject;

public final class bhh implements deh {
    public final String a;

    public bhh(String str) {
        this.a = str;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        try {
            String str = this.a;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            zzbs.zzg(jSONObject, "pii").put("adsid", str);
        } catch (JSONException e) {
            int i = zze.zza;
            zzo.zzk("Failed putting trustless token.", e);
        }
    }
}
