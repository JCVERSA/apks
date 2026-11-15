package com.google.android.libraries.places.internal;

import java.io.Serializable;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

@SourceDebugExtension
public class zzbwf implements Serializable, Comparable {
    public static final zzbwe zza = new zzbwe(null);

    @JvmField
    public static final zzbwf zzb = new zzbwf(new byte[0]);
    private final byte[] zzc;
    private transient int zzd;
    private transient String zze;

    public zzbwf(byte[] data) {
        Intrinsics.h(data, "data");
        this.zzc = data;
    }

    @Override
    public final int compareTo(Object obj) {
        zzbwf other = (zzbwf) obj;
        Intrinsics.h(other, "other");
        int iZzc = zzc();
        int iZzc2 = other.zzc();
        int iMin = Math.min(iZzc, iZzc2);
        for (int i10 = 0; i10 < iMin; i10++) {
            int iZza = zza(i10) & 255;
            int iZza2 = other.zza(i10) & 255;
            if (iZza != iZza2) {
                if (iZza < iZza2) {
                    return -1;
                }
                return 1;
            }
        }
        if (iZzc == iZzc2) {
            return 0;
        }
        if (iZzc < iZzc2) {
            return -1;
        }
        return 1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbwf) {
            zzbwf zzbwfVar = (zzbwf) obj;
            int iZzc = zzbwfVar.zzc();
            byte[] bArr = this.zzc;
            int length = bArr.length;
            if (iZzc == length && zzbwfVar.zzl(0, bArr, 0, length)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i10 = this.zzd;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = Arrays.hashCode(this.zzc);
        this.zzd = iHashCode;
        return iHashCode;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0030 A[EDGE_INSN: B:17:0x0030->B:127:0x0155 BREAK  A[LOOP:0: B:6:0x0014->B:180:0x0014]] */
    public String toString() {
        int i10 = 2;
        int i11 = 1;
        byte[] bArr = this.zzc;
        int length = bArr.length;
        if (length == 0) {
            return "[size=0]";
        }
        int i12 = zzbwy.zza;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        loop0: while (i13 < length) {
            byte b10 = bArr[i13];
            if (b10 < 0) {
                if ((b10 >> 5) != -2) {
                    if ((b10 >> 4) != -2) {
                        if ((b10 >> 3) != -2) {
                            if (i14 == 64) {
                                break;
                            }
                            i15 = -1;
                            break;
                        }
                        int i16 = i13 + 3;
                        if (length > i16) {
                            byte b11 = bArr[i13 + 1];
                            if ((b11 & 192) != 128) {
                                if (i14 == 64) {
                                    break;
                                }
                                i15 = -1;
                                break;
                            }
                            byte b12 = bArr[i13 + 2];
                            if ((b12 & 192) != 128) {
                                if (i14 == 64) {
                                    break;
                                }
                                i15 = -1;
                                break;
                            }
                            byte b13 = bArr[i16];
                            if ((b13 & 192) != 128) {
                                if (i14 == 64) {
                                    break;
                                }
                                i15 = -1;
                                break;
                            }
                            int i17 = (((b13 ^ 3678080) ^ (b12 << 6)) ^ (b11 << 12)) ^ (b10 << 18);
                            if (i17 <= 1114111) {
                                if (i17 >= 55296 && i17 < 57344) {
                                    if (i14 == 64) {
                                        break;
                                    }
                                    i15 = -1;
                                    break;
                                }
                                if (i17 >= 65536) {
                                    int i18 = i14 + 1;
                                    if (i14 == 64) {
                                        break;
                                    }
                                    i15 += 2;
                                    Unit unit = Unit.f64096a;
                                    i13 += 4;
                                    i14 = i18;
                                    i11 = 1;
                                    i10 = 2;
                                } else {
                                    if (i14 == 64) {
                                        break;
                                    }
                                    i15 = -1;
                                    break;
                                }
                            } else {
                                if (i14 == 64) {
                                    break;
                                }
                                i15 = -1;
                                break;
                            }
                        } else {
                            if (i14 == 64) {
                                break;
                            }
                            i15 = -1;
                            break;
                        }
                    } else {
                        int i19 = i13 + 2;
                        if (length > i19) {
                            byte b14 = bArr[i13 + 1];
                            if ((b14 & 192) != 128) {
                                if (i14 == 64) {
                                    break;
                                }
                                i15 = -1;
                                break;
                            }
                            byte b15 = bArr[i19];
                            if ((b15 & 192) != 128) {
                                if (i14 == 64) {
                                    break;
                                }
                                i15 = -1;
                                break;
                            }
                            int i20 = ((b15 ^ (-123008)) ^ (b14 << 6)) ^ (b10 << 12);
                            if (i20 >= 2048) {
                                if (i20 >= 55296 && i20 < 57344) {
                                    if (i14 == 64) {
                                        break;
                                    }
                                    i15 = -1;
                                    break;
                                }
                                int i21 = i14 + 1;
                                if (i14 == 64) {
                                    break;
                                }
                                if (i20 == 65533) {
                                    i15 = -1;
                                    break;
                                }
                                i13 += 3;
                                i15 += i20 < 65536 ? i11 : 2;
                                Unit unit2 = Unit.f64096a;
                                i14 = i21;
                                i10 = 2;
                            } else {
                                if (i14 == 64) {
                                    break;
                                }
                                i15 = -1;
                                break;
                            }
                        } else {
                            if (i14 == 64) {
                                break;
                            }
                            i15 = -1;
                            break;
                        }
                    }
                } else {
                    int i22 = i13 + 1;
                    if (length > i22) {
                        byte b16 = bArr[i22];
                        if ((b16 & 192) != 128) {
                            if (i14 == 64) {
                                break;
                            }
                            i15 = -1;
                            break;
                        }
                        int i23 = (b16 ^ 3968) ^ (b10 << 6);
                        if (i23 >= 128) {
                            int i24 = i14 + 1;
                            if (i14 != 64) {
                                if (i23 < 160 || i23 == 65533) {
                                    i15 = -1;
                                    break;
                                }
                                i13 += i10;
                                i15 += i23 < 65536 ? i11 : i10;
                                Unit unit3 = Unit.f64096a;
                                i14 = i24;
                            } else {
                                break;
                            }
                        } else {
                            if (i14 == 64) {
                                break;
                            }
                            i15 = -1;
                            break;
                        }
                    } else {
                        if (i14 == 64) {
                            break;
                        }
                        i15 = -1;
                        break;
                    }
                }
            } else {
                int i25 = i14 + 1;
                if (i14 == 64) {
                    break;
                }
                if (b10 == 10 || b10 == 13 || (b10 >= 32 && b10 < 127)) {
                    i15 += i11;
                    i13 += i11;
                    while (true) {
                        if (i13 < length) {
                            byte b17 = bArr[i13];
                            if (b17 >= 0) {
                                i13 += i11;
                                int i26 = i25 + 1;
                                if (i25 == 64) {
                                    break loop0;
                                }
                                if (b17 == 10 || b17 == 13 || (b17 >= 32 && b17 < 127)) {
                                    i15 += i11;
                                    i25 = i26;
                                }
                            }
                        }
                        i14 = i25;
                    }
                }
                i15 = -1;
                break;
            }
        }
        if (i15 != -1) {
            String strZzf = zzf();
            String strSubstring = strZzf.substring(0, i15);
            Intrinsics.g(strSubstring, "substring(...)");
            String strQ = StringsKt.Q(StringsKt.Q(StringsKt.Q(strSubstring, "\\", "\\\\", false, 4, null), "\n", "\\n", false, 4, null), "\r", "\\r", false, 4, null);
            if (i15 >= strZzf.length()) {
                return "[text=" + strQ + "]";
            }
            return "[size=" + this.zzc.length + " text=" + strQ + "…]";
        }
        int length2 = this.zzc.length;
        if (length2 <= 64) {
            return "[hex=" + zze() + "]";
        }
        Intrinsics.h(this, "<this>");
        byte[] bArr2 = this.zzc;
        int length3 = bArr2.length;
        if (length3 < 64) {
            throw new IllegalArgumentException("endIndex > length(" + length3 + ")");
        }
        return "[size=" + length2 + " hex=" + (length3 != 64 ? new zzbwf(ArraysKt.q(bArr2, 0, 64)) : this).zze() + "…]";
    }

    public byte zza(int i10) {
        return this.zzc[i10];
    }

    public final int zzb() {
        return this.zzd;
    }

    public int zzc() {
        return this.zzc.length;
    }

    public final String zzd() {
        return zzbvu.zza(this.zzc, null, 1, null);
    }

    public String zze() {
        byte[] bArr = this.zzc;
        int length = bArr.length;
        char[] cArr = new char[length + length];
        int i10 = 0;
        for (byte b10 : bArr) {
            cArr[i10] = zzbwy.zza()[(b10 >> 4) & 15];
            cArr[i10 + 1] = zzbwy.zza()[b10 & 15];
            i10 += 2;
        }
        return StringsKt.B(cArr);
    }

    public final String zzf() {
        String str = this.zze;
        if (str != null) {
            return str;
        }
        String strZza = zzbww.zza(zzo());
        this.zze = strZza;
        return strZza;
    }

    public zzbwf zzg() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.zzc;
            int length = bArr.length;
            if (i10 >= length) {
                return this;
            }
            int i11 = i10 + 1;
            byte b10 = bArr[i10];
            if (b10 >= 65 && b10 <= 90) {
                byte[] bArrCopyOf = Arrays.copyOf(bArr, length);
                Intrinsics.g(bArrCopyOf, "copyOf(...)");
                bArrCopyOf[i10] = (byte) (b10 + 32);
                while (i11 < bArrCopyOf.length) {
                    int i12 = i11 + 1;
                    byte b11 = bArrCopyOf[i11];
                    if (b11 >= 65 && b11 <= 90) {
                        bArrCopyOf[i11] = (byte) (b11 + 32);
                    }
                    i11 = i12;
                }
                return new zzbwf(bArrCopyOf);
            }
            i10 = i11;
        }
    }

