package com.google.android.gms.iid;

public abstract class zzai {
    private static zzai zzdd;

    public static synchronized zzai zzy() {
        try {
            if (zzdd == null) {
                zzdd = new zzac();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return zzdd;
    }

    public abstract zzaj<Boolean> zzd(String str, boolean z10);
}
