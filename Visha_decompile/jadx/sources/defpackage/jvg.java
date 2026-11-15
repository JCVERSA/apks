package defpackage;

import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.formats.zzf;
import com.google.android.gms.ads.formats.zzg;
import com.google.android.gms.ads.formats.zzi;
import com.google.android.gms.ads.mediation.MediationNativeListener;

public final class jvg extends AdListener implements zzi, zzg, zzf {
    public final AbstractAdViewAdapter b;
    public final MediationNativeListener c;

    public jvg(AbstractAdViewAdapter abstractAdViewAdapter, MediationNativeListener mediationNativeListener) {
        this.b = abstractAdViewAdapter;
        this.c = mediationNativeListener;
    }

    @Override
    public final void onAdClicked() {
        this.c.onAdClicked(this.b);
    }

    @Override
    public final void onAdClosed() {
        this.c.onAdClosed(this.b);
    }

    @Override
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.c.onAdFailedToLoad(this.b, loadAdError);
    }

    @Override
    public final void onAdImpression() {
        this.c.onAdImpression(this.b);
    }

    @Override
    public final void onAdLoaded() {
    }

    @Override
    public final void onAdOpened() {
        this.c.onAdOpened(this.b);
    }

    @Override
    public final void zza(UnifiedNativeAd unifiedNativeAd) {
        this.c.onAdLoaded(this.b, new w5e(unifiedNativeAd));
    }

    @Override
    public final void zzb(h1f h1fVar, String str) {
        this.c.zze(this.b, h1fVar, str);
    }

    @Override
    public final void zzc(h1f h1fVar) {
        this.c.zzd(this.b, h1fVar);
    }
}
