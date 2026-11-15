package com.google.android.gms.cloudmessaging;

import android.os.Bundle;

final class zzr extends zzs {
    zzr(int i10, int i11, Bundle bundle) {
        super(i10, i11, bundle);
    }

    @Override
    final void zza(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            zzd(null);
        } else {
            zzc(new zzt(4, "Invalid response to one way request", null));
        }
    }

    @Override
    final boolean zzb() {
        return true;
    }
}
