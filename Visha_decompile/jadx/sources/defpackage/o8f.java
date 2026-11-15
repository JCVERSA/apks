package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbpz;

public final class o8f implements MediationAdLoadCallback {
    public final zzbpe a;
    public final zzbpz b;

    public o8f(zzbpz zzbpzVar, zzbpe zzbpeVar) {
        this.a = zzbpeVar;
        this.b = zzbpzVar;
    }

    @Override
    public final void onFailure(AdError adError) {
        try {
            zzo.zze(this.b.zza.getClass().getCanonicalName() + "failed to load mediation ad: ErrorCode = " + adError.getCode() + ". ErrorMessage = " + adError.getMessage() + ". ErrorDomain = " + adError.getDomain());
            zzbpe zzbpeVar = this.a;
            zzbpeVar.zzh(adError.zza());
            zzbpeVar.zzi(adError.getCode(), adError.getMessage());
            zzbpeVar.zzg(adError.getCode());
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }

    @Override
    public final Object onSuccess(Object obj) {
        try {
            this.b.zzi = (MediationRewardedAd) obj;
            this.a.zzo();
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
        return new pcf(this.a);
    }

    @Override
    public final void onFailure(String str) {
        try {
            zzo.zze(this.b.zza.getClass().getCanonicalName() + "failed to loaded mediation ad: " + str);
            zzbpe zzbpeVar = this.a;
            zzbpeVar.zzi(0, str);
            zzbpeVar.zzg(0);
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }
}
