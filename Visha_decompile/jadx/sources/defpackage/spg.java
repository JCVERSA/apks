package defpackage;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.internal.ads.zzdva;

public final class spg extends AdListener {
    public final String b;
    public final zzdva c;

    public spg(zzdva zzdvaVar, String str) {
        this.b = str;
        this.c = zzdvaVar;
    }

    @Override
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.c.zzm(zzdva.zzl(loadAdError), this.b);
    }
}
