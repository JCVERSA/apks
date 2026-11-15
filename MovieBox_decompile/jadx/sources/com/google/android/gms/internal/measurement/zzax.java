package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;

public final class zzax implements zzaq {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj instanceof zzax;
    }

    @Override
    public final zzaq zza(String str, zzh zzhVar, List<zzaq> list) {
        throw new IllegalStateException(String.format("Undefined has no function %s", str));
    }

    @Override
    public final zzaq zzc() {
        return zzaq.zzc;
    }

    @Override
    public final Boolean zzd() {
        return Boolean.FALSE;
    }

    @Override
    public final Double zze() {
        return Double.valueOf(Double.NaN);
    }

    @Override
    public final String zzf() {
        return "undefined";
    }

    @Override
    public final Iterator<zzaq> zzh() {
        return null;
    }
}
