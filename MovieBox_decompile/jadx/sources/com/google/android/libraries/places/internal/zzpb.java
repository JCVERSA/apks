package com.google.android.libraries.places.internal;

public abstract class zzpb extends zzpd {
    protected zzpb() {
    }

    private static char[] zzd(char[] cArr, int i10, int i11) {
        if (i11 < 0) {
            throw new AssertionError("Cannot increase internal buffer any further");
        }
        char[] cArr2 = new char[i11];
        if (i10 > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i10);
        }
        return cArr2;
    }

    @Override
    public String zza(String str) {
        throw null;
    }

    protected abstract char[] zzb(char c10);

    protected final String zzc(String str, int i10) {
        int length;
        char[] cArrZza = zzpk.zza();
        int length2 = cArrZza.length;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            length = str.length();
            if (i10 >= length) {
                break;
            }
            int i13 = i10 + 1;
            char[] cArrZzb = zzb(str.charAt(i10));
            if (cArrZzb != null) {
                int i14 = i10 - i11;
                int i15 = i12 + i14;
                int length3 = cArrZzb.length;
                int i16 = i15 + length3;
                if (length2 < i16) {
                    int i17 = length - i10;
                    length2 = i16 + i17 + i17;
                    cArrZza = zzd(cArrZza, i12, length2);
                }
                if (i14 > 0) {
                    str.getChars(i11, i10, cArrZza, i12);
                    i12 = i15;
                }
                if (length3 > 0) {
                    System.arraycopy(cArrZzb, 0, cArrZza, i12, length3);
                    i12 += length3;
                }
                i11 = i13;
            }
            i10 = i13;
        }
        int i18 = length - i11;
        if (i18 > 0) {
            int i19 = i18 + i12;
            if (length2 < i19) {
                cArrZza = zzd(cArrZza, i12, i19);
            }
            str.getChars(i11, length, cArrZza, i12);
            i12 = i19;
        }
        return new String(cArrZza, 0, i12);
    }
}
