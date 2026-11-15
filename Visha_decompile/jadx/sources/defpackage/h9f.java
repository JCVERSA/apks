package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
import com.google.android.gms.internal.ads.zzbra;
import com.google.android.gms.internal.ads.zzbrk;

public final class h9f implements SignalCallbacks {
    public final zzbra a;

    public h9f(zzbrk zzbrkVar, zzbra zzbraVar) {
        this.a = zzbraVar;
    }

    @Override
    public final void onFailure(AdError adError) {
        try {
            this.a.zzg(adError.zza());
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }

    @Override
    public final void onSuccess(String str) {
        try {
            this.a.zze(str);
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }

    @Override
    public final void onFailure(String str) {
        try {
            this.a.zzf(str);
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }
}
