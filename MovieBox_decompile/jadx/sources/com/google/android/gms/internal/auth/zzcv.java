package com.google.android.gms.internal.auth;

import android.util.Log;

final class zzcv extends zzdc {
    zzcv(zzcz zzczVar, String str, Long l10, boolean z10) {
        super(zzczVar, str, l10, true, null);
    }

    @Override
    final Object zza(Object obj) {
        try {
            return Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException unused) {
            Log.e("PhenotypeFlag", "Invalid long value for " + super.zzc() + ": " + ((String) obj));
            return null;
        }
    }
}
