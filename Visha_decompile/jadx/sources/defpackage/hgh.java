package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zze;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public final class hgh implements deh {
    public final List a;

    public hgh(List list) {
        this.a = list;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        try {
            ((JSONObject) obj).put("eid", TextUtils.join(StringUtils.COMMA, this.a));
        } catch (JSONException unused) {
            zze.zza("Failed putting experiment ids.");
        }
    }
}
