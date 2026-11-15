package defpackage;

import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import java.util.Map;

public final class y1f implements n3f {
    public final z1f a;

    public y1f(z1f z1fVar) {
        this.a = z1fVar;
    }

    @Override
    public final void a(Object obj, Map map) {
        String str = (String) map.get("name");
        if (str != null) {
            this.a.zzb(str, (String) map.get("info"));
        } else {
            int i = zze.zza;
            zzo.zzj("App event with no name parameter.");
        }
    }
}
