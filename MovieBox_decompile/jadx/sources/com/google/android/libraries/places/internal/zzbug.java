package com.google.android.libraries.places.internal;

import java.net.IDN;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.Locale;

public final class zzbug {
    String zza;
    String zzb;
    int zzc = -1;

    /* JADX WARN: Code duplicated, block: B:34:0x0060  */
    /* JADX WARN: Code duplicated, block: B:44:0x0079 A[LOOP:3: B:33:0x005e->B:44:0x0079, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:47:0x0081 A[LOOP:2: B:25:0x004b->B:47:0x0081, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:54:0x0096  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a1 A[LOOP:1: B:53:0x0094->B:57:0x00a1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:83:0x00a7 A[EDGE_INSN: B:83:0x00a7->B:58:0x00a7 BREAK  A[LOOP:1: B:53:0x0094->B:57:0x00a1], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x0091 A[SYNTHETIC] */
    private static InetAddress zzf(String str, int i10, int i11) {
        int i12;
        int i13;
        char cCharAt;
        int i14;
        int i15;
        int iZza;
        byte[] bArr = new byte[16];
        int i16 = 0;
        int i17 = 1;
        int i18 = -1;
        int i19 = -1;
        int i20 = 0;
        while (i17 < i11) {
            if (i20 == 16) {
                return null;
            }
            int i21 = i17 + 2;
            if (i21 <= i11 && str.regionMatches(i17, "::", i16, 2)) {
                if (i18 != -1) {
                    return null;
                }
                i20 += 2;
                if (i21 == i11) {
                    i18 = i20;
                    break;
                }
                i18 = i20;
                i19 = i21;
                i17 = i19;
                i14 = 0;
                while (i17 < i11) {
                    iZza = zzbui.zza(str.charAt(i17));
                    if (iZza == -1) {
                        break;
                        break;
                    }
                    i17++;
                    i14 = (i14 << 4) + iZza;
                }
                i15 = i17 - i19;
                if (i15 != 0) {
                }
                return null;
            }
            if (i20 != 0) {
                if (!str.regionMatches(i17, ":", i16, 1)) {
                    if (str.regionMatches(i17, ".", i16, 1)) {
                        int i22 = i20 - 2;
                        int i23 = i22;
                        while (i19 < i11) {
                            if (i23 != 16) {
                                if (i23 == i22) {
                                    i12 = i16;
                                    i13 = i19;
                                    while (i13 < i11) {
                                        cCharAt = str.charAt(i13);
                                        if (cCharAt < '0' || cCharAt > '9') {
                                            break;
                                        }
                                        if (i12 != 0) {
                                            i12 = ((i12 * 10) + cCharAt) - 48;
                                            if (i12 <= 255) {
                                                i13++;
                                            }
                                        } else if (i19 == i13) {
                                            i12 = 0;
                                            i12 = ((i12 * 10) + cCharAt) - 48;
                                            if (i12 <= 255) {
                                                i13++;
                                            }
                                        }
                                    }
                                    if (i13 - i19 != 0) {
                                        bArr[i23] = (byte) i12;
                                        i23++;
                                        i19 = i13;
                                        i16 = 0;
                                    }
                                } else if (str.charAt(i19) == '.') {
                                    i19++;
                                    i12 = i16;
                                    i13 = i19;
                                    while (i13 < i11) {
                                        cCharAt = str.charAt(i13);
                                        if (cCharAt < '0') {
                                            break;
                                        }
                                        break;
                                        break;
                                    }
                                    if (i13 - i19 != 0) {
                                        bArr[i23] = (byte) i12;
                                        i23++;
                                        i19 = i13;
                                        i16 = 0;
                                    }
                                }
                            }
                        }
                        if (i23 == i20 + 2) {
                            i20 += 2;
                            break;
                        }
                    }
                    return null;
                }
                i17++;
            }
            i19 = i17;
            i17 = i19;
            i14 = 0;
            while (i17 < i11) {
                iZza = zzbui.zza(str.charAt(i17));
                if (iZza == -1) {
                    break;
                }
                i17++;
                i14 = (i14 << 4) + iZza;
            }
            i15 = i17 - i19;
            if (i15 != 0 || i15 > 4) {
                return null;
            }
            int i24 = i20 + 1;
            bArr[i20] = (byte) ((i14 >>> 8) & 255);
            i20 += 2;
            bArr[i24] = (byte) (i14 & 255);
            i16 = 0;
        }
        if (i20 != 16) {
            if (i18 == -1) {
                return null;
            }
            int i25 = i20 - i18;
            System.arraycopy(bArr, i18, bArr, 16 - i25, i25);
            Arrays.fill(bArr, i18, (16 - i20) + i18, (byte) 0);
        }
        try {
            return InetAddress.getByAddress(bArr);
        } catch (UnknownHostException unused) {
            throw new AssertionError();
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.zza);
        sb2.append("://");
        if (this.zzb.indexOf(58) != -1) {
            sb2.append('[');
            sb2.append(this.zzb);
            sb2.append(']');
        } else {
            sb2.append(this.zzb);
        }
        int iZza = zza();
        if (iZza != zzbui.zzb(this.zza)) {
            sb2.append(':');
            sb2.append(iZza);
        }
        return sb2.toString();
    }

