package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
import java.util.Map;

final class zzly extends zzlv {
    zzly() {
        super();
    }

    @Override
    public final void zzd() {
        if (!zze()) {
            for (int i10 = 0; i10 < zza(); i10++) {
                Map.Entry entryZza = zza(i10);
                if (((zzjo) entryZza.getKey()).zze()) {
                    entryZza.setValue(Collections.unmodifiableList((List) entryZza.getValue()));
                }
            }
            for (Map.Entry entry : zzb()) {
                if (((zzjo) entry.getKey()).zze()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzd();
    }
}
