package defpackage;

import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import java.util.Map;

public final class v3f implements v7i {
    public final Map a;
    public final zza b;
    public final String c;
    public final z3f d;

    public v3f(z3f z3fVar, Map map, zza zzaVar, String str) {
        this.a = map;
        this.b = zzaVar;
        this.c = str;
        this.d = z3fVar;
    }

    @Override
    public final void zza(Throwable th) {
        zzv.zzp().x(th, "OpenGmsgHandler.attributionReportingManager");
    }

    @Override
    public final void zzb(Object obj) {
        String str = (String) obj;
        if (((Boolean) zzbd.zzc().b(cye.ha)).booleanValue()) {
            this.a.put("u", str);
        }
        this.d.h(str, this.b, this.a, this.c);
    }
}
