package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.internal.client.zzbh;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;

public final class o4h implements zza, t8g {
    public zzbh b;

    public final synchronized void a(zzbh zzbhVar) {
        this.b = zzbhVar;
    }

    @Override
    public final synchronized void onAdClicked() {
        zzbh zzbhVar = this.b;
        if (zzbhVar != null) {
            try {
                zzbhVar.zzb();
            } catch (RemoteException e) {
                int i = zze.zza;
                zzo.zzk("Remote Exception at onAdClicked.", e);
            }
        }
    }

    @Override
    public final synchronized void zzdd() {
        zzbh zzbhVar = this.b;
        if (zzbhVar != null) {
            try {
                zzbhVar.zzb();
            } catch (RemoteException e) {
                int i = zze.zza;
                zzo.zzk("Remote Exception at onPhysicalClick.", e);
            }
        }
    }

    @Override
    public final synchronized void zzu() {
    }
}
