package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzdn;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.internal.ads.zzfal;

public final class ylh implements OnAdMetadataChangedListener {
    public final zzdn b;
    public final zzfal c;

    public ylh(zzfal zzfalVar, zzdn zzdnVar) {
        this.b = zzdnVar;
        this.c = zzfalVar;
    }

    @Override
    public final void onAdMetadataChanged() {
        if (this.c.zzi != null) {
            try {
                this.b.zze();
            } catch (RemoteException e) {
                int i = zze.zza;
                zzo.zzl("#007 Could not call remote method.", e);
            }
        }
    }
}
