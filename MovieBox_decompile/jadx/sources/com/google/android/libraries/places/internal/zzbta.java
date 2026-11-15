package com.google.android.libraries.places.internal;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import javax.security.auth.x500.X500Principal;

final class zzbta {
    private final String zza;
    private final int zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private char[] zzg;

    public zzbta(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.zza = name;
        this.zzb = name.length();
    }

    private final char zzb() {
        int i10;
        int i11;
        int i12 = this.zzc + 1;
        this.zzc = i12;
        if (i12 == this.zzb) {
            throw new IllegalStateException("Unexpected end of DN: ".concat(String.valueOf(this.zza)));
        }
        char c10 = this.zzg[i12];
        if (c10 != ' ' && c10 != '%' && c10 != '\\' && c10 != '_' && c10 != '\"' && c10 != '#') {
            switch (c10) {
                default:
                    switch (c10) {
                        case ';':
                        case '<':
                        case '=':
                        case '>':
                            break;
                        default:
                            int iZzc = zzc(i12);
                            this.zzc++;
                            if (iZzc >= 128) {
                                if (iZzc < 192 || iZzc > 247) {
                                    iZzc = 63;
                                } else {
                                    if (iZzc <= 223) {
                                        i10 = iZzc & 31;
                                        i11 = 1;
                                    } else if (iZzc <= 239) {
                                        i10 = iZzc & 15;
                                        i11 = 2;
                                    } else {
                                        i10 = iZzc & 7;
                                        i11 = 3;
                                    }
                                    int i13 = 0;
                                    while (true) {
                                        if (i13 < i11) {
                                            int i14 = this.zzc;
                                            int i15 = i14 + 1;
                                            this.zzc = i15;
                                            if (i15 != this.zzb && this.zzg[i15] == '\\') {
                                                int i16 = i14 + 2;
                                                this.zzc = i16;
                                                int iZzc2 = zzc(i16);
                                                this.zzc++;
                                                if ((iZzc2 & PsExtractor.AUDIO_STREAM) == 128) {
                                                    i10 = (i10 << 6) + (iZzc2 & 63);
                                                    i13++;
                                                }
                                            }
                                            iZzc = 63;
                                        } else {
                                            iZzc = (char) i10;
                                        }
                                    }
                                }
                            }
                            return (char) iZzc;
                    }
                case '*':
                case '+':
                case ',':
                    return c10;
            }
        }
        return c10;
    }

    private final int zzc(int i10) {
        int i11;
        int i12;
        int i13 = i10 + 1;
        if (i13 >= this.zzb) {
            throw new IllegalStateException("Malformed DN: ".concat(String.valueOf(this.zza)));
        }
        char[] cArr = this.zzg;
        char c10 = cArr[i10];
        if (c10 >= '0' && c10 <= '9') {
            i11 = c10 - '0';
        } else if (c10 >= 'a' && c10 <= 'f') {
            i11 = c10 - 'W';
        } else {
            if (c10 < 'A' || c10 > 'F') {
                throw new IllegalStateException("Malformed DN: ".concat(String.valueOf(this.zza)));
            }
            i11 = c10 - '7';
        }
        char c11 = cArr[i13];
        if (c11 >= '0' && c11 <= '9') {
            i12 = c11 - '0';
        } else if (c11 >= 'a' && c11 <= 'f') {
            i12 = c11 - 'W';
        } else {
            if (c11 < 'A' || c11 > 'F') {
                throw new IllegalStateException("Malformed DN: ".concat(String.valueOf(this.zza)));
            }
            i12 = c11 - '7';
        }
        return (i11 << 4) + i12;
    }

