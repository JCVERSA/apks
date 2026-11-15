package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbqi;
import com.google.android.gms.internal.ads.zzbrk;

public final class g9f implements MediationAdLoadCallback {
    public final zzbqi a;
    public final zzbpe b;
    public final zzbrk c;

    public g9f(zzbrk zzbrkVar, zzbqi zzbqiVar, zzbpe zzbpeVar) {
        this.a = zzbqiVar;
        this.b = zzbpeVar;
        this.c = zzbrkVar;
    }

    @Override
    public final void onFailure(AdError adError) {
        try {
            this.a.zzf(adError.zza());
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }

    @Override
    public final Object onSuccess(Object obj) {
        MediationAppOpenAd mediationAppOpenAd = (MediationAppOpenAd) obj;
        if (mediationAppOpenAd != null) {
            try {
                this.c.zzd = mediationAppOpenAd;
                this.a.zzg();
            } catch (RemoteException e) {
                zzo.zzh("", e);
            }
            return new j9f(this.b);
        }
        zzo.zzj("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
        try {
            this.a.zze("Adapter returned null.");
            return null;
        } catch (RemoteException e2) {
            zzo.zzh("", e2);
            return null;
        }
    }

    @Override
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, "undefined"));
    }
}
