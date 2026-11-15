package defpackage;

import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import java.util.Map;

public final class p3f implements n3f {
    public final q3f a;

    public p3f(q3f q3fVar) {
        this.a = q3fVar;
    }

    @Override
    public final void a(Object obj, Map map) {
        ejf ejfVar = (ejf) obj;
        boolean zEquals = "1".equals(map.get("transparentBackground"));
        boolean zEquals2 = "1".equals(map.get("blur"));
        float f = 0.0f;
        try {
            if (map.get("blurRadius") != null) {
                f = Float.parseFloat((String) map.get("blurRadius"));
            }
        } catch (NumberFormatException e) {
            int i = zze.zza;
            zzo.zzh("Fail to parse float", e);
        }
        q3f q3fVar = this.a;
        q3fVar.c(zEquals);
        q3fVar.b(zEquals2, f);
        ejfVar.zzay(zEquals);
    }
}
