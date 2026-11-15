package com.google.android.gms.internal.auth;

import android.util.Log;

final class zzcw extends zzdc {
    zzcw(zzcz zzczVar, String str, Boolean bool, boolean z10) {
        super(zzczVar, str, bool, true, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    final Object zza(Object obj) {
        if (zzcb.zzc.matcher(obj).matches()) {
            return Boolean.TRUE;
        }
        if (zzcb.zzd.matcher(obj).matches()) {
            return Boolean.FALSE;
        }
        Log.e("PhenotypeFlag", "Invalid boolean value for " + super.zzc() + ": " + ((String) obj));
        return null;
    }
}
