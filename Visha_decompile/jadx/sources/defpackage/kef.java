package defpackage;

import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzb;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;

public final class kef extends zzb {
    public final qef c;

    public kef(qef qefVar) {
        this.c = qefVar;
    }

    @Override
    public final void zza() {
        qef qefVar = this.c;
        fye fyeVar = new fye(qefVar.e, qefVar.f.afmaVersion);
        synchronized (qefVar.a) {
            try {
                zzv.zze();
                hye.a(qefVar.h, fyeVar);
            } catch (IllegalArgumentException e) {
                int i = zze.zza;
                zzo.zzk("Cannot config CSI reporter.", e);
            }
        }
    }
}
