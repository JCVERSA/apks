package com.google.android.gms.measurement.internal;

import androidx.collection.z;
import com.google.android.gms.common.internal.Preconditions;

final class zzho extends z {
    private final zzhl zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzho(zzhl zzhlVar, int i10) {
        super(20);
        this.zza = zzhlVar;
    }

    @Override
    protected final Object create(Object obj) {
        String str = (String) obj;
        Preconditions.checkNotEmpty(str);
        return zzhl.zza(this.zza, str);
    }
}