    private final String zzd() {
        int i10;
        int i11;
        int i12;
        int i13;
        char c10;
        char c11;
        char c12;
        int i14;
        char c13;
        char c14;
        while (true) {
            i10 = this.zzc;
            i11 = this.zzb;
            if (i10 >= i11 || this.zzg[i10] != ' ') {
                break;
            }
            this.zzc = i10 + 1;
        }
        if (i10 == i11) {
            return null;
        }
        this.zzd = i10;
        this.zzc = i10 + 1;
        while (true) {
            i12 = this.zzc;
            i13 = this.zzb;
            if (i12 >= i13 || (c14 = this.zzg[i12]) == '=' || c14 == ' ') {
                break;
            }
            this.zzc = i12 + 1;
        }
        if (i12 >= i13) {
            throw new IllegalStateException("Unexpected end of DN: ".concat(String.valueOf(this.zza)));
        }
        this.zze = i12;
        if (this.zzg[i12] == ' ') {
            while (true) {
                i12 = this.zzc;
                i14 = this.zzb;
                if (i12 >= i14 || (c13 = this.zzg[i12]) == '=' || c13 != ' ') {
                    break;
                }
                this.zzc = i12 + 1;
            }
            if (this.zzg[i12] != '=' || i12 == i14) {
                throw new IllegalStateException("Unexpected end of DN: ".concat(String.valueOf(this.zza)));
            }
        }
        this.zzc = i12 + 1;
        while (true) {
            int i15 = this.zzc;
            if (i15 >= this.zzb || this.zzg[i15] != ' ') {
                break;
            }
            this.zzc = i15 + 1;
        }
        int i16 = this.zze;
        int i17 = this.zzd;
        if (i16 - i17 > 4) {
            char[] cArr = this.zzg;
            if (cArr[i17 + 3] == '.' && (((c10 = cArr[i17]) == 'O' || c10 == 'o') && (((c11 = cArr[i17 + 1]) == 'I' || c11 == 'i') && ((c12 = cArr[i17 + 2]) == 'D' || c12 == 'd')))) {
                i17 += 4;
                this.zzd = i17;
            }
        }
        return new String(this.zzg, i17, i16 - i17);
    }

