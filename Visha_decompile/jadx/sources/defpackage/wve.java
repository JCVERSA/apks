package defpackage;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventInterstitialListener;

public final class wve implements CustomEventInterstitialListener {
    public final CustomEventAdapter a;
    public final MediationInterstitialListener b;
    public final CustomEventAdapter c;

    public wve(CustomEventAdapter customEventAdapter, CustomEventAdapter customEventAdapter2, MediationInterstitialListener mediationInterstitialListener) {
        this.c = customEventAdapter;
        this.a = customEventAdapter2;
        this.b = mediationInterstitialListener;
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
        zzo.zze("Custom event adapter called onFailedToReceiveAd.");
        this.b.onAdFailedToLoad(this.a, i);
    }

    @Override
    public final void onAdLeftApplication() {
        zzo.zze("Custom event adapter called onAdLeftApplication.");
        this.b.onAdLeftApplication(this.a);
    }

    @Override
    public final void onAdLoaded() {
        zzo.zze("Custom event adapter called onReceivedAd.");
        this.b.onAdLoaded(this.c);
    }

    @Override
    public final void onAdOpened() {
        zzo.zze("Custom event adapter called onAdOpened.");
        this.b.onAdOpened(this.a);
    }

    @Override
    public final void onAdFailedToLoad(AdError adError) {
        zzo.zze("Custom event adapter called onFailedToReceiveAd.");
        this.b.onAdFailedToLoad(this.a, adError);
    }
}
