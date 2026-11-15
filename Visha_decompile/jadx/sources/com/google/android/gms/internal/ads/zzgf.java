package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;

public class zzgf extends IOException {
    public final int zza;

    public zzgf(int i) {
        this.zza = i;
    }

    public zzgf(@Nullable String str, int i) {
        super(str);
        this.zza = i;
    }

    public zzgf(@Nullable String str, @Nullable Throwable th, int i) {
        super(str, th);
        this.zza = i;
    }

    public zzgf(@Nullable Throwable th, int i) {
        super(th);
        this.zza = i;
    }
}
