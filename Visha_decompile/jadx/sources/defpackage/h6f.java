package defpackage;

import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.t3;
import com.google.android.gms.internal.ads.zzfgq;

public final class h6f implements iff {
    public final q6f a;
    public final wrh b;
    public final t3 c;

    public h6f(t3 t3Var, q6f q6fVar, wrh wrhVar) {
        this.a = q6fVar;
        this.b = wrhVar;
        this.c = t3Var;
    }

    @Override
    public final void zza(Object obj) {
        zze.zza("loadNewJavascriptEngine (success): Trying to acquire lock");
        t3 t3Var = this.c;
        synchronized (t3Var.a) {
            try {
                zze.zza("loadNewJavascriptEngine (success): Lock acquired");
                t3Var.i = 0;
                if (t3Var.h != null && this.a != t3Var.h) {
                    zze.zza("New JS engine is loaded, marking previous one as destroyable.");
                    t3Var.h.h();
                }
                t3Var.h = this.a;
                if (((Boolean) sze.d.e()).booleanValue() && t3Var.e != null) {
                    zzfgq zzfgqVar = t3Var.e;
                    wrh wrhVar = this.b;
                    wrhVar.zzg(true);
                    zzfgqVar.zzc(wrhVar.zzm());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zze.zza("loadNewJavascriptEngine (success): Lock released");
    }
}
