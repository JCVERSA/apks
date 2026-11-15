package defpackage;

import android.os.Bundle;

public final class l6h implements deh {
    public final Bundle a;

    public l6h(Bundle bundle) {
        this.a = bundle;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = this.a;
        kyf kyfVar = (kyf) obj;
        if (bundle.isEmpty()) {
            return;
        }
        kyfVar.a.putBundle("installed_adapter_data", bundle);
    }
}
