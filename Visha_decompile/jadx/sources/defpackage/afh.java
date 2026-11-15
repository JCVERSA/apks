package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.transsion.push.PushConstants;

public final class afh implements deh {
    public final String a;
    public final int b;

    public afh(String str, int i, zeh zehVar) {
        this.a = str;
        this.b = i;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        kyf kyfVar = (kyf) obj;
        if (((Boolean) zzbd.zzc().b(cye.za)).booleanValue()) {
            String str = this.a;
            if (!TextUtils.isEmpty(str)) {
                kyfVar.a.putString(PushConstants.SP_KEY_SUBSCRIBE_TOPICS, str);
            }
            int i = this.b;
            if (i != -1) {
                kyfVar.a.putInt("atps", i);
            }
        }
    }
}
