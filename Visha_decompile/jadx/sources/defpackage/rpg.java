package defpackage;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
import com.google.android.gms.internal.ads.zzdva;

public final class rpg extends RewardedInterstitialAdLoadCallback {
    public final String a;
    public final String b;
    public final zzdva c;

    public rpg(zzdva zzdvaVar, String str, String str2) {
        this.a = str;
        this.b = str2;
        this.c = zzdvaVar;
    }

    @Override
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.c.zzm(zzdva.zzl(loadAdError), this.b);
    }

    @Override
    public final void onAdLoaded(RewardedInterstitialAd rewardedInterstitialAd) {
        String str = this.b;
        this.c.zzg(this.a, rewardedInterstitialAd, str);
    }
}
