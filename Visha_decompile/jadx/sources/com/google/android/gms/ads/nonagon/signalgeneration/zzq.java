package com.google.android.gms.ads.nonagon.signalgeneration;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.query.QueryInfo;
import java.util.concurrent.atomic.AtomicBoolean;

public final class zzq {
    public final QueryInfo a;
    public final String b;
    public final long c;
    public final int d;
    public final AtomicBoolean e = new AtomicBoolean(false);

    public zzq(@Nullable QueryInfo queryInfo, String str, long j, int i) {
        this.a = queryInfo;
        this.b = str;
        this.c = j;
        this.d = i;
    }

    public final int zza() {
        return this.d;
    }

    @Nullable
    public final QueryInfo zzb() {
        return this.a;
    }

    public final String zzc() {
        return this.b;
    }

    public final void zzd() {
        this.e.set(true);
    }

    public final boolean zze() {
        return this.c <= com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
    }

    public final boolean zzf() {
        return this.e.get();
    }
}
