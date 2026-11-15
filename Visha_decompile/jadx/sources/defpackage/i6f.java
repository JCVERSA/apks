package defpackage;

import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.t3;
import com.google.android.gms.internal.ads.zzfgq;

public final class i6f implements gff {
    public final q6f a;
    public final wrh b;
    public final t3 c;

    public i6f(t3 t3Var, q6f q6fVar, wrh wrhVar) {
        this.a = q6fVar;
        this.b = wrhVar;
        this.c = t3Var;
    }

    @Override
    public final void zza() {
        zze.zza("loadNewJavascriptEngine (failure): Trying to acquire lock");
        t3 t3Var = this.c;
        synchronized (t3Var.a) {
            try {
                zze.zza("loadNewJavascriptEngine (failure): Lock acquired");
                t3Var.i = 1;
                zze.zza("Failed loading new engine. Marking new engine destroyable.");
                this.a.h();
                if (((Boolean) sze.d.e()).booleanValue() && t3Var.e != null) {
                    zzfgq zzfgqVar = t3Var.e;
                    wrh wrhVar = this.b;
                    wrhVar.zzc("Failed loading new engine");
                    wrhVar.zzg(false);
                    zzfgqVar.zzc(wrhVar.zzm());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zze.zza("loadNewJavascriptEngine (failure): Lock released");
    }
}
