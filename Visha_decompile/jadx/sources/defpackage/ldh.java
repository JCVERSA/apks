package defpackage;

import android.os.Bundle;

public final class ldh implements deh {
    public final String a;
    public final Bundle b;

    public ldh(String str, Bundle bundle) {
        this.a = str;
        this.b = bundle;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = ((kyf) obj).a;
        bundle.putString("rtb", this.a);
        Bundle bundle2 = this.b;
        if (bundle2.isEmpty()) {
            return;
        }
        bundle.putBundle("adapter_initialization_status", bundle2);
    }
}
