package com.google.android.gms.internal.play_billing;

import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.mvel2.ast.ASTNode;
import sun.misc.Unsafe;

final class zzgf<T> implements zzgm<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzhn.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzgc zzg;
    private final boolean zzh;
    private final int[] zzi;
    private final int zzj;
    private final int zzk;
    private final zzfq zzl;
    private final zzhd zzm;
    private final zzek zzn;
    private final zzgh zzo;
    private final zzfx zzp;

    private zzgf(int[] iArr, Object[] objArr, int i10, int i11, zzgc zzgcVar, int i12, boolean z10, int[] iArr2, int i13, int i14, zzgh zzghVar, zzfq zzfqVar, zzhd zzhdVar, zzek zzekVar, zzfx zzfxVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i10;
        this.zzf = i11;
        boolean z11 = false;
        if (zzekVar != null && zzekVar.zzc(zzgcVar)) {
            z11 = true;
        }
        this.zzh = z11;
        this.zzi = iArr2;
        this.zzj = i13;
        this.zzk = i14;
        this.zzo = zzghVar;
        this.zzl = zzfqVar;
        this.zzm = zzhdVar;
        this.zzn = zzekVar;
        this.zzg = zzgcVar;
        this.zzp = zzfxVar;
    }

    private static void zzA(Object obj) {
        if (!zzL(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    private final void zzB(Object obj, Object obj2, int i10) {
        if (zzI(obj2, i10)) {
            int iZzs = zzs(i10) & 1048575;
            Unsafe unsafe = zzb;
            long j10 = iZzs;
            Object object = unsafe.getObject(obj2, j10);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i10] + " is present but null: " + obj2.toString());
            }
            zzgm zzgmVarZzv = zzv(i10);
            if (!zzI(obj, i10)) {
                if (zzL(object)) {
                    Object objZze = zzgmVarZzv.zze();
                    zzgmVarZzv.zzg(objZze, object);
                    unsafe.putObject(obj, j10, objZze);
                } else {
                    unsafe.putObject(obj, j10, object);
                }
                zzD(obj, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, j10);
            if (!zzL(object2)) {
                Object objZze2 = zzgmVarZzv.zze();
                zzgmVarZzv.zzg(objZze2, object2);
                unsafe.putObject(obj, j10, objZze2);
                object2 = objZze2;
            }
            zzgmVarZzv.zzg(object2, object);
        }
    }

    private final void zzC(Object obj, Object obj2, int i10) {
        int i11 = this.zzc[i10];
        if (zzM(obj2, i11, i10)) {
            int iZzs = zzs(i10) & 1048575;
            Unsafe unsafe = zzb;
            long j10 = iZzs;
            Object object = unsafe.getObject(obj2, j10);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i10] + " is present but null: " + obj2.toString());
            }
            zzgm zzgmVarZzv = zzv(i10);
            if (!zzM(obj, i11, i10)) {
                if (zzL(object)) {
                    Object objZze = zzgmVarZzv.zze();
                    zzgmVarZzv.zzg(objZze, object);
                    unsafe.putObject(obj, j10, objZze);
                } else {
                    unsafe.putObject(obj, j10, object);
                }
                zzE(obj, i11, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, j10);
            if (!zzL(object2)) {
                Object objZze2 = zzgmVarZzv.zze();
                zzgmVarZzv.zzg(objZze2, object2);
                unsafe.putObject(obj, j10, objZze2);
                object2 = objZze2;
            }
            zzgmVarZzv.zzg(object2, object);
        }
    }

    private final void zzD(Object obj, int i10) {
        int iZzp = zzp(i10);
        long j10 = 1048575 & iZzp;
        if (j10 == 1048575) {
            return;
        }
        zzhn.zzq(obj, j10, (1 << (iZzp >>> 20)) | zzhn.zzc(obj, j10));
    }

    private final void zzE(Object obj, int i10, int i11) {
        zzhn.zzq(obj, zzp(i11) & 1048575, i10);
    }

    private final void zzF(Object obj, int i10, Object obj2) {
        zzb.putObject(obj, zzs(i10) & 1048575, obj2);
        zzD(obj, i10);
    }

    private final void zzG(Object obj, int i10, int i11, Object obj2) {
        zzb.putObject(obj, zzs(i11) & 1048575, obj2);
        zzE(obj, i10, i11);
    }

    private final boolean zzH(Object obj, Object obj2, int i10) {
        return zzI(obj, i10) == zzI(obj2, i10);
    }

    private final boolean zzI(Object obj, int i10) {
        int iZzp = zzp(i10);
        long j10 = iZzp & 1048575;
        if (j10 != 1048575) {
            return (zzhn.zzc(obj, j10) & (1 << (iZzp >>> 20))) != 0;
        }
        int iZzs = zzs(i10);
        long j11 = iZzs & 1048575;
        switch (zzr(iZzs)) {
            case 0:
                return Double.doubleToRawLongBits(zzhn.zza(obj, j11)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzhn.zzb(obj, j11)) != 0;
            case 2:
                return zzhn.zzd(obj, j11) != 0;
            case 3:
                return zzhn.zzd(obj, j11) != 0;
            case 4:
                return zzhn.zzc(obj, j11) != 0;
            case 5:
                return zzhn.zzd(obj, j11) != 0;
            case 6:
                return zzhn.zzc(obj, j11) != 0;
            case 7:
                return zzhn.zzw(obj, j11);
            case 8:
                Object objZzf = zzhn.zzf(obj, j11);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzdw) {
                    return !zzdw.zzb.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzhn.zzf(obj, j11) != null;
            case 10:
                return !zzdw.zzb.equals(zzhn.zzf(obj, j11));
            case 11:
                return zzhn.zzc(obj, j11) != 0;
            case 12:
                return zzhn.zzc(obj, j11) != 0;
            case 13:
                return zzhn.zzc(obj, j11) != 0;
            case 14:
                return zzhn.zzd(obj, j11) != 0;
            case 15:
                return zzhn.zzc(obj, j11) != 0;
            case 16:
                return zzhn.zzd(obj, j11) != 0;
            case 17:
                return zzhn.zzf(obj, j11) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzJ(Object obj, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return zzI(obj, i10);
        }
        return (i12 & i13) != 0;
    }

    private static boolean zzK(Object obj, int i10, zzgm zzgmVar) {
        return zzgmVar.zzk(zzhn.zzf(obj, i10 & 1048575));
    }

    private static boolean zzL(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzex) {
            return ((zzex) obj).zzt();
        }
        return true;
    }

    private final boolean zzM(Object obj, int i10, int i11) {
        return zzhn.zzc(obj, (long) (zzp(i11) & 1048575)) == i10;
    }

    private static boolean zzN(Object obj, long j10) {
        return ((Boolean) zzhn.zzf(obj, j10)).booleanValue();
    }

    private static final void zzO(int i10, Object obj, zzhv zzhvVar) throws IOException {
        if (obj instanceof String) {
            zzhvVar.zzF(i10, (String) obj);
        } else {
            zzhvVar.zzd(i10, (zzdw) obj);
        }
    }

    static zzhe zzd(Object obj) {
        zzex zzexVar = (zzex) obj;
        zzhe zzheVar = zzexVar.zzc;
        if (zzheVar != zzhe.zzc()) {
            return zzheVar;
        }
        zzhe zzheVarZzf = zzhe.zzf();
        zzexVar.zzc = zzheVarZzf;
        return zzheVarZzf;
    }

    /* JADX WARN: Code duplicated, block: B:125:0x0266  */
    /* JADX WARN: Code duplicated, block: B:127:0x026b  */
    /* JADX WARN: Code duplicated, block: B:130:0x0281  */
    /* JADX WARN: Code duplicated, block: B:131:0x0284  */
    static zzgf zzl(Class cls, zzfz zzfzVar, zzgh zzghVar, zzfq zzfqVar, zzhd zzhdVar, zzek zzekVar, zzfx zzfxVar) {
        int i10;
        int iCharAt;
        int iCharAt2;
        int i11;
        int[] iArr;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        char cCharAt;
        int i17;
        char cCharAt2;
        int i18;
        char cCharAt3;
        int i19;
        char cCharAt4;
        int i20;
        char cCharAt5;
        int i21;
        char cCharAt6;
        int i22;
        char cCharAt7;
        int i23;
        char cCharAt8;
        int i24;
        int i25;
        int iObjectFieldOffset;
        int i26;
        int i27;
        int i28;
        int iObjectFieldOffset2;
        Field fieldZzz;
        char cCharAt9;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        Object obj;
        Field fieldZzz2;
        int i34;
        Object obj2;
        Field fieldZzz3;
        int i35;
        char cCharAt10;
        int i36;
        char cCharAt11;
        int i37;
        char cCharAt12;
        int i38;
        char cCharAt13;
        if (!(zzfzVar instanceof zzgl)) {
            throw null;
        }
        zzgl zzglVar = (zzgl) zzfzVar;
        String strZzd = zzglVar.zzd();
        int length = strZzd.length();
        char c10 = 55296;
        if (strZzd.charAt(0) >= 55296) {
            int i39 = 1;
            while (true) {
                i10 = i39 + 1;
                if (strZzd.charAt(i39) < 55296) {
                    break;
                }
                i39 = i10;
            }
        } else {
            i10 = 1;
        }
        int i40 = i10 + 1;
        int iCharAt3 = strZzd.charAt(i10);
        if (iCharAt3 >= 55296) {
            int i41 = iCharAt3 & 8191;
            int i42 = 13;
            while (true) {
                i38 = i40 + 1;
                cCharAt13 = strZzd.charAt(i40);
                if (cCharAt13 < 55296) {
                    break;
                }
                i41 |= (cCharAt13 & 8191) << i42;
                i42 += 13;
                i40 = i38;
            }
            iCharAt3 = i41 | (cCharAt13 << i42);
            i40 = i38;
        }
        if (iCharAt3 == 0) {
            iCharAt = 0;
            iCharAt2 = 0;
            i12 = 0;
            i15 = 0;
            i11 = 0;
            i13 = 0;
            iArr = zza;
            i14 = 0;
        } else {
            int i43 = i40 + 1;
            int iCharAt4 = strZzd.charAt(i40);
            if (iCharAt4 >= 55296) {
                int i44 = iCharAt4 & 8191;
                int i45 = 13;
                while (true) {
                    i23 = i43 + 1;
                    cCharAt8 = strZzd.charAt(i43);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt8 & 8191) << i45;
                    i45 += 13;
                    i43 = i23;
                }
                iCharAt4 = i44 | (cCharAt8 << i45);
                i43 = i23;
            }
            int i46 = i43 + 1;
            int iCharAt5 = strZzd.charAt(i43);
            if (iCharAt5 >= 55296) {
                int i47 = iCharAt5 & 8191;
                int i48 = 13;
                while (true) {
                    i22 = i46 + 1;
                    cCharAt7 = strZzd.charAt(i46);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt7 & 8191) << i48;
                    i48 += 13;
                    i46 = i22;
                }
                iCharAt5 = i47 | (cCharAt7 << i48);
                i46 = i22;
            }
            int i49 = i46 + 1;
            int iCharAt6 = strZzd.charAt(i46);
            if (iCharAt6 >= 55296) {
                int i50 = iCharAt6 & 8191;
                int i51 = 13;
                while (true) {
                    i21 = i49 + 1;
                    cCharAt6 = strZzd.charAt(i49);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt6 & 8191) << i51;
                    i51 += 13;
                    i49 = i21;
                }
                iCharAt6 = i50 | (cCharAt6 << i51);
                i49 = i21;
            }
            int i52 = i49 + 1;
            int iCharAt7 = strZzd.charAt(i49);
            if (iCharAt7 >= 55296) {
                int i53 = iCharAt7 & 8191;
                int i54 = 13;
                while (true) {
                    i20 = i52 + 1;
                    cCharAt5 = strZzd.charAt(i52);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt5 & 8191) << i54;
                    i54 += 13;
                    i52 = i20;
                }
                iCharAt7 = i53 | (cCharAt5 << i54);
                i52 = i20;
            }
            int i55 = i52 + 1;
            iCharAt = strZzd.charAt(i52);
            if (iCharAt >= 55296) {
                int i56 = iCharAt & 8191;
                int i57 = 13;
                while (true) {
                    i19 = i55 + 1;
                    cCharAt4 = strZzd.charAt(i55);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i56 |= (cCharAt4 & 8191) << i57;
                    i57 += 13;
                    i55 = i19;
                }
                iCharAt = i56 | (cCharAt4 << i57);
                i55 = i19;
            }
            int i58 = i55 + 1;
            iCharAt2 = strZzd.charAt(i55);
            if (iCharAt2 >= 55296) {
                int i59 = iCharAt2 & 8191;
                int i60 = 13;
                while (true) {
                    i18 = i58 + 1;
                    cCharAt3 = strZzd.charAt(i58);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i59 |= (cCharAt3 & 8191) << i60;
                    i60 += 13;
                    i58 = i18;
                }
                iCharAt2 = i59 | (cCharAt3 << i60);
                i58 = i18;
            }
            int i61 = i58 + 1;
            int iCharAt8 = strZzd.charAt(i58);
            if (iCharAt8 >= 55296) {
                int i62 = iCharAt8 & 8191;
                int i63 = 13;
                while (true) {
                    i17 = i61 + 1;
                    cCharAt2 = strZzd.charAt(i61);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i62 |= (cCharAt2 & 8191) << i63;
                    i63 += 13;
                    i61 = i17;
                }
                iCharAt8 = i62 | (cCharAt2 << i63);
                i61 = i17;
            }
            int i64 = i61 + 1;
            int iCharAt9 = strZzd.charAt(i61);
            if (iCharAt9 >= 55296) {
                int i65 = iCharAt9 & 8191;
                int i66 = 13;
                while (true) {
                    i16 = i64 + 1;
                    cCharAt = strZzd.charAt(i64);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i65 |= (cCharAt & 8191) << i66;
                    i66 += 13;
                    i64 = i16;
                }
                iCharAt9 = i65 | (cCharAt << i66);
                i64 = i16;
            }
            i11 = iCharAt4 + iCharAt4 + iCharAt5;
            iArr = new int[iCharAt9 + iCharAt2 + iCharAt8];
            i12 = iCharAt6;
            i13 = iCharAt9;
            i14 = iCharAt4;
            i15 = iCharAt7;
            i40 = i64;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzglVar.zze();
        Class<?> cls2 = zzglVar.zza().getClass();
        int i67 = i13 + iCharAt2;
        int i68 = iCharAt + iCharAt;
        int[] iArr2 = new int[iCharAt * 3];
        Object[] objArr = new Object[i68];
        int i69 = 0;
        int i70 = 0;
        int i71 = i13;
        int i72 = i67;
        while (i40 < length) {
            int i73 = i40 + 1;
            int iCharAt10 = strZzd.charAt(i40);
            if (iCharAt10 >= c10) {
                int i74 = iCharAt10 & 8191;
                int i75 = i73;
                int i76 = 13;
                while (true) {
                    i37 = i75 + 1;
                    cCharAt12 = strZzd.charAt(i75);
                    if (cCharAt12 < c10) {
                        break;
                    }
                    i74 |= (cCharAt12 & 8191) << i76;
                    i76 += 13;
                    i75 = i37;
                }
                iCharAt10 = i74 | (cCharAt12 << i76);
                i24 = i37;
            } else {
                i24 = i73;
            }
            int i77 = i24 + 1;
            int iCharAt11 = strZzd.charAt(i24);
            if (iCharAt11 >= c10) {
                int i78 = iCharAt11 & 8191;
                int i79 = i77;
                int i80 = 13;
                while (true) {
                    i36 = i79 + 1;
                    cCharAt11 = strZzd.charAt(i79);
                    if (cCharAt11 < c10) {
                        break;
                    }
                    i78 |= (cCharAt11 & 8191) << i80;
                    i80 += 13;
                    i79 = i36;
                }
                iCharAt11 = i78 | (cCharAt11 << i80);
                i25 = i36;
            } else {
                i25 = i77;
            }
            if ((iCharAt11 & 1024) != 0) {
                iArr[i69] = i70;
                i69++;
            }
            int i81 = iCharAt11 & 255;
            int i82 = iCharAt11 & 2048;
            int i83 = length;
            if (i81 >= 51) {
                int i84 = i25 + 1;
                int iCharAt12 = strZzd.charAt(i25);
                char c11 = 55296;
                if (iCharAt12 >= 55296) {
                    int i85 = 13;
                    int i86 = iCharAt12 & 8191;
                    int i87 = i84;
                    while (true) {
                        i35 = i87 + 1;
                        cCharAt10 = strZzd.charAt(i87);
                        if (cCharAt10 < c11) {
                            break;
                        }
                        i86 |= (cCharAt10 & 8191) << i85;
                        i85 += 13;
                        i87 = i35;
                        c11 = 55296;
                    }
                    iCharAt12 = i86 | (cCharAt10 << i85);
                    i31 = i35;
                } else {
                    i31 = i84;
                }
                int i88 = i31;
                int i89 = i81 - 51;
                if (i89 == 9 || i89 == 17) {
                    i32 = i11 + 1;
                    int i90 = i70 / 3;
                    objArr[i90 + i90 + 1] = objArrZze[i11];
                } else {
                    if (i89 == 12) {
                        if (zzglVar.zzc() == 1 || i82 != 0) {
                            i32 = i11 + 1;
                            int i91 = i70 / 3;
                            objArr[i91 + i91 + 1] = objArrZze[i11];
                        } else {
                            i82 = 0;
                        }
                    }
                    i33 = iCharAt12 + iCharAt12;
                    obj = objArrZze[i33];
                    if (obj instanceof Field) {
                        fieldZzz2 = (Field) obj;
                    } else {
                        fieldZzz2 = zzz(cls2, (String) obj);
                        objArrZze[i33] = fieldZzz2;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzz2);
                    i34 = i33 + 1;
                    obj2 = objArrZze[i34];
                    if (obj2 instanceof Field) {
                        fieldZzz3 = (Field) obj2;
                    } else {
                        fieldZzz3 = zzz(cls2, (String) obj2);
                        objArrZze[i34] = fieldZzz3;
                    }
                    zzglVar = zzglVar;
                    strZzd = strZzd;
                    i28 = i11;
                    i26 = i88;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzz3);
                    i27 = 0;
                }
                i11 = i32;
                i33 = iCharAt12 + iCharAt12;
                obj = objArrZze[i33];
                if (obj instanceof Field) {
                    fieldZzz2 = (Field) obj;
                } else {
                    fieldZzz2 = zzz(cls2, (String) obj);
                    objArrZze[i33] = fieldZzz2;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzz2);
                i34 = i33 + 1;
                obj2 = objArrZze[i34];
                if (obj2 instanceof Field) {
                    fieldZzz3 = (Field) obj2;
                } else {
                    fieldZzz3 = zzz(cls2, (String) obj2);
                    objArrZze[i34] = fieldZzz3;
                }
                zzglVar = zzglVar;
                strZzd = strZzd;
                i28 = i11;
                i26 = i88;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzz3);
                i27 = 0;
            } else {
                int i92 = i11 + 1;
                Field fieldZzz4 = zzz(cls2, (String) objArrZze[i11]);
                if (i81 == 9 || i81 == 17) {
                    zzglVar = zzglVar;
                    int i93 = i70 / 3;
                    objArr[i93 + i93 + 1] = fieldZzz4.getType();
                } else {
                    if (i81 == 27) {
                        i29 = 1;
                        i30 = i11 + 2;
                    } else if (i81 == 49) {
                        i30 = i11 + 2;
                        i29 = 1;
                    } else if (i81 == 12 || i81 == 30 || i81 == 44) {
                        zzglVar = zzglVar;
                        if (zzglVar.zzc() == 1 || i82 != 0) {
                            i30 = i11 + 2;
                            int i94 = i70 / 3;
                            objArr[i94 + i94 + 1] = objArrZze[i92];
                            i92 = i30;
                        } else {
                            i82 = 0;
                        }
                    } else {
                        if (i81 == 50) {
                            int i95 = i11 + 2;
                            int i96 = i71 + 1;
                            iArr[i71] = i70;
                            int i97 = i70 / 3;
                            int i98 = i97 + i97;
                            objArr[i98] = objArrZze[i92];
                            if (i82 != 0) {
                                i92 = i11 + 3;
                                objArr[i98 + 1] = objArrZze[i95];
                                i71 = i96;
                            } else {
                                i92 = i95;
                                i71 = i96;
                                i82 = 0;
                            }
                        }
                        zzglVar = zzglVar;
                    }
                    int i99 = i70 / 3;
                    objArr[i99 + i99 + i29] = objArrZze[i92];
                    i92 = i30;
                }
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzz4);
                iObjectFieldOffset = 1048575;
                if ((iCharAt11 & 4096) == 0 || i81 > 17) {
                    i26 = i25;
                    i27 = 0;
                } else {
                    int i100 = i25 + 1;
                    int iCharAt13 = strZzd.charAt(i25);
                    if (iCharAt13 >= 55296) {
                        int i101 = iCharAt13 & 8191;
                        int i102 = 13;
                        while (true) {
                            i26 = i100 + 1;
                            cCharAt9 = strZzd.charAt(i100);
                            if (cCharAt9 < 55296) {
                                break;
                            }
                            i101 |= (cCharAt9 & 8191) << i102;
                            i102 += 13;
                            i100 = i26;
                        }
                        iCharAt13 = i101 | (cCharAt9 << i102);
                    } else {
                        i26 = i100;
                    }
                    int i103 = i14 + i14 + (iCharAt13 / 32);
                    Object obj3 = objArrZze[i103];
                    if (obj3 instanceof Field) {
                        fieldZzz = (Field) obj3;
                    } else {
                        fieldZzz = zzz(cls2, (String) obj3);
                        objArrZze[i103] = fieldZzz;
                    }
                    i27 = iCharAt13 % 32;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzz);
                }
                if (i81 >= 18 && i81 <= 49) {
                    iArr[i72] = iObjectFieldOffset3;
                    i72++;
                }
                i28 = i92;
                iObjectFieldOffset2 = iObjectFieldOffset3;
            }
            int i104 = i70 + 1;
            iArr2[i70] = iCharAt10;
            int i105 = i70 + 2;
            iArr2[i104] = iObjectFieldOffset2 | ((iCharAt11 & 256) != 0 ? ASTNode.DEOP : 0) | ((iCharAt11 & 512) != 0 ? ASTNode.DISCARD : 0) | (i82 != 0 ? Integer.MIN_VALUE : 0) | (i81 << 20);
            i70 += 3;
            iArr2[i105] = (i27 << 20) | iObjectFieldOffset;
            i11 = i28;
            i40 = i26;
            length = i83;
            zzglVar = zzglVar;
            strZzd = strZzd;
            i15 = i15;
            i12 = i12;
            c10 = 55296;
        }
        zzgl zzglVar2 = zzglVar;
        return new zzgf(iArr2, objArr, i12, i15, zzglVar2.zza(), zzglVar2.zzc(), false, iArr, i13, i67, zzghVar, zzfqVar, zzhdVar, zzekVar, zzfxVar);
    }

    private static double zzm(Object obj, long j10) {
        return ((Double) zzhn.zzf(obj, j10)).doubleValue();
    }

    private static float zzn(Object obj, long j10) {
        return ((Float) zzhn.zzf(obj, j10)).floatValue();
    }

    private static int zzo(Object obj, long j10) {
        return ((Integer) zzhn.zzf(obj, j10)).intValue();
    }

    private final int zzp(int i10) {
        return this.zzc[i10 + 2];
    }

    private final int zzq(int i10, int i11) {
        int length = (this.zzc.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int i14 = this.zzc[i13];
            if (i10 == i14) {
                return i13;
            }
            if (i10 < i14) {
                length = i12 - 1;
            } else {
                i11 = i12 + 1;
            }
        }
        return -1;
    }

    private static int zzr(int i10) {
        return (i10 >>> 20) & 255;
    }

    private final int zzs(int i10) {
        return this.zzc[i10 + 1];
    }

    private static long zzt(Object obj, long j10) {
        return ((Long) zzhn.zzf(obj, j10)).longValue();
    }

    private final zzfb zzu(int i10) {
        int i11 = i10 / 3;
        return (zzfb) this.zzd[i11 + i11 + 1];
    }

    private final zzgm zzv(int i10) {
        Object[] objArr = this.zzd;
        int i11 = i10 / 3;
        int i12 = i11 + i11;
        zzgm zzgmVar = (zzgm) objArr[i12];
        if (zzgmVar != null) {
            return zzgmVar;
        }
        zzgm zzgmVarZzb = zzgk.zza().zzb((Class) objArr[i12 + 1]);
        this.zzd[i12] = zzgmVarZzb;
        return zzgmVarZzb;
    }

    private final Object zzw(int i10) {
        int i11 = i10 / 3;
        return this.zzd[i11 + i11];
    }

    private final Object zzx(Object obj, int i10) {
        zzgm zzgmVarZzv = zzv(i10);
        int iZzs = zzs(i10) & 1048575;
        if (!zzI(obj, i10)) {
            return zzgmVarZzv.zze();
        }
        Object object = zzb.getObject(obj, iZzs);
        if (zzL(object)) {
            return object;
        }
        Object objZze = zzgmVarZzv.zze();
        if (object != null) {
            zzgmVarZzv.zzg(objZze, object);
        }
        return objZze;
    }

    private final Object zzy(Object obj, int i10, int i11) {
        zzgm zzgmVarZzv = zzv(i11);
        if (!zzM(obj, i10, i11)) {
            return zzgmVarZzv.zze();
        }
        Object object = zzb.getObject(obj, zzs(i11) & 1048575);
        if (zzL(object)) {
            return object;
        }
        Object objZze = zzgmVarZzv.zze();
        if (object != null) {
            zzgmVarZzv.zzg(objZze, object);
        }
        return objZze;
    }

    private static Field zzz(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:142:0x038f  */
    /* JADX WARN: Code duplicated, block: B:181:0x048b  */
    /* JADX WARN: Code duplicated, block: B:92:0x021b  */
    @Override
    public final int zza(Object obj) {
        int i10;
        int i11;
        int i12;
        int i13;
        int iZzx;
        int iZzx2;
        int iZzy;
        int iZzx3;
        int iZzx4;
        int i14;
        int iZzx5;
        int iZzx6;
        int iZzx7;
        boolean z10;
        int iZzd;
        int iZzg;
        int size;
        int iZzl;
        int iZzx8;
        int iZzd2;
        boolean z11;
        int iZzb;
        int iZzx9;
        int iZzx10;
        int size2;
        int iZzk;
        int iZzx11;
        int iZzy2;
        int iZze;
        int iZzx12;
        int iZzx13;
        int iZzx14;
        int iZzx15;
        int iZzx16;
        int iZzx17;
        Unsafe unsafe = zzb;
        int i15 = 1048575;
        int i16 = 1048575;
        int i17 = 0;
        int i18 = 0;
        int iZzh = 0;
        while (i18 < this.zzc.length) {
            int iZzs = zzs(i18);
            int iZzr = zzr(iZzs);
            int[] iArr = this.zzc;
            int i19 = iArr[i18];
            int i20 = iArr[i18 + 2];
            int i21 = i20 & i15;
            if (iZzr <= 17) {
                if (i21 != i16) {
                    i17 = i21 == i15 ? 0 : unsafe.getInt(obj, i21);
                    i16 = i21;
                }
                i12 = 1 << (i20 >>> 20);
                i10 = i16;
                i11 = i17;
            } else {
                i10 = i16;
                i11 = i17;
                i12 = 0;
            }
            int i22 = iZzs & i15;
            if (iZzr >= zzep.zzJ.zza()) {
                zzep.zzW.zza();
            }
            long j10 = i22;
            switch (iZzr) {
                case 0:
                    i13 = i18;
                    if (zzJ(obj, i13, i10, i11, i12)) {
                        iZzx = zzee.zzx(i19 << 3);
                        iZzx4 = iZzx + 8;
                        iZzh += iZzx4;
                    }
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 1:
                    i13 = i18;
                    if (zzJ(obj, i13, i10, i11, i12)) {
                        iZzx2 = zzee.zzx(i19 << 3);
                        iZzx4 = iZzx2 + 4;
                        iZzh += iZzx4;
                    }
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 2:
                    i13 = i18;
                    if (zzJ(obj, i13, i10, i11, i12)) {
                        iZzy = zzee.zzy(unsafe.getLong(obj, j10));
                        iZzx3 = zzee.zzx(i19 << 3);
                        iZzx4 = iZzx3 + iZzy;
                        iZzh += iZzx4;
                    }
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 3:
                    i13 = i18;
                    if (zzJ(obj, i13, i10, i11, i12)) {
                        iZzy = zzee.zzy(unsafe.getLong(obj, j10));
                        iZzx3 = zzee.zzx(i19 << 3);
                        iZzx4 = iZzx3 + iZzy;
                        iZzh += iZzx4;
                    }
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 4:
                    i13 = i18;
                    if (zzJ(obj, i13, i10, i11, i12)) {
                        iZzy = zzee.zzu(unsafe.getInt(obj, j10));
                        iZzx3 = zzee.zzx(i19 << 3);
                        iZzx4 = iZzx3 + iZzy;
                        iZzh += iZzx4;
                    }
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 5:
                    i13 = i18;
                    if (zzJ(obj, i13, i10, i11, i12)) {
                        iZzx = zzee.zzx(i19 << 3);
                        iZzx4 = iZzx + 8;
                        iZzh += iZzx4;
                    }
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 6:
                    i13 = i18;
                    if (zzJ(obj, i13, i10, i11, i12)) {
                        iZzx2 = zzee.zzx(i19 << 3);
                        iZzx4 = iZzx2 + 4;
                        iZzh += iZzx4;
                    }
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 7:
                    i13 = i18;
                    if (zzJ(obj, i13, i10, i11, i12)) {
                        iZzx4 = zzee.zzx(i19 << 3) + 1;
                        iZzh += iZzx4;
                    }
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 8:
                    int i23 = i18;
                    i13 = i23;
                    if (zzJ(obj, i23, i10, i11, i12)) {
                        int i24 = i19 << 3;
                        Object object = unsafe.getObject(obj, j10);
                        if (object instanceof zzdw) {
                            int i25 = zzee.zzb;
                            int iZzd3 = ((zzdw) object).zzd();
                            iZzx4 = zzee.zzx(i24) + zzee.zzx(iZzd3) + iZzd3;
                        } else {
                            iZzy = zzee.zzw((String) object);
                            iZzx3 = zzee.zzx(i24);
                            iZzx4 = iZzx3 + iZzy;
                        }
                        iZzh += iZzx4;
                    }
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 9:
                    i14 = i18;
                    if (zzJ(obj, i14, i10, i11, i12)) {
                        iZzh += zzgo.zzh(i19, unsafe.getObject(obj, j10), zzv(i14));
                        i13 = i14;
                    } else {
                        i13 = i14;
                    }
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 10:
                    i14 = i18;
                    if (zzJ(obj, i14, i10, i11, i12)) {
                        zzdw zzdwVar = (zzdw) unsafe.getObject(obj, j10);
                        int i26 = zzee.zzb;
                        int iZzd4 = zzdwVar.zzd();
                        iZzx5 = zzee.zzx(i19 << 3) + zzee.zzx(iZzd4) + iZzd4;
                        iZzh += iZzx5;
                    }
                    i13 = i14;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 11:
                    i14 = i18;
                    if (zzJ(obj, i14, i10, i11, i12)) {
                        iZzx6 = zzee.zzx(unsafe.getInt(obj, j10));
                        iZzx7 = zzee.zzx(i19 << 3);
                        iZzx5 = iZzx7 + iZzx6;
                        iZzh += iZzx5;
                    }
                    i13 = i14;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 12:
                    i14 = i18;
                    if (zzJ(obj, i14, i10, i11, i12)) {
                        iZzx6 = zzee.zzu(unsafe.getInt(obj, j10));
                        iZzx7 = zzee.zzx(i19 << 3);
                        iZzx5 = iZzx7 + iZzx6;
                        iZzh += iZzx5;
                    }
                    i13 = i14;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 13:
                    i14 = i18;
                    if (zzJ(obj, i14, i10, i11, i12)) {
                        iZzx5 = zzee.zzx(i19 << 3) + 4;
                        iZzh += iZzx5;
                    }
                    i13 = i14;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 14:
                    i14 = i18;
                    if (zzJ(obj, i14, i10, i11, i12)) {
                        iZzx5 = zzee.zzx(i19 << 3) + 8;
                        iZzh += iZzx5;
                    }
                    i13 = i14;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 15:
                    i14 = i18;
                    if (zzJ(obj, i14, i10, i11, i12)) {
                        int i27 = unsafe.getInt(obj, j10);
                        iZzx7 = zzee.zzx(i19 << 3);
                        iZzx6 = zzee.zzx((i27 >> 31) ^ (i27 + i27));
                        iZzx5 = iZzx7 + iZzx6;
                        iZzh += iZzx5;
                    }
                    i13 = i14;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 16:
                    i14 = i18;
                    if (zzJ(obj, i18, i10, i11, i12)) {
                        long j11 = unsafe.getLong(obj, j10);
                        iZzx7 = zzee.zzx(i19 << 3);
                        iZzx6 = zzee.zzy((j11 >> 63) ^ (j11 + j11));
                        iZzx5 = iZzx7 + iZzx6;
                        iZzh += iZzx5;
                    }
                    i13 = i14;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 17:
                    if (zzJ(obj, i18, i10, i11, i12)) {
                        iZzh += zzee.zzt(i19, (zzgc) unsafe.getObject(obj, j10), zzv(i18));
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 18:
                    z10 = false;
                    iZzd = zzgo.zzd(i19, (List) unsafe.getObject(obj, j10), false);
                    iZzh += iZzd;
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 19:
                    z10 = false;
                    iZzd = zzgo.zzb(i19, (List) unsafe.getObject(obj, j10), false);
                    iZzh += iZzd;
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j10);
                    int i28 = zzgo.zza;
                    if (list.size() == 0) {
                        iZzg = 0;
                    } else {
                        iZzg = zzgo.zzg(list) + (list.size() * zzee.zzx(i19 << 3));
                    }
                    iZzh += iZzg;
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j10);
                    int i29 = zzgo.zza;
                    size = list2.size();
                    if (size == 0) {
                        iZzg = 0;
                    } else {
                        iZzl = zzgo.zzl(list2);
                        iZzx8 = zzee.zzx(i19 << 3);
                        iZzg = iZzl + (size * iZzx8);
                    }
                    iZzh += iZzg;
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j10);
                    int i30 = zzgo.zza;
                    size = list3.size();
                    if (size == 0) {
                        iZzg = 0;
                    } else {
                        iZzl = zzgo.zzf(list3);
                        iZzx8 = zzee.zzx(i19 << 3);
                        iZzg = iZzl + (size * iZzx8);
                    }
                    iZzh += iZzg;
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 23:
                    iZzd2 = zzgo.zzd(i19, (List) unsafe.getObject(obj, j10), false);
                    iZzh += iZzd2;
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 24:
                    z11 = false;
                    iZzb = zzgo.zzb(i19, (List) unsafe.getObject(obj, j10), false);
                    iZzh += iZzb;
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j10);
                    int i31 = zzgo.zza;
                    int size3 = list4.size();
                    if (size3 == 0) {
                        iZzd2 = 0;
                    } else {
                        iZzd2 = size3 * (zzee.zzx(i19 << 3) + 1);
                    }
                    iZzh += iZzd2;
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 26:
                    List list5 = (List) unsafe.getObject(obj, j10);
                    int i32 = zzgo.zza;
                    int size4 = list5.size();
                    if (size4 == 0) {
                        iZzg = 0;
                    } else {
                        boolean z12 = list5 instanceof zzfk;
                        int iZzx18 = zzee.zzx(i19 << 3) * size4;
                        if (z12) {
                            zzfk zzfkVar = (zzfk) list5;
                            iZzg = iZzx18;
                            for (int i33 = 0; i33 < size4; i33++) {
                                Object objZzf = zzfkVar.zzf(i33);
                                if (objZzf instanceof zzdw) {
                                    int iZzd5 = ((zzdw) objZzf).zzd();
                                    iZzg += zzee.zzx(iZzd5) + iZzd5;
                                } else {
                                    iZzg += zzee.zzw((String) objZzf);
                                }
                            }
                        } else {
                            iZzg = iZzx18;
                            for (int i34 = 0; i34 < size4; i34++) {
                                Object obj2 = list5.get(i34);
                                if (obj2 instanceof zzdw) {
                                    int iZzd6 = ((zzdw) obj2).zzd();
                                    iZzg += zzee.zzx(iZzd6) + iZzd6;
                                } else {
                                    iZzg += zzee.zzw((String) obj2);
                                }
                            }
                        }
                    }
                    iZzh += iZzg;
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 27:
                    List list6 = (List) unsafe.getObject(obj, j10);
                    zzgm zzgmVarZzv = zzv(i18);
                    int i35 = zzgo.zza;
                    int size5 = list6.size();
                    if (size5 == 0) {
                        iZzx9 = 0;
                    } else {
                        iZzx9 = zzee.zzx(i19 << 3) * size5;
                        for (int i36 = 0; i36 < size5; i36++) {
                            Object obj3 = list6.get(i36);
                            if (obj3 instanceof zzfi) {
                                int iZza = ((zzfi) obj3).zza();
                                iZzx9 += zzee.zzx(iZza) + iZza;
                            } else {
                                iZzx9 += zzee.zzv((zzgc) obj3, zzgmVarZzv);
                            }
                        }
                    }
                    iZzh += iZzx9;
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 28:
                    List list7 = (List) unsafe.getObject(obj, j10);
                    int i37 = zzgo.zza;
                    int size6 = list7.size();
                    if (size6 == 0) {
                        iZzx10 = 0;
                    } else {
                        iZzx10 = size6 * zzee.zzx(i19 << 3);
                        for (int i38 = 0; i38 < list7.size(); i38++) {
                            int iZzd7 = ((zzdw) list7.get(i38)).zzd();
                            iZzx10 += zzee.zzx(iZzd7) + iZzd7;
                        }
                    }
                    iZzh += iZzx10;
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    List list8 = (List) unsafe.getObject(obj, j10);
                    int i39 = zzgo.zza;
                    size2 = list8.size();
                    if (size2 == 0) {
                        iZzd2 = 0;
                    } else {
                        iZzk = zzgo.zzk(list8);
                        iZzx11 = zzee.zzx(i19 << 3);
                        iZzy2 = size2 * iZzx11;
                        iZzd2 = iZzk + iZzy2;
                    }
                    iZzh += iZzd2;
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 30:
                    List list9 = (List) unsafe.getObject(obj, j10);
                    int i40 = zzgo.zza;
                    size2 = list9.size();
                    if (size2 == 0) {
                        iZzd2 = 0;
                    } else {
                        iZzk = zzgo.zza(list9);
                        iZzx11 = zzee.zzx(i19 << 3);
                        iZzy2 = size2 * iZzx11;
                        iZzd2 = iZzk + iZzy2;
                    }
                    iZzh += iZzd2;
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    iZzd2 = zzgo.zzb(i19, (List) unsafe.getObject(obj, j10), false);
                    iZzh += iZzd2;
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 32:
                    z11 = false;
                    iZzb = zzgo.zzd(i19, (List) unsafe.getObject(obj, j10), false);
                    iZzh += iZzb;
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 33:
                    List list10 = (List) unsafe.getObject(obj, j10);
                    int i41 = zzgo.zza;
                    size2 = list10.size();
                    if (size2 == 0) {
                        iZzd2 = 0;
                    } else {
                        iZzk = zzgo.zzi(list10);
                        iZzx11 = zzee.zzx(i19 << 3);
                        iZzy2 = size2 * iZzx11;
                        iZzd2 = iZzk + iZzy2;
                    }
                    iZzh += iZzd2;
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 34:
                    List list11 = (List) unsafe.getObject(obj, j10);
                    int i42 = zzgo.zza;
                    size2 = list11.size();
                    if (size2 == 0) {
                        iZzd2 = 0;
                    } else {
                        iZzk = zzgo.zzj(list11);
                        iZzx11 = zzee.zzx(i19 << 3);
                        iZzy2 = size2 * iZzx11;
                        iZzd2 = iZzk + iZzy2;
                    }
                    iZzh += iZzd2;
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 35:
                    iZze = zzgo.zze((List) unsafe.getObject(obj, j10));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i19 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 36:
                    iZze = zzgo.zzc((List) unsafe.getObject(obj, j10));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i19 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 37:
                    iZze = zzgo.zzg((List) unsafe.getObject(obj, j10));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i19 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 38:
                    iZze = zzgo.zzl((List) unsafe.getObject(obj, j10));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i19 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 39:
                    iZze = zzgo.zzf((List) unsafe.getObject(obj, j10));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i19 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 40:
                    iZze = zzgo.zze((List) unsafe.getObject(obj, j10));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i19 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 41:
                    iZze = zzgo.zzc((List) unsafe.getObject(obj, j10));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i19 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 42:
                    List list12 = (List) unsafe.getObject(obj, j10);
                    int i43 = zzgo.zza;
                    iZze = list12.size();
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i19 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 43:
                    iZze = zzgo.zzk((List) unsafe.getObject(obj, j10));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i19 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 44:
                    iZze = zzgo.zza((List) unsafe.getObject(obj, j10));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i19 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 45:
                    iZze = zzgo.zzc((List) unsafe.getObject(obj, j10));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i19 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 46:
                    iZze = zzgo.zze((List) unsafe.getObject(obj, j10));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i19 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 47:
                    iZze = zzgo.zzi((List) unsafe.getObject(obj, j10));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i19 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    iZze = zzgo.zzj((List) unsafe.getObject(obj, j10));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i19 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    List list13 = (List) unsafe.getObject(obj, j10);
                    zzgm zzgmVarZzv2 = zzv(i18);
                    int i44 = zzgo.zza;
                    int size7 = list13.size();
                    if (size7 == 0) {
                        iZzx9 = 0;
                    } else {
                        iZzx9 = 0;
                        for (int i45 = 0; i45 < size7; i45++) {
                            iZzx9 += zzee.zzt(i19, (zzgc) list13.get(i45), zzgmVarZzv2);
                        }
                    }
                    iZzh += iZzx9;
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 50:
                    zzfw zzfwVar = (zzfw) unsafe.getObject(obj, j10);
                    if (!zzfwVar.isEmpty()) {
                        Iterator it = zzfwVar.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (zzM(obj, i19, i18)) {
                        iZzx14 = zzee.zzx(i19 << 3);
                        iZzd2 = iZzx14 + 8;
                        iZzh += iZzd2;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzM(obj, i19, i18)) {
                        iZzx15 = zzee.zzx(i19 << 3);
                        iZzd2 = iZzx15 + 4;
                        iZzh += iZzd2;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzM(obj, i19, i18)) {
                        iZzy2 = zzee.zzy(zzt(obj, j10));
                        iZzk = zzee.zzx(i19 << 3);
                        iZzd2 = iZzk + iZzy2;
                        iZzh += iZzd2;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (zzM(obj, i19, i18)) {
                        iZzy2 = zzee.zzy(zzt(obj, j10));
                        iZzk = zzee.zzx(i19 << 3);
                        iZzd2 = iZzk + iZzy2;
                        iZzh += iZzd2;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (zzM(obj, i19, i18)) {
                        iZzy2 = zzee.zzu(zzo(obj, j10));
                        iZzk = zzee.zzx(i19 << 3);
                        iZzd2 = iZzk + iZzy2;
                        iZzh += iZzd2;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case AD_VISIBILITY_VALUE:
                    if (zzM(obj, i19, i18)) {
                        iZzx14 = zzee.zzx(i19 << 3);
                        iZzd2 = iZzx14 + 8;
                        iZzh += iZzd2;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 57:
                    if (zzM(obj, i19, i18)) {
                        iZzx15 = zzee.zzx(i19 << 3);
                        iZzd2 = iZzx15 + 4;
                        iZzh += iZzd2;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (zzM(obj, i19, i18)) {
                        iZzd2 = zzee.zzx(i19 << 3) + 1;
                        iZzh += iZzd2;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 59:
                    if (zzM(obj, i19, i18)) {
                        int i46 = i19 << 3;
                        Object object2 = unsafe.getObject(obj, j10);
                        if (object2 instanceof zzdw) {
                            int i47 = zzee.zzb;
                            int iZzd8 = ((zzdw) object2).zzd();
                            iZzx16 = zzee.zzx(iZzd8) + iZzd8;
                            iZzx17 = zzee.zzx(i46);
                            iZzd2 = iZzx17 + iZzx16;
                            iZzh += iZzd2;
                        } else {
                            iZzy2 = zzee.zzw((String) object2);
                            iZzk = zzee.zzx(i46);
                            iZzd2 = iZzk + iZzy2;
                            iZzh += iZzd2;
                        }
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 60:
                    if (zzM(obj, i19, i18)) {
                        iZzd2 = zzgo.zzh(i19, unsafe.getObject(obj, j10), zzv(i18));
                        iZzh += iZzd2;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 61:
                    if (zzM(obj, i19, i18)) {
                        zzdw zzdwVar2 = (zzdw) unsafe.getObject(obj, j10);
                        int i48 = zzee.zzb;
                        int iZzd9 = zzdwVar2.zzd();
                        iZzx16 = zzee.zzx(iZzd9) + iZzd9;
                        iZzx17 = zzee.zzx(i19 << 3);
                        iZzd2 = iZzx17 + iZzx16;
                        iZzh += iZzd2;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 62:
                    if (zzM(obj, i19, i18)) {
                        iZzy2 = zzee.zzx(zzo(obj, j10));
                        iZzk = zzee.zzx(i19 << 3);
                        iZzd2 = iZzk + iZzy2;
                        iZzh += iZzd2;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 63:
                    if (zzM(obj, i19, i18)) {
                        iZzy2 = zzee.zzu(zzo(obj, j10));
                        iZzk = zzee.zzx(i19 << 3);
                        iZzd2 = iZzk + iZzy2;
                        iZzh += iZzd2;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 64:
                    if (zzM(obj, i19, i18)) {
                        iZzx15 = zzee.zzx(i19 << 3);
                        iZzd2 = iZzx15 + 4;
                        iZzh += iZzd2;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                    if (zzM(obj, i19, i18)) {
                        iZzx14 = zzee.zzx(i19 << 3);
                        iZzd2 = iZzx14 + 8;
                        iZzh += iZzd2;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 66:
                    if (zzM(obj, i19, i18)) {
                        int iZzo = zzo(obj, j10);
                        iZzk = zzee.zzx(i19 << 3);
                        iZzy2 = zzee.zzx((iZzo >> 31) ^ (iZzo + iZzo));
                        iZzd2 = iZzk + iZzy2;
                        iZzh += iZzd2;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 67:
                    if (zzM(obj, i19, i18)) {
                        long jZzt = zzt(obj, j10);
                        iZzk = zzee.zzx(i19 << 3);
                        iZzy2 = zzee.zzy((jZzt >> 63) ^ (jZzt + jZzt));
                        iZzd2 = iZzk + iZzy2;
                        iZzh += iZzd2;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                case 68:
                    if (zzM(obj, i19, i18)) {
                        iZzd2 = zzee.zzt(i19, (zzgc) unsafe.getObject(obj, j10), zzv(i18));
                        iZzh += iZzd2;
                    }
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
                default:
                    i13 = i18;
                    i18 = i13 + 3;
                    i16 = i10;
                    i17 = i11;
                    i15 = 1048575;
                    break;
            }
        }
        zzhd zzhdVar = this.zzm;
        int iZza2 = iZzh + zzhdVar.zza(zzhdVar.zzd(obj));
        if (!this.zzh) {
            return iZza2;
        }
        this.zzn.zza(obj);
        throw null;
    }

    @Override
    public final int zzb(Object obj) {
        int i10;
        long jDoubleToLongBits;
        int iFloatToIntBits;
        int i11;
        int i12 = 0;
        for (int i13 = 0; i13 < this.zzc.length; i13 += 3) {
            int iZzs = zzs(i13);
            int[] iArr = this.zzc;
            int i14 = 1048575 & iZzs;
            int iZzr = zzr(iZzs);
            int i15 = iArr[i13];
            long j10 = i14;
            int iHashCode = 37;
            switch (iZzr) {
                case 0:
                    i10 = i12 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(zzhn.zza(obj, j10));
                    byte[] bArr = zzfd.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 1:
                    i10 = i12 * 53;
                    iFloatToIntBits = Float.floatToIntBits(zzhn.zzb(obj, j10));
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 2:
                    i10 = i12 * 53;
                    jDoubleToLongBits = zzhn.zzd(obj, j10);
                    byte[] bArr2 = zzfd.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 3:
                    i10 = i12 * 53;
                    jDoubleToLongBits = zzhn.zzd(obj, j10);
                    byte[] bArr3 = zzfd.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 4:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzhn.zzc(obj, j10);
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 5:
                    i10 = i12 * 53;
                    jDoubleToLongBits = zzhn.zzd(obj, j10);
                    byte[] bArr4 = zzfd.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 6:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzhn.zzc(obj, j10);
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 7:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzfd.zza(zzhn.zzw(obj, j10));
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 8:
                    i10 = i12 * 53;
                    iFloatToIntBits = ((String) zzhn.zzf(obj, j10)).hashCode();
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 9:
                    i11 = i12 * 53;
                    Object objZzf = zzhn.zzf(obj, j10);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i12 = i11 + iHashCode;
                    break;
                case 10:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzhn.zzf(obj, j10).hashCode();
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 11:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzhn.zzc(obj, j10);
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 12:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzhn.zzc(obj, j10);
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 13:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzhn.zzc(obj, j10);
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 14:
                    i10 = i12 * 53;
                    jDoubleToLongBits = zzhn.zzd(obj, j10);
                    byte[] bArr5 = zzfd.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 15:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzhn.zzc(obj, j10);
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 16:
                    i10 = i12 * 53;
                    jDoubleToLongBits = zzhn.zzd(obj, j10);
                    byte[] bArr6 = zzfd.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 17:
                    i11 = i12 * 53;
                    Object objZzf2 = zzhn.zzf(obj, j10);
                    if (objZzf2 != null) {
                        iHashCode = objZzf2.hashCode();
                    }
                    i12 = i11 + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case NOTIFICATION_REDIRECT_VALUE:
                case 30:
                case TEMPLATE_HTML_SIZE_VALUE:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzhn.zzf(obj, j10).hashCode();
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 50:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzhn.zzf(obj, j10).hashCode();
                    i12 = i10 + iFloatToIntBits;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(zzm(obj, j10));
                        byte[] bArr7 = zzfd.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = Float.floatToIntBits(zzn(obj, j10));
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        jDoubleToLongBits = zzt(obj, j10);
                        byte[] bArr8 = zzfd.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        jDoubleToLongBits = zzt(obj, j10);
                        byte[] bArr9 = zzfd.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzo(obj, j10);
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        jDoubleToLongBits = zzt(obj, j10);
                        byte[] bArr10 = zzfd.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 57:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzo(obj, j10);
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzfd.zza(zzN(obj, j10));
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 59:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = ((String) zzhn.zzf(obj, j10)).hashCode();
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 60:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzhn.zzf(obj, j10).hashCode();
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 61:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzhn.zzf(obj, j10).hashCode();
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 62:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzo(obj, j10);
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 63:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzo(obj, j10);
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 64:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzo(obj, j10);
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        jDoubleToLongBits = zzt(obj, j10);
                        byte[] bArr11 = zzfd.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 66:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzo(obj, j10);
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 67:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        jDoubleToLongBits = zzt(obj, j10);
                        byte[] bArr12 = zzfd.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 68:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzhn.zzf(obj, j10).hashCode();
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
            }
        }
        int iHashCode2 = (i12 * 53) + this.zzm.zzd(obj).hashCode();
        if (!this.zzh) {
            return iHashCode2;
        }
        this.zzn.zza(obj);
        throw null;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 40681. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    final int zzc(java.lang.Object r37, byte[] r38, int r39, int r40, int r41, com.google.android.gms.internal.play_billing.zzdj r42) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 4068
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzgf.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.play_billing.zzdj):int");
    }

    @Override
    public final Object zze() {
        return ((zzex) this.zzg).zzi();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006d  */
    /* JADX WARN: Code duplicated, block: B:28:0x0073  */
    /* JADX WARN: Code duplicated, block: B:41:0x0080 A[SYNTHETIC] */
    @Override
    public final void zzf(Object obj) {
        if (zzL(obj)) {
            if (obj instanceof zzex) {
                zzex zzexVar = (zzex) obj;
                zzexVar.zzq(Integer.MAX_VALUE);
                zzexVar.zza = 0;
                zzexVar.zzo();
            }
            int[] iArr = this.zzc;
            for (int i10 = 0; i10 < iArr.length; i10 += 3) {
                int iZzs = zzs(i10);
                int i11 = 1048575 & iZzs;
                int iZzr = zzr(iZzs);
                long j10 = i11;
                if (iZzr != 9) {
                    if (iZzr != 60 && iZzr != 68) {
                        switch (iZzr) {
                            case 17:
                                if (zzI(obj, i10)) {
                                    zzv(i10).zzf(zzb.getObject(obj, j10));
                                }
                                break;
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case NOTIFICATION_REDIRECT_VALUE:
                            case 30:
                            case TEMPLATE_HTML_SIZE_VALUE:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                this.zzl.zza(obj, j10);
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j10);
                                if (object != null) {
                                    ((zzfw) object).zzc();
                                    unsafe.putObject(obj, j10, object);
                                }
                                break;
                        }
                    } else if (zzM(obj, this.zzc[i10], i10)) {
                        zzv(i10).zzf(zzb.getObject(obj, j10));
                    }
                } else if (zzI(obj, i10)) {
                    zzv(i10).zzf(zzb.getObject(obj, j10));
                }
            }
            this.zzm.zzg(obj);
            if (this.zzh) {
                this.zzn.zzb(obj);
            }
        }
    }

    @Override
    public final void zzg(Object obj, Object obj2) {
        zzA(obj);
        obj2.getClass();
        for (int i10 = 0; i10 < this.zzc.length; i10 += 3) {
            int iZzs = zzs(i10);
            int i11 = 1048575 & iZzs;
            int[] iArr = this.zzc;
            int iZzr = zzr(iZzs);
            int i12 = iArr[i10];
            long j10 = i11;
            switch (iZzr) {
                case 0:
                    if (zzI(obj2, i10)) {
                        zzhn.zzo(obj, j10, zzhn.zza(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 1:
                    if (zzI(obj2, i10)) {
                        zzhn.zzp(obj, j10, zzhn.zzb(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 2:
                    if (zzI(obj2, i10)) {
                        zzhn.zzr(obj, j10, zzhn.zzd(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 3:
                    if (zzI(obj2, i10)) {
                        zzhn.zzr(obj, j10, zzhn.zzd(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 4:
                    if (zzI(obj2, i10)) {
                        zzhn.zzq(obj, j10, zzhn.zzc(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 5:
                    if (zzI(obj2, i10)) {
                        zzhn.zzr(obj, j10, zzhn.zzd(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 6:
                    if (zzI(obj2, i10)) {
                        zzhn.zzq(obj, j10, zzhn.zzc(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 7:
                    if (zzI(obj2, i10)) {
                        zzhn.zzm(obj, j10, zzhn.zzw(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 8:
                    if (zzI(obj2, i10)) {
                        zzhn.zzs(obj, j10, zzhn.zzf(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 9:
                    zzB(obj, obj2, i10);
                    break;
                case 10:
                    if (zzI(obj2, i10)) {
                        zzhn.zzs(obj, j10, zzhn.zzf(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 11:
                    if (zzI(obj2, i10)) {
                        zzhn.zzq(obj, j10, zzhn.zzc(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 12:
                    if (zzI(obj2, i10)) {
                        zzhn.zzq(obj, j10, zzhn.zzc(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 13:
                    if (zzI(obj2, i10)) {
                        zzhn.zzq(obj, j10, zzhn.zzc(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 14:
                    if (zzI(obj2, i10)) {
                        zzhn.zzr(obj, j10, zzhn.zzd(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 15:
                    if (zzI(obj2, i10)) {
                        zzhn.zzq(obj, j10, zzhn.zzc(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 16:
                    if (zzI(obj2, i10)) {
                        zzhn.zzr(obj, j10, zzhn.zzd(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 17:
                    zzB(obj, obj2, i10);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case NOTIFICATION_REDIRECT_VALUE:
                case 30:
                case TEMPLATE_HTML_SIZE_VALUE:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    this.zzl.zzb(obj, obj2, j10);
                    break;
                case 50:
                    int i13 = zzgo.zza;
                    zzhn.zzs(obj, j10, zzfx.zza(zzhn.zzf(obj, j10), zzhn.zzf(obj2, j10)));
                    break;
                case AD_REWARD_USER_VALUE:
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                case AD_VISIBILITY_VALUE:
                case 57:
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                case 59:
                    if (zzM(obj2, i12, i10)) {
                        zzhn.zzs(obj, j10, zzhn.zzf(obj2, j10));
                        zzE(obj, i12, i10);
                    }
                    break;
                case 60:
                    zzC(obj, obj2, i10);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                case 66:
                case 67:
                    if (zzM(obj2, i12, i10)) {
                        zzhn.zzs(obj, j10, zzhn.zzf(obj2, j10));
                        zzE(obj, i12, i10);
                    }
                    break;
                case 68:
                    zzC(obj, obj2, i10);
                    break;
            }
        }
        zzgo.zzp(this.zzm, obj, obj2);
        if (this.zzh) {
            this.zzn.zza(obj2);
            throw null;
        }
    }

    @Override
    public final void zzh(Object obj, byte[] bArr, int i10, int i11, zzdj zzdjVar) throws IOException {
        zzc(obj, bArr, i10, i11, 0, zzdjVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v20 */
    @Override
    public final void zzi(Object obj, zzhv zzhvVar) throws Throwable {
        int i10;
        int i11;
        int i12;
        boolean z10;
        ?? r10 = 1;
        Throwable th2 = null;
        if (this.zzh) {
            this.zzn.zza(obj);
            throw null;
        }
        int[] iArr = this.zzc;
        Unsafe unsafe = zzb;
        int i13 = 1048575;
        int i14 = 1048575;
        int i15 = 0;
        int i16 = 0;
        while (i16 < iArr.length) {
            int iZzs = zzs(i16);
            int[] iArr2 = this.zzc;
            int iZzr = zzr(iZzs);
            int i17 = iArr2[i16];
            if (iZzr <= 17) {
                int i18 = iArr2[i16 + 2];
                int i19 = i18 & i13;
                if (i19 != i14) {
                    i15 = i19 == i13 ? 0 : unsafe.getInt(obj, i19);
                    i14 = i19;
                }
                i10 = i14;
                i11 = i15;
                i12 = r10 << (i18 >>> 20);
            } else {
                i10 = i14;
                i11 = i15;
                i12 = 0;
            }
            long j10 = iZzs & i13;
            switch (iZzr) {
                case 0:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzf(i17, zzhn.zza(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 1:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzo(i17, zzhn.zzb(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 2:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzt(i17, unsafe.getLong(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 3:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzJ(i17, unsafe.getLong(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 4:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzr(i17, unsafe.getInt(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 5:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzm(i17, unsafe.getLong(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 6:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzk(i17, unsafe.getInt(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 7:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzb(i17, zzhn.zzw(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 8:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzO(i17, unsafe.getObject(obj, j10), zzhvVar);
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 9:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzv(i17, unsafe.getObject(obj, j10), zzv(i16));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 10:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzd(i17, (zzdw) unsafe.getObject(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 11:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzH(i17, unsafe.getInt(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 12:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzi(i17, unsafe.getInt(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 13:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzw(i17, unsafe.getInt(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 14:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzy(i17, unsafe.getLong(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 15:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzA(i17, unsafe.getInt(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 16:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzC(i17, unsafe.getLong(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 17:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzq(i17, unsafe.getObject(obj, j10), zzv(i16));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 18:
                    z10 = false;
                    zzgo.zzs(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, false);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 19:
                    z10 = false;
                    zzgo.zzw(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, false);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 20:
                    z10 = false;
                    zzgo.zzy(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, false);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 21:
                    z10 = false;
                    zzgo.zzE(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, false);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 22:
                    z10 = false;
                    zzgo.zzx(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, false);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 23:
                    z10 = false;
                    zzgo.zzv(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, false);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 24:
                    z10 = false;
                    zzgo.zzu(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, false);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 25:
                    z10 = false;
                    zzgo.zzr(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, false);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 26:
                    int i20 = this.zzc[i16];
                    List list = (List) unsafe.getObject(obj, j10);
                    int i21 = zzgo.zza;
                    if (list != null && !list.isEmpty()) {
                        zzhvVar.zzG(i20, list);
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 27:
                    int i22 = this.zzc[i16];
                    List list2 = (List) unsafe.getObject(obj, j10);
                    zzgm zzgmVarZzv = zzv(i16);
                    int i23 = zzgo.zza;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i24 = 0; i24 < list2.size(); i24 += r10) {
                            ((zzef) zzhvVar).zzv(i22, list2.get(i24), zzgmVarZzv);
                        }
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 28:
                    int i25 = this.zzc[i16];
                    List list3 = (List) unsafe.getObject(obj, j10);
                    int i26 = zzgo.zza;
                    if (list3 != null && !list3.isEmpty()) {
                        zzhvVar.zze(i25, list3);
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    z10 = false;
                    zzgo.zzD(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, false);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 30:
                    z10 = false;
                    zzgo.zzt(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, false);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    z10 = false;
                    zzgo.zzz(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, false);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 32:
                    z10 = false;
                    zzgo.zzA(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, false);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 33:
                    z10 = false;
                    zzgo.zzB(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, false);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 34:
                    z10 = false;
                    zzgo.zzC(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, false);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 35:
                    zzgo.zzs(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, r10);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 36:
                    zzgo.zzw(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, r10);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 37:
                    zzgo.zzy(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, r10);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 38:
                    zzgo.zzE(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, r10);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 39:
                    zzgo.zzx(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, r10);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 40:
                    zzgo.zzv(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, r10);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 41:
                    zzgo.zzu(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, r10);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 42:
                    zzgo.zzr(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, r10);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 43:
                    zzgo.zzD(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, r10);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 44:
                    zzgo.zzt(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, r10);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 45:
                    zzgo.zzz(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, r10);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 46:
                    zzgo.zzA(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, r10);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 47:
                    zzgo.zzB(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, r10);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    zzgo.zzC(this.zzc[i16], (List) unsafe.getObject(obj, j10), zzhvVar, r10);
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    int i27 = this.zzc[i16];
                    List list4 = (List) unsafe.getObject(obj, j10);
                    zzgm zzgmVarZzv2 = zzv(i16);
                    int i28 = zzgo.zza;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i29 = 0; i29 < list4.size(); i29 += r10) {
                            ((zzef) zzhvVar).zzq(i27, list4.get(i29), zzgmVarZzv2);
                        }
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 50:
                    if (unsafe.getObject(obj, j10) != null) {
                        throw th2;
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzf(i17, zzm(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzo(i17, zzn(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzt(i17, zzt(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzJ(i17, zzt(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzr(i17, zzo(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case AD_VISIBILITY_VALUE:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzm(i17, zzt(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 57:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzk(i17, zzo(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzb(i17, zzN(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 59:
                    if (zzM(obj, i17, i16)) {
                        zzO(i17, unsafe.getObject(obj, j10), zzhvVar);
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 60:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzv(i17, unsafe.getObject(obj, j10), zzv(i16));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 61:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzd(i17, (zzdw) unsafe.getObject(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 62:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzH(i17, zzo(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 63:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzi(i17, zzo(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 64:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzw(i17, zzo(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzy(i17, zzt(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 66:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzA(i17, zzo(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 67:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzC(i17, zzt(obj, j10));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                case 68:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzq(i17, unsafe.getObject(obj, j10), zzv(i16));
                    }
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
                default:
                    i16 += 3;
                    i14 = i10;
                    i15 = i11;
                    r10 = 1;
                    th2 = null;
                    i13 = 1048575;
                    break;
            }
        }
        zzhd zzhdVar = this.zzm;
        zzhdVar.zzi(zzhdVar.zzd(obj), zzhvVar);
    }

    @Override
    public final boolean zzj(Object obj, Object obj2) {
        boolean zZzF;
        for (int i10 = 0; i10 < this.zzc.length; i10 += 3) {
            int iZzs = zzs(i10);
            long j10 = iZzs & 1048575;
            switch (zzr(iZzs)) {
                case 0:
                    if (!zzH(obj, obj2, i10) || Double.doubleToLongBits(zzhn.zza(obj, j10)) != Double.doubleToLongBits(zzhn.zza(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzH(obj, obj2, i10) || Float.floatToIntBits(zzhn.zzb(obj, j10)) != Float.floatToIntBits(zzhn.zzb(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzH(obj, obj2, i10) || zzhn.zzd(obj, j10) != zzhn.zzd(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzH(obj, obj2, i10) || zzhn.zzd(obj, j10) != zzhn.zzd(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzH(obj, obj2, i10) || zzhn.zzc(obj, j10) != zzhn.zzc(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzH(obj, obj2, i10) || zzhn.zzd(obj, j10) != zzhn.zzd(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzH(obj, obj2, i10) || zzhn.zzc(obj, j10) != zzhn.zzc(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzH(obj, obj2, i10) || zzhn.zzw(obj, j10) != zzhn.zzw(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzH(obj, obj2, i10) || !zzgo.zzF(zzhn.zzf(obj, j10), zzhn.zzf(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzH(obj, obj2, i10) || !zzgo.zzF(zzhn.zzf(obj, j10), zzhn.zzf(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzH(obj, obj2, i10) || !zzgo.zzF(zzhn.zzf(obj, j10), zzhn.zzf(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzH(obj, obj2, i10) || zzhn.zzc(obj, j10) != zzhn.zzc(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzH(obj, obj2, i10) || zzhn.zzc(obj, j10) != zzhn.zzc(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzH(obj, obj2, i10) || zzhn.zzc(obj, j10) != zzhn.zzc(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzH(obj, obj2, i10) || zzhn.zzd(obj, j10) != zzhn.zzd(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzH(obj, obj2, i10) || zzhn.zzc(obj, j10) != zzhn.zzc(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzH(obj, obj2, i10) || zzhn.zzd(obj, j10) != zzhn.zzd(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzH(obj, obj2, i10) || !zzgo.zzF(zzhn.zzf(obj, j10), zzhn.zzf(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case NOTIFICATION_REDIRECT_VALUE:
                case 30:
                case TEMPLATE_HTML_SIZE_VALUE:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    zZzF = zzgo.zzF(zzhn.zzf(obj, j10), zzhn.zzf(obj2, j10));
                    break;
                case 50:
                    zZzF = zzgo.zzF(zzhn.zzf(obj, j10), zzhn.zzf(obj2, j10));
                    break;
                case AD_REWARD_USER_VALUE:
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                case AD_VISIBILITY_VALUE:
                case 57:
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                case 66:
                case 67:
                case 68:
                    long jZzp = zzp(i10) & 1048575;
                    if (zzhn.zzc(obj, jZzp) != zzhn.zzc(obj2, jZzp) || !zzgo.zzF(zzhn.zzf(obj, j10), zzhn.zzf(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zZzF) {
                return false;
            }
        }
        if (!this.zzm.zzd(obj).equals(this.zzm.zzd(obj2))) {
            return false;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzn.zza(obj);
        this.zzn.zza(obj2);
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009e  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c3 A[LOOP:1: B:45:0x00b2->B:50:0x00c3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:66:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x00e1 A[SYNTHETIC] */
    @Override
    public final boolean zzk(Object obj) {
        int i10;
        int i11;
        List list;
        zzgm zzgmVarZzv;
        int i12;
        int i13 = 0;
        int i14 = 0;
        int i15 = 1048575;
        while (i14 < this.zzj) {
            int[] iArr = this.zzi;
            int[] iArr2 = this.zzc;
            int i16 = iArr[i14];
            int i17 = iArr2[i16];
            int iZzs = zzs(i16);
            int i18 = this.zzc[i16 + 2];
            int i19 = i18 & 1048575;
            int i20 = 1 << (i18 >>> 20);
            if (i19 != i15) {
                if (i19 != 1048575) {
                    i13 = zzb.getInt(obj, i19);
                }
                i11 = i13;
                i10 = i19;
            } else {
                i10 = i15;
                i11 = i13;
            }
            if ((268435456 & iZzs) != 0 && !zzJ(obj, i16, i10, i11, i20)) {
                return false;
            }
            int iZzr = zzr(iZzs);
            if (iZzr == 9 || iZzr == 17) {
                if (zzJ(obj, i16, i10, i11, i20) && !zzK(obj, iZzs, zzv(i16))) {
                    return false;
                }
            } else if (iZzr == 27) {
                list = (List) zzhn.zzf(obj, iZzs & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzgmVarZzv = zzv(i16);
                    for (i12 = 0; i12 < list.size(); i12++) {
                        if (!zzgmVarZzv.zzk(list.get(i12))) {
                            return false;
                        }
                    }
                }
            } else if (iZzr == 60 || iZzr == 68) {
                if (zzM(obj, i17, i16) && !zzK(obj, iZzs, zzv(i16))) {
                    return false;
                }
            } else if (iZzr == 49) {
                list = (List) zzhn.zzf(obj, iZzs & 1048575);
                if (list.isEmpty()) {
                    zzgmVarZzv = zzv(i16);
                    while (i12 < list.size()) {
                        if (!zzgmVarZzv.zzk(list.get(i12))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iZzr == 50 && !((zzfw) zzhn.zzf(obj, iZzs & 1048575)).isEmpty()) {
                throw null;
            }
            i14++;
            i15 = i10;
            i13 = i11;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzn.zza(obj);
        throw null;
    }
}
