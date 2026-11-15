package defpackage;

import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.j8;
import java.util.Map;

public final class lnh implements n3f {
    public final t8g a;
    public final wpf b;
    public final wth c;
    public final dwg d;

    public lnh(t8g t8gVar, wpf wpfVar, wth wthVar, dwg dwgVar) {
        this.a = t8gVar;
        this.b = wpfVar;
        this.c = wthVar;
        this.d = dwgVar;
    }

    @Override
    public final void a(Object obj, Map map) {
        ejf ejfVar = (ejf) obj;
        m3f.c(map, this.a);
        String str = (String) map.get("u");
        if (str == null) {
            int i = zze.zza;
            zzo.zzj("URL missing from click GMSG.");
        } else {
            dwg dwgVar = this.d;
            wth wthVar = this.c;
            j8.r(m3f.a(ejfVar, str), new nnh(ejfVar, this.b, wthVar, dwgVar), zef.a);
        }
    }
}
