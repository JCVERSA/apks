package defpackage;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.internal.ads.zzdva;

public final class opg extends AdListener {
    public final String b;
    public final AdView c;
    public final String d;
    public final zzdva e;

    public opg(zzdva zzdvaVar, String str, AdView adView, String str2) {
        this.b = str;
        this.c = adView;
        this.d = str2;
        this.e = zzdvaVar;
    }

    @Override
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.e.zzm(zzdva.zzl(loadAdError), this.d);
    }

    @Override
    public final void onAdLoaded() {
        this.e.zzg(this.b, this.c, this.d);
    }
}
