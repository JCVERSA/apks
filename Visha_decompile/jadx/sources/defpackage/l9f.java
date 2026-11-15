package defpackage;

import com.google.android.gms.ads.internal.overlay.zzr;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzbrq;

public final class l9f implements zzr {
    public final zzbrq b;

    public l9f(zzbrq zzbrqVar) {
        this.b = zzbrqVar;
    }

    @Override
    public final void zzdE() {
        zzo.zze("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override
    public final void zzdi() {
        zzo.zze("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override
    public final void zzdo() {
        zzo.zze("Delay close AdMobCustomTabsAdapter overlay.");
    }

    @Override
    public final void zzdp() {
        zzo.zze("Opening AdMobCustomTabsAdapter overlay.");
        zzbrq zzbrqVar = this.b;
        zzbrqVar.b.onAdOpened(zzbrqVar);
    }

    @Override
    public final void zzdr() {
    }

    @Override
    public final void zzds(int i) {
        zzo.zze("AdMobCustomTabsAdapter overlay is closed.");
        zzbrq zzbrqVar = this.b;
        zzbrqVar.b.onAdClosed(zzbrqVar);
    }
}
