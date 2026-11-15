package com.google.android.gms.internal.ads;

import java.io.IOException;

public class zzgyk extends IOException {
    private boolean zza;

    public zzgyk(IOException iOException) {
        super(iOException.getMessage(), iOException);
    }

    public final void zza() {
        this.zza = true;
    }

    public final boolean zzb() {
        return this.zza;
    }

    public zzgyk(String str) {
        super(str);
    }
}
