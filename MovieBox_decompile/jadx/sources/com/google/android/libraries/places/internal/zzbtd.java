package com.google.android.libraries.places.internal;

public final class zzbtd {
    private final String[] zza;

    zzbtd(zzbtb zzbtbVar, zzbtc zzbtcVar) {
        this.zza = (String[]) zzbtbVar.zza.toArray(new String[zzbtbVar.zza.size()]);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        int iZza = zza();
        for (int i10 = 0; i10 < iZza; i10++) {
            sb2.append(zzb(i10));
            sb2.append(": ");
            sb2.append(zzc(i10));
            sb2.append("\n");
        }
        return sb2.toString();
    }

    public final int zza() {
        return this.zza.length >> 1;
    }

    public final String zzb(int i10) {
        int i11 = i10 + i10;
        if (i11 < 0) {
            return null;
        }
        String[] strArr = this.zza;
        if (i11 >= strArr.length) {
            return null;
        }
        return strArr[i11];
    }

    public final String zzc(int i10) {
        int i11 = i10 + i10 + 1;
        if (i11 < 0) {
            return null;
        }
        String[] strArr = this.zza;
        if (i11 >= strArr.length) {
            return null;
        }
        return strArr[i11];
    }
}
