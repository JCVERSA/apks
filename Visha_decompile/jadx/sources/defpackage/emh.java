package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzcb;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.internal.ads.zzfar;

public final class emh implements OnAdMetadataChangedListener {
    public final zzcb b;
    public final zzfar c;

    public emh(zzfar zzfarVar, zzcb zzcbVar) {
        this.b = zzcbVar;
        this.c = zzfarVar;
    }

    @Override
    public final void onAdMetadataChanged() {
        if (this.c.zzd != null) {
            try {
                this.b.zze();
            } catch (RemoteException e) {
                int i = zze.zza;
                zzo.zzl("#007 Could not call remote method.", e);
            }
        }
    }
}
