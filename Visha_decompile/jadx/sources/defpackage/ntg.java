package defpackage;

import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzbb;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzbuq;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzdyu;

public final class ntg implements v7i {
    public final zzbuy a;
    public final zzbuq b;

    public ntg(zzdyu zzdyuVar, zzbuy zzbuyVar, zzbuq zzbuqVar) {
        this.a = zzbuyVar;
        this.b = zzbuqVar;
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
        Bundle bundle;
        ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) obj;
        try {
            if (!((Boolean) zzbd.zzc().b(cye.q2)).booleanValue()) {
                this.b.zzf(parcelFileDescriptor);
                return;
            }
            if (((Boolean) zzbd.zzc().b(cye.r2)).booleanValue() && (bundle = this.a.zzm) != null) {
                bundle.putLong(zzdqm.BINDER_CALL_START.zza(), zzv.zzC().currentTimeMillis());
            }
            this.b.zzg(parcelFileDescriptor, this.a);
        } catch (RemoteException e) {
            zze.zzb("Service can't call client", e);
        }
    }
}
