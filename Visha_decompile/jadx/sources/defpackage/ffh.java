package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONException;
import org.json.JSONObject;

public final class ffh implements deh {
    public final AdvertisingIdClient.Info a;
    public final String b;
    public final tzh c;

    public ffh(AdvertisingIdClient.Info info, String str, tzh tzhVar) {
        this.a = info;
        this.b = str;
        this.c = tzhVar;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        try {
            JSONObject jSONObjectZzg = zzbs.zzg((JSONObject) obj, "pii");
            AdvertisingIdClient.Info info = this.a;
            if (info == null || TextUtils.isEmpty(info.getId())) {
                String str = this.b;
                if (str != null) {
                    jSONObjectZzg.put("pdid", str);
                    jSONObjectZzg.put("pdidtype", "ssaid");
                    return;
                }
                return;
            }
            jSONObjectZzg.put("rdid", info.getId());
            jSONObjectZzg.put("is_lat", info.isLimitAdTrackingEnabled());
            jSONObjectZzg.put("idtype", "adid");
            tzh tzhVar = this.c;
            if (tzhVar.c()) {
                jSONObjectZzg.put("paidv1_id_android_3p", tzhVar.b());
                jSONObjectZzg.put("paidv1_creation_time_android_3p", tzhVar.a());
            }
        } catch (JSONException e) {
            zze.zzb("Failed putting Ad ID.", e);
        }
    }
}
