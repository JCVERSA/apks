package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.zzdva;
import com.transsion.push.PushConstants;
import java.util.Map;

public final class a4f implements n3f {
    public final zzdva a;

    public a4f(zzdva zzdvaVar) {
        this.a = zzdvaVar;
    }

    @Override
    public final void a(Object obj, Map map) {
        if (((Boolean) zzbd.zzc().b(cye.x9)).booleanValue()) {
            String str = (String) map.get("action");
            String str2 = (String) map.get("adUnitId");
            String str3 = (String) map.get("redirectUrl");
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
                return;
            }
            String str4 = (String) map.get("format");
            if (str.equals("load") && !TextUtils.isEmpty(str4)) {
                this.a.zzh(str2, str4, str3);
            } else if (str.equals(PushConstants.PUSH_SERVICE_TYPE_SHOW)) {
                this.a.zzi(str2, str3);
            }
        }
    }
}
