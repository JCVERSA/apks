package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbql;
import com.google.android.gms.internal.ads.zzbrk;

public final class b9f implements MediationAdLoadCallback {
    public final zzbql a;
    public final zzbpe b;

    public b9f(zzbrk zzbrkVar, zzbql zzbqlVar, zzbpe zzbpeVar) {
        this.a = zzbqlVar;
        this.b = zzbpeVar;
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
        MediationBannerAd mediationBannerAd = (MediationBannerAd) obj;
        if (mediationBannerAd != null) {
            try {
                this.a.zzg(ObjectWrapper.wrap(mediationBannerAd.getView()));
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
