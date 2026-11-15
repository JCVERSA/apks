package com.google.android.libraries.places.internal;

import java.util.Locale;

final class zzbty {
    private static final String[] zza = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
    private static final String[] zzb = new String[64];
    private static final String[] zzc = new String[256];

    static {
        for (int i10 = 0; i10 < 256; i10++) {
            zzc[i10] = String.format("%8s", Integer.toBinaryString(i10)).replace(' ', '0');
        }
        String[] strArr = zzb;
        strArr[0] = "";
        strArr[1] = "END_STREAM";
        int[] iArr = {1};
        strArr[8] = "PADDED";
        for (int i11 = 0; i11 <= 0; i11++) {
            int i12 = iArr[i11];
            String[] strArr2 = zzb;
            strArr2[i12 | 8] = String.valueOf(strArr2[i12]).concat("|PADDED");
        }
        String[] strArr3 = zzb;
        strArr3[4] = "END_HEADERS";
        strArr3[32] = "PRIORITY";
        strArr3[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i13 = 0; i13 < 3; i13++) {
            int i14 = iArr2[i13];
            for (int i15 = 0; i15 <= 0; i15++) {
                int i16 = iArr[i15];
                int i17 = i16 | i14;
                String[] strArr4 = zzb;
                strArr4[i17] = strArr4[i16] + "|" + strArr4[i14];
                strArr4[i17 | 8] = strArr4[i16] + "|" + strArr4[i14] + "|PADDED";
            }
        }
        for (int i18 = 0; i18 < 64; i18++) {
            String[] strArr5 = zzb;
            if (strArr5[i18] == null) {
                strArr5[i18] = zzc[i18];
            }
        }
    }

    zzbty() {
    }

    /* JADX WARN: Code duplicated, block: B:29:0x005d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0069  */
    static String zza(boolean z10, int i10, int i11, byte b10, byte b11) {
        String strReplace;
        String str = b10 < 10 ? zza[b10] : String.format("0x%02x", Byte.valueOf(b10));
        if (b11 == 0) {
            strReplace = "";
        } else if (b10 == 2 || b10 == 3) {
            strReplace = zzc[b11];
        } else if (b10 == 4 || b10 == 6) {
            strReplace = b11 == 1 ? "ACK" : zzc[b11];
        } else if (b10 == 7 || b10 == 8) {
            strReplace = zzc[b11];
        } else {
            String str2 = b11 < 64 ? zzb[b11] : zzc[b11];
            if (b10 == 5) {
                if ((b11 & 4) != 0) {
                    strReplace = str2.replace("HEADERS", "PUSH_PROMISE");
                } else {
                    strReplace = str2;
                }
            } else if (b10 != 0 || (b11 & 32) == 0) {
                strReplace = str2;
            } else {
                strReplace = str2.replace("PRIORITY", "COMPRESSED");
            }
        }
        return String.format(Locale.US, "%s 0x%08x %5d %-13s %s", true != z10 ? ">>" : "<<", Integer.valueOf(i10), Integer.valueOf(i11), str, strReplace);
    }
}
