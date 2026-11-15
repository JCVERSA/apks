package com.google.android.gms.internal.measurement;

import android.util.Log;

final class zzhq extends zzhj<Boolean> {
    zzhq(zzhr zzhrVar, String str, Boolean bool, boolean z10) {
        super(zzhrVar, str, bool);
    }

    @Override
    final Boolean zza(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (zzgi.zzc.matcher(str).matches()) {
                return Boolean.TRUE;
            }
            if (zzgi.zzd.matcher(str).matches()) {
                return Boolean.FALSE;
            }
        }
        Log.e("PhenotypeFlag", "Invalid boolean value for " + super.zzb() + ": " + String.valueOf(obj));
        return null;
    }
}
