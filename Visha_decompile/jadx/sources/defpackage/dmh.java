package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.zzfar;

public final class dmh implements b5h {
    public final zzfar a;

    public dmh(zzfar zzfarVar) {
        this.a = zzfarVar;
    }

    @Override
    public final void zza() {
        zzfar zzfarVar = this.a;
        synchronized (zzfarVar) {
            zzfarVar.zzd = null;
        }
    }

    @Override
    public final void zzb(Object obj) {
        zzfar zzfarVar = this.a;
        wig wigVar = (wig) obj;
        synchronized (zzfarVar) {
            try {
                zzfarVar.zzd = wigVar;
                if (((Boolean) zzbd.zzc().b(cye.M3)).booleanValue()) {
                    wigVar.k().a = zzfarVar.zzc;
                }
                zzfarVar.zzd.b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
