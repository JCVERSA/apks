package defpackage;

import com.google.android.gms.internal.ads.zzejz;

public final class r4h implements b5h {
    public final zzejz a;

    public r4h(zzejz zzejzVar) {
        this.a = zzejzVar;
    }

    @Override
    public final void zza() {
        zzejz zzejzVar = this.a;
        synchronized (zzejzVar) {
            zzejzVar.zzj = null;
        }
    }

    @Override
    public final void zzb(Object obj) {
        zzejz zzejzVar = this.a;
        s9g s9gVar = (s9g) obj;
        synchronized (zzejzVar) {
            zzejzVar.zzj = s9gVar;
            zzejzVar.zzj.b();
        }
    }
}
