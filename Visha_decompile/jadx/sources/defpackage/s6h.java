package defpackage;

import android.os.Bundle;

public final class s6h implements deh {
    public final String a;
    public final boolean b;

    public s6h(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        String str = this.a;
        kyf kyfVar = (kyf) obj;
        if (str != null) {
            Bundle bundleA = unh.a(kyfVar.a, "pii");
            bundleA.putString("afai", str);
            bundleA.putBoolean("is_afai_lat", this.b);
        }
    }
}
