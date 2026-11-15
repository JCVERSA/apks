package com.google.android.gms.internal.play_billing;

import java.util.Set;

public abstract class zzaj extends zzac implements Set {
    private transient zzaf zza;

    zzaj() {
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this || obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size() && containsAll(set)) {
                    return true;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override
    public final int hashCode() {
        return zzar.zza(this);
    }

    @Override
    public zzaf zzd() {
        zzaf zzafVar = this.zza;
        if (zzafVar != null) {
            return zzafVar;
        }
        zzaf zzafVarZzh = zzh();
        this.zza = zzafVarZzh;
        return zzafVarZzh;
    }

    @Override
    public abstract zzas iterator();

    zzaf zzh() {
        Object[] array = toArray();
        int i10 = zzaf.zzd;
        return zzaf.zzi(array, array.length);
    }
}
