package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import java.util.Map;

public final class dpf implements oof {
    @Override
    public final void a(Map map) {
        if (!((Boolean) zzbd.zzc().b(cye.za)).booleanValue() || map.isEmpty()) {
            return;
        }
        String str = (String) map.get("is_topics_ad_personalization_allowed");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        zzv.zzp().j().zzE(Boolean.parseBoolean(str));
    }
}
