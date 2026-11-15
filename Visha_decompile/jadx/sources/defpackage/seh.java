package defpackage;

import android.os.Bundle;
import android.text.TextUtils;

public final class seh implements deh {
    public final String a;
    public final int b;
    public final int c;
    public final int d;
    public final boolean e;
    public final int f;

    public seh(String str, int i, int i2, int i3, boolean z, int i4) {
        this.a = str;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = z;
        this.f = i4;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = ((kyf) obj).a;
        String str = this.a;
        unh.f(bundle, "carrier", str, !TextUtils.isEmpty(str));
        int i = this.b;
        unh.e(bundle, "cnt", i, i != -2);
        bundle.putInt("gnt", this.c);
        bundle.putInt("pt", this.d);
        Bundle bundleA = unh.a(bundle, "device");
        bundle.putBundle("device", bundleA);
        Bundle bundleA2 = unh.a(bundleA, "network");
        bundleA.putBundle("network", bundleA2);
        bundleA2.putInt("active_network_state", this.f);
        bundleA2.putBoolean("active_network_metered", this.e);
    }
}
