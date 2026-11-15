package defpackage;

import android.view.View;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventBannerListener;

public final class o5e implements CustomEventBannerListener {
    public final CustomEventAdapter a;
    public final MediationBannerListener b;

    public o5e(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
        this.a = customEventAdapter;
        this.b = mediationBannerListener;
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
    public final void onAdLeftApplication() {
        zzo.zze("Custom event adapter called onAdLeftApplication.");
        this.b.onAdLeftApplication(this.a);
    }

    @Override
    public final void onAdLoaded(View view) {
        zzo.zze("Custom event adapter called onAdLoaded.");
        CustomEventAdapter customEventAdapter = this.a;
        customEventAdapter.a = view;
        this.b.onAdLoaded(customEventAdapter);
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
