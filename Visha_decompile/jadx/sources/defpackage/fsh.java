package defpackage;

import com.google.android.gms.internal.ads.zzfgn;

public final class fsh implements v7i {
    public final zzfgn a;
    public final wrh b;

    public fsh(zzfgn zzfgnVar, wrh wrhVar) {
        this.a = zzfgnVar;
        this.b = wrhVar;
    }

    @Override
    public final void zza(Throwable th) {
        wrh wrhVar = this.b;
        wrhVar.f(th);
        wrhVar.zzg(false);
        this.a.zza(wrhVar);
    }

    @Override
    public final void zzb(Object obj) {
    }
}
