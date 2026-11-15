package com.google.android.libraries.places.internal;

public class zzpr {
    private final String zza;
    private final Class zzb;
    private final boolean zzc;

    protected zzpr(String str, Class cls, boolean z10) {
        this(str, cls, z10, true);
    }

    public static zzpr zza(String str, Class cls) {
        return new zzpr(str, cls, false, false);
    }

    public final String toString() {
        Class cls = this.zzb;
        return getClass().getName() + "/" + this.zza + "[" + cls.getName() + "]";
    }

    public final boolean zzb() {
        return this.zzc;
    }

    private zzpr(String str, Class cls, boolean z10, boolean z11) {
        zzrr.zzb(str);
        this.zza = str;
        this.zzb = cls;
        this.zzc = z10;
        System.identityHashCode(this);
        for (int i10 = 0; i10 < 5; i10++) {
        }
    }
}
