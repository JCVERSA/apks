package com.google.android.gms.internal.auth;

import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import org.mvel2.ast.ASTNode;
import sun.misc.Unsafe;

final class zzfz<T> implements zzgh<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzhi.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzfw zzg;
    private final boolean zzh;
    private final int[] zzi;
    private final int zzj;
    private final int zzk;
    private final zzfk zzl;
    private final zzgy zzm;
    private final zzel zzn;
    private final zzgb zzo;
    private final zzfr zzp;

    private zzfz(int[] iArr, Object[] objArr, int i10, int i11, zzfw zzfwVar, boolean z10, boolean z11, int[] iArr2, int i12, int i13, zzgb zzgbVar, zzfk zzfkVar, zzgy zzgyVar, zzel zzelVar, zzfr zzfrVar, byte[] bArr) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i10;
        this.zzf = i11;
        this.zzh = z10;
        this.zzi = iArr2;
        this.zzj = i12;
        this.zzk = i13;
        this.zzo = zzgbVar;
        this.zzl = zzfkVar;
        this.zzm = zzgyVar;
        this.zzn = zzelVar;
        this.zzg = zzfwVar;
        this.zzp = zzfrVar;
    }

    private static Field zzA(Class cls, String str) {
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

    private final void zzB(Object obj, Object obj2, int i10) {
        long jZzv = zzv(i10) & 1048575;
        if (zzG(obj2, i10)) {
            Object objZzf = zzhi.zzf(obj, jZzv);
            Object objZzf2 = zzhi.zzf(obj2, jZzv);
            if (objZzf != null && objZzf2 != null) {
                zzhi.zzp(obj, jZzv, zzez.zzg(objZzf, objZzf2));
                zzD(obj, i10);
            } else if (objZzf2 != null) {
                zzhi.zzp(obj, jZzv, objZzf2);
                zzD(obj, i10);
            }
        }
    }

    private final void zzC(Object obj, Object obj2, int i10) {
        int iZzv = zzv(i10);
        int i11 = this.zzc[i10];
        long j10 = iZzv & 1048575;
        if (zzJ(obj2, i11, i10)) {
            Object objZzf = zzJ(obj, i11, i10) ? zzhi.zzf(obj, j10) : null;
            Object objZzf2 = zzhi.zzf(obj2, j10);
            if (objZzf != null && objZzf2 != null) {
                zzhi.zzp(obj, j10, zzez.zzg(objZzf, objZzf2));
                zzE(obj, i11, i10);
            } else if (objZzf2 != null) {
                zzhi.zzp(obj, j10, objZzf2);
                zzE(obj, i11, i10);
            }
        }
    }

    private final void zzD(Object obj, int i10) {
        int iZzs = zzs(i10);
        long j10 = 1048575 & iZzs;
        if (j10 == 1048575) {
            return;
        }
        zzhi.zzn(obj, j10, (1 << (iZzs >>> 20)) | zzhi.zzc(obj, j10));
    }

    private final void zzE(Object obj, int i10, int i11) {
        zzhi.zzn(obj, zzs(i11) & 1048575, i10);
    }

    private final boolean zzF(Object obj, Object obj2, int i10) {
        return zzG(obj, i10) == zzG(obj2, i10);
    }

    private final boolean zzG(Object obj, int i10) {
        int iZzs = zzs(i10);
        long j10 = iZzs & 1048575;
        if (j10 != 1048575) {
            return (zzhi.zzc(obj, j10) & (1 << (iZzs >>> 20))) != 0;
        }
        int iZzv = zzv(i10);
        long j11 = iZzv & 1048575;
        switch (zzu(iZzv)) {
            case 0:
                return Double.doubleToRawLongBits(zzhi.zza(obj, j11)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzhi.zzb(obj, j11)) != 0;
            case 2:
                return zzhi.zzd(obj, j11) != 0;
            case 3:
                return zzhi.zzd(obj, j11) != 0;
            case 4:
                return zzhi.zzc(obj, j11) != 0;
            case 5:
                return zzhi.zzd(obj, j11) != 0;
            case 6:
                return zzhi.zzc(obj, j11) != 0;
            case 7:
                return zzhi.zzt(obj, j11);
            case 8:
                Object objZzf = zzhi.zzf(obj, j11);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzee) {
                    return !zzee.zzb.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzhi.zzf(obj, j11) != null;
            case 10:
                return !zzee.zzb.equals(zzhi.zzf(obj, j11));
            case 11:
                return zzhi.zzc(obj, j11) != 0;
            case 12:
                return zzhi.zzc(obj, j11) != 0;
            case 13:
                return zzhi.zzc(obj, j11) != 0;
            case 14:
                return zzhi.zzd(obj, j11) != 0;
            case 15:
                return zzhi.zzc(obj, j11) != 0;
            case 16:
                return zzhi.zzd(obj, j11) != 0;
            case 17:
                return zzhi.zzf(obj, j11) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzH(Object obj, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return zzG(obj, i10);
        }
        return (i12 & i13) != 0;
    }

    private static boolean zzI(Object obj, int i10, zzgh zzghVar) {
        return zzghVar.zzi(zzhi.zzf(obj, i10 & 1048575));
    }

    private final boolean zzJ(Object obj, int i10, int i11) {
        return zzhi.zzc(obj, (long) (zzs(i11) & 1048575)) == i10;
    }

    static zzgz zzc(Object obj) {
        zzeu zzeuVar = (zzeu) obj;
        zzgz zzgzVar = zzeuVar.zzc;
        if (zzgzVar != zzgz.zza()) {
            return zzgzVar;
        }
        zzgz zzgzVarZzc = zzgz.zzc();
        zzeuVar.zzc = zzgzVarZzc;
        return zzgzVarZzc;
    }

    static zzfz zzj(Class cls, zzft zzftVar, zzgb zzgbVar, zzfk zzfkVar, zzgy zzgyVar, zzel zzelVar, zzfr zzfrVar) {
        if (zzftVar instanceof zzgg) {
            return zzk((zzgg) zzftVar, zzgbVar, zzfkVar, zzgyVar, zzelVar, zzfrVar);
        }
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:123:0x025f  */
    /* JADX WARN: Code duplicated, block: B:125:0x0265  */
    /* JADX WARN: Code duplicated, block: B:128:0x027b  */
    /* JADX WARN: Code duplicated, block: B:130:0x027f  */
    /* JADX WARN: Code duplicated, block: B:164:0x0334  */
    /* JADX WARN: Code duplicated, block: B:180:0x0384  */
    /* JADX WARN: Code duplicated, block: B:183:0x038e  */
    static zzfz zzk(zzgg zzggVar, zzgb zzgbVar, zzfk zzfkVar, zzgy zzgyVar, zzel zzelVar, zzfr zzfrVar) {
        int i10;
        int iCharAt;
        int iCharAt2;
        int iCharAt3;
        int[] iArr;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        char cCharAt;
        int i16;
        char cCharAt2;
        int i17;
        char cCharAt3;
        int i18;
        char cCharAt4;
        int i19;
        char cCharAt5;
        int i20;
        char cCharAt6;
        int i21;
        char cCharAt7;
        int i22;
        char cCharAt8;
        int i23;
        int i24;
        int i25;
        int[] iArr2;
        int i26;
        int i27;
        int i28;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        Object[] objArr;
        int i29;
        int i30;
        Field fieldZzA;
        char cCharAt9;
        int i31;
        int i32;
        int i33;
        int i34;
        Object obj;
        Field fieldZzA2;
        int i35;
        Object obj2;
        Field fieldZzA3;
        int i36;
        char cCharAt10;
        int i37;
        char cCharAt11;
        int i38;
        char cCharAt12;
        int i39;
        char cCharAt13;
        boolean z10 = zzggVar.zzc() == 2;
        String strZzd = zzggVar.zzd();
        int length = strZzd.length();
        char c10 = 55296;
        if (strZzd.charAt(0) >= 55296) {
            int i40 = 1;
            while (true) {
                i10 = i40 + 1;
                if (strZzd.charAt(i40) < 55296) {
                    break;
                }
                i40 = i10;
            }
        } else {
            i10 = 1;
        }
        int i41 = i10 + 1;
        int iCharAt4 = strZzd.charAt(i10);
        if (iCharAt4 >= 55296) {
            int i42 = iCharAt4 & 8191;
            int i43 = 13;
            while (true) {
                i39 = i41 + 1;
                cCharAt13 = strZzd.charAt(i41);
                if (cCharAt13 < 55296) {
                    break;
                }
                i42 |= (cCharAt13 & 8191) << i43;
                i43 += 13;
                i41 = i39;
            }
            iCharAt4 = i42 | (cCharAt13 << i43);
            i41 = i39;
        }
        if (iCharAt4 == 0) {
            iCharAt = 0;
            i14 = 0;
            iCharAt2 = 0;
            i13 = 0;
            iCharAt3 = 0;
            i11 = 0;
            iArr = zza;
            i12 = 0;
        } else {
            int i44 = i41 + 1;
            int iCharAt5 = strZzd.charAt(i41);
            if (iCharAt5 >= 55296) {
                int i45 = iCharAt5 & 8191;
                int i46 = 13;
                while (true) {
                    i22 = i44 + 1;
                    cCharAt8 = strZzd.charAt(i44);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i45 |= (cCharAt8 & 8191) << i46;
                    i46 += 13;
                    i44 = i22;
                }
                iCharAt5 = i45 | (cCharAt8 << i46);
                i44 = i22;
            }
            int i47 = i44 + 1;
            int iCharAt6 = strZzd.charAt(i44);
            if (iCharAt6 >= 55296) {
                int i48 = iCharAt6 & 8191;
                int i49 = 13;
                while (true) {
                    i21 = i47 + 1;
                    cCharAt7 = strZzd.charAt(i47);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i48 |= (cCharAt7 & 8191) << i49;
                    i49 += 13;
                    i47 = i21;
                }
                iCharAt6 = i48 | (cCharAt7 << i49);
                i47 = i21;
            }
            int i50 = i47 + 1;
            iCharAt = strZzd.charAt(i47);
            if (iCharAt >= 55296) {
                int i51 = iCharAt & 8191;
                int i52 = 13;
                while (true) {
                    i20 = i50 + 1;
                    cCharAt6 = strZzd.charAt(i50);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i51 |= (cCharAt6 & 8191) << i52;
                    i52 += 13;
                    i50 = i20;
                }
                iCharAt = i51 | (cCharAt6 << i52);
                i50 = i20;
            }
            int i53 = i50 + 1;
            int iCharAt7 = strZzd.charAt(i50);
            if (iCharAt7 >= 55296) {
                int i54 = iCharAt7 & 8191;
                int i55 = 13;
                while (true) {
                    i19 = i53 + 1;
                    cCharAt5 = strZzd.charAt(i53);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i54 |= (cCharAt5 & 8191) << i55;
                    i55 += 13;
                    i53 = i19;
                }
                iCharAt7 = i54 | (cCharAt5 << i55);
                i53 = i19;
            }
            int i56 = i53 + 1;
            iCharAt2 = strZzd.charAt(i53);
            if (iCharAt2 >= 55296) {
                int i57 = iCharAt2 & 8191;
                int i58 = 13;
                while (true) {
                    i18 = i56 + 1;
                    cCharAt4 = strZzd.charAt(i56);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i57 |= (cCharAt4 & 8191) << i58;
                    i58 += 13;
                    i56 = i18;
                }
                iCharAt2 = i57 | (cCharAt4 << i58);
                i56 = i18;
            }
            int i59 = i56 + 1;
            int iCharAt8 = strZzd.charAt(i56);
            if (iCharAt8 >= 55296) {
                int i60 = iCharAt8 & 8191;
                int i61 = 13;
                while (true) {
                    i17 = i59 + 1;
                    cCharAt3 = strZzd.charAt(i59);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i60 |= (cCharAt3 & 8191) << i61;
                    i61 += 13;
                    i59 = i17;
                }
                iCharAt8 = i60 | (cCharAt3 << i61);
                i59 = i17;
            }
            int i62 = i59 + 1;
            int iCharAt9 = strZzd.charAt(i59);
            if (iCharAt9 >= 55296) {
                int i63 = iCharAt9 & 8191;
                int i64 = 13;
                while (true) {
                    i16 = i62 + 1;
                    cCharAt2 = strZzd.charAt(i62);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i63 |= (cCharAt2 & 8191) << i64;
                    i64 += 13;
                    i62 = i16;
                }
                iCharAt9 = i63 | (cCharAt2 << i64);
                i62 = i16;
            }
            int i65 = i62 + 1;
            iCharAt3 = strZzd.charAt(i62);
            if (iCharAt3 >= 55296) {
                int i66 = iCharAt3 & 8191;
                int i67 = 13;
                while (true) {
                    i15 = i65 + 1;
                    cCharAt = strZzd.charAt(i65);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i66 |= (cCharAt & 8191) << i67;
                    i67 += 13;
                    i65 = i15;
                }
                iCharAt3 = i66 | (cCharAt << i67);
                i65 = i15;
            }
            iArr = new int[iCharAt3 + iCharAt8 + iCharAt9];
            i11 = iCharAt5 + iCharAt5 + iCharAt6;
            i12 = iCharAt5;
            i41 = i65;
            int i68 = iCharAt8;
            i13 = iCharAt7;
            i14 = i68;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzggVar.zze();
        Class<?> cls = zzggVar.zza().getClass();
        int[] iArr3 = new int[iCharAt2 * 3];
        Object[] objArr2 = new Object[iCharAt2 + iCharAt2];
        int i69 = iCharAt3 + i14;
        int i70 = iCharAt3;
        int i71 = i69;
        int i72 = 0;
        int i73 = 0;
        while (i41 < length) {
            int i74 = i41 + 1;
            int iCharAt10 = strZzd.charAt(i41);
            if (iCharAt10 >= c10) {
                int i75 = iCharAt10 & 8191;
                int i76 = i74;
                int i77 = 13;
                while (true) {
                    i38 = i76 + 1;
                    cCharAt12 = strZzd.charAt(i76);
                    if (cCharAt12 < c10) {
                        break;
                    }
                    i75 |= (cCharAt12 & 8191) << i77;
                    i77 += 13;
                    i76 = i38;
                }
                iCharAt10 = i75 | (cCharAt12 << i77);
                i23 = i38;
            } else {
                i23 = i74;
            }
            int i78 = i23 + 1;
            int iCharAt11 = strZzd.charAt(i23);
            if (iCharAt11 >= c10) {
                int i79 = iCharAt11 & 8191;
                int i80 = i78;
                int i81 = 13;
                while (true) {
                    i37 = i80 + 1;
                    cCharAt11 = strZzd.charAt(i80);
                    i24 = length;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i79 |= (cCharAt11 & 8191) << i81;
                    i81 += 13;
                    i80 = i37;
                    length = i24;
                }
                iCharAt11 = i79 | (cCharAt11 << i81);
                i25 = i37;
            } else {
                i24 = length;
                i25 = i78;
            }
            int i82 = iCharAt11 & 255;
            int i83 = iCharAt3;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i73] = i72;
                i73++;
            }
            if (i82 >= 51) {
                int i84 = i25 + 1;
                int iCharAt12 = strZzd.charAt(i25);
                if (iCharAt12 >= 55296) {
                    int i85 = iCharAt12 & 8191;
                    int i86 = i84;
                    int i87 = 13;
                    while (true) {
                        i36 = i86 + 1;
                        cCharAt10 = strZzd.charAt(i86);
                        i27 = i13;
                        if (cCharAt10 < 55296) {
                            break;
                        }
                        i85 |= (cCharAt10 & 8191) << i87;
                        i87 += 13;
                        i86 = i36;
                        i13 = i27;
                    }
                    iCharAt12 = i85 | (cCharAt10 << i87);
                    i32 = i36;
                } else {
                    i27 = i13;
                    i32 = i84;
                }
                int i88 = i82 - 51;
                int i89 = i32;
                if (i88 == 9 || i88 == 17) {
                    int i90 = i72 / 3;
                    i33 = i11 + 1;
                    objArr2[i90 + i90 + 1] = objArrZze[i11];
                } else {
                    if (i88 == 12 && !z10) {
                        int i91 = i72 / 3;
                        i33 = i11 + 1;
                        objArr2[i91 + i91 + 1] = objArrZze[i11];
                    }
                    i34 = iCharAt12 + iCharAt12;
                    obj = objArrZze[i34];
                    if (obj instanceof Field) {
                        fieldZzA2 = (Field) obj;
                    } else {
                        fieldZzA2 = zzA(cls, (String) obj);
                        objArrZze[i34] = fieldZzA2;
                    }
                    iArr2 = iArr3;
                    i26 = iCharAt;
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzA2);
                    i35 = i34 + 1;
                    obj2 = objArrZze[i35];
                    if (obj2 instanceof Field) {
                        fieldZzA3 = (Field) obj2;
                    } else {
                        fieldZzA3 = zzA(cls, (String) obj2);
                        objArrZze[i35] = fieldZzA3;
                    }
                    strZzd = strZzd;
                    objArr = objArr2;
                    i28 = i11;
                    i29 = i89;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzA3);
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i30 = 0;
                }
                i11 = i33;
                i34 = iCharAt12 + iCharAt12;
                obj = objArrZze[i34];
                if (obj instanceof Field) {
                    fieldZzA2 = (Field) obj;
                } else {
                    fieldZzA2 = zzA(cls, (String) obj);
                    objArrZze[i34] = fieldZzA2;
                }
                iArr2 = iArr3;
                i26 = iCharAt;
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldZzA2);
                i35 = i34 + 1;
                obj2 = objArrZze[i35];
                if (obj2 instanceof Field) {
                    fieldZzA3 = (Field) obj2;
                } else {
                    fieldZzA3 = zzA(cls, (String) obj2);
                    objArrZze[i35] = fieldZzA3;
                }
                strZzd = strZzd;
                objArr = objArr2;
                i28 = i11;
                i29 = i89;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzA3);
                iObjectFieldOffset = iObjectFieldOffset4;
                i30 = 0;
            } else {
                iArr2 = iArr3;
                i26 = iCharAt;
                i27 = i13;
                int i92 = i11 + 1;
                Field fieldZzA4 = zzA(cls, (String) objArrZze[i11]);
                if (i82 == 9 || i82 == 17) {
                    int i93 = i72 / 3;
                    objArr2[i93 + i93 + 1] = fieldZzA4.getType();
                } else {
                    if (i82 == 27 || i82 == 49) {
                        int i94 = i72 / 3;
                        i31 = i11 + 2;
                        objArr2[i94 + i94 + 1] = objArrZze[i92];
                    } else if (i82 == 12 || i82 == 30 || i82 == 44) {
                        if (!z10) {
                            int i95 = i72 / 3;
                            i31 = i11 + 2;
                            objArr2[i95 + i95 + 1] = objArrZze[i92];
                        }
                    } else if (i82 == 50) {
                        int i96 = i70 + 1;
                        iArr[i70] = i72;
                        int i97 = i72 / 3;
                        int i98 = i97 + i97;
                        int i99 = i11 + 2;
                        objArr2[i98] = objArrZze[i92];
                        if ((iCharAt11 & 2048) != 0) {
                            i92 = i11 + 3;
                            objArr2[i98 + 1] = objArrZze[i99];
                            i70 = i96;
                        } else {
                            i70 = i96;
                            i28 = i99;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzA4);
                        iObjectFieldOffset2 = 1048575;
                        objArr = objArr2;
                        if ((iCharAt11 & 4096) == 4096 || i82 > 17) {
                            i29 = i25;
                            i30 = 0;
                        } else {
                            int i100 = i25 + 1;
                            int iCharAt13 = strZzd.charAt(i25);
                            if (iCharAt13 >= 55296) {
                                int i101 = iCharAt13 & 8191;
                                int i102 = 13;
                                while (true) {
                                    i29 = i100 + 1;
                                    cCharAt9 = strZzd.charAt(i100);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i101 |= (cCharAt9 & 8191) << i102;
                                    i102 += 13;
                                    i100 = i29;
                                }
                                iCharAt13 = i101 | (cCharAt9 << i102);
                            } else {
                                i29 = i100;
                            }
                            int i103 = i12 + i12 + (iCharAt13 / 32);
                            Object obj3 = objArrZze[i103];
                            if (obj3 instanceof Field) {
                                fieldZzA = (Field) obj3;
                            } else {
                                fieldZzA = zzA(cls, (String) obj3);
                                objArrZze[i103] = fieldZzA;
                            }
                            i30 = iCharAt13 % 32;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzA);
                        }
                        if (i82 >= 18 && i82 <= 49) {
                            iArr[i71] = iObjectFieldOffset;
                            i71++;
                        }
                    }
                    i28 = i31;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzA4);
                    iObjectFieldOffset2 = 1048575;
                    objArr = objArr2;
                    if ((iCharAt11 & 4096) == 4096) {
                        i29 = i25;
                        i30 = 0;
                    } else {
                        i29 = i25;
                        i30 = 0;
                    }
                    if (i82 >= 18) {
                        iArr[i71] = iObjectFieldOffset;
                        i71++;
                    }
                }
                i28 = i92;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzA4);
                iObjectFieldOffset2 = 1048575;
                objArr = objArr2;
                if ((iCharAt11 & 4096) == 4096) {
                    i29 = i25;
                    i30 = 0;
                } else {
                    i29 = i25;
                    i30 = 0;
                }
                if (i82 >= 18) {
                    iArr[i71] = iObjectFieldOffset;
                    i71++;
                }
            }
            int i104 = i72 + 1;
            iArr2[i72] = iCharAt10;
            int i105 = i72 + 2;
            iArr2[i104] = ((iCharAt11 & 256) != 0 ? ASTNode.DEOP : 0) | ((iCharAt11 & 512) != 0 ? ASTNode.DISCARD : 0) | (i82 << 20) | iObjectFieldOffset;
            i72 += 3;
            iArr2[i105] = (i30 << 20) | iObjectFieldOffset2;
            i11 = i28;
            iCharAt = i26;
            iCharAt3 = i83;
            i41 = i29;
            length = i24;
            objArr2 = objArr;
            strZzd = strZzd;
            iArr3 = iArr2;
            i13 = i27;
            c10 = 55296;
        }
        return new zzfz(iArr3, objArr2, iCharAt, i13, zzggVar.zza(), z10, false, iArr, iCharAt3, i69, zzgbVar, zzfkVar, zzgyVar, zzelVar, zzfrVar, null);
    }

    private static int zzl(Object obj, long j10) {
        return ((Integer) zzhi.zzf(obj, j10)).intValue();
    }

    private final int zzm(Object obj, byte[] bArr, int i10, int i11, int i12, long j10, zzds zzdsVar) throws IOException {
        Unsafe unsafe = zzb;
        Object objZzz = zzz(i12);
        Object object = unsafe.getObject(obj, j10);
        if (!((zzfq) object).zze()) {
            zzfq zzfqVarZzb = zzfq.zza().zzb();
            zzfr.zza(zzfqVarZzb, object);
            unsafe.putObject(obj, j10, zzfqVarZzb);
        }
        throw null;
    }

    private final int zzn(Object obj, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, int i17, zzds zzdsVar) throws IOException {
        Unsafe unsafe = zzb;
        long j11 = this.zzc[i17 + 2] & 1048575;
        switch (i16) {
            case AD_REWARD_USER_VALUE:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Double.valueOf(Double.longBitsToDouble(zzdt.zzn(bArr, i10))));
                unsafe.putInt(obj, j11, i13);
                return i10 + 8;
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Float.valueOf(Float.intBitsToFloat(zzdt.zzb(bArr, i10))));
                unsafe.putInt(obj, j11, i13);
                return i10 + 4;
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                if (i14 != 0) {
                    return i10;
                }
                int iZzm = zzdt.zzm(bArr, i10, zzdsVar);
                unsafe.putObject(obj, j10, Long.valueOf(zzdsVar.zzb));
                unsafe.putInt(obj, j11, i13);
                return iZzm;
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
            case 62:
                if (i14 != 0) {
                    return i10;
                }
                int iZzj = zzdt.zzj(bArr, i10, zzdsVar);
                unsafe.putObject(obj, j10, Integer.valueOf(zzdsVar.zza));
                unsafe.putInt(obj, j11, i13);
                return iZzj;
            case AD_VISIBILITY_VALUE:
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Long.valueOf(zzdt.zzn(bArr, i10)));
                unsafe.putInt(obj, j11, i13);
                return i10 + 8;
            case 57:
            case 64:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Integer.valueOf(zzdt.zzb(bArr, i10)));
                unsafe.putInt(obj, j11, i13);
                return i10 + 4;
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                if (i14 != 0) {
                    return i10;
                }
                int iZzm2 = zzdt.zzm(bArr, i10, zzdsVar);
                unsafe.putObject(obj, j10, Boolean.valueOf(zzdsVar.zzb != 0));
                unsafe.putInt(obj, j11, i13);
                return iZzm2;
            case 59:
                if (i14 != 2) {
                    return i10;
                }
                int iZzj2 = zzdt.zzj(bArr, i10, zzdsVar);
                int i18 = zzdsVar.zza;
                if (i18 == 0) {
                    unsafe.putObject(obj, j10, "");
                } else {
                    if ((i15 & ASTNode.DISCARD) != 0 && !zzhm.zzd(bArr, iZzj2, iZzj2 + i18)) {
                        throw zzfa.zzb();
                    }
                    unsafe.putObject(obj, j10, new String(bArr, iZzj2, i18, zzez.zzb));
                    iZzj2 += i18;
                }
                unsafe.putInt(obj, j11, i13);
                return iZzj2;
            case 60:
                if (i14 != 2) {
                    return i10;
                }
                int iZzd = zzdt.zzd(zzy(i17), bArr, i10, i11, zzdsVar);
                Object object = unsafe.getInt(obj, j11) == i13 ? unsafe.getObject(obj, j10) : null;
                if (object == null) {
                    unsafe.putObject(obj, j10, zzdsVar.zzc);
                } else {
                    unsafe.putObject(obj, j10, zzez.zzg(object, zzdsVar.zzc));
                }
                unsafe.putInt(obj, j11, i13);
                return iZzd;
            case 61:
                if (i14 != 2) {
                    return i10;
                }
                int iZza = zzdt.zza(bArr, i10, zzdsVar);
                unsafe.putObject(obj, j10, zzdsVar.zzc);
                unsafe.putInt(obj, j11, i13);
                return iZza;
            case 63:
                if (i14 != 0) {
                    return i10;
                }
                int iZzj3 = zzdt.zzj(bArr, i10, zzdsVar);
                int i19 = zzdsVar.zza;
                zzex zzexVarZzx = zzx(i17);
                if (zzexVarZzx == null || zzexVarZzx.zza()) {
                    unsafe.putObject(obj, j10, Integer.valueOf(i19));
                    unsafe.putInt(obj, j11, i13);
                } else {
                    zzc(obj).zzf(i12, Long.valueOf(i19));
                }
                return iZzj3;
            case 66:
                if (i14 != 0) {
                    return i10;
                }
                int iZzj4 = zzdt.zzj(bArr, i10, zzdsVar);
                unsafe.putObject(obj, j10, Integer.valueOf(zzei.zzb(zzdsVar.zza)));
                unsafe.putInt(obj, j11, i13);
                return iZzj4;
            case 67:
                if (i14 != 0) {
                    return i10;
                }
                int iZzm3 = zzdt.zzm(bArr, i10, zzdsVar);
                unsafe.putObject(obj, j10, Long.valueOf(zzei.zzc(zzdsVar.zzb)));
                unsafe.putInt(obj, j11, i13);
                return iZzm3;
            case 68:
                if (i14 != 3) {
                    return i10;
                }
                int iZzc = zzdt.zzc(zzy(i17), bArr, i10, i11, (i12 & (-8)) | 4, zzdsVar);
                Object object2 = unsafe.getInt(obj, j11) == i13 ? unsafe.getObject(obj, j10) : null;
                if (object2 == null) {
                    unsafe.putObject(obj, j10, zzdsVar.zzc);
                } else {
                    unsafe.putObject(obj, j10, zzez.zzg(object2, zzdsVar.zzc));
                }
                unsafe.putInt(obj, j11, i13);
                return iZzc;
            default:
                return i10;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0081. Please report as an issue. */
    private final int zzo(Object obj, byte[] bArr, int i10, int i11, zzds zzdsVar) throws IOException {
        int i12;
        int iZzk;
        int i13;
        int i14;
        int i15;
        Unsafe unsafe;
        int i16;
        int i17;
        int i18;
        int i19;
        int iZzm;
        int iZzd;
        int i20;
        int i21;
        int i22;
        zzfz<T> zzfzVar = this;
        Object obj2 = obj;
        byte[] bArr2 = bArr;
        int i23 = i11;
        zzdsVar = zzdsVar;
        Unsafe unsafe2 = zzb;
        int i24 = 1048575;
        int i25 = -1;
        int iZzi = i10;
        int i26 = -1;
        int i27 = 1048575;
        int i28 = 0;
        int i29 = 0;
        while (iZzi < i23) {
            int i30 = iZzi + 1;
            byte b10 = bArr2[iZzi];
            if (b10 < 0) {
                iZzk = zzdt.zzk(b10, bArr2, i30, zzdsVar);
                i12 = zzdsVar.zza;
            } else {
                i12 = b10;
                iZzk = i30;
            }
            int i31 = i12 >>> 3;
            int i32 = i12 & 7;
            int iZzr = i31 > i26 ? zzfzVar.zzr(i31, i28 / 3) : zzfzVar.zzq(i31);
            if (iZzr == i25) {
                i13 = iZzk;
                i14 = i31;
                i15 = i25;
                unsafe = unsafe2;
                i16 = 0;
            } else {
                int[] iArr = zzfzVar.zzc;
                int i33 = iArr[iZzr + 1];
                int iZzu = zzu(i33);
                long j10 = i33 & i24;
                if (iZzu <= 17) {
                    int i34 = iArr[iZzr + 2];
                    int i35 = 1 << (i34 >>> 20);
                    i17 = 1048575;
                    int i36 = i34 & 1048575;
                    if (i36 != i27) {
                        if (i27 != 1048575) {
                            unsafe2.putInt(obj2, i27, i29);
                        }
                        if (i36 != 1048575) {
                            i29 = unsafe2.getInt(obj2, i36);
                        }
                        i27 = i36;
                    }
                    switch (iZzu) {
                        case 0:
                            i18 = iZzr;
                            i19 = iZzk;
                            i14 = i31;
                            if (i32 != 1) {
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                zzhi.zzl(obj2, j10, Double.longBitsToDouble(zzdt.zzn(bArr2, i19)));
                                iZzi = i19 + 8;
                                i29 |= i35;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 1:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i19 = iZzk;
                            i17 = 1048575;
                            i14 = i31;
                            if (i32 != 5) {
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                zzhi.zzm(obj2, j10, Float.intBitsToFloat(zzdt.zzb(bArr2, i19)));
                                iZzi = i19 + 4;
                                i29 |= i35;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 2:
                        case 3:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i19 = iZzk;
                            i14 = i31;
                            if (i32 != 0) {
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                iZzm = zzdt.zzm(bArr2, i19, zzdsVar);
                                unsafe2.putLong(obj, j10, zzdsVar.zzb);
                                i29 |= i35;
                                iZzi = iZzm;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 4:
                        case 11:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i19 = iZzk;
                            i17 = 1048575;
                            i14 = i31;
                            if (i32 != 0) {
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                iZzi = zzdt.zzj(bArr2, i19, zzdsVar);
                                unsafe2.putInt(obj2, j10, zzdsVar.zza);
                                i29 |= i35;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 5:
                        case 14:
                            i18 = iZzr;
                            i14 = i31;
                            if (i32 != 1) {
                                i19 = iZzk;
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                i19 = iZzk;
                                unsafe2.putLong(obj, j10, zzdt.zzn(bArr2, iZzk));
                                iZzi = i19 + 8;
                                i29 |= i35;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 6:
                        case 13:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i17 = 1048575;
                            i14 = i31;
                            if (i32 != 5) {
                                i19 = iZzk;
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                unsafe2.putInt(obj2, j10, zzdt.zzb(bArr2, iZzk));
                                iZzi = iZzk + 4;
                                i29 |= i35;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 7:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i17 = 1048575;
                            i14 = i31;
                            if (i32 != 0) {
                                i19 = iZzk;
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                iZzi = zzdt.zzm(bArr2, iZzk, zzdsVar);
                                zzhi.zzk(obj2, j10, zzdsVar.zzb != 0);
                                i29 |= i35;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 8:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i17 = 1048575;
                            i14 = i31;
                            if (i32 != 2) {
                                i19 = iZzk;
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                iZzi = (536870912 & i33) == 0 ? zzdt.zzg(bArr2, iZzk, zzdsVar) : zzdt.zzh(bArr2, iZzk, zzdsVar);
                                unsafe2.putObject(obj2, j10, zzdsVar.zzc);
                                i29 |= i35;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 9:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i17 = 1048575;
                            i14 = i31;
                            if (i32 != 2) {
                                i19 = iZzk;
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                iZzd = zzdt.zzd(zzfzVar.zzy(i18), bArr2, iZzk, i23, zzdsVar);
                                Object object = unsafe2.getObject(obj2, j10);
                                if (object == null) {
                                    unsafe2.putObject(obj2, j10, zzdsVar.zzc);
                                } else {
                                    unsafe2.putObject(obj2, j10, zzez.zzg(object, zzdsVar.zzc));
                                }
                                i29 |= i35;
                                iZzi = iZzd;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 10:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i17 = 1048575;
                            i14 = i31;
                            if (i32 != 2) {
                                i19 = iZzk;
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                iZzd = zzdt.zza(bArr2, iZzk, zzdsVar);
                                unsafe2.putObject(obj2, j10, zzdsVar.zzc);
                                i29 |= i35;
                                iZzi = iZzd;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 12:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i17 = 1048575;
                            i14 = i31;
                            if (i32 != 0) {
                                i19 = iZzk;
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                iZzd = zzdt.zzj(bArr2, iZzk, zzdsVar);
                                unsafe2.putInt(obj2, j10, zzdsVar.zza);
                                i29 |= i35;
                                iZzi = iZzd;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 15:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i17 = 1048575;
                            i14 = i31;
                            if (i32 != 0) {
                                i19 = iZzk;
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                iZzd = zzdt.zzj(bArr2, iZzk, zzdsVar);
                                unsafe2.putInt(obj2, j10, zzei.zzb(zzdsVar.zza));
                                i29 |= i35;
                                iZzi = iZzd;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 16:
                            if (i32 != 0) {
                                i14 = i31;
                                i18 = iZzr;
                                i19 = iZzk;
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                zzdsVar = zzdsVar;
                                iZzm = zzdt.zzm(bArr2, iZzk, zzdsVar);
                                i18 = iZzr;
                                i14 = i31;
                                unsafe2.putLong(obj, j10, zzei.zzc(zzdsVar.zzb));
                                i29 |= i35;
                                iZzi = iZzm;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        default:
                            i14 = i31;
                            i18 = iZzr;
                            i19 = iZzk;
                            i13 = i19;
                            unsafe = unsafe2;
                            i16 = i18;
                            i15 = -1;
                            break;
                    }
                } else {
                    zzdsVar = zzdsVar;
                    i18 = iZzr;
                    int i37 = iZzk;
                    i17 = 1048575;
                    i14 = i31;
                    if (iZzu == 27) {
                        if (i32 == 2) {
                            zzey zzeyVarZzd = (zzey) unsafe2.getObject(obj2, j10);
                            if (!zzeyVarZzd.zzc()) {
                                int size = zzeyVarZzd.size();
                                zzeyVarZzd = zzeyVarZzd.zzd(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj2, j10, zzeyVarZzd);
                            }
                            iZzi = zzdt.zze(zzfzVar.zzy(i18), i12, bArr, i37, i11, zzeyVarZzd, zzdsVar);
                            i29 = i29;
                            i28 = i18;
                            i26 = i14;
                            i24 = i17;
                            i25 = -1;
                        } else {
                            i20 = i37;
                            i21 = i29;
                            i22 = i27;
                            unsafe = unsafe2;
                            i16 = i18;
                            i15 = -1;
                        }
                    } else if (iZzu <= 49) {
                        i21 = i29;
                        i22 = i27;
                        i15 = -1;
                        unsafe = unsafe2;
                        i16 = i18;
                        iZzi = zzp(obj, bArr, i37, i11, i12, i14, i32, i18, i33, iZzu, j10, zzdsVar);
                        if (iZzi != i37) {
                            obj2 = obj;
                            bArr2 = bArr;
                            i23 = i11;
                            zzdsVar = zzdsVar;
                            i27 = i22;
                            i25 = i15;
                            i26 = i14;
                            i29 = i21;
                            i28 = i16;
                            unsafe2 = unsafe;
                            i24 = 1048575;
                            zzfzVar = this;
                        } else {
                            i13 = iZzi;
                            i27 = i22;
                            i29 = i21;
                        }
                    } else {
                        i20 = i37;
                        i21 = i29;
                        i22 = i27;
                        unsafe = unsafe2;
                        i16 = i18;
                        i15 = -1;
                        if (iZzu != 50) {
                            iZzi = zzn(obj, bArr, i20, i11, i12, i14, i32, i33, iZzu, j10, i16, zzdsVar);
                            if (iZzi != i20) {
                                obj2 = obj;
                                bArr2 = bArr;
                                i23 = i11;
                                zzdsVar = zzdsVar;
                                i27 = i22;
                                i25 = i15;
                                i26 = i14;
                                i29 = i21;
                                i28 = i16;
                                unsafe2 = unsafe;
                                i24 = 1048575;
                                zzfzVar = this;
                            } else {
                                i13 = iZzi;
                                i27 = i22;
                                i29 = i21;
                            }
                        } else if (i32 == 2) {
                            iZzi = zzm(obj, bArr, i20, i11, i16, j10, zzdsVar);
                            if (iZzi != i20) {
                                obj2 = obj;
                                bArr2 = bArr;
                                i23 = i11;
                                zzdsVar = zzdsVar;
                                i27 = i22;
                                i25 = i15;
                                i26 = i14;
                                i29 = i21;
                                i28 = i16;
                                unsafe2 = unsafe;
                                i24 = 1048575;
                                zzfzVar = this;
                            } else {
                                i13 = iZzi;
                                i27 = i22;
                                i29 = i21;
                            }
                        }
                    }
                    i13 = i20;
                    i27 = i22;
                    i29 = i21;
                }
            }
            iZzi = zzdt.zzi(i12, bArr, i13, i11, zzc(obj), zzdsVar);
            zzfzVar = this;
            obj2 = obj;
            bArr2 = bArr;
            i23 = i11;
            zzdsVar = zzdsVar;
            i25 = i15;
            i26 = i14;
            i28 = i16;
            unsafe2 = unsafe;
            i24 = 1048575;
        }
        int i38 = i29;
        int i39 = i27;
        Unsafe unsafe3 = unsafe2;
        if (i39 != i24) {
            unsafe3.putInt(obj, i39, i38);
        }
        if (iZzi == i11) {
            return iZzi;
        }
        throw zzfa.zzd();
    }

    private final int zzp(Object obj, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, long j10, int i16, long j11, zzds zzdsVar) throws IOException {
        int i17;
        int i18;
        int i19;
        int i20;
        int iZzj;
        int iZzj2 = i10;
        Unsafe unsafe = zzb;
        zzey zzeyVarZzd = (zzey) unsafe.getObject(obj, j11);
        if (!zzeyVarZzd.zzc()) {
            int size = zzeyVarZzd.size();
            zzeyVarZzd = zzeyVarZzd.zzd(size == 0 ? 10 : size + size);
            unsafe.putObject(obj, j11, zzeyVarZzd);
        }
        switch (i16) {
            case 18:
            case 35:
                if (i14 == 2) {
                    zzej zzejVar = (zzej) zzeyVarZzd;
                    int iZzj3 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i21 = zzdsVar.zza + iZzj3;
                    while (iZzj3 < i21) {
                        zzejVar.zze(Double.longBitsToDouble(zzdt.zzn(bArr, iZzj3)));
                        iZzj3 += 8;
                    }
                    if (iZzj3 == i21) {
                        return iZzj3;
                    }
                    throw zzfa.zzf();
                }
                if (i14 == 1) {
                    zzej zzejVar2 = (zzej) zzeyVarZzd;
                    zzejVar2.zze(Double.longBitsToDouble(zzdt.zzn(bArr, i10)));
                    while (true) {
                        i17 = iZzj2 + 8;
                        if (i17 < i11) {
                            iZzj2 = zzdt.zzj(bArr, i17, zzdsVar);
                            if (i12 == zzdsVar.zza) {
                                zzejVar2.zze(Double.longBitsToDouble(zzdt.zzn(bArr, iZzj2)));
                            }
                        }
                    }
                    return i17;
                }
                return iZzj2;
            case 19:
            case 36:
                if (i14 == 2) {
                    zzeq zzeqVar = (zzeq) zzeyVarZzd;
                    int iZzj4 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i22 = zzdsVar.zza + iZzj4;
                    while (iZzj4 < i22) {
                        zzeqVar.zze(Float.intBitsToFloat(zzdt.zzb(bArr, iZzj4)));
                        iZzj4 += 4;
                    }
                    if (iZzj4 == i22) {
                        return iZzj4;
                    }
                    throw zzfa.zzf();
                }
                if (i14 == 5) {
                    zzeq zzeqVar2 = (zzeq) zzeyVarZzd;
                    zzeqVar2.zze(Float.intBitsToFloat(zzdt.zzb(bArr, i10)));
                    while (true) {
                        i18 = iZzj2 + 4;
                        if (i18 < i11) {
                            iZzj2 = zzdt.zzj(bArr, i18, zzdsVar);
                            if (i12 == zzdsVar.zza) {
                                zzeqVar2.zze(Float.intBitsToFloat(zzdt.zzb(bArr, iZzj2)));
                            }
                        }
                    }
                    return i18;
                }
                return iZzj2;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i14 == 2) {
                    zzfl zzflVar = (zzfl) zzeyVarZzd;
                    int iZzj5 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i23 = zzdsVar.zza + iZzj5;
                    while (iZzj5 < i23) {
                        iZzj5 = zzdt.zzm(bArr, iZzj5, zzdsVar);
                        zzflVar.zze(zzdsVar.zzb);
                    }
                    if (iZzj5 == i23) {
                        return iZzj5;
                    }
                    throw zzfa.zzf();
                }
                if (i14 == 0) {
                    zzfl zzflVar2 = (zzfl) zzeyVarZzd;
                    int iZzm = zzdt.zzm(bArr, iZzj2, zzdsVar);
                    zzflVar2.zze(zzdsVar.zzb);
                    while (iZzm < i11) {
                        int iZzj6 = zzdt.zzj(bArr, iZzm, zzdsVar);
                        if (i12 != zzdsVar.zza) {
                            return iZzm;
                        }
                        iZzm = zzdt.zzm(bArr, iZzj6, zzdsVar);
                        zzflVar2.zze(zzdsVar.zzb);
                    }
                    return iZzm;
                }
                return iZzj2;
            case 22:
            case NOTIFICATION_REDIRECT_VALUE:
            case 39:
            case 43:
                if (i14 == 2) {
                    return zzdt.zzf(bArr, iZzj2, zzeyVarZzd, zzdsVar);
                }
                if (i14 == 0) {
                    return zzdt.zzl(i12, bArr, i10, i11, zzeyVarZzd, zzdsVar);
                }
                return iZzj2;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i14 == 2) {
                    zzfl zzflVar3 = (zzfl) zzeyVarZzd;
                    int iZzj7 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i24 = zzdsVar.zza + iZzj7;
                    while (iZzj7 < i24) {
                        zzflVar3.zze(zzdt.zzn(bArr, iZzj7));
                        iZzj7 += 8;
                    }
                    if (iZzj7 == i24) {
                        return iZzj7;
                    }
                    throw zzfa.zzf();
                }
                if (i14 == 1) {
                    zzfl zzflVar4 = (zzfl) zzeyVarZzd;
                    zzflVar4.zze(zzdt.zzn(bArr, i10));
                    while (true) {
                        i19 = iZzj2 + 8;
                        if (i19 < i11) {
                            iZzj2 = zzdt.zzj(bArr, i19, zzdsVar);
                            if (i12 == zzdsVar.zza) {
                                zzflVar4.zze(zzdt.zzn(bArr, iZzj2));
                            }
                        }
                    }
                    return i19;
                }
                return iZzj2;
            case 24:
            case TEMPLATE_HTML_SIZE_VALUE:
            case 41:
            case 45:
                if (i14 == 2) {
                    zzev zzevVar = (zzev) zzeyVarZzd;
                    int iZzj8 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i25 = zzdsVar.zza + iZzj8;
                    while (iZzj8 < i25) {
                        zzevVar.zze(zzdt.zzb(bArr, iZzj8));
                        iZzj8 += 4;
                    }
                    if (iZzj8 == i25) {
                        return iZzj8;
                    }
                    throw zzfa.zzf();
                }
                if (i14 == 5) {
                    zzev zzevVar2 = (zzev) zzeyVarZzd;
                    zzevVar2.zze(zzdt.zzb(bArr, i10));
                    while (true) {
                        i20 = iZzj2 + 4;
                        if (i20 < i11) {
                            iZzj2 = zzdt.zzj(bArr, i20, zzdsVar);
                            if (i12 == zzdsVar.zza) {
                                zzevVar2.zze(zzdt.zzb(bArr, iZzj2));
                            }
                        }
                    }
                    return i20;
                }
                return iZzj2;
            case 25:
            case 42:
                if (i14 == 2) {
                    zzdu zzduVar = (zzdu) zzeyVarZzd;
                    iZzj = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i26 = zzdsVar.zza + iZzj;
                    while (iZzj < i26) {
                        iZzj = zzdt.zzm(bArr, iZzj, zzdsVar);
                        zzduVar.zze(zzdsVar.zzb != 0);
                    }
                    if (iZzj != i26) {
                        throw zzfa.zzf();
                    }
                    return iZzj;
                }
                if (i14 == 0) {
                    zzdu zzduVar2 = (zzdu) zzeyVarZzd;
                    int iZzm2 = zzdt.zzm(bArr, iZzj2, zzdsVar);
                    zzduVar2.zze(zzdsVar.zzb != 0);
                    while (iZzm2 < i11) {
                        int iZzj9 = zzdt.zzj(bArr, iZzm2, zzdsVar);
                        if (i12 != zzdsVar.zza) {
                            return iZzm2;
                        }
                        iZzm2 = zzdt.zzm(bArr, iZzj9, zzdsVar);
                        zzduVar2.zze(zzdsVar.zzb != 0);
                    }
                    return iZzm2;
                }
                return iZzj2;
            case 26:
                if (i14 == 2) {
                    if ((j10 & 536870912) == 0) {
                        int iZzj10 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                        int i27 = zzdsVar.zza;
                        if (i27 < 0) {
                            throw zzfa.zzc();
                        }
                        if (i27 == 0) {
                            zzeyVarZzd.add("");
                        } else {
                            zzeyVarZzd.add(new String(bArr, iZzj10, i27, zzez.zzb));
                            iZzj10 += i27;
                        }
                        while (iZzj10 < i11) {
                            int iZzj11 = zzdt.zzj(bArr, iZzj10, zzdsVar);
                            if (i12 != zzdsVar.zza) {
                                return iZzj10;
                            }
                            iZzj10 = zzdt.zzj(bArr, iZzj11, zzdsVar);
                            int i28 = zzdsVar.zza;
                            if (i28 < 0) {
                                throw zzfa.zzc();
                            }
                            if (i28 == 0) {
                                zzeyVarZzd.add("");
                            } else {
                                zzeyVarZzd.add(new String(bArr, iZzj10, i28, zzez.zzb));
                                iZzj10 += i28;
                            }
                        }
                        return iZzj10;
                    }
                    int iZzj12 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i29 = zzdsVar.zza;
                    if (i29 < 0) {
                        throw zzfa.zzc();
                    }
                    if (i29 == 0) {
                        zzeyVarZzd.add("");
                    } else {
                        int i30 = iZzj12 + i29;
                        if (!zzhm.zzd(bArr, iZzj12, i30)) {
                            throw zzfa.zzb();
                        }
                        zzeyVarZzd.add(new String(bArr, iZzj12, i29, zzez.zzb));
                        iZzj12 = i30;
                    }
                    while (iZzj12 < i11) {
                        int iZzj13 = zzdt.zzj(bArr, iZzj12, zzdsVar);
                        if (i12 != zzdsVar.zza) {
                            return iZzj12;
                        }
                        iZzj12 = zzdt.zzj(bArr, iZzj13, zzdsVar);
                        int i31 = zzdsVar.zza;
                        if (i31 < 0) {
                            throw zzfa.zzc();
                        }
                        if (i31 == 0) {
                            zzeyVarZzd.add("");
                        } else {
                            int i32 = iZzj12 + i31;
                            if (!zzhm.zzd(bArr, iZzj12, i32)) {
                                throw zzfa.zzb();
                            }
                            zzeyVarZzd.add(new String(bArr, iZzj12, i31, zzez.zzb));
                            iZzj12 = i32;
                        }
                    }
                    return iZzj12;
                }
                return iZzj2;
            case 27:
                if (i14 == 2) {
                    return zzdt.zze(zzy(i15), i12, bArr, i10, i11, zzeyVarZzd, zzdsVar);
                }
                return iZzj2;
            case 28:
                if (i14 == 2) {
                    int iZzj14 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i33 = zzdsVar.zza;
                    if (i33 < 0) {
                        throw zzfa.zzc();
                    }
                    if (i33 > bArr.length - iZzj14) {
                        throw zzfa.zzf();
                    }
                    if (i33 == 0) {
                        zzeyVarZzd.add(zzee.zzb);
                    } else {
                        zzeyVarZzd.add(zzee.zzk(bArr, iZzj14, i33));
                        iZzj14 += i33;
                    }
                    while (iZzj14 < i11) {
                        int iZzj15 = zzdt.zzj(bArr, iZzj14, zzdsVar);
                        if (i12 != zzdsVar.zza) {
                            return iZzj14;
                        }
                        iZzj14 = zzdt.zzj(bArr, iZzj15, zzdsVar);
                        int i34 = zzdsVar.zza;
                        if (i34 < 0) {
                            throw zzfa.zzc();
                        }
                        if (i34 > bArr.length - iZzj14) {
                            throw zzfa.zzf();
                        }
                        if (i34 == 0) {
                            zzeyVarZzd.add(zzee.zzb);
                        } else {
                            zzeyVarZzd.add(zzee.zzk(bArr, iZzj14, i34));
                            iZzj14 += i34;
                        }
                    }
                    return iZzj14;
                }
                return iZzj2;
            case 30:
            case 44:
                if (i14 != 2) {
                    if (i14 == 0) {
                        iZzj = zzdt.zzl(i12, bArr, i10, i11, zzeyVarZzd, zzdsVar);
                    }
                    return iZzj2;
                }
                iZzj = zzdt.zzf(bArr, iZzj2, zzeyVarZzd, zzdsVar);
                zzeu zzeuVar = (zzeu) obj;
                zzgz zzgzVar = zzeuVar.zzc;
                if (zzgzVar == zzgz.zza()) {
                    zzgzVar = null;
                }
                Object objZzd = zzgj.zzd(i13, zzeyVarZzd, zzx(i15), zzgzVar, this.zzm);
                if (objZzd != null) {
                    zzeuVar.zzc = (zzgz) objZzd;
                    return iZzj;
                }
                return iZzj;
            case 33:
            case 47:
                if (i14 == 2) {
                    zzev zzevVar3 = (zzev) zzeyVarZzd;
                    int iZzj16 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i35 = zzdsVar.zza + iZzj16;
                    while (iZzj16 < i35) {
                        iZzj16 = zzdt.zzj(bArr, iZzj16, zzdsVar);
                        zzevVar3.zze(zzei.zzb(zzdsVar.zza));
                    }
                    if (iZzj16 == i35) {
                        return iZzj16;
                    }
                    throw zzfa.zzf();
                }
                if (i14 == 0) {
                    zzev zzevVar4 = (zzev) zzeyVarZzd;
                    int iZzj17 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    zzevVar4.zze(zzei.zzb(zzdsVar.zza));
                    while (iZzj17 < i11) {
                        int iZzj18 = zzdt.zzj(bArr, iZzj17, zzdsVar);
                        if (i12 != zzdsVar.zza) {
                            return iZzj17;
                        }
                        iZzj17 = zzdt.zzj(bArr, iZzj18, zzdsVar);
                        zzevVar4.zze(zzei.zzb(zzdsVar.zza));
                    }
                    return iZzj17;
                }
                return iZzj2;
            case 34:
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                if (i14 == 2) {
                    zzfl zzflVar5 = (zzfl) zzeyVarZzd;
                    int iZzj19 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i36 = zzdsVar.zza + iZzj19;
                    while (iZzj19 < i36) {
                        iZzj19 = zzdt.zzm(bArr, iZzj19, zzdsVar);
                        zzflVar5.zze(zzei.zzc(zzdsVar.zzb));
                    }
                    if (iZzj19 == i36) {
                        return iZzj19;
                    }
                    throw zzfa.zzf();
                }
                if (i14 == 0) {
                    zzfl zzflVar6 = (zzfl) zzeyVarZzd;
                    int iZzm3 = zzdt.zzm(bArr, iZzj2, zzdsVar);
                    zzflVar6.zze(zzei.zzc(zzdsVar.zzb));
                    while (iZzm3 < i11) {
                        int iZzj20 = zzdt.zzj(bArr, iZzm3, zzdsVar);
                        if (i12 != zzdsVar.zza) {
                            return iZzm3;
                        }
                        iZzm3 = zzdt.zzm(bArr, iZzj20, zzdsVar);
                        zzflVar6.zze(zzei.zzc(zzdsVar.zzb));
                    }
                    return iZzm3;
                }
                return iZzj2;
            default:
                if (i14 == 3) {
                    zzgh zzghVarZzy = zzy(i15);
                    int i37 = (i12 & (-8)) | 4;
                    int iZzc = zzdt.zzc(zzghVarZzy, bArr, i10, i11, i37, zzdsVar);
                    zzeyVarZzd.add(zzdsVar.zzc);
                    while (iZzc < i11) {
                        int iZzj21 = zzdt.zzj(bArr, iZzc, zzdsVar);
                        if (i12 != zzdsVar.zza) {
                            return iZzc;
                        }
                        iZzc = zzdt.zzc(zzghVarZzy, bArr, iZzj21, i11, i37, zzdsVar);
                        zzeyVarZzd.add(zzdsVar.zzc);
                    }
                    return iZzc;
                }
                return iZzj2;
        }
    }

    private final int zzq(int i10) {
        if (i10 < this.zze || i10 > this.zzf) {
            return -1;
        }
        return zzt(i10, 0);
    }

    private final int zzr(int i10, int i11) {
        if (i10 < this.zze || i10 > this.zzf) {
            return -1;
        }
        return zzt(i10, i11);
    }

    private final int zzs(int i10) {
        return this.zzc[i10 + 2];
    }

    private final int zzt(int i10, int i11) {
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

    private static int zzu(int i10) {
        return (i10 >>> 20) & 255;
    }

    private final int zzv(int i10) {
        return this.zzc[i10 + 1];
    }

    private static long zzw(Object obj, long j10) {
        return ((Long) zzhi.zzf(obj, j10)).longValue();
    }

    private final zzex zzx(int i10) {
        int i11 = i10 / 3;
        return (zzex) this.zzd[i11 + i11 + 1];
    }

    private final zzgh zzy(int i10) {
        int i11 = i10 / 3;
        int i12 = i11 + i11;
        zzgh zzghVar = (zzgh) this.zzd[i12];
        if (zzghVar != null) {
            return zzghVar;
        }
        zzgh zzghVarZzb = zzge.zza().zzb((Class) this.zzd[i12 + 1]);
        this.zzd[i12] = zzghVarZzb;
        return zzghVarZzb;
    }

    private final Object zzz(int i10) {
        int i11 = i10 / 3;
        return this.zzd[i11 + i11];
    }

    @Override
    public final int zza(Object obj) {
        int i10;
        int iZzc;
        int length = this.zzc.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int iZzv = zzv(i12);
            int i13 = this.zzc[i12];
            long j10 = 1048575 & iZzv;
            int iHashCode = 37;
            switch (zzu(iZzv)) {
                case 0:
                    i10 = i11 * 53;
                    iZzc = zzez.zzc(Double.doubleToLongBits(zzhi.zza(obj, j10)));
                    i11 = i10 + iZzc;
                    break;
                case 1:
                    i10 = i11 * 53;
                    iZzc = Float.floatToIntBits(zzhi.zzb(obj, j10));
                    i11 = i10 + iZzc;
                    break;
                case 2:
                    i10 = i11 * 53;
                    iZzc = zzez.zzc(zzhi.zzd(obj, j10));
                    i11 = i10 + iZzc;
                    break;
                case 3:
                    i10 = i11 * 53;
                    iZzc = zzez.zzc(zzhi.zzd(obj, j10));
                    i11 = i10 + iZzc;
                    break;
                case 4:
                    i10 = i11 * 53;
                    iZzc = zzhi.zzc(obj, j10);
                    i11 = i10 + iZzc;
                    break;
                case 5:
                    i10 = i11 * 53;
                    iZzc = zzez.zzc(zzhi.zzd(obj, j10));
                    i11 = i10 + iZzc;
                    break;
                case 6:
                    i10 = i11 * 53;
                    iZzc = zzhi.zzc(obj, j10);
                    i11 = i10 + iZzc;
                    break;
                case 7:
                    i10 = i11 * 53;
                    iZzc = zzez.zza(zzhi.zzt(obj, j10));
                    i11 = i10 + iZzc;
                    break;
                case 8:
                    i10 = i11 * 53;
                    iZzc = ((String) zzhi.zzf(obj, j10)).hashCode();
                    i11 = i10 + iZzc;
                    break;
                case 9:
                    Object objZzf = zzhi.zzf(obj, j10);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 10:
                    i10 = i11 * 53;
                    iZzc = zzhi.zzf(obj, j10).hashCode();
                    i11 = i10 + iZzc;
                    break;
                case 11:
                    i10 = i11 * 53;
                    iZzc = zzhi.zzc(obj, j10);
                    i11 = i10 + iZzc;
                    break;
                case 12:
                    i10 = i11 * 53;
                    iZzc = zzhi.zzc(obj, j10);
                    i11 = i10 + iZzc;
                    break;
                case 13:
                    i10 = i11 * 53;
                    iZzc = zzhi.zzc(obj, j10);
                    i11 = i10 + iZzc;
                    break;
                case 14:
                    i10 = i11 * 53;
                    iZzc = zzez.zzc(zzhi.zzd(obj, j10));
                    i11 = i10 + iZzc;
                    break;
                case 15:
                    i10 = i11 * 53;
                    iZzc = zzhi.zzc(obj, j10);
                    i11 = i10 + iZzc;
                    break;
                case 16:
                    i10 = i11 * 53;
                    iZzc = zzez.zzc(zzhi.zzd(obj, j10));
                    i11 = i10 + iZzc;
                    break;
                case 17:
                    Object objZzf2 = zzhi.zzf(obj, j10);
                    if (objZzf2 != null) {
                        iHashCode = objZzf2.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
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
                    i10 = i11 * 53;
                    iZzc = zzhi.zzf(obj, j10).hashCode();
                    i11 = i10 + iZzc;
                    break;
                case 50:
                    i10 = i11 * 53;
                    iZzc = zzhi.zzf(obj, j10).hashCode();
                    i11 = i10 + iZzc;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzez.zzc(Double.doubleToLongBits(((Double) zzhi.zzf(obj, j10)).doubleValue()));
                        i11 = i10 + iZzc;
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = Float.floatToIntBits(((Float) zzhi.zzf(obj, j10)).floatValue());
                        i11 = i10 + iZzc;
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzez.zzc(zzw(obj, j10));
                        i11 = i10 + iZzc;
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzez.zzc(zzw(obj, j10));
                        i11 = i10 + iZzc;
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzl(obj, j10);
                        i11 = i10 + iZzc;
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzez.zzc(zzw(obj, j10));
                        i11 = i10 + iZzc;
                    }
                    break;
                case 57:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzl(obj, j10);
                        i11 = i10 + iZzc;
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzez.zza(((Boolean) zzhi.zzf(obj, j10)).booleanValue());
                        i11 = i10 + iZzc;
                    }
                    break;
                case 59:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = ((String) zzhi.zzf(obj, j10)).hashCode();
                        i11 = i10 + iZzc;
                    }
                    break;
                case 60:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzhi.zzf(obj, j10).hashCode();
                        i11 = i10 + iZzc;
                    }
                    break;
                case 61:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzhi.zzf(obj, j10).hashCode();
                        i11 = i10 + iZzc;
                    }
                    break;
                case 62:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzl(obj, j10);
                        i11 = i10 + iZzc;
                    }
                    break;
                case 63:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzl(obj, j10);
                        i11 = i10 + iZzc;
                    }
                    break;
                case 64:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzl(obj, j10);
                        i11 = i10 + iZzc;
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzez.zzc(zzw(obj, j10));
                        i11 = i10 + iZzc;
                    }
                    break;
                case 66:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzl(obj, j10);
                        i11 = i10 + iZzc;
                    }
                    break;
                case 67:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzez.zzc(zzw(obj, j10));
                        i11 = i10 + iZzc;
                    }
                    break;
                case 68:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzhi.zzf(obj, j10).hashCode();
                        i11 = i10 + iZzc;
                    }
                    break;
            }
        }
        return (i11 * 53) + this.zzm.zza(obj).hashCode();
    }

    /* JADX WARN: Code duplicated, block: B:117:0x0355 A[PHI: r0 r17 r19 r28
      0x0355: PHI (r0v22 int) = (r0v17 int), (r0v20 int), (r0v24 int) binds: [B:130:0x03c8, B:126:0x03a7, B:116:0x0353] A[DONT_GENERATE, DONT_INLINE]
      0x0355: PHI (r17v6 int) = (r17v4 int), (r17v4 int), (r17v7 int) binds: [B:130:0x03c8, B:126:0x03a7, B:116:0x0353] A[DONT_GENERATE, DONT_INLINE]
      0x0355: PHI (r19v2 int) = (r19v0 int), (r19v0 int), (r19v3 int) binds: [B:130:0x03c8, B:126:0x03a7, B:116:0x0353] A[DONT_GENERATE, DONT_INLINE]
      0x0355: PHI (r28v7 sun.misc.Unsafe) = (r28v5 sun.misc.Unsafe), (r28v5 sun.misc.Unsafe), (r28v8 sun.misc.Unsafe) binds: [B:130:0x03c8, B:126:0x03a7, B:116:0x0353] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:119:0x036f A[PHI: r0 r17 r19 r28
      0x036f: PHI (r0v21 int) = (r0v17 int), (r0v20 int), (r0v24 int) binds: [B:130:0x03c8, B:126:0x03a7, B:116:0x0353] A[DONT_GENERATE, DONT_INLINE]
      0x036f: PHI (r17v5 int) = (r17v4 int), (r17v4 int), (r17v7 int) binds: [B:130:0x03c8, B:126:0x03a7, B:116:0x0353] A[DONT_GENERATE, DONT_INLINE]
      0x036f: PHI (r19v1 int) = (r19v0 int), (r19v0 int), (r19v3 int) binds: [B:130:0x03c8, B:126:0x03a7, B:116:0x0353] A[DONT_GENERATE, DONT_INLINE]
      0x036f: PHI (r28v6 sun.misc.Unsafe) = (r28v5 sun.misc.Unsafe), (r28v5 sun.misc.Unsafe), (r28v8 sun.misc.Unsafe) binds: [B:130:0x03c8, B:126:0x03a7, B:116:0x0353] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x0083. Please report as an issue. */
    final int zzb(Object obj, byte[] bArr, int i10, int i11, int i12, zzds zzdsVar) throws IOException {
        Unsafe unsafe;
        Object obj2;
        int i13;
        int iZzk;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        this = this;
        obj = obj;
        bArr = bArr;
        i11 = i11;
        zzdsVar = zzdsVar;
        Unsafe unsafe2 = zzb;
        int i27 = -1;
        int iZzi = i10;
        int i28 = -1;
        int i29 = 0;
        int i30 = 0;
        int i31 = 0;
        int i32 = 1048575;
        while (true) {
            if (iZzi < i11) {
                int i33 = iZzi + 1;
                byte b10 = bArr[iZzi];
                if (b10 < 0) {
                    iZzk = zzdt.zzk(b10, bArr, i33, zzdsVar);
                    i13 = zzdsVar.zza;
                } else {
                    i13 = b10;
                    iZzk = i33;
                }
                int i34 = i13 >>> 3;
                int i35 = i13 & 7;
                int iZzr = i34 > i28 ? this.zzr(i34, i30 / 3) : this.zzq(i34);
                if (iZzr == i27) {
                    i14 = i34;
                    i15 = iZzk;
                    i16 = i27;
                    unsafe = unsafe2;
                    i17 = 0;
                    i12 = i12;
                    i18 = i13;
                } else {
                    int[] iArr = this.zzc;
                    int i36 = iArr[iZzr + 1];
                    int iZzu = zzu(i36);
                    int i37 = i13;
                    long j10 = i36 & 1048575;
                    if (iZzu <= 17) {
                        int i38 = iArr[iZzr + 2];
                        int i39 = 1 << (i38 >>> 20);
                        int i40 = i38 & 1048575;
                        if (i40 != i32) {
                            if (i32 != 1048575) {
                                unsafe2.putInt(obj, i32, i31);
                            }
                            i31 = unsafe2.getInt(obj, i40);
                            i32 = i40;
                        }
                        switch (iZzu) {
                            case 0:
                                i14 = i34;
                                i22 = iZzr;
                                i23 = i32;
                                i24 = i37;
                                bArr = bArr;
                                i25 = iZzk;
                                if (i35 == 1) {
                                    zzhi.zzl(obj, j10, Double.longBitsToDouble(zzdt.zzn(bArr, i25)));
                                    iZzi = i25 + 8;
                                    i31 |= i39;
                                    i32 = i23;
                                    i30 = i22;
                                    i29 = i24;
                                    i28 = i14;
                                    i27 = -1;
                                } else {
                                    i32 = i23;
                                    i12 = i12;
                                    i15 = i25;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                    i18 = i24;
                                    i16 = -1;
                                }
                                break;
                            case 1:
                                i14 = i34;
                                i22 = iZzr;
                                i23 = i32;
                                i24 = i37;
                                bArr = bArr;
                                i25 = iZzk;
                                if (i35 == 5) {
                                    zzhi.zzm(obj, j10, Float.intBitsToFloat(zzdt.zzb(bArr, i25)));
                                    iZzi = i25 + 4;
                                    i31 |= i39;
                                    i32 = i23;
                                    i30 = i22;
                                    i29 = i24;
                                    i28 = i14;
                                    i27 = -1;
                                } else {
                                    i32 = i23;
                                    i12 = i12;
                                    i15 = i25;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                    i18 = i24;
                                    i16 = -1;
                                }
                                break;
                            case 2:
                            case 3:
                                i14 = i34;
                                i22 = iZzr;
                                i23 = i32;
                                i24 = i37;
                                bArr = bArr;
                                i11 = i11;
                                i25 = iZzk;
                                if (i35 == 0) {
                                    int iZzm = zzdt.zzm(bArr, i25, zzdsVar);
                                    unsafe2.putLong(obj, j10, zzdsVar.zzb);
                                    i31 |= i39;
                                    i32 = i23;
                                    i30 = i22;
                                    i29 = i24;
                                    iZzi = iZzm;
                                    i28 = i14;
                                    i27 = -1;
                                } else {
                                    i32 = i23;
                                    i12 = i12;
                                    i15 = i25;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                    i18 = i24;
                                    i16 = -1;
                                }
                                break;
                            case 4:
                            case 11:
                                i14 = i34;
                                i22 = iZzr;
                                i23 = i32;
                                i24 = i37;
                                bArr = bArr;
                                i25 = iZzk;
                                if (i35 == 0) {
                                    iZzi = zzdt.zzj(bArr, i25, zzdsVar);
                                    unsafe2.putInt(obj, j10, zzdsVar.zza);
                                    i31 |= i39;
                                    i32 = i23;
                                    i30 = i22;
                                    i29 = i24;
                                    i28 = i14;
                                    i27 = -1;
                                } else {
                                    i32 = i23;
                                    i12 = i12;
                                    i15 = i25;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                    i18 = i24;
                                    i16 = -1;
                                }
                                break;
                            case 5:
                            case 14:
                                i14 = i34;
                                i22 = iZzr;
                                i23 = i32;
                                i24 = i37;
                                bArr = bArr;
                                if (i35 == 1) {
                                    unsafe2.putLong(obj, j10, zzdt.zzn(bArr, iZzk));
                                    iZzi = iZzk + 8;
                                    i31 |= i39;
                                    i32 = i23;
                                    i30 = i22;
                                    i29 = i24;
                                    i28 = i14;
                                    i27 = -1;
                                } else {
                                    i25 = iZzk;
                                    i32 = i23;
                                    i12 = i12;
                                    i15 = i25;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                    i18 = i24;
                                    i16 = -1;
                                }
                                break;
                            case 6:
                            case 13:
                                i14 = i34;
                                i22 = iZzr;
                                i23 = i32;
                                i24 = i37;
                                bArr = bArr;
                                if (i35 == 5) {
                                    unsafe2.putInt(obj, j10, zzdt.zzb(bArr, iZzk));
                                    iZzi = iZzk + 4;
                                    i31 |= i39;
                                    i32 = i23;
                                    i30 = i22;
                                    i29 = i24;
                                    i28 = i14;
                                    i27 = -1;
                                } else {
                                    i25 = iZzk;
                                    i32 = i23;
                                    i12 = i12;
                                    i15 = i25;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                    i18 = i24;
                                    i16 = -1;
                                }
                                break;
                            case 7:
                                i14 = i34;
                                i22 = iZzr;
                                i26 = i37;
                                bArr = bArr;
                                i11 = i11;
                                if (i35 == 0) {
                                    iZzi = zzdt.zzm(bArr, iZzk, zzdsVar);
                                    zzhi.zzk(obj, j10, zzdsVar.zzb != 0);
                                    i31 |= i39;
                                    i29 = i26;
                                    i30 = i22;
                                    i28 = i14;
                                    i27 = -1;
                                } else {
                                    i25 = iZzk;
                                    i23 = i32;
                                    i24 = i26;
                                    i32 = i23;
                                    i12 = i12;
                                    i15 = i25;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                    i18 = i24;
                                    i16 = -1;
                                }
                                break;
                            case 8:
                                i14 = i34;
                                i22 = iZzr;
                                i26 = i37;
                                bArr = bArr;
                                i11 = i11;
                                if (i35 == 2) {
                                    iZzi = (i36 & ASTNode.DISCARD) == 0 ? zzdt.zzg(bArr, iZzk, zzdsVar) : zzdt.zzh(bArr, iZzk, zzdsVar);
                                    unsafe2.putObject(obj, j10, zzdsVar.zzc);
                                    i31 |= i39;
                                    i29 = i26;
                                    i30 = i22;
                                    i28 = i14;
                                    i27 = -1;
                                } else {
                                    i25 = iZzk;
                                    i23 = i32;
                                    i24 = i26;
                                    i32 = i23;
                                    i12 = i12;
                                    i15 = i25;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                    i18 = i24;
                                    i16 = -1;
                                }
                                break;
                            case 9:
                                i14 = i34;
                                i22 = iZzr;
                                i26 = i37;
                                bArr = bArr;
                                if (i35 == 2) {
                                    i11 = i11;
                                    iZzi = zzdt.zzd(this.zzy(i22), bArr, iZzk, i11, zzdsVar);
                                    if ((i31 & i39) == 0) {
                                        unsafe2.putObject(obj, j10, zzdsVar.zzc);
                                    } else {
                                        unsafe2.putObject(obj, j10, zzez.zzg(unsafe2.getObject(obj, j10), zzdsVar.zzc));
                                    }
                                    i31 |= i39;
                                    i29 = i26;
                                    i30 = i22;
                                    i28 = i14;
                                    i27 = -1;
                                } else {
                                    i25 = iZzk;
                                    i23 = i32;
                                    i24 = i26;
                                    i32 = i23;
                                    i12 = i12;
                                    i15 = i25;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                    i18 = i24;
                                    i16 = -1;
                                }
                                break;
                            case 10:
                                i14 = i34;
                                i22 = iZzr;
                                i26 = i37;
                                bArr = bArr;
                                if (i35 == 2) {
                                    iZzi = zzdt.zza(bArr, iZzk, zzdsVar);
                                    unsafe2.putObject(obj, j10, zzdsVar.zzc);
                                    i31 |= i39;
                                    i11 = i11;
                                    i29 = i26;
                                    i30 = i22;
                                    i28 = i14;
                                    i27 = -1;
                                } else {
                                    i25 = iZzk;
                                    i23 = i32;
                                    i24 = i26;
                                    i32 = i23;
                                    i12 = i12;
                                    i15 = i25;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                    i18 = i24;
                                    i16 = -1;
                                }
                                break;
                            case 12:
                                i14 = i34;
                                i22 = iZzr;
                                i26 = i37;
                                bArr = bArr;
                                if (i35 == 0) {
                                    iZzi = zzdt.zzj(bArr, iZzk, zzdsVar);
                                    int i41 = zzdsVar.zza;
                                    zzex zzexVarZzx = this.zzx(i22);
                                    if (zzexVarZzx == null || zzexVarZzx.zza()) {
                                        unsafe2.putInt(obj, j10, i41);
                                        i31 |= i39;
                                    } else {
                                        zzc(obj).zzf(i26, Long.valueOf(i41));
                                    }
                                    i11 = i11;
                                    i29 = i26;
                                    i30 = i22;
                                    i28 = i14;
                                    i27 = -1;
                                } else {
                                    i25 = iZzk;
                                    i23 = i32;
                                    i24 = i26;
                                    i32 = i23;
                                    i12 = i12;
                                    i15 = i25;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                    i18 = i24;
                                    i16 = -1;
                                }
                                break;
                            case 15:
                                i14 = i34;
                                i22 = iZzr;
                                i26 = i37;
                                bArr = bArr;
                                if (i35 == 0) {
                                    iZzi = zzdt.zzj(bArr, iZzk, zzdsVar);
                                    unsafe2.putInt(obj, j10, zzei.zzb(zzdsVar.zza));
                                    i31 |= i39;
                                    i11 = i11;
                                    i29 = i26;
                                    i30 = i22;
                                    i28 = i14;
                                    i27 = -1;
                                } else {
                                    i25 = iZzk;
                                    i23 = i32;
                                    i24 = i26;
                                    i32 = i23;
                                    i12 = i12;
                                    i15 = i25;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                    i18 = i24;
                                    i16 = -1;
                                }
                                break;
                            case 16:
                                i14 = i34;
                                i22 = iZzr;
                                i26 = i37;
                                if (i35 == 0) {
                                    bArr = bArr;
                                    int iZzm2 = zzdt.zzm(bArr, iZzk, zzdsVar);
                                    unsafe2.putLong(obj, j10, zzei.zzc(zzdsVar.zzb));
                                    i31 |= i39;
                                    i29 = i26;
                                    i30 = i22;
                                    iZzi = iZzm2;
                                    i28 = i14;
                                    i27 = -1;
                                    i11 = i11;
                                } else {
                                    i25 = iZzk;
                                    i23 = i32;
                                    i24 = i26;
                                    i32 = i23;
                                    i12 = i12;
                                    i15 = i25;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                    i18 = i24;
                                    i16 = -1;
                                }
                                break;
                            default:
                                if (i35 == 3) {
                                    i14 = i34;
                                    i22 = iZzr;
                                    i26 = i37;
                                    iZzi = zzdt.zzc(this.zzy(iZzr), bArr, iZzk, i11, (i34 << 3) | 4, zzdsVar);
                                    if ((i31 & i39) == 0) {
                                        unsafe2.putObject(obj, j10, zzdsVar.zzc);
                                    } else {
                                        unsafe2.putObject(obj, j10, zzez.zzg(unsafe2.getObject(obj, j10), zzdsVar.zzc));
                                    }
                                    i31 |= i39;
                                    bArr = bArr;
                                    i11 = i11;
                                    i29 = i26;
                                    i30 = i22;
                                    i28 = i14;
                                    i27 = -1;
                                } else {
                                    i14 = i34;
                                    i22 = iZzr;
                                    i26 = i37;
                                    i25 = iZzk;
                                    i23 = i32;
                                    i24 = i26;
                                    i32 = i23;
                                    i12 = i12;
                                    i15 = i25;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                    i18 = i24;
                                    i16 = -1;
                                }
                                break;
                        }
                    } else {
                        i14 = i34;
                        int i42 = iZzk;
                        int i43 = i32;
                        bArr = bArr;
                        i11 = i11;
                        if (iZzu != 27) {
                            i17 = iZzr;
                            i19 = i31;
                            if (iZzu <= 49) {
                                i21 = i37;
                                i16 = -1;
                                unsafe = unsafe2;
                                iZzi = zzp(obj, bArr, i42, i11, i37, i14, i35, i17, i36, iZzu, j10, zzdsVar);
                                if (iZzi != i42) {
                                    i27 = i16;
                                    i29 = i21;
                                    i32 = i43;
                                    i28 = i14;
                                    i30 = i17;
                                    i31 = i19;
                                } else {
                                    i15 = iZzi;
                                    i18 = i21;
                                    i32 = i43;
                                    i31 = i19;
                                }
                                unsafe2 = unsafe;
                            } else {
                                i20 = i42;
                                unsafe = unsafe2;
                                i21 = i37;
                                i16 = -1;
                                if (iZzu == 50) {
                                    if (i35 == 2) {
                                        iZzi = zzm(obj, bArr, i20, i11, i17, j10, zzdsVar);
                                        if (iZzi != i20) {
                                            i27 = i16;
                                            i29 = i21;
                                            i32 = i43;
                                            i28 = i14;
                                            i30 = i17;
                                            i31 = i19;
                                        } else {
                                            i15 = iZzi;
                                        }
                                        unsafe2 = unsafe;
                                    }
                                    i18 = i21;
                                    i32 = i43;
                                    i31 = i19;
                                } else {
                                    iZzi = zzn(obj, bArr, i20, i11, i21, i14, i35, i36, iZzu, j10, i17, zzdsVar);
                                    if (iZzi != i20) {
                                        i27 = i16;
                                        i29 = i21;
                                        i32 = i43;
                                        i28 = i14;
                                        i30 = i17;
                                        i31 = i19;
                                    } else {
                                        i15 = iZzi;
                                        i18 = i21;
                                        i32 = i43;
                                        i31 = i19;
                                    }
                                    unsafe2 = unsafe;
                                }
                            }
                        } else if (i35 == 2) {
                            zzey zzeyVarZzd = (zzey) unsafe2.getObject(obj, j10);
                            if (!zzeyVarZzd.zzc()) {
                                int size = zzeyVarZzd.size();
                                zzeyVarZzd = zzeyVarZzd.zzd(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj, j10, zzeyVarZzd);
                            }
                            i29 = i37;
                            iZzi = zzdt.zze(this.zzy(iZzr), i29, bArr, i42, i11, zzeyVarZzd, zzdsVar);
                            i32 = i43;
                            i28 = i14;
                            i30 = iZzr;
                            i31 = i31;
                            i27 = -1;
                        } else {
                            i17 = iZzr;
                            i19 = i31;
                            i20 = i42;
                            unsafe = unsafe2;
                            i21 = i37;
                            i16 = -1;
                        }
                        i15 = i20;
                        i18 = i21;
                        i32 = i43;
                        i31 = i19;
                    }
                }
                if (i18 != i12 || i12 == 0) {
                    iZzi = zzdt.zzi(i18, bArr, i15, i11, zzc(obj), zzdsVar);
                    i29 = i18;
                    i27 = i16;
                    i28 = i14;
                    i30 = i17;
                    unsafe2 = unsafe;
                } else {
                    iZzi = i15;
                    i29 = i18;
                }
            } else {
                i12 = i12;
                unsafe = unsafe2;
            }
        }
        if (i32 != 1048575) {
            obj2 = obj;
            unsafe.putInt(obj2, i32, i31);
        } else {
            obj2 = obj;
        }
        for (int i44 = this.zzj; i44 < this.zzk; i44++) {
            int i45 = this.zzi[i44];
            int i46 = this.zzc[i45];
            Object objZzf = zzhi.zzf(obj2, zzv(i45) & 1048575);
            if (objZzf != null && zzx(i45) != null) {
                throw null;
            }
        }
        if (i12 == 0) {
            if (iZzi != i11) {
                throw zzfa.zzd();
            }
        } else if (iZzi > i11 || i29 != i12) {
            throw zzfa.zzd();
        }
        return iZzi;
    }

    @Override
    public final Object zzd() {
        return ((zzeu) this.zzg).zzi(4, null, null);
    }

    @Override
    public final void zze(Object obj) {
        int i10;
        int i11 = this.zzj;
        while (true) {
            i10 = this.zzk;
            if (i11 >= i10) {
                break;
            }
            long jZzv = zzv(this.zzi[i11]) & 1048575;
            Object objZzf = zzhi.zzf(obj, jZzv);
            if (objZzf != null) {
                ((zzfq) objZzf).zzc();
                zzhi.zzp(obj, jZzv, objZzf);
            }
            i11++;
        }
        int length = this.zzi.length;
        while (i10 < length) {
            this.zzl.zza(obj, this.zzi[i10]);
            i10++;
        }
        this.zzm.zze(obj);
    }

    @Override
    public final void zzf(Object obj, Object obj2) {
        obj2.getClass();
        for (int i10 = 0; i10 < this.zzc.length; i10 += 3) {
            int iZzv = zzv(i10);
            long j10 = 1048575 & iZzv;
            int i11 = this.zzc[i10];
            switch (zzu(iZzv)) {
                case 0:
                    if (zzG(obj2, i10)) {
                        zzhi.zzl(obj, j10, zzhi.zza(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 1:
                    if (zzG(obj2, i10)) {
                        zzhi.zzm(obj, j10, zzhi.zzb(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 2:
                    if (zzG(obj2, i10)) {
                        zzhi.zzo(obj, j10, zzhi.zzd(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 3:
                    if (zzG(obj2, i10)) {
                        zzhi.zzo(obj, j10, zzhi.zzd(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 4:
                    if (zzG(obj2, i10)) {
                        zzhi.zzn(obj, j10, zzhi.zzc(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 5:
                    if (zzG(obj2, i10)) {
                        zzhi.zzo(obj, j10, zzhi.zzd(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 6:
                    if (zzG(obj2, i10)) {
                        zzhi.zzn(obj, j10, zzhi.zzc(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 7:
                    if (zzG(obj2, i10)) {
                        zzhi.zzk(obj, j10, zzhi.zzt(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 8:
                    if (zzG(obj2, i10)) {
                        zzhi.zzp(obj, j10, zzhi.zzf(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 9:
                    zzB(obj, obj2, i10);
                    break;
                case 10:
                    if (zzG(obj2, i10)) {
                        zzhi.zzp(obj, j10, zzhi.zzf(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 11:
                    if (zzG(obj2, i10)) {
                        zzhi.zzn(obj, j10, zzhi.zzc(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 12:
                    if (zzG(obj2, i10)) {
                        zzhi.zzn(obj, j10, zzhi.zzc(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 13:
                    if (zzG(obj2, i10)) {
                        zzhi.zzn(obj, j10, zzhi.zzc(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 14:
                    if (zzG(obj2, i10)) {
                        zzhi.zzo(obj, j10, zzhi.zzd(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 15:
                    if (zzG(obj2, i10)) {
                        zzhi.zzn(obj, j10, zzhi.zzc(obj2, j10));
                        zzD(obj, i10);
                    }
                    break;
                case 16:
                    if (zzG(obj2, i10)) {
                        zzhi.zzo(obj, j10, zzhi.zzd(obj2, j10));
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
                    zzgj.zzi(this.zzp, obj, obj2, j10);
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
                    if (zzJ(obj2, i11, i10)) {
                        zzhi.zzp(obj, j10, zzhi.zzf(obj2, j10));
                        zzE(obj, i11, i10);
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
                    if (zzJ(obj2, i11, i10)) {
                        zzhi.zzp(obj, j10, zzhi.zzf(obj2, j10));
                        zzE(obj, i11, i10);
                    }
                    break;
                case 68:
                    zzC(obj, obj2, i10);
                    break;
            }
        }
        zzgj.zzf(this.zzm, obj, obj2);
    }

    @Override
    public final void zzg(Object obj, byte[] bArr, int i10, int i11, zzds zzdsVar) throws IOException {
        if (this.zzh) {
            zzo(obj, bArr, i10, i11, zzdsVar);
        } else {
            zzb(obj, bArr, i10, i11, 0, zzdsVar);
        }
    }

    @Override
    public final boolean zzh(Object obj, Object obj2) {
        boolean zZzh;
        int length = this.zzc.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int iZzv = zzv(i10);
            long j10 = iZzv & 1048575;
            switch (zzu(iZzv)) {
                case 0:
                    if (!zzF(obj, obj2, i10) || Double.doubleToLongBits(zzhi.zza(obj, j10)) != Double.doubleToLongBits(zzhi.zza(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzF(obj, obj2, i10) || Float.floatToIntBits(zzhi.zzb(obj, j10)) != Float.floatToIntBits(zzhi.zzb(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzF(obj, obj2, i10) || zzhi.zzd(obj, j10) != zzhi.zzd(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzF(obj, obj2, i10) || zzhi.zzd(obj, j10) != zzhi.zzd(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzF(obj, obj2, i10) || zzhi.zzc(obj, j10) != zzhi.zzc(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzF(obj, obj2, i10) || zzhi.zzd(obj, j10) != zzhi.zzd(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzF(obj, obj2, i10) || zzhi.zzc(obj, j10) != zzhi.zzc(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzF(obj, obj2, i10) || zzhi.zzt(obj, j10) != zzhi.zzt(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzF(obj, obj2, i10) || !zzgj.zzh(zzhi.zzf(obj, j10), zzhi.zzf(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzF(obj, obj2, i10) || !zzgj.zzh(zzhi.zzf(obj, j10), zzhi.zzf(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzF(obj, obj2, i10) || !zzgj.zzh(zzhi.zzf(obj, j10), zzhi.zzf(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzF(obj, obj2, i10) || zzhi.zzc(obj, j10) != zzhi.zzc(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzF(obj, obj2, i10) || zzhi.zzc(obj, j10) != zzhi.zzc(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzF(obj, obj2, i10) || zzhi.zzc(obj, j10) != zzhi.zzc(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzF(obj, obj2, i10) || zzhi.zzd(obj, j10) != zzhi.zzd(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzF(obj, obj2, i10) || zzhi.zzc(obj, j10) != zzhi.zzc(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzF(obj, obj2, i10) || zzhi.zzd(obj, j10) != zzhi.zzd(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzF(obj, obj2, i10) || !zzgj.zzh(zzhi.zzf(obj, j10), zzhi.zzf(obj2, j10))) {
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
                    zZzh = zzgj.zzh(zzhi.zzf(obj, j10), zzhi.zzf(obj2, j10));
                    break;
                case 50:
                    zZzh = zzgj.zzh(zzhi.zzf(obj, j10), zzhi.zzf(obj2, j10));
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
                    long jZzs = zzs(i10) & 1048575;
                    if (zzhi.zzc(obj, jZzs) != zzhi.zzc(obj2, jZzs) || !zzgj.zzh(zzhi.zzf(obj, j10), zzhi.zzf(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zZzh) {
                return false;
            }
        }
        return this.zzm.zza(obj).equals(this.zzm.zza(obj2));
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009b  */
    /* JADX WARN: Code duplicated, block: B:44:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c0 A[LOOP:1: B:45:0x00af->B:50:0x00c0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:62:0x00bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00dd A[SYNTHETIC] */
    @Override
    public final boolean zzi(Object obj) {
        int i10;
        int i11;
        List list;
        zzgh zzghVarZzy;
        int i12;
        int i13 = 1048575;
        int i14 = 0;
        int i15 = 0;
        while (i15 < this.zzj) {
            int i16 = this.zzi[i15];
            int i17 = this.zzc[i16];
            int iZzv = zzv(i16);
            int i18 = this.zzc[i16 + 2];
            int i19 = i18 & 1048575;
            int i20 = 1 << (i18 >>> 20);
            if (i19 != i13) {
                if (i19 != 1048575) {
                    i14 = zzb.getInt(obj, i19);
                }
                i11 = i14;
                i10 = i19;
            } else {
                i10 = i13;
                i11 = i14;
            }
            if ((268435456 & iZzv) != 0 && !zzH(obj, i16, i10, i11, i20)) {
                return false;
            }
            int iZzu = zzu(iZzv);
            if (iZzu == 9 || iZzu == 17) {
                if (zzH(obj, i16, i10, i11, i20) && !zzI(obj, iZzv, zzy(i16))) {
                    return false;
                }
            } else if (iZzu == 27) {
                list = (List) zzhi.zzf(obj, iZzv & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzghVarZzy = zzy(i16);
                    for (i12 = 0; i12 < list.size(); i12++) {
                        if (!zzghVarZzy.zzi(list.get(i12))) {
                            return false;
                        }
                    }
                }
            } else if (iZzu == 60 || iZzu == 68) {
                if (zzJ(obj, i17, i16) && !zzI(obj, iZzv, zzy(i16))) {
                    return false;
                }
            } else if (iZzu == 49) {
                list = (List) zzhi.zzf(obj, iZzv & 1048575);
                if (list.isEmpty()) {
                    zzghVarZzy = zzy(i16);
                    while (i12 < list.size()) {
                        if (!zzghVarZzy.zzi(list.get(i12))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iZzu == 50 && !((zzfq) zzhi.zzf(obj, iZzv & 1048575)).isEmpty()) {
                throw null;
            }
            i15++;
            i13 = i10;
            i14 = i11;
        }
        return true;
    }
}
