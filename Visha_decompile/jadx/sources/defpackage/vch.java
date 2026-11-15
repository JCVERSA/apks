package defpackage;

import android.os.Bundle;

public final class vch implements deh {
    public final Bundle a;

    public vch(Bundle bundle) {
        this.a = bundle;
    }

    @Override
    public final void zza(Object obj) {
        Bundle bundle = this.a;
        kyf kyfVar = (kyf) obj;
        if (bundle != null) {
            kyfVar.b.putAll(bundle);
        }
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = this.a;
        kyf kyfVar = (kyf) obj;
        if (bundle != null) {
            kyfVar.a.putAll(bundle);
        }
    }
}
