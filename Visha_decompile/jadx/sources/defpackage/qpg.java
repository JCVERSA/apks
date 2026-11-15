package defpackage;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.internal.ads.zzdva;

public final class qpg extends RewardedAdLoadCallback {
    public final String a;
    public final String b;
    public final zzdva c;

    public qpg(zzdva zzdvaVar, String str, String str2) {
        this.a = str;
        this.b = str2;
        this.c = zzdvaVar;
    }

    @Override
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.c.zzm(zzdva.zzl(loadAdError), this.b);
    }

    @Override
    public final void onAdLoaded(RewardedAd rewardedAd) {
        String str = this.b;
        this.c.zzg(this.a, rewardedAd, str);
    }
}
