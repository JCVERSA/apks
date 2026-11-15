package com.google.android.gms.internal.ads;

public final class zzfom extends Exception {
    private final int zza;

    public zzfom(int i, String str) {
        super(str);
        this.zza = i;
    }

    public final int zza() {
        return this.zza;
    }

    public zzfom(int i, Throwable th) {
        super(th);
        this.zza = i;
    }
}
