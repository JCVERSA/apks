package defpackage;

import android.os.Bundle;

public final class e8h implements deh {
    public final double a;
    public final boolean b;

    public e8h(double d, boolean z) {
        this.a = d;
        this.b = z;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = ((kyf) obj).a;
        Bundle bundleA = unh.a(bundle, "device");
        bundle.putBundle("device", bundleA);
        Bundle bundleA2 = unh.a(bundleA, "battery");
        bundleA.putBundle("battery", bundleA2);
        bundleA2.putBoolean("is_charging", this.b);
        bundleA2.putDouble("battery_level", this.a);
    }
}
