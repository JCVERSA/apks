package com.google.android.gms.cloudmessaging;

import android.os.Bundle;

final class zzu extends zzs {
    zzu(int i10, int i11, Bundle bundle) {
        super(i10, i11, bundle);
    }

    @Override
    final void zza(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        zzd(bundle2);
    }

    @Override
    final boolean zzb() {
        return false;
    }
}
