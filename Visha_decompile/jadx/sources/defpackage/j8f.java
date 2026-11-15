package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
import com.google.android.gms.internal.ads.zzbll;
import com.google.android.gms.internal.ads.zzbpz;

public final class j8f implements InitializationCompleteCallback {
    public final zzbll a;

    public j8f(zzbpz zzbpzVar, zzbll zzbllVar) {
        this.a = zzbllVar;
    }

    @Override
    public final void onInitializationFailed(String str) {
        try {
            this.a.zze(str);
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }

    @Override
    public final void onInitializationSucceeded() {
        try {
            this.a.zzf();
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }
}
