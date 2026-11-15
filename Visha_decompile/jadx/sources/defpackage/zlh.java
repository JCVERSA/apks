package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.zzfal;

public final class zlh implements b5h {
    public final zzfal a;

    public zlh(zzfal zzfalVar) {
        this.a = zzfalVar;
    }

    @Override
    public final void zza() {
        zzfal zzfalVar = this.a;
        synchronized (zzfalVar) {
            zzfalVar.zzi = null;
        }
    }

    @Override
    public final void zzb(Object obj) {
        zzfal zzfalVar = this.a;
        wig wigVar = (wig) obj;
        synchronized (zzfalVar) {
            try {
                zzfalVar.zzi = wigVar;
                if (((Boolean) zzbd.zzc().b(cye.M3)).booleanValue()) {
                    wigVar.k().a = zzfalVar.zzd;
                }
                zzfalVar.zzi.b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
