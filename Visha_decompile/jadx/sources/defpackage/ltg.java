package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzbb;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzbui;
import com.google.android.gms.internal.ads.zzbur;
import com.google.android.gms.internal.ads.zzdyu;

public final class ltg implements v7i {
    public final zzbui a;
    public final zzbur b;

    public ltg(zzdyu zzdyuVar, zzbur zzburVar, zzbui zzbuiVar) {
        this.b = zzburVar;
        this.a = zzbuiVar;
    }

    @Override
    public final void zza(Throwable th) {
        try {
            this.b.zze(zzbb.zzb(th));
        } catch (RemoteException e) {
            zze.zzb("Service can't call client", e);
        }
    }

    @Override
    public final void zzb(Object obj) {
        try {
            this.b.zzf((String) obj, this.a);
        } catch (RemoteException e) {
            zze.zzb("Service can't call client", e);
        }
    }
}