    public final String zza(String str) {
        String str2;
        char[] cArr;
        char c10;
        int i10;
        int i11;
        char c11;
        this.zzc = 0;
        this.zzd = 0;
        this.zze = 0;
        this.zzf = 0;
        this.zzg = this.zza.toCharArray();
        String strZzd = zzd();
        if (strZzd == null) {
            return null;
        }
        do {
            int i12 = this.zzc;
            int i13 = this.zzb;
            if (i12 == i13) {
                return null;
            }
            char c12 = this.zzg[i12];
            if (c12 == '\"') {
                int i14 = i12 + 1;
                this.zzc = i14;
                this.zzd = i14;
                this.zze = i14;
                while (true) {
                    int i15 = this.zzc;
                    if (i15 == this.zzb) {
                        throw new IllegalStateException("Unexpected end of DN: ".concat(String.valueOf(this.zza)));
                    }
                    char[] cArr2 = this.zzg;
                    char c13 = cArr2[i15];
                    if (c13 == '\"') {
                        this.zzc = i15 + 1;
                        while (true) {
                            int i16 = this.zzc;
                            if (i16 >= this.zzb || this.zzg[i16] != ' ') {
                                break;
                            }
                            this.zzc = i16 + 1;
                        }
                        char[] cArr3 = this.zzg;
                        int i17 = this.zzd;
                        str2 = new String(cArr3, i17, this.zze - i17);
                        break;
                    }
                    if (c13 == '\\') {
                        cArr2[this.zze] = zzb();
                    } else {
                        cArr2[this.zze] = c13;
                    }
                    this.zzc++;
                    this.zze++;
                }
            } else if (c12 != '#') {
                if (c12 == '+' || c12 == ',' || c12 == ';') {
                    str2 = "";
                } else {
                    this.zzd = i12;
                    this.zze = i12;
                    while (true) {
                        int i18 = this.zzc;
                        if (i18 >= this.zzb) {
                            char[] cArr4 = this.zzg;
                            int i19 = this.zzd;
                            str2 = new String(cArr4, i19, this.zze - i19);
                            break;
                        }
                        char[] cArr5 = this.zzg;
                        char c14 = cArr5[i18];
                        if (c14 != ' ') {
                            if (c14 != ';') {
                                if (c14 == '\\') {
                                    int i20 = this.zze;
                                    this.zze = i20 + 1;
                                    cArr5[i20] = zzb();
                                    this.zzc++;
                                } else if (c14 != '+' && c14 != ',') {
                                    int i21 = this.zze;
                                    this.zze = i21 + 1;
                                    cArr5[i21] = c14;
                                    this.zzc = i18 + 1;
                                }
                            }
                            int i22 = this.zzd;
                            str2 = new String(cArr5, i22, this.zze - i22);
                            break;
                        }
                        int i23 = this.zze;
                        this.zzf = i23;
                        this.zzc = i18 + 1;
                        this.zze = i23 + 1;
                        cArr5[i23] = ' ';
                        while (true) {
                            i10 = this.zzc;
                            i11 = this.zzb;
                            if (i10 >= i11) {
                                break;
                            }
                            char[] cArr6 = this.zzg;
                            if (cArr6[i10] != ' ') {
                                break;
                            }
                            int i24 = this.zze;
                            this.zze = i24 + 1;
                            cArr6[i24] = ' ';
                            this.zzc = i10 + 1;
                        }
                        if (i10 == i11 || (c11 = this.zzg[i10]) == ',' || c11 == '+' || c11 == ';') {
                            char[] cArr7 = this.zzg;
                            int i25 = this.zzd;
                            str2 = new String(cArr7, i25, this.zzf - i25);
                            break;
                        }
                    }
                }
            } else {
                if (i12 + 4 >= i13) {
                    throw new IllegalStateException("Unexpected end of DN: ".concat(String.valueOf(this.zza)));
                }
                this.zzd = i12;
                this.zzc = i12 + 1;
                while (true) {
                    int i26 = this.zzc;
                    if (i26 == this.zzb || (c10 = (cArr = this.zzg)[i26]) == '+' || c10 == ',' || c10 == ';') {
                        this.zze = i26;
                        break;
                    }
                    int i27 = i26 + 1;
                    if (c10 == ' ') {
                        this.zze = i26;
                        this.zzc = i27;
                        while (true) {
                            int i28 = this.zzc;
                            if (i28 >= this.zzb || this.zzg[i28] != ' ') {
                                break;
                            }
                            this.zzc = i28 + 1;
                        }
                    } else {
                        if (c10 >= 'A' && c10 <= 'F') {
                            cArr[i26] = (char) (c10 + ' ');
                        }
                        this.zzc = i27;
                    }
                }
                int i29 = this.zze;
                int i30 = this.zzd;
                int i31 = i29 - i30;
                if (i31 < 5 || (i31 & 1) == 0) {
                    throw new IllegalStateException("Unexpected end of DN: ".concat(String.valueOf(this.zza)));
                }
                int i32 = i31 >> 1;
                byte[] bArr = new byte[i32];
                int i33 = i30 + 1;
                int i34 = 0;
                while (i34 < i32) {
                    bArr[i34] = (byte) zzc(i33);
                    i34++;
                    i33 += 2;
                }
                str2 = new String(this.zzg, this.zzd, i31);
            }
            if ("cn".equalsIgnoreCase(strZzd)) {
                return str2;
            }
            int i35 = this.zzc;
            if (i35 >= this.zzb) {
                return null;
            }
            char c15 = this.zzg[i35];
            if (c15 != ',' && c15 != ';' && c15 != '+') {
                throw new IllegalStateException("Malformed DN: ".concat(String.valueOf(this.zza)));
            }
            this.zzc = i35 + 1;
            strZzd = zzd();
        } while (strZzd != null);
        throw new IllegalStateException("Malformed DN: ".concat(String.valueOf(this.zza)));
    }
}
