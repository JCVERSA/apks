package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbqo;
import com.google.android.gms.internal.ads.zzbrk;

public final class d9f implements MediationAdLoadCallback {
    public final zzbqo a;
    public final zzbpe b;
    public final zzbrk c;

    public d9f(zzbrk zzbrkVar, zzbqo zzbqoVar, zzbpe zzbpeVar) {
        this.a = zzbqoVar;
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
        MediationInterstitialAd mediationInterstitialAd = (MediationInterstitialAd) obj;
        if (mediationInterstitialAd != null) {
            try {
                this.c.zzb = mediationInterstitialAd;
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
