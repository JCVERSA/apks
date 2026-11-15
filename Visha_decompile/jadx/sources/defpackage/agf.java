package defpackage;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener;

public final class agf implements CustomEventNativeListener {
    public final CustomEventAdapter a;
    public final MediationNativeListener b;

    public agf(CustomEventAdapter customEventAdapter, MediationNativeListener mediationNativeListener) {
        this.a = customEventAdapter;
        this.b = mediationNativeListener;
    }

    @Override
    public final void onAdClicked() {
        zzo.zze("Custom event adapter called onAdClicked.");
        this.b.onAdClicked(this.a);
    }

    @Override
    public final void onAdClosed() {
        zzo.zze("Custom event adapter called onAdClosed.");
        this.b.onAdClosed(this.a);
    }

    @Override
    public final void onAdFailedToLoad(int i) {
        zzo.zze("Custom event adapter called onAdFailedToLoad.");
        this.b.onAdFailedToLoad(this.a, i);
    }

    @Override
    public final void onAdImpression() {
        zzo.zze("Custom event adapter called onAdImpression.");
        this.b.onAdImpression(this.a);
    }

    @Override
    public final void onAdLeftApplication() {
        zzo.zze("Custom event adapter called onAdLeftApplication.");
        this.b.onAdLeftApplication(this.a);
    }

    @Override
    public final void onAdLoaded(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        zzo.zze("Custom event adapter called onAdLoaded.");
        this.b.onAdLoaded(this.a, unifiedNativeAdMapper);
    }

    @Override
    public final void onAdOpened() {
        zzo.zze("Custom event adapter called onAdOpened.");
        this.b.onAdOpened(this.a);
    }

    @Override
    public final void onAdFailedToLoad(AdError adError) {
        zzo.zze("Custom event adapter called onAdFailedToLoad.");
        this.b.onAdFailedToLoad(this.a, adError);
    }
}
