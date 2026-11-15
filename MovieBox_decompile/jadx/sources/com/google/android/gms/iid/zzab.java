package com.google.android.gms.iid;

import android.os.Bundle;
import android.util.Log;

final class zzab extends zzz<Bundle> {
    zzab(int i10, int i11, Bundle bundle) {
        super(i10, 1, bundle);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override
    final void zzh(Bundle bundle) {
        Object bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(this);
            String strValueOf2 = String.valueOf(bundle2);
            StringBuilder sb2 = new StringBuilder(strValueOf.length() + 16 + strValueOf2.length());
            sb2.append("Finishing ");
            sb2.append(strValueOf);
            sb2.append(" with ");
            sb2.append(strValueOf2);
        }
        this.zzcq.setResult((T) bundle2);
    }

    @Override
    final boolean zzw() {
        return false;
    }
}
