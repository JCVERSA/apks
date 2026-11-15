package defpackage;

import com.google.android.gms.internal.ads.zzfgn;

public final class esh implements v7i {
    public final zzfgn a;
    public final wrh b;
    public final boolean c;

    public esh(zzfgn zzfgnVar, wrh wrhVar, boolean z) {
        this.a = zzfgnVar;
        this.b = wrhVar;
        this.c = z;
    }

    @Override
    public final void zza(Throwable th) {
        wrh wrhVar = this.b;
        if (wrhVar.zzk()) {
            zzfgn zzfgnVar = this.a;
            wrhVar.f(th);
            wrhVar.zzg(false);
            zzfgnVar.zza(wrhVar);
            if (this.c) {
                zzfgnVar.zzh();
            }
        }
    }

    @Override
    public final void zzb(Object obj) {
        wrh wrhVar = this.b;
        wrhVar.zzg(true);
        zzfgn zzfgnVar = this.a;
        zzfgnVar.zza(wrhVar);
        if (this.c) {
            zzfgnVar.zzh();
        }
    }
}
