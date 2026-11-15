package com.google.android.gms.internal.ads;

import defpackage.eki;

public final class zzgnw extends RuntimeException {
    public zzgnw(String str) {
        super(str);
    }

    public static Object zza(eki ekiVar) {
        try {
            return ekiVar.zza();
        } catch (Exception e) {
            throw new zzgnw(e);
        }
    }

    public zzgnw(String str, Throwable th) {
        super(str, th);
    }

    public zzgnw(Throwable th) {
        super(th);
    }
}
