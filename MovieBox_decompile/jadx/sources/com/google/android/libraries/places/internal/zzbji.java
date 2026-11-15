package com.google.android.libraries.places.internal;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;

public abstract class zzbji {
    private final Set zza = Collections.newSetFromMap(new IdentityHashMap());

    protected abstract void zza();

    protected abstract void zzb();

    public final void zzc(Object obj, boolean z10) {
        int size = this.zza.size();
        if (z10) {
            this.zza.add(obj);
            if (size == 0) {
                zza();
                return;
            }
            return;
        }
        if (this.zza.remove(obj) && size == 1) {
            zzb();
        }
    }

    public final boolean zzd(Object... objArr) {
        for (int i10 = 0; i10 < 2; i10++) {
            if (this.zza.contains(objArr[i10])) {
                return true;
            }
        }
        return false;
    }

    public final boolean zze() {
        return !this.zza.isEmpty();
    }
}
