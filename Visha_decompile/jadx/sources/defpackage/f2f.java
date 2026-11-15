package defpackage;

import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.j8;
import java.util.Map;

public final class f2f implements n3f {
    public final t8g a;
    public final wpf b;

    public f2f(t8g t8gVar, wpf wpfVar) {
        this.a = t8gVar;
        this.b = wpfVar;
    }

    @Override
    public final void a(Object obj, Map map) {
        ejf ejfVar = (ejf) obj;
        m3f.c(map, this.a);
        final String str = (String) map.get("u");
        if (str == null) {
            int i = zze.zza;
            zzo.zzj("URL missing from click GMSG.");
            return;
        }
        final wpf wpfVar = this.b;
        q7i q7iVarZzE = q7i.zzE(m3f.a(ejfVar, str));
        k7i k7iVar = new k7i() {
            @Override
            public final im5 zza(Object obj2) {
                wpf wpfVar2;
                String str2 = (String) obj2;
                n3f n3fVar = m3f.a;
                return (((Boolean) zzbd.zzc().b(cye.ga)).booleanValue() && (wpfVar2 = wpfVar) != null && wpf.j(str)) ? wpfVar2.e(str2, zzbb.zze()) : j8.h(str2);
            }
        };
        g8i g8iVar = zef.a;
        j8.r((q7i) j8.n(q7iVarZzE, k7iVar, g8iVar), new v2f(ejfVar), g8iVar);
    }
}
