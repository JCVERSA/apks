package defpackage;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgn;

public final class daf implements NativeCustomFormatAd.DisplayOpenMeasurement {
    public final zzbgn a;

    public daf(zzbgn zzbgnVar) {
        this.a = zzbgnVar;
        try {
            zzbgnVar.zzm();
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }

    @Override
    public final void setView(View view) {
        try {
            this.a.zzp(ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }

    @Override
    public final boolean start() {
        try {
            return this.a.zzt();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return false;
        }
    }
}