    public final void zzh(int i10) {
        this.zzd = i10;
    }

    public final void zzi(String str) {
        this.zze = str;
    }

    public void zzj(zzbwb buffer, int i10, int i11) {
        Intrinsics.h(buffer, "buffer");
        int i12 = zzbwy.zza;
        Intrinsics.h(this, "<this>");
        Intrinsics.h(buffer, "buffer");
        buffer.zzl(this.zzc, 0, i11);
    }

    public boolean zzk(int i10, zzbwf other, int i11, int i12) {
        Intrinsics.h(other, "other");
        return other.zzl(0, this.zzc, 0, i12);
    }

    public boolean zzl(int i10, byte[] other, int i11, int i12) {
        Intrinsics.h(other, "other");
        if (i10 < 0) {
            return false;
        }
        byte[] bArr = this.zzc;
        return i10 <= bArr.length - i12 && i11 >= 0 && i11 <= other.length - i12 && zzbvv.zzc(bArr, i10, other, i11, i12);
    }

    public final boolean zzm(zzbwf prefix) {
        Intrinsics.h(prefix, "prefix");
        return zzk(0, prefix, 0, prefix.zzc.length);
    }

    public final byte[] zzn() {
        return this.zzc;
    }

    public byte[] zzo() {
        return this.zzc;
    }

    public byte[] zzp() {
        byte[] bArr = this.zzc;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.g(bArrCopyOf, "copyOf(...)");
        return bArrCopyOf;
    }
}
