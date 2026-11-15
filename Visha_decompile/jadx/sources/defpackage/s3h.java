package defpackage;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.internal.client.zzbc;
import com.google.android.gms.ads.internal.client.zzek;

public final class s3h extends zzbc {
    public final zzek d;

    public s3h(zzek zzekVar) {
        this.d = zzekVar;
    }

    @Override
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        zzek zzekVar = this.d;
        zzekVar.d.zzb(zzekVar.zzi());
        super.onAdFailedToLoad(loadAdError);
    }

    @Override
    public final void onAdLoaded() {
        zzek zzekVar = this.d;
        zzekVar.d.zzb(zzekVar.zzi());
        super.onAdLoaded();
    }
}
