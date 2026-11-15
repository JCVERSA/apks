package defpackage;

import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;

public final class f5g extends FullScreenContentCallback {
    public final AbstractAdViewAdapter a;
    public final MediationInterstitialListener b;

    public f5g(AbstractAdViewAdapter abstractAdViewAdapter, MediationInterstitialListener mediationInterstitialListener) {
        this.a = abstractAdViewAdapter;
        this.b = mediationInterstitialListener;
    }

    @Override
    public final void onAdDismissedFullScreenContent() {
        this.b.onAdClosed(this.a);
    }

    @Override
    public final void onAdShowedFullScreenContent() {
        this.b.onAdOpened(this.a);
    }
}
