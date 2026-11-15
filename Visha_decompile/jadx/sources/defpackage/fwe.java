package defpackage;

import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.mediation.MediationBannerListener;

public final class fwe extends AdListener implements AppEventListener, zza {
    public final AbstractAdViewAdapter b;
    public final MediationBannerListener c;

    public fwe(AbstractAdViewAdapter abstractAdViewAdapter, MediationBannerListener mediationBannerListener) {
        this.b = abstractAdViewAdapter;
        this.c = mediationBannerListener;
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
    public final void onAdLoaded() {
        this.c.onAdLoaded(this.b);
    }

    @Override
    public final void onAdOpened() {
        this.c.onAdOpened(this.b);
    }

    @Override
    public final void onAppEvent(String str, String str2) {
        this.c.zzb(this.b, str, str2);
    }
}
