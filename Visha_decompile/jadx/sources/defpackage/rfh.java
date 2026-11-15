package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONException;
import org.json.JSONObject;

public final class rfh implements deh {
    public final String a;
    public final int b;

    public rfh(String str, int i) {
        this.a = str;
        this.b = i;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        int i;
        String str = this.a;
        JSONObject jSONObject = (JSONObject) obj;
        if (TextUtils.isEmpty(str) || (i = this.b) == -1) {
            return;
        }
        try {
            JSONObject jSONObjectZzg = zzbs.zzg(jSONObject, "pii");
            jSONObjectZzg.put("pvid", str);
            jSONObjectZzg.put("pvid_s", i);
        } catch (JSONException e) {
            zze.zzb("Failed putting gms core app set ID info.", e);
        }
    }
}
