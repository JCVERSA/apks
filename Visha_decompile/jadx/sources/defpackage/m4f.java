package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzbvw;
import java.util.Map;

public final class m4f implements n3f {
    public final l4f a;

    public m4f(l4f l4fVar) {
        this.a = l4fVar;
    }

    public static void b(ejf ejfVar, l4f l4fVar) {
        ejfVar.zzag("/reward", new m4f(l4fVar));
    }

    @Override
    public final void a(Object obj, Map map) {
        String str = (String) map.get("action");
        if (!"grant".equals(str)) {
            if ("video_start".equals(str)) {
                this.a.zzc();
                return;
            } else {
                if ("video_complete".equals(str)) {
                    this.a.zzb();
                    return;
                }
                return;
            }
        }
        zzbvw zzbvwVar = null;
        try {
            int i = Integer.parseInt((String) map.get("amount"));
            String str2 = (String) map.get("type");
            if (!TextUtils.isEmpty(str2)) {
                zzbvwVar = new zzbvw(str2, i);
            }
        } catch (NumberFormatException e) {
            int i2 = zze.zza;
            zzo.zzk("Unable to parse reward amount.", e);
        }
        this.a.p(zzbvwVar);
    }
}
