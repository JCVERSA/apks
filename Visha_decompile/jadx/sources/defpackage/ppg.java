package defpackage;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.google.android.gms.internal.ads.zzdva;

public final class ppg extends InterstitialAdLoadCallback {
    public final String a;
    public final String b;
    public final zzdva c;

    public ppg(zzdva zzdvaVar, String str, String str2) {
        this.a = str;
        this.b = str2;
        this.c = zzdvaVar;
    }

    @Override
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.c.zzm(zzdva.zzl(loadAdError), this.b);
    }

    @Override
    public final void onAdLoaded(InterstitialAd interstitialAd) {
        String str = this.b;
        this.c.zzg(this.a, interstitialAd, str);
    }
}
