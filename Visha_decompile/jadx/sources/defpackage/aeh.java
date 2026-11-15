package defpackage;

import android.os.Bundle;

public final class aeh implements deh {
    public final Bundle a;

    public aeh(Bundle bundle) {
        this.a = bundle;
    }

    @Override
    public final void zza(Object obj) {
        Bundle bundle = this.a;
        kyf kyfVar = (kyf) obj;
        if (bundle.isEmpty()) {
            return;
        }
        kyfVar.b.putBundle("shared_pref", bundle);
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = this.a;
        kyf kyfVar = (kyf) obj;
        if (bundle.isEmpty()) {
            return;
        }
        kyfVar.a.putBundle("shared_pref", bundle);
    }
}
