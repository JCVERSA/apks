package defpackage;

import android.os.Bundle;

public final class xbh implements deh {
    public final Bundle a;

    public xbh(Bundle bundle) {
        this.a = bundle;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = ((kyf) obj).a;
        Bundle bundleA = unh.a(bundle, "device");
        bundleA.putBundle("android_mem_info", this.a);
        bundle.putBundle("device", bundleA);
    }
}
