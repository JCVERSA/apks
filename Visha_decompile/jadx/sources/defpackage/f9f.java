package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbqf;
import com.google.android.gms.internal.ads.zzbqr;
import com.google.android.gms.internal.ads.zzbrk;

public final class f9f implements MediationAdLoadCallback {
    public final zzbqr a;
    public final zzbpe b;

    public f9f(zzbrk zzbrkVar, zzbqr zzbqrVar, zzbpe zzbpeVar) {
        this.a = zzbqrVar;
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
        UnifiedNativeAdMapper unifiedNativeAdMapper = (UnifiedNativeAdMapper) obj;
        if (unifiedNativeAdMapper != null) {
            try {
                this.a.zzg(new zzbqf(unifiedNativeAdMapper));
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
