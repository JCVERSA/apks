package com.google.android.libraries.places.internal;

public class zzoz extends zzpb {
    private final char[][] zza;
    private final int zzb;
    private final char zzc;

    protected zzoz(zzpa zzpaVar, char c10, char c11) {
        char[][] cArrZzb = zzpaVar.zzb();
        this.zza = cArrZzb;
        this.zzb = cArrZzb.length;
        this.zzc = (char) 65535;
    }

    @Override
    public final String zza(String str) {
        str.getClass();
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if ((cCharAt < this.zzb && this.zza[cCharAt] != null) || cCharAt > this.zzc) {
                return zzc(str, i10);
            }
        }
        return str;
    }

    @Override
    protected final char[] zzb(char c10) {
        char[] cArr;
        if (c10 >= this.zzb || (cArr = this.zza[c10]) == null) {
            return null;
        }
        return cArr;
    }
}
