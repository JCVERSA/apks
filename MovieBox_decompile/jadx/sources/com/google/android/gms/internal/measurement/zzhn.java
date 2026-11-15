package com.google.android.gms.internal.measurement;

import android.util.Log;

final class zzhn extends zzhj<Long> {
    zzhn(zzhr zzhrVar, String str, Long l10, boolean z10) {
        super(zzhrVar, str, l10);
    }

    @Override
    public final Long zza(Object obj) {
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof String) {
            try {
                return Long.valueOf(Long.parseLong((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        Log.e("PhenotypeFlag", "Invalid long value for " + super.zzb() + ": " + String.valueOf(obj));
        return null;
    }
}