    final int zza() {
        int i10 = this.zzc;
        return i10 != -1 ? i10 : zzbui.zzb(this.zza);
    }

    public final zzbug zzb(String str) {
        int i10;
        String strSubstring;
        if (str == null) {
            throw new IllegalArgumentException("host == null");
        }
        int i11 = 0;
        int iCharCount = 0;
        while (true) {
            int length = str.length();
            i10 = -1;
            if (iCharCount >= length) {
                strSubstring = str.substring(0, length);
                break;
            }
            if (str.charAt(iCharCount) == '%') {
                zzbwb zzbwbVar = new zzbwb();
                zzbwbVar.zzt(str, 0, iCharCount);
                while (iCharCount < length) {
                    int iCodePointAt = str.codePointAt(iCharCount);
                    if (iCodePointAt != 37) {
                        zzbwbVar.zzu(iCodePointAt);
                    } else {
                        int i12 = iCharCount + 2;
                        if (i12 < length) {
                            int iZza = zzbui.zza(str.charAt(iCharCount + 1));
                            int iZza2 = zzbui.zza(str.charAt(i12));
                            if (iZza != -1 && iZza2 != -1) {
                                zzbwbVar.zzm((iZza << 4) + iZza2);
                                iCharCount = i12;
                                iCodePointAt = 37;
                            }
                        }
                        iCodePointAt = 37;
                        zzbwbVar.zzu(iCodePointAt);
                    }
                    iCharCount += Character.charCount(iCodePointAt);
                }
                strSubstring = zzbwbVar.zzi();
                break;
            }
            iCharCount++;
        }
        String strZzi = null;
        if (strSubstring.startsWith("[") && strSubstring.endsWith("]")) {
            InetAddress inetAddressZzf = zzf(strSubstring, 1, strSubstring.length() - 1);
            if (inetAddressZzf != null) {
                byte[] address = inetAddressZzf.getAddress();
                if (address.length != 16) {
                    throw new AssertionError();
                }
                int i13 = 0;
                int i14 = 0;
                while (i13 < address.length) {
                    int i15 = i13;
                    while (i15 < 16 && address[i15] == 0 && address[i15 + 1] == 0) {
                        i15 += 2;
                    }
                    int i16 = i15 - i13;
                    int i17 = i16 > i14 ? i16 : i14;
                    if (i16 > i14) {
                        i10 = i13;
                    }
                    i13 = i15 + 2;
                    i14 = i17;
                }
                zzbwb zzbwbVar2 = new zzbwb();
                while (i11 < address.length) {
                    if (i11 == i10) {
                        zzbwbVar2.zzm(58);
                        i11 += i14;
                        if (i11 == 16) {
                            zzbwbVar2.zzm(58);
                        }
                    } else {
                        if (i11 > 0) {
                            zzbwbVar2.zzm(58);
                        }
                        zzbwbVar2.zzo(((address[i11] & 255) << 8) | (address[i11 + 1] & 255));
                        i11 += 2;
                    }
                }
                strZzi = zzbwbVar2.zzi();
            }
        } else {
            try {
                String lowerCase = IDN.toASCII(strSubstring).toLowerCase(Locale.US);
                if (!lowerCase.isEmpty()) {
                    while (true) {
                        if (i11 >= lowerCase.length()) {
                            strZzi = lowerCase;
                            break;
                        }
                        char cCharAt = lowerCase.charAt(i11);
                        if (cCharAt <= 31 || cCharAt >= 127 || " #%/:?@[\\]".indexOf(cCharAt) != -1) {
                            break;
                            break;
                            break;
                        }
                        i11++;
                    }
                }
            } catch (IllegalArgumentException unused) {
            }
        }
        if (strZzi == null) {
            throw new IllegalArgumentException("unexpected host: ".concat(str));
        }
        this.zzb = strZzi;
        return this;
    }

    public final zzbug zzc(int i10) {
        if (i10 > 0 && i10 <= 65535) {
            this.zzc = i10;
            return this;
        }
        throw new IllegalArgumentException("unexpected port: " + i10);
    }

    public final zzbug zzd(String str) {
        this.zza = "https";
        return this;
    }

    public final zzbui zze() {
        if (this.zza == null) {
            throw new IllegalStateException("scheme == null");
        }
        if (this.zzb != null) {
            return new zzbui(this, null);
        }
        throw new IllegalStateException("host == null");
    }
}
