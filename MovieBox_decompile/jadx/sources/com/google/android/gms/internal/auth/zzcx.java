package com.google.android.gms.internal.auth;

import android.util.Log;

final class zzcx extends zzdc {
    zzcx(zzcz zzczVar, String str, Double d10, boolean z10) {
        super(zzczVar, str, d10, true, null);
    }

    @Override
    final Object zza(Object obj) {
        try {
            return Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException unused) {
            Log.e("PhenotypeFlag", "Invalid double value for " + super.zzc() + ": " + ((String) obj));
            return null;
        }
    }
}
