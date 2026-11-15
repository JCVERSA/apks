package defpackage;

import com.google.android.gms.internal.play_billing.q;
import com.google.android.gms.internal.play_billing.s;
import com.google.android.gms.internal.play_billing.zzfp;
import com.google.android.gms.internal.play_billing.zzgi;
import com.google.android.gms.internal.play_billing.zzhm;
import com.google.android.gms.internal.play_billing.zzjg;
import com.google.android.gms.internal.play_billing.zzjh;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

public final class q0j implements u1j {
    public static final int[] l = new int[0];
    public static final Unsafe m = x3j.g();
    public final int[] a;
    public final Object[] b;
    public final int c;
    public final int d;
    public final g0j e;
    public final boolean f = false;
    public final int[] g;
    public final int h;
    public final int i;
    public final g3j j;
    public final s8i k;

    public q0j(int[] iArr, Object[] objArr, int i, int i2, g0j g0jVar, boolean z, int[] iArr2, int i3, int i4, w0j w0jVar, hxi hxiVar, g3j g3jVar, s8i s8iVar, wzi wziVar) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        this.g = iArr2;
        this.h = i3;
        this.i = i4;
        this.j = g3jVar;
        this.k = s8iVar;
        this.e = g0jVar;
    }

    public static int C(int i) {
        return (i >>> 20) & 255;
    }

    public static long E(Object obj, long j) {
        return ((Long) x3j.f(obj, j)).longValue();
    }

    public static Field L(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields), e);
        }
    }

    public static void M(Object obj) {
        if (!q(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    public static boolean p(Object obj, int i, u1j u1jVar) {
        return u1jVar.f(x3j.f(obj, i & 1048575));
    }

    public static boolean q(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof kli) {
            return ((kli) obj).h();
        }
        return true;
    }

    public static final int u(byte[] bArr, int i, int i2, zzjg zzjgVar, Class cls, qoh qohVar) {
        int i3;
        zzjg zzjgVar2 = zzjg.zza;
        switch (zzjgVar.ordinal()) {
            case 0:
                i3 = i + 8;
                qohVar.c = Double.valueOf(Double.longBitsToDouble(qph.p(bArr, i)));
                break;
            case 1:
                i3 = i + 4;
                qohVar.c = Float.valueOf(Float.intBitsToFloat(qph.b(bArr, i)));
                break;
            case 2:
            case 3:
                int iL = qph.l(bArr, i, qohVar);
                qohVar.c = Long.valueOf(qohVar.b);
                return iL;
            case 4:
            case 12:
            case 13:
                int i4 = qph.i(bArr, i, qohVar);
                qohVar.c = Integer.valueOf(qohVar.a);
                return i4;
            case 5:
            case 15:
                i3 = i + 8;
                qohVar.c = Long.valueOf(qph.p(bArr, i));
                break;
            case 6:
            case 14:
                i3 = i + 4;
                qohVar.c = Integer.valueOf(qph.b(bArr, i));
                break;
            case 7:
                int iL2 = qph.l(bArr, i, qohVar);
                qohVar.c = Boolean.valueOf(qohVar.b != 0);
                return iL2;
            case 8:
                return qph.g(bArr, i, qohVar);
            case 9:
            default:
                throw new RuntimeException("unsupported field type.");
            case 10:
                return qph.d(c1j.a().b(cls), bArr, i, i2, qohVar);
            case 11:
                return qph.a(bArr, i, qohVar);
            case 16:
                int i5 = qph.i(bArr, i, qohVar);
                qohVar.c = Integer.valueOf(a2i.a(qohVar.a));
                return i5;
            case 17:
                int iL3 = qph.l(bArr, i, qohVar);
                qohVar.c = Long.valueOf(a2i.b(qohVar.b));
                return iL3;
        }
        return i3;
    }

    public static final void v(int i, Object obj, a5j a5jVar) {
        if (obj instanceof String) {
            a5jVar.s(i, (String) obj);
        } else {
            a5jVar.D(i, (zzfp) obj);
        }
    }

    public static i3j x(Object obj) {
        kli kliVar = (kli) obj;
        i3j i3jVar = kliVar.zzc;
        if (i3jVar != i3j.c()) {
            return i3jVar;
        }
        i3j i3jVarF = i3j.f();
        kliVar.zzc = i3jVarF;
        return i3jVarF;
    }

    /* JADX WARN: Code duplicated, block: B:126:0x0259  */
    /* JADX WARN: Code duplicated, block: B:127:0x025c  */
    /* JADX WARN: Code duplicated, block: B:130:0x0279  */
    /* JADX WARN: Code duplicated, block: B:132:0x027d  */
    /* JADX WARN: Code duplicated, block: B:172:0x0341  */
    /* JADX WARN: Code duplicated, block: B:187:0x0395  */
    public static q0j y(Class cls, b0j b0jVar, w0j w0jVar, hxi hxiVar, g3j g3jVar, s8i s8iVar, wzi wziVar) {
        int i;
        int iCharAt;
        int iCharAt2;
        int i2;
        int[] iArr;
        int i3;
        int i4;
        int i5;
        int i6;
        char cCharAt;
        int i7;
        int i8;
        char cCharAt2;
        int i9;
        char cCharAt3;
        int i10;
        char cCharAt4;
        int i11;
        char cCharAt5;
        int i12;
        char cCharAt6;
        int i13;
        char cCharAt7;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i19;
        Field fieldL;
        int i20;
        char cCharAt8;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        Object obj;
        Field fieldL2;
        int i26;
        Object obj2;
        Field fieldL3;
        int i27;
        char cCharAt9;
        int i28;
        char cCharAt10;
        int i29;
        char cCharAt11;
        int i30;
        char cCharAt12;
        Unsafe unsafe = m;
        if (unsafe == null) {
            throw new RuntimeException("Lite gencode is primarily intended for Android use and uses sun.misc.Unsafe which is not available in the current environment. To run in this environment, you may need to switch to standard gencode.");
        }
        if (!(b0jVar instanceof r1j)) {
            ubc.a(b0jVar);
            throw null;
        }
        r1j r1jVar = (r1j) b0jVar;
        String strA = r1jVar.a();
        int length = strA.length();
        int i31 = 0;
        char c = 55296;
        if (strA.charAt(0) >= 55296) {
            int i32 = 1;
            while (true) {
                i = i32 + 1;
                if (strA.charAt(i32) < 55296) {
                    break;
                }
                i32 = i;
            }
        } else {
            i = 1;
        }
        int i33 = i + 1;
        int iCharAt3 = strA.charAt(i);
        if (iCharAt3 >= 55296) {
            int i34 = iCharAt3 & 8191;
            int i35 = 13;
            while (true) {
                i30 = i33 + 1;
                cCharAt12 = strA.charAt(i33);
                if (cCharAt12 < 55296) {
                    break;
                }
                i34 |= (cCharAt12 & 8191) << i35;
                i35 += 13;
                i33 = i30;
            }
            iCharAt3 = i34 | (cCharAt12 << i35);
            i33 = i30;
        }
        if (iCharAt3 == 0) {
            iCharAt = 0;
            iCharAt2 = 0;
            i5 = 0;
            i2 = 0;
            i4 = 0;
            iArr = l;
            i3 = 0;
        } else {
            int i36 = i33 + 1;
            int iCharAt4 = strA.charAt(i33);
            if (iCharAt4 >= 55296) {
                int i37 = iCharAt4 & 8191;
                int i38 = 13;
                while (true) {
                    i13 = i36 + 1;
                    cCharAt7 = strA.charAt(i36);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i37 |= (cCharAt7 & 8191) << i38;
                    i38 += 13;
                    i36 = i13;
                }
                iCharAt4 = i37 | (cCharAt7 << i38);
                i36 = i13;
            }
            int i39 = i36 + 1;
            int iCharAt5 = strA.charAt(i36);
            if (iCharAt5 >= 55296) {
                int i40 = iCharAt5 & 8191;
                int i41 = 13;
                while (true) {
                    i12 = i39 + 1;
                    cCharAt6 = strA.charAt(i39);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i40 |= (cCharAt6 & 8191) << i41;
                    i41 += 13;
                    i39 = i12;
                }
                iCharAt5 = i40 | (cCharAt6 << i41);
                i39 = i12;
            }
            int i42 = i39 + 1;
            int iCharAt6 = strA.charAt(i39);
            if (iCharAt6 >= 55296) {
                int i43 = iCharAt6 & 8191;
                int i44 = 13;
                while (true) {
                    i11 = i42 + 1;
                    cCharAt5 = strA.charAt(i42);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i43 |= (cCharAt5 & 8191) << i44;
                    i44 += 13;
                    i42 = i11;
                }
                iCharAt6 = i43 | (cCharAt5 << i44);
                i42 = i11;
            }
            int i45 = i42 + 1;
            int iCharAt7 = strA.charAt(i42);
            if (iCharAt7 >= 55296) {
                int i46 = iCharAt7 & 8191;
                int i47 = 13;
                while (true) {
                    i10 = i45 + 1;
                    cCharAt4 = strA.charAt(i45);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt4 & 8191) << i47;
                    i47 += 13;
                    i45 = i10;
                }
                iCharAt7 = i46 | (cCharAt4 << i47);
                i45 = i10;
            }
            int i48 = i45 + 1;
            iCharAt = strA.charAt(i45);
            if (iCharAt >= 55296) {
                int i49 = iCharAt & 8191;
                int i50 = 13;
                while (true) {
                    i9 = i48 + 1;
                    cCharAt3 = strA.charAt(i48);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i49 |= (cCharAt3 & 8191) << i50;
                    i50 += 13;
                    i48 = i9;
                }
                iCharAt = i49 | (cCharAt3 << i50);
                i48 = i9;
            }
            int i51 = i48 + 1;
            iCharAt2 = strA.charAt(i48);
            if (iCharAt2 >= 55296) {
                int i52 = iCharAt2 & 8191;
                int i53 = 13;
                while (true) {
                    i8 = i51 + 1;
                    cCharAt2 = strA.charAt(i51);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i52 |= (cCharAt2 & 8191) << i53;
                    i53 += 13;
                    i51 = i8;
                }
                iCharAt2 = i52 | (cCharAt2 << i53);
                i51 = i8;
            }
            int i54 = i51 + 1;
            if (strA.charAt(i51) >= 55296) {
                while (true) {
                    i7 = i54 + 1;
                    if (strA.charAt(i54) < 55296) {
                        break;
                    }
                    i54 = i7;
                }
                i54 = i7;
            }
            int i55 = i54 + 1;
            int iCharAt8 = strA.charAt(i54);
            if (iCharAt8 >= 55296) {
                int i56 = iCharAt8 & 8191;
                int i57 = 13;
                while (true) {
                    i6 = i55 + 1;
                    cCharAt = strA.charAt(i55);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i56 |= (cCharAt & 8191) << i57;
                    i57 += 13;
                    i55 = i6;
                }
                iCharAt8 = i56 | (cCharAt << i57);
                i55 = i6;
            }
            i2 = iCharAt4 + iCharAt4 + iCharAt5;
            i31 = iCharAt4;
            iArr = new int[iCharAt8 + iCharAt2 + iCharAt4];
            i3 = iCharAt6;
            i33 = i55;
            i4 = iCharAt8;
            i5 = iCharAt7;
        }
        Object[] objArrB = r1jVar.b();
        Class<?> cls2 = r1jVar.zza().getClass();
        int i58 = i4 + iCharAt2;
        int i59 = iCharAt + iCharAt;
        int[] iArr2 = new int[iCharAt * 3];
        Object[] objArr = new Object[i59];
        int i60 = i4;
        int i61 = i58;
        int i62 = 0;
        int i63 = 0;
        while (i33 < length) {
            int i64 = i33 + 1;
            int iCharAt9 = strA.charAt(i33);
            if (iCharAt9 >= c) {
                int i65 = iCharAt9 & 8191;
                int i66 = i64;
                int i67 = 13;
                while (true) {
                    i29 = i66 + 1;
                    cCharAt11 = strA.charAt(i66);
                    if (cCharAt11 < c) {
                        break;
                    }
                    i65 |= (cCharAt11 & 8191) << i67;
                    i67 += 13;
                    i66 = i29;
                }
                iCharAt9 = i65 | (cCharAt11 << i67);
                i14 = i29;
            } else {
                i14 = i64;
            }
            int i68 = i14 + 1;
            int iCharAt10 = strA.charAt(i14);
            if (iCharAt10 >= c) {
                int i69 = iCharAt10 & 8191;
                int i70 = i68;
                int i71 = 13;
                while (true) {
                    i28 = i70 + 1;
                    cCharAt10 = strA.charAt(i70);
                    if (cCharAt10 < c) {
                        break;
                    }
                    i69 |= (cCharAt10 & 8191) << i71;
                    i71 += 13;
                    i70 = i28;
                }
                iCharAt10 = i69 | (cCharAt10 << i71);
                i15 = i28;
            } else {
                i15 = i68;
            }
            if ((iCharAt10 & 1024) != 0) {
                iArr[i62] = i63;
                i62++;
            }
            int i72 = iCharAt10 & 255;
            int i73 = length;
            int i74 = iCharAt10 & 2048;
            int i75 = i62;
            if (i72 >= 51) {
                int i76 = i15 + 1;
                int iCharAt11 = strA.charAt(i15);
                if (iCharAt11 >= 55296) {
                    int i77 = iCharAt11 & 8191;
                    int i78 = i76;
                    int i79 = 13;
                    while (true) {
                        i27 = i78 + 1;
                        cCharAt9 = strA.charAt(i78);
                        i16 = i5;
                        if (cCharAt9 < 55296) {
                            break;
                        }
                        i77 |= (cCharAt9 & 8191) << i79;
                        i79 += 13;
                        i78 = i27;
                        i5 = i16;
                    }
                    iCharAt11 = i77 | (cCharAt9 << i79);
                    i23 = i27;
                } else {
                    i16 = i5;
                    i23 = i76;
                }
                int i80 = i72 - 51;
                int i81 = i23;
                if (i80 == 9 || i80 == 17) {
                    i24 = i2 + 1;
                    int i82 = i63 / 3;
                    objArr[i82 + i82 + 1] = objArrB[i2];
                } else {
                    if (i80 == 12) {
                        if (r1jVar.zzc() == 1 || i74 != 0) {
                            i24 = i2 + 1;
                            int i83 = i63 / 3;
                            objArr[i83 + i83 + 1] = objArrB[i2];
                        } else {
                            i74 = 0;
                        }
                    }
                    i25 = iCharAt11 + iCharAt11;
                    obj = objArrB[i25];
                    if (obj instanceof Field) {
                        fieldL2 = (Field) obj;
                    } else {
                        fieldL2 = L(cls2, (String) obj);
                        objArrB[i25] = fieldL2;
                        iArr[i61] = i63;
                        i61++;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldL2);
                    i26 = i25 + 1;
                    obj2 = objArrB[i26];
                    int i84 = i74;
                    if (obj2 instanceof Field) {
                        fieldL3 = (Field) obj2;
                    } else {
                        fieldL3 = L(cls2, (String) obj2);
                        objArrB[i26] = fieldL3;
                    }
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i74 = i84;
                    r1jVar = r1jVar;
                    i19 = 0;
                    int i85 = i2;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldL3);
                    i15 = i81;
                    i17 = i3;
                    i18 = i85;
                }
                i2 = i24;
                i25 = iCharAt11 + iCharAt11;
                obj = objArrB[i25];
                if (obj instanceof Field) {
                    fieldL2 = (Field) obj;
                } else {
                    fieldL2 = L(cls2, (String) obj);
                    objArrB[i25] = fieldL2;
                    iArr[i61] = i63;
                    i61++;
                }
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldL2);
                i26 = i25 + 1;
                obj2 = objArrB[i26];
                int i86 = i74;
                if (obj2 instanceof Field) {
                    fieldL3 = (Field) obj2;
                } else {
                    fieldL3 = L(cls2, (String) obj2);
                    objArrB[i26] = fieldL3;
                }
                iObjectFieldOffset = iObjectFieldOffset4;
                i74 = i86;
                r1jVar = r1jVar;
                i19 = 0;
                int i87 = i2;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldL3);
                i15 = i81;
                i17 = i3;
                i18 = i87;
            } else {
                i16 = i5;
                int i88 = i2 + 1;
                Field fieldL4 = L(cls2, (String) objArrB[i2]);
                i17 = i3;
                if (i72 == 9 || i72 == 17) {
                    int i89 = i63 / 3;
                    objArr[i89 + i89 + 1] = fieldL4.getType();
                } else {
                    if (i72 != 27) {
                        if (i72 == 49) {
                            i22 = i2 + 2;
                            i21 = 1;
                        } else if (i72 == 12 || i72 == 30 || i72 == 44) {
                            r1jVar = r1jVar;
                            if (r1jVar.zzc() == 1 || i74 != 0) {
                                i22 = i2 + 2;
                                int i90 = i63 / 3;
                                objArr[i90 + i90 + 1] = objArrB[i88];
                                i18 = i22;
                            } else {
                                i18 = i88;
                                i74 = 0;
                            }
                        } else if (i72 == 50) {
                            i18 = i2 + 2;
                            i60++;
                            iArr[i60] = i63;
                            int i91 = i63 / 3;
                            int i92 = i91 + i91;
                            objArr[i92] = objArrB[i88];
                            if (i74 != 0) {
                                objArr[i92 + 1] = objArrB[i18];
                                i18 = i2 + 3;
                            } else {
                                i74 = 0;
                            }
                            r1jVar = r1jVar;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldL4);
                        iObjectFieldOffset2 = 1048575;
                        if ((iCharAt10 & 4096) != 0 || i72 > 17) {
                            i19 = 0;
                        } else {
                            int i93 = i15 + 1;
                            int iCharAt12 = strA.charAt(i15);
                            if (iCharAt12 >= 55296) {
                                int i94 = iCharAt12 & 8191;
                                int i95 = 13;
                                while (true) {
                                    i20 = i93 + 1;
                                    cCharAt8 = strA.charAt(i93);
                                    if (cCharAt8 < 55296) {
                                        break;
                                    }
                                    i94 |= (cCharAt8 & 8191) << i95;
                                    i95 += 13;
                                    i93 = i20;
                                }
                                iCharAt12 = i94 | (cCharAt8 << i95);
                                i93 = i20;
                            }
                            int i96 = i31 + i31 + (iCharAt12 / 32);
                            Object obj3 = objArrB[i96];
                            if (obj3 instanceof Field) {
                                fieldL = (Field) obj3;
                            } else {
                                fieldL = L(cls2, (String) obj3);
                                objArrB[i96] = fieldL;
                            }
                            int i97 = i74;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldL);
                            i19 = iCharAt12 % 32;
                            i15 = i93;
                            i74 = i97;
                        }
                    } else {
                        i21 = 1;
                        i22 = i2 + 2;
                    }
                    int i98 = i63 / 3;
                    objArr[i98 + i98 + i21] = objArrB[i88];
                    i18 = i22;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldL4);
                    iObjectFieldOffset2 = 1048575;
                    if ((iCharAt10 & 4096) != 0) {
                        i19 = 0;
                    } else {
                        i19 = 0;
                    }
                }
                i18 = i88;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldL4);
                iObjectFieldOffset2 = 1048575;
                if ((iCharAt10 & 4096) != 0) {
                    i19 = 0;
                } else {
                    i19 = 0;
                }
            }
            int i99 = i63 + 1;
            iArr2[i63] = iCharAt9;
            int i100 = i63 + 2;
            iArr2[i99] = (i74 != 0 ? Integer.MIN_VALUE : 0) | ((iCharAt10 & 256) != 0 ? 268435456 : 0) | ((iCharAt10 & 512) != 0 ? 536870912 : 0) | (i72 << 20) | iObjectFieldOffset;
            i63 += 3;
            iArr2[i100] = (i19 << 20) | iObjectFieldOffset2;
            i33 = i15;
            i2 = i18;
            length = i73;
            i62 = i75;
            i3 = i17;
            r1jVar = r1jVar;
            strA = strA;
            i5 = i16;
            c = 55296;
        }
        return new q0j(iArr2, objArr, i3, i5, r1jVar.zza(), false, iArr, i4, i58, w0jVar, hxiVar, g3jVar, s8iVar, wziVar);
    }

    public static int z(Object obj, long j) {
        return ((Integer) x3j.f(obj, j)).intValue();
    }

    public final int A(int i) {
        return this.a[i + 2];
    }

    public final int B(int i, int i2) {
        int[] iArr = this.a;
        int length = (iArr.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = iArr[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    public final int D(int i) {
        return this.a[i + 1];
    }

    public final coi F(int i) {
        int i2 = i / 3;
        return (coi) this.b[i2 + i2 + 1];
    }

    public final u1j G(int i) {
        Object[] objArr = this.b;
        int i2 = i / 3;
        int i3 = i2 + i2;
        u1j u1jVar = (u1j) objArr[i3];
        if (u1jVar != null) {
            return u1jVar;
        }
        u1j u1jVarB = c1j.a().b((Class) objArr[i3 + 1]);
        objArr[i3] = u1jVarB;
        return u1jVarB;
    }

    public final Object H(Object obj, int i, Object obj2, g3j g3jVar, Object obj3) {
        coi coiVarF;
        int i2 = this.a[i];
        Object objF = x3j.f(obj, D(i) & 1048575);
        if (objF == null || (coiVarF = F(i)) == null) {
            return obj2;
        }
        ozi oziVarC = ((rzi) I(i)).c();
        Iterator it = ((zzhm) objF).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!coiVarF.zza(((Integer) entry.getValue()).intValue())) {
                if (obj2 == null) {
                    obj2 = k3j.a(obj3);
                }
                int iB = rzi.b(oziVarC, entry.getKey(), entry.getValue());
                zzfp zzfpVar = zzfp.zza;
                byte[] bArr = new byte[iB];
                y2i y2iVar = new y2i(bArr, 0, iB);
                try {
                    rzi.e(y2iVar, oziVarC, entry.getKey(), entry.getValue());
                    ((i3j) obj2).j((i2 << 3) | 2, q.a(y2iVar, bArr));
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return obj2;
    }

    public final Object I(int i) {
        int i2 = i / 3;
        return this.b[i2 + i2];
    }

    public final Object J(Object obj, int i) {
        u1j u1jVarG = G(i);
        int iD = D(i) & 1048575;
        if (!n(obj, i)) {
            return u1jVarG.zze();
        }
        Object object = m.getObject(obj, iD);
        if (q(object)) {
            return object;
        }
        Object objZze = u1jVarG.zze();
        if (object != null) {
            u1jVarG.b(objZze, object);
        }
        return objZze;
    }

    public final Object K(Object obj, int i, int i2) {
        u1j u1jVarG = G(i2);
        if (!s(obj, i, i2)) {
            return u1jVarG.zze();
        }
        Object object = m.getObject(obj, D(i2) & 1048575);
        if (q(object)) {
            return object;
        }
        Object objZze = u1jVarG.zze();
        if (object != null) {
            u1jVarG.b(objZze, object);
        }
        return objZze;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0075  */
    /* JADX WARN: Code duplicated, block: B:42:0x0082 A[SYNTHETIC] */
    @Override
    public final void a(Object obj) {
        if (q(obj)) {
            if (obj instanceof kli) {
                kli kliVar = (kli) obj;
                kliVar.g(Integer.MAX_VALUE);
                kliVar.zza = 0;
                kliVar.e();
            }
            int[] iArr = this.a;
            for (int i = 0; i < iArr.length; i += 3) {
                int iD = D(i);
                int i2 = 1048575 & iD;
                int iC = C(iD);
                long j = i2;
                if (iC != 9) {
                    if (iC != 60 && iC != 68) {
                        switch (iC) {
                            case 17:
                                if (n(obj, i)) {
                                    G(i).a(m.getObject(obj, j));
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
                            case 29:
                            case 30:
                            case 31:
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
                            case 48:
                            case 49:
                                ((npi) x3j.f(obj, j)).zzb();
                                break;
                            case 50:
                                Unsafe unsafe = m;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((zzhm) object).zzc();
                                    unsafe.putObject(obj, j, object);
                                }
                                break;
                        }
                    } else if (s(obj, iArr[i], i)) {
                        G(i).a(m.getObject(obj, j));
                    }
                } else if (n(obj, i)) {
                    G(i).a(m.getObject(obj, j));
                }
            }
            ((kli) obj).zzc.h();
            if (this.f) {
                ubc.a(obj);
                throw null;
            }
        }
    }

    @Override
    public final void b(Object obj, Object obj2) {
        M(obj);
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.a;
            if (i >= iArr.length) {
                y1j.u(this.j, obj, obj2);
                if (this.f) {
                    y1j.t(this.k, obj, obj2);
                    return;
                }
                return;
            }
            int iD = D(i);
            int i2 = 1048575 & iD;
            int iC = C(iD);
            int i3 = iArr[i];
            long j = i2;
            switch (iC) {
                case 0:
                    if (n(obj2, i)) {
                        x3j.l(obj, j, x3j.a(obj2, j));
                        i(obj, i);
                    }
                    break;
                case 1:
                    if (n(obj2, i)) {
                        x3j.m(obj, j, x3j.b(obj2, j));
                        i(obj, i);
                    }
                    break;
                case 2:
                    if (n(obj2, i)) {
                        x3j.o(obj, j, x3j.d(obj2, j));
                        i(obj, i);
                    }
                    break;
                case 3:
                    if (n(obj2, i)) {
                        x3j.o(obj, j, x3j.d(obj2, j));
                        i(obj, i);
                    }
                    break;
                case 4:
                    if (n(obj2, i)) {
                        x3j.n(obj, j, x3j.c(obj2, j));
                        i(obj, i);
                    }
                    break;
                case 5:
                    if (n(obj2, i)) {
                        x3j.o(obj, j, x3j.d(obj2, j));
                        i(obj, i);
                    }
                    break;
                case 6:
                    if (n(obj2, i)) {
                        x3j.n(obj, j, x3j.c(obj2, j));
                        i(obj, i);
                    }
                    break;
                case 7:
                    if (n(obj2, i)) {
                        x3j.k(obj, j, x3j.t(obj2, j));
                        i(obj, i);
                    }
                    break;
                case 8:
                    if (n(obj2, i)) {
                        x3j.p(obj, j, x3j.f(obj2, j));
                        i(obj, i);
                    }
                    break;
                case 9:
                    g(obj, obj2, i);
                    break;
                case 10:
                    if (n(obj2, i)) {
                        x3j.p(obj, j, x3j.f(obj2, j));
                        i(obj, i);
                    }
                    break;
                case 11:
                    if (n(obj2, i)) {
                        x3j.n(obj, j, x3j.c(obj2, j));
                        i(obj, i);
                    }
                    break;
                case 12:
                    if (n(obj2, i)) {
                        x3j.n(obj, j, x3j.c(obj2, j));
                        i(obj, i);
                    }
                    break;
                case 13:
                    if (n(obj2, i)) {
                        x3j.n(obj, j, x3j.c(obj2, j));
                        i(obj, i);
                    }
                    break;
                case 14:
                    if (n(obj2, i)) {
                        x3j.o(obj, j, x3j.d(obj2, j));
                        i(obj, i);
                    }
                    break;
                case 15:
                    if (n(obj2, i)) {
                        x3j.n(obj, j, x3j.c(obj2, j));
                        i(obj, i);
                    }
                    break;
                case 16:
                    if (n(obj2, i)) {
                        x3j.o(obj, j, x3j.d(obj2, j));
                        i(obj, i);
                    }
                    break;
                case 17:
                    g(obj, obj2, i);
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
                case 29:
                case 30:
                case 31:
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
                case 48:
                case 49:
                    npi npiVarD = (npi) x3j.f(obj, j);
                    npi npiVar = (npi) x3j.f(obj2, j);
                    int size = npiVarD.size();
                    int size2 = npiVar.size();
                    if (size > 0 && size2 > 0) {
                        if (!npiVarD.zzc()) {
                            npiVarD = npiVarD.d(size2 + size);
                        }
                        npiVarD.addAll(npiVar);
                    }
                    if (size > 0) {
                        npiVar = npiVarD;
                    }
                    x3j.p(obj, j, npiVar);
                    break;
                case 50:
                    g3j g3jVar = y1j.a;
                    x3j.p(obj, j, wzi.a(x3j.f(obj, j), x3j.f(obj2, j)));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (s(obj2, i3, i)) {
                        x3j.p(obj, j, x3j.f(obj2, j));
                        j(obj, i3, i);
                    }
                    break;
                case 60:
                    h(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (s(obj2, i3, i)) {
                        x3j.p(obj, j, x3j.f(obj2, j));
                        j(obj, i3, i);
                    }
                    break;
                case 68:
                    h(obj, obj2, i);
                    break;
            }
            i += 3;
        }
    }

    @Override
    public final void c(Object obj, byte[] bArr, int i, int i2, qoh qohVar) {
        w(obj, bArr, i, i2, 0, qohVar);
    }

    @Override
    public final boolean d(Object obj, Object obj2) {
        boolean zE;
        for (int i = 0; i < this.a.length; i += 3) {
            int iD = D(i);
            int iC = C(iD);
            if (iC <= 50 || iC >= 69) {
                long j = iD & 1048575;
                switch (iC) {
                    case 0:
                        if (!m(obj, obj2, i) || Double.doubleToLongBits(x3j.a(obj, j)) != Double.doubleToLongBits(x3j.a(obj2, j))) {
                            return false;
                        }
                        continue;
                        break;
                    case 1:
                        if (!m(obj, obj2, i) || Float.floatToIntBits(x3j.b(obj, j)) != Float.floatToIntBits(x3j.b(obj2, j))) {
                            return false;
                        }
                        continue;
                        break;
                    case 2:
                        if (!m(obj, obj2, i) || x3j.d(obj, j) != x3j.d(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 3:
                        if (!m(obj, obj2, i) || x3j.d(obj, j) != x3j.d(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 4:
                        if (!m(obj, obj2, i) || x3j.c(obj, j) != x3j.c(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 5:
                        if (!m(obj, obj2, i) || x3j.d(obj, j) != x3j.d(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 6:
                        if (!m(obj, obj2, i) || x3j.c(obj, j) != x3j.c(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 7:
                        if (!m(obj, obj2, i) || x3j.t(obj, j) != x3j.t(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 8:
                        if (!m(obj, obj2, i) || !y1j.e(x3j.f(obj, j), x3j.f(obj2, j))) {
                            return false;
                        }
                        continue;
                        break;
                    case 9:
                        if (!m(obj, obj2, i) || !y1j.e(x3j.f(obj, j), x3j.f(obj2, j))) {
                            return false;
                        }
                        continue;
                        break;
                    case 10:
                        if (!m(obj, obj2, i) || !y1j.e(x3j.f(obj, j), x3j.f(obj2, j))) {
                            return false;
                        }
                        continue;
                        break;
                    case 11:
                        if (!m(obj, obj2, i) || x3j.c(obj, j) != x3j.c(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 12:
                        if (!m(obj, obj2, i) || x3j.c(obj, j) != x3j.c(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 13:
                        if (!m(obj, obj2, i) || x3j.c(obj, j) != x3j.c(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 14:
                        if (!m(obj, obj2, i) || x3j.d(obj, j) != x3j.d(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 15:
                        if (!m(obj, obj2, i) || x3j.c(obj, j) != x3j.c(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 16:
                        if (!m(obj, obj2, i) || x3j.d(obj, j) != x3j.d(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 17:
                        if (!m(obj, obj2, i) || !y1j.e(x3j.f(obj, j), x3j.f(obj2, j))) {
                            return false;
                        }
                        continue;
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
                    case 29:
                    case 30:
                    case 31:
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
                    case 48:
                    case 49:
                        zE = y1j.e(x3j.f(obj, j), x3j.f(obj2, j));
                        break;
                    case 50:
                        zE = y1j.e(x3j.f(obj, j), x3j.f(obj2, j));
                        break;
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                    case 60:
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                    case 68:
                        if (!r(obj, obj2, i) || !y1j.e(x3j.f(obj, j), x3j.f(obj2, j))) {
                            return false;
                        }
                        continue;
                        break;
                    default:
                        continue;
                }
                if (!zE) {
                    return false;
                }
            }
        }
        int i2 = this.i;
        while (true) {
            int[] iArr = this.g;
            if (i2 >= iArr.length) {
                if (!((kli) obj).zzc.equals(((kli) obj2).zzc)) {
                    return false;
                }
                if (!this.f) {
                    return true;
                }
                ubc.a(obj);
                throw null;
            }
            int i3 = iArr[i2];
            if (!r(obj, obj2, i3)) {
                return false;
            }
            if (!s(obj, 0, i3)) {
                long jD = D(i3) & 1048575;
                if (!y1j.e(x3j.f(obj, jD), x3j.f(obj2, jD))) {
                    return false;
                }
            }
            i2++;
        }
    }

    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v20 */
    @Override
    public final void e(Object obj, a5j a5jVar) {
        int i;
        int i2;
        int i3;
        int[] iArr;
        ?? r9 = 1;
        if (this.f) {
            ubc.a(obj);
            throw null;
        }
        int[] iArr2 = this.a;
        Unsafe unsafe = m;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (i6 < iArr2.length) {
            int iD = D(i6);
            int iC = C(iD);
            int i7 = iArr2[i6];
            if (iC <= 17) {
                int i8 = iArr2[i6 + 2];
                int i9 = i8 & 1048575;
                if (i9 != i4) {
                    i5 = i9 == 1048575 ? 0 : unsafe.getInt(obj, i9);
                    i4 = i9;
                }
                i = i4;
                i2 = i5;
                i3 = r9 << (i8 >>> 20);
            } else {
                i = i4;
                i2 = i5;
                i3 = 0;
            }
            long j = iD & 1048575;
            switch (iC) {
                case 0:
                    iArr = iArr2;
                    if (o(obj, i6, i, i2, i3)) {
                        a5jVar.e(i7, x3j.a(obj, j));
                        continue;
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    r9 = 1;
                    break;
                case 1:
                    iArr = iArr2;
                    if (o(obj, i6, i, i2, i3)) {
                        a5jVar.j(i7, x3j.b(obj, j));
                    } else {
                        continue;
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    r9 = 1;
                    break;
                case 2:
                    iArr = iArr2;
                    if (o(obj, i6, i, i2, i3)) {
                        a5jVar.n(i7, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    r9 = 1;
                    break;
                case 3:
                    iArr = iArr2;
                    if (o(obj, i6, i, i2, i3)) {
                        a5jVar.x(i7, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    r9 = 1;
                    break;
                case 4:
                    iArr = iArr2;
                    if (o(obj, i6, i, i2, i3)) {
                        a5jVar.b(i7, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    r9 = 1;
                    break;
                case 5:
                    iArr = iArr2;
                    if (o(obj, i6, i, i2, i3)) {
                        a5jVar.l(i7, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    r9 = 1;
                    break;
                case 6:
                    iArr = iArr2;
                    if (o(obj, i6, i, i2, i3)) {
                        a5jVar.f(i7, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    r9 = 1;
                    break;
                case 7:
                    iArr = iArr2;
                    if (o(obj, i6, i, i2, i3)) {
                        a5jVar.c(i7, x3j.t(obj, j));
                    } else {
                        continue;
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    r9 = 1;
                    break;
                case 8:
                    iArr = iArr2;
                    if (o(obj, i6, i, i2, i3)) {
                        v(i7, unsafe.getObject(obj, j), a5jVar);
                    } else {
                        continue;
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    r9 = 1;
                    break;
                case 9:
                    iArr = iArr2;
                    if (o(obj, i6, i, i2, i3)) {
                        a5jVar.t(i7, unsafe.getObject(obj, j), G(i6));
                    } else {
                        continue;
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    r9 = 1;
                    break;
                case 10:
                    iArr = iArr2;
                    if (o(obj, i6, i, i2, i3)) {
                        a5jVar.D(i7, (zzfp) unsafe.getObject(obj, j));
                    } else {
                        continue;
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    r9 = 1;
                    break;
                case 11:
                    iArr = iArr2;
                    if (o(obj, i6, i, i2, i3)) {
                        a5jVar.B(i7, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    r9 = 1;
                    break;
                case 12:
                    iArr = iArr2;
                    if (o(obj, i6, i, i2, i3)) {
                        a5jVar.h(i7, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    r9 = 1;
                    break;
                case 13:
                    iArr = iArr2;
                    if (o(obj, i6, i, i2, i3)) {
                        a5jVar.I(i7, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    r9 = 1;
                    break;
                case 14:
                    iArr = iArr2;
                    if (o(obj, i6, i, i2, i3)) {
                        a5jVar.a(i7, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    r9 = 1;
                    break;
                case 15:
                    iArr = iArr2;
                    if (o(obj, i6, i, i2, i3)) {
                        a5jVar.v(i7, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    r9 = 1;
                    break;
                case 16:
                    iArr = iArr2;
                    if (o(obj, i6, i, i2, i3)) {
                        a5jVar.u(i7, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    r9 = 1;
                    break;
                case 17:
                    iArr = iArr2;
                    if (o(obj, i6, i, i2, i3)) {
                        a5jVar.A(i7, unsafe.getObject(obj, j), G(i6));
                    } else {
                        continue;
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    r9 = 1;
                    break;
                case 18:
                    y1j.w(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, false);
                    break;
                case 19:
                    y1j.A(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, false);
                    break;
                case 20:
                    y1j.C(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, false);
                    break;
                case 21:
                    y1j.d(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, false);
                    break;
                case 22:
                    y1j.B(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, false);
                    break;
                case 23:
                    y1j.z(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, false);
                    break;
                case 24:
                    y1j.y(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, false);
                    break;
                case 25:
                    y1j.v(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, false);
                    break;
                case 26:
                    int i10 = iArr2[i6];
                    List list = (List) unsafe.getObject(obj, j);
                    g3j g3jVar = y1j.a;
                    if (list != null && !list.isEmpty()) {
                        a5jVar.z(i10, list);
                    }
                    break;
                case 27:
                    int i11 = iArr2[i6];
                    List list2 = (List) unsafe.getObject(obj, j);
                    u1j u1jVarG = G(i6);
                    g3j g3jVar2 = y1j.a;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i12 = 0; i12 < list2.size(); i12 += r9) {
                            ((e5i) a5jVar).t(i11, list2.get(i12), u1jVarG);
                        }
                    }
                    break;
                case 28:
                    int i13 = iArr2[i6];
                    List list3 = (List) unsafe.getObject(obj, j);
                    g3j g3jVar3 = y1j.a;
                    if (list3 != null && !list3.isEmpty()) {
                        a5jVar.m(i13, list3);
                    }
                    break;
                case 29:
                    y1j.c(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, false);
                    break;
                case 30:
                    y1j.x(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, false);
                    break;
                case 31:
                    y1j.D(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, false);
                    break;
                case 32:
                    y1j.E(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, false);
                    break;
                case 33:
                    y1j.a(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, false);
                    break;
                case 34:
                    y1j.b(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, false);
                    break;
                case 35:
                    y1j.w(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, r9);
                    break;
                case 36:
                    y1j.A(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, r9);
                    break;
                case 37:
                    y1j.C(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, r9);
                    break;
                case 38:
                    y1j.d(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, r9);
                    break;
                case 39:
                    y1j.B(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, r9);
                    break;
                case 40:
                    y1j.z(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, r9);
                    break;
                case 41:
                    y1j.y(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, r9);
                    break;
                case 42:
                    y1j.v(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, r9);
                    break;
                case 43:
                    y1j.c(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, r9);
                    break;
                case 44:
                    y1j.x(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, r9);
                    break;
                case 45:
                    y1j.D(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, r9);
                    break;
                case 46:
                    y1j.E(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, r9);
                    break;
                case 47:
                    y1j.a(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, r9);
                    break;
                case 48:
                    y1j.b(iArr2[i6], (List) unsafe.getObject(obj, j), a5jVar, r9);
                    break;
                case 49:
                    int i14 = iArr2[i6];
                    List list4 = (List) unsafe.getObject(obj, j);
                    u1j u1jVarG2 = G(i6);
                    g3j g3jVar4 = y1j.a;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i15 = 0; i15 < list4.size(); i15 += r9) {
                            ((e5i) a5jVar).A(i14, list4.get(i15), u1jVarG2);
                        }
                    }
                    break;
                case 50:
                    Object object = unsafe.getObject(obj, j);
                    if (object != null) {
                        a5jVar.E(i7, ((rzi) I(i6)).c(), (zzhm) object);
                    }
                    break;
                case 51:
                    if (s(obj, i7, i6)) {
                        a5jVar.e(i7, ((Double) x3j.f(obj, j)).doubleValue());
                    }
                    break;
                case 52:
                    if (s(obj, i7, i6)) {
                        a5jVar.j(i7, ((Float) x3j.f(obj, j)).floatValue());
                    }
                    break;
                case 53:
                    if (s(obj, i7, i6)) {
                        a5jVar.n(i7, E(obj, j));
                    }
                    break;
                case 54:
                    if (s(obj, i7, i6)) {
                        a5jVar.x(i7, E(obj, j));
                    }
                    break;
                case 55:
                    if (s(obj, i7, i6)) {
                        a5jVar.b(i7, z(obj, j));
                    }
                    break;
                case 56:
                    if (s(obj, i7, i6)) {
                        a5jVar.l(i7, E(obj, j));
                    }
                    break;
                case 57:
                    if (s(obj, i7, i6)) {
                        a5jVar.f(i7, z(obj, j));
                    }
                    break;
                case 58:
                    if (s(obj, i7, i6)) {
                        a5jVar.c(i7, ((Boolean) x3j.f(obj, j)).booleanValue());
                    }
                    break;
                case 59:
                    if (s(obj, i7, i6)) {
                        v(i7, unsafe.getObject(obj, j), a5jVar);
                    }
                    break;
                case 60:
                    if (s(obj, i7, i6)) {
                        a5jVar.t(i7, unsafe.getObject(obj, j), G(i6));
                    }
                    break;
                case 61:
                    if (s(obj, i7, i6)) {
                        a5jVar.D(i7, (zzfp) unsafe.getObject(obj, j));
                    }
                    break;
                case 62:
                    if (s(obj, i7, i6)) {
                        a5jVar.B(i7, z(obj, j));
                    }
                    break;
                case 63:
                    if (s(obj, i7, i6)) {
                        a5jVar.h(i7, z(obj, j));
                    }
                    break;
                case 64:
                    if (s(obj, i7, i6)) {
                        a5jVar.I(i7, z(obj, j));
                    }
                    break;
                case 65:
                    if (s(obj, i7, i6)) {
                        a5jVar.a(i7, E(obj, j));
                    }
                    break;
                case 66:
                    if (s(obj, i7, i6)) {
                        a5jVar.v(i7, z(obj, j));
                    }
                    break;
                case 67:
                    if (s(obj, i7, i6)) {
                        a5jVar.u(i7, E(obj, j));
                    }
                    break;
                case 68:
                    if (s(obj, i7, i6)) {
                        a5jVar.A(i7, unsafe.getObject(obj, j), G(i6));
                    }
                    break;
            }
            iArr = iArr2;
            i6 += 3;
            i4 = i;
            i5 = i2;
            iArr2 = iArr;
            r9 = 1;
        }
        ((kli) obj).zzc.k(a5jVar);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:51:0x00de  */
    /* JADX WARN: Code duplicated, block: B:54:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:57:0x00f4 A[LOOP:2: B:52:0x00e3->B:57:0x00f4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:73:0x00f3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x0112 A[SYNTHETIC] */
    @Override
    public final boolean f(Object obj) {
        int i;
        int i2;
        List list;
        u1j u1jVarG;
        int i3;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        while (true) {
            u1j u1jVarB = null;
            if (i5 >= this.h) {
                if (!this.f) {
                    return true;
                }
                ubc.a(obj);
                throw null;
            }
            int i7 = this.g[i5];
            int iD = D(i7);
            int[] iArr = this.a;
            int i8 = iArr[i7 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i6) {
                if (i9 != 1048575) {
                    i4 = m.getInt(obj, i9);
                }
                i2 = i4;
                i = i9;
            } else {
                i = i6;
                i2 = i4;
            }
            if ((268435456 & iD) != 0 && !o(obj, i7, i, i2, i10)) {
                return false;
            }
            int iC = C(iD);
            if (iC == 9 || iC == 17) {
                if (o(obj, i7, i, i2, i10) && !p(obj, iD, G(i7))) {
                    return false;
                }
            } else if (iC == 27) {
                list = (List) x3j.f(obj, iD & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    u1jVarG = G(i7);
                    for (i3 = 0; i3 < list.size(); i3++) {
                        if (!u1jVarG.f(list.get(i3))) {
                            return false;
                        }
                    }
                }
            } else if (iC == 60 || iC == 68) {
                if (s(obj, iArr[i7], i7) && !p(obj, iD, G(i7))) {
                    return false;
                }
            } else if (iC == 49) {
                list = (List) x3j.f(obj, iD & 1048575);
                if (list.isEmpty()) {
                    u1jVarG = G(i7);
                    while (i3 < list.size()) {
                        if (!u1jVarG.f(list.get(i3))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iC != 50) {
                continue;
            } else {
                zzhm zzhmVar = (zzhm) x3j.f(obj, iD & 1048575);
                if (!zzhmVar.isEmpty() && ((rzi) I(i7)).c().c.zzb() == zzjh.MESSAGE) {
                    for (Object obj2 : zzhmVar.values()) {
                        if (u1jVarB == null) {
                            u1jVarB = c1j.a().b(obj2.getClass());
                        }
                        if (!u1jVarB.f(obj2)) {
                            return false;
                        }
                    }
                }
            }
            i5++;
            i6 = i;
            i4 = i2;
        }
    }

    public final void g(Object obj, Object obj2, int i) {
        if (n(obj2, i)) {
            int iD = D(i) & 1048575;
            Unsafe unsafe = m;
            long j = iD;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.a[i] + " is present but null: " + obj2.toString());
            }
            u1j u1jVarG = G(i);
            if (!n(obj, i)) {
                if (q(object)) {
                    Object objZze = u1jVarG.zze();
                    u1jVarG.b(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                i(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!q(object2)) {
                Object objZze2 = u1jVarG.zze();
                u1jVarG.b(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            u1jVarG.b(object2, object);
        }
    }

    public final void h(Object obj, Object obj2, int i) {
        int[] iArr = this.a;
        int i2 = iArr[i];
        if (s(obj2, i2, i)) {
            int iD = D(i) & 1048575;
            Unsafe unsafe = m;
            long j = iD;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i] + " is present but null: " + obj2.toString());
            }
            u1j u1jVarG = G(i);
            if (!s(obj, i2, i)) {
                if (q(object)) {
                    Object objZze = u1jVarG.zze();
                    u1jVarG.b(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                j(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!q(object2)) {
                Object objZze2 = u1jVarG.zze();
                u1jVarG.b(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            u1jVarG.b(object2, object);
        }
    }

    public final void i(Object obj, int i) {
        int iA = A(i);
        long j = 1048575 & iA;
        if (j == 1048575) {
            return;
        }
        x3j.n(obj, j, (1 << (iA >>> 20)) | x3j.c(obj, j));
    }

    public final void j(Object obj, int i, int i2) {
        x3j.n(obj, A(i2) & 1048575, i);
    }

    public final void k(Object obj, int i, Object obj2) {
        m.putObject(obj, D(i) & 1048575, obj2);
        i(obj, i);
    }

    public final void l(Object obj, int i, int i2, Object obj2) {
        m.putObject(obj, D(i2) & 1048575, obj2);
        j(obj, i, i2);
    }

    public final boolean m(Object obj, Object obj2, int i) {
        return n(obj, i) == n(obj2, i);
    }

    public final boolean n(Object obj, int i) {
        int iA = A(i);
        long j = iA & 1048575;
        if (j != 1048575) {
            return ((1 << (iA >>> 20)) & x3j.c(obj, j)) != 0;
        }
        int iD = D(i);
        long j2 = iD & 1048575;
        switch (C(iD)) {
            case 0:
                return Double.doubleToRawLongBits(x3j.a(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(x3j.b(obj, j2)) != 0;
            case 2:
                return x3j.d(obj, j2) != 0;
            case 3:
                return x3j.d(obj, j2) != 0;
            case 4:
                return x3j.c(obj, j2) != 0;
            case 5:
                return x3j.d(obj, j2) != 0;
            case 6:
                return x3j.c(obj, j2) != 0;
            case 7:
                return x3j.t(obj, j2);
            case 8:
                Object objF = x3j.f(obj, j2);
                if (objF instanceof String) {
                    return !((String) objF).isEmpty();
                }
                if (objF instanceof zzfp) {
                    return !zzfp.zza.equals(objF);
                }
                return t();
            case 9:
                return x3j.f(obj, j2) != null;
            case 10:
                return !zzfp.zza.equals(x3j.f(obj, j2));
            case 11:
                return x3j.c(obj, j2) != 0;
            case 12:
                return x3j.c(obj, j2) != 0;
            case 13:
                return x3j.c(obj, j2) != 0;
            case 14:
                return x3j.d(obj, j2) != 0;
            case 15:
                return x3j.c(obj, j2) != 0;
            case 16:
                return x3j.d(obj, j2) != 0;
            case 17:
                return x3j.f(obj, j2) != null;
            default:
                return t();
        }
    }

    public final boolean o(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return n(obj, i);
        }
        return (i3 & i4) != 0;
    }

    public final boolean r(Object obj, Object obj2, int i) {
        long jA = A(i) & 1048575;
        return x3j.c(obj, jA) == x3j.c(obj2, jA);
    }

    public final boolean s(Object obj, int i, int i2) {
        return x3j.c(obj, (long) (A(i2) & 1048575)) == i;
    }

    public final boolean t() {
        throw new IllegalArgumentException();
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 42561. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final int w(java.lang.Object r34, byte[] r35, int r36, int r37, int r38, defpackage.qoh r39) {
        /*
            Method dump skipped, instruction units count: 4256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q0j.w(java.lang.Object, byte[], int, int, int, qoh):int");
    }

    /* JADX WARN: Code duplicated, block: B:144:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:85:0x01f9  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v110, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v113, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v115, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v132 */
    /* JADX WARN: Type inference failed for: r0v180, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v248, types: [int] */
    /* JADX WARN: Type inference failed for: r0v257 */
    /* JADX WARN: Type inference failed for: r0v258 */
    /* JADX WARN: Type inference failed for: r0v259 */
    /* JADX WARN: Type inference failed for: r0v260 */
    /* JADX WARN: Type inference failed for: r0v261 */
    /* JADX WARN: Type inference failed for: r0v262 */
    /* JADX WARN: Type inference failed for: r0v263 */
    /* JADX WARN: Type inference failed for: r0v264 */
    /* JADX WARN: Type inference failed for: r0v265 */
    /* JADX WARN: Type inference failed for: r0v266 */
    /* JADX WARN: Type inference failed for: r0v267 */
    /* JADX WARN: Type inference failed for: r0v268 */
    /* JADX WARN: Type inference failed for: r0v269 */
    /* JADX WARN: Type inference failed for: r0v270 */
    /* JADX WARN: Type inference failed for: r13v3, types: [int] */
    /* JADX WARN: Type inference failed for: r13v4, types: [int] */
    /* JADX WARN: Type inference failed for: r13v5, types: [int] */
    /* JADX WARN: Type inference failed for: r13v6, types: [int] */
    /* JADX WARN: Type inference failed for: r13v8, types: [int] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r18v0, types: [q0j] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v112, types: [int] */
    /* JADX WARN: Type inference failed for: r1v115, types: [int] */
    /* JADX WARN: Type inference failed for: r1v154 */
    /* JADX WARN: Type inference failed for: r1v157 */
    /* JADX WARN: Type inference failed for: r1v158 */
    /* JADX WARN: Type inference failed for: r1v159 */
    /* JADX WARN: Type inference failed for: r1v160 */
    /* JADX WARN: Type inference failed for: r1v161 */
    /* JADX WARN: Type inference failed for: r1v162 */
    /* JADX WARN: Type inference failed for: r1v163 */
    /* JADX WARN: Type inference failed for: r1v164 */
    /* JADX WARN: Type inference failed for: r1v72, types: [int] */
    /* JADX WARN: Type inference failed for: r1v74 */
    /* JADX WARN: Type inference failed for: r2v30, types: [int] */
    /* JADX WARN: Type inference failed for: r2v38, types: [int] */
    /* JADX WARN: Type inference failed for: r2v40, types: [int] */
    /* JADX WARN: Type inference failed for: r2v46 */
    /* JADX WARN: Type inference failed for: r2v47, types: [int] */
    /* JADX WARN: Type inference failed for: r2v75, types: [int] */
    /* JADX WARN: Type inference failed for: r2v76 */
    /* JADX WARN: Type inference failed for: r2v78 */
    /* JADX WARN: Type inference failed for: r2v79, types: [int] */
    /* JADX WARN: Type inference failed for: r2v93 */
    /* JADX WARN: Type inference failed for: r2v94 */
    /* JADX WARN: Type inference failed for: r2v95 */
    /* JADX WARN: Type inference failed for: r2v96 */
    /* JADX WARN: Type inference failed for: r2v97 */
    /* JADX WARN: Type inference failed for: r2v98 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v25, types: [int] */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28, types: [int] */
    /* JADX WARN: Type inference failed for: r3v33 */
    /* JADX WARN: Type inference failed for: r3v35, types: [int] */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v42, types: [int] */
    /* JADX WARN: Type inference failed for: r3v52 */
    /* JADX WARN: Type inference failed for: r3v53 */
    /* JADX WARN: Type inference failed for: r3v54 */
    /* JADX WARN: Type inference failed for: r3v55 */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r3v57 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v32, types: [int] */
    /* JADX WARN: Type inference failed for: r4v36 */
    /* JADX WARN: Type inference failed for: r4v37 */
    /* JADX WARN: Type inference failed for: r4v39, types: [int] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v40 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v61 */
    /* JADX WARN: Type inference failed for: r4v62 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    @Override
    public final int zza(Object obj) {
        int i;
        ?? r16;
        ?? r5;
        int iW;
        int iW2;
        int iW3;
        int iX;
        int iW4;
        int iW5;
        int iB;
        int iW6;
        ?? M;
        int size;
        int iW7;
        int iB2;
        int iW8;
        int iB3;
        int iW9;
        ?? W;
        ?? W2;
        ?? F;
        int iK;
        int iW10;
        int iW11;
        ?? r4;
        ?? r3;
        ?? r1;
        Unsafe unsafe = m;
        boolean z = false;
        int i2 = 1048575;
        ?? r2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (true) {
            int[] iArr = this.a;
            if (i3 >= iArr.length) {
                int iA = i4 + ((kli) obj).zzc.a();
                if (!this.f) {
                    return iA;
                }
                ubc.a(obj);
                throw null;
            }
            int iD = D(i3);
            int iC = C(iD);
            int i6 = iArr[i3];
            int i7 = iArr[i3 + 2];
            int i8 = i7 & i2;
            if (iC <= 17) {
                if (i8 != i5) {
                    i5 = i8;
                    r1 = i8 == i2 ? z : unsafe.getInt(obj, i8);
                }
                i = i5;
                r16 = r1;
                r5 = 1 << (i7 >>> 20);
            } else {
                r1 = r2;
                i = i5;
                r16 = r2;
                r5 = z;
            }
            int i9 = iD & i2;
            if (iC >= zzgi.zzJ.zza()) {
                zzgi.zzW.zza();
            }
            long j = i9;
            switch (iC) {
                case 0:
                    if (o(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iW = o4i.w(i6 << 3);
                        F = iW + 8;
                        i4 += F;
                    }
                    break;
                case 1:
                    if (o(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iW2 = o4i.w(i6 << 3);
                        F = iW2 + 4;
                        i4 += F;
                    }
                    break;
                case 2:
                    if (o(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        long j2 = unsafe.getLong(obj, j);
                        iW3 = o4i.w(i6 << 3);
                        iX = o4i.x(j2);
                        F = iW3 + iX;
                        i4 += F;
                    }
                    break;
                case 3:
                    if (o(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        long j3 = unsafe.getLong(obj, j);
                        iW3 = o4i.w(i6 << 3);
                        iX = o4i.x(j3);
                        F = iW3 + iX;
                        i4 += F;
                    }
                    break;
                case 4:
                    if (o(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        long j4 = unsafe.getInt(obj, j);
                        iW3 = o4i.w(i6 << 3);
                        iX = o4i.x(j4);
                        F = iW3 + iX;
                        i4 += F;
                    }
                    break;
                case 5:
                    if (o(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iW = o4i.w(i6 << 3);
                        F = iW + 8;
                        i4 += F;
                    }
                    break;
                case 6:
                    if (o(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iW2 = o4i.w(i6 << 3);
                        F = iW2 + 4;
                        i4 += F;
                    }
                    break;
                case 7:
                    if (o(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iW4 = o4i.w(i6 << 3);
                        F = iW4 + 1;
                        i4 += F;
                    }
                    break;
                case 8:
                    if (o(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        int i10 = i6 << 3;
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof zzfp) {
                            iW5 = o4i.w(i10);
                            iB = ((zzfp) object).zzd();
                            iW6 = o4i.w(iB);
                        } else {
                            iW5 = o4i.w(i10);
                            int i11 = l4j.a;
                            iB = s.b((String) object);
                            iW6 = o4i.w(iB);
                        }
                        F = iW5 + iW6 + iB;
                        i4 += F;
                    }
                    break;
                case 9:
                    if (o(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        Object object2 = unsafe.getObject(obj, j);
                        u1j u1jVarG = G(i3);
                        g3j g3jVar = y1j.a;
                        iW5 = o4i.w(i6 << 3);
                        iB = ((plh) object2).c(u1jVarG);
                        iW6 = o4i.w(iB);
                        F = iW5 + iW6 + iB;
                        i4 += F;
                    }
                    break;
                case 10:
                    if (o(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        zzfp zzfpVar = (zzfp) unsafe.getObject(obj, j);
                        iW5 = o4i.w(i6 << 3);
                        iB = zzfpVar.zzd();
                        iW6 = o4i.w(iB);
                        F = iW5 + iW6 + iB;
                        i4 += F;
                    }
                    break;
                case 11:
                    if (o(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        int i12 = unsafe.getInt(obj, j);
                        iW3 = o4i.w(i6 << 3);
                        iX = o4i.w(i12);
                        F = iW3 + iX;
                        i4 += F;
                    }
                    break;
                case 12:
                    if (o(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        long j5 = unsafe.getInt(obj, j);
                        iW3 = o4i.w(i6 << 3);
                        iX = o4i.x(j5);
                        F = iW3 + iX;
                        i4 += F;
                    }
                    break;
                case 13:
                    if (o(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iW2 = o4i.w(i6 << 3);
                        F = iW2 + 4;
                        i4 += F;
                    }
                    break;
                case 14:
                    if (o(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iW = o4i.w(i6 << 3);
                        F = iW + 8;
                        i4 += F;
                    }
                    break;
                case 15:
                    if (o(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        int i13 = unsafe.getInt(obj, j);
                        iW3 = o4i.w(i6 << 3);
                        iX = o4i.w((i13 >> 31) ^ (i13 + i13));
                        F = iW3 + iX;
                        i4 += F;
                    }
                    break;
                case 16:
                    if (o(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        long j6 = unsafe.getLong(obj, j);
                        iW3 = o4i.w(i6 << 3);
                        iX = o4i.x((j6 >> 63) ^ (j6 + j6));
                        F = iW3 + iX;
                        i4 += F;
                    }
                    break;
                case 17:
                    if (o(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        F = y1j.f(i6, (g0j) unsafe.getObject(obj, j), G(i3));
                        i4 += F;
                    }
                    break;
                case 18:
                    F = y1j.j(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += F;
                    break;
                case 19:
                    F = y1j.h(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += F;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j);
                    g3j g3jVar2 = y1j.a;
                    if (list.size() == 0) {
                        M = z;
                    } else {
                        M = y1j.m(list) + (list.size() * o4i.w(i6 << 3));
                    }
                    i4 += M;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j);
                    g3j g3jVar3 = y1j.a;
                    size = list2.size();
                    if (size == 0) {
                        F = z;
                    } else {
                        iW3 = y1j.q(list2);
                        iW7 = o4i.w(i6 << 3);
                        iX = size * iW7;
                        F = iW3 + iX;
                    }
                    i4 += F;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j);
                    g3j g3jVar4 = y1j.a;
                    size = list3.size();
                    if (size == 0) {
                        F = z;
                    } else {
                        iW3 = y1j.l(list3);
                        iW7 = o4i.w(i6 << 3);
                        iX = size * iW7;
                        F = iW3 + iX;
                    }
                    i4 += F;
                    break;
                case 23:
                    F = y1j.j(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += F;
                    break;
                case 24:
                    F = y1j.h(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += F;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j);
                    g3j g3jVar5 = y1j.a;
                    int size2 = list4.size();
                    if (size2 == 0) {
                        F = z;
                    } else {
                        F = size2 * (o4i.w(i6 << 3) + 1);
                    }
                    i4 += F;
                    break;
                case 26:
                    ?? r0 = (List) unsafe.getObject(obj, j);
                    g3j g3jVar6 = y1j.a;
                    int size3 = r0.size();
                    if (size3 == 0) {
                        M = z;
                    } else {
                        int iW12 = o4i.w(i6 << 3) * size3;
                        if (r0 instanceof mwi) {
                            mwi mwiVar = (mwi) r0;
                            for (?? r6 = z; r6 < size3; r6++) {
                                Object objZza = mwiVar.zza();
                                if (objZza instanceof zzfp) {
                                    M = iW12;
                                    iB3 = ((zzfp) objZza).zzd();
                                    iW9 = o4i.w(iB3);
                                } else {
                                    M = iW12;
                                    int i14 = l4j.a;
                                    iB3 = s.b((String) objZza);
                                    iW9 = o4i.w(iB3);
                                }
                                M += iW9 + iB3;
                            }
                            M = iW12;
                        } else {
                            for (?? r7 = z; r7 < size3; r7++) {
                                Object obj2 = r0.get(r7);
                                if (obj2 instanceof zzfp) {
                                    M = iW12;
                                    iB2 = ((zzfp) obj2).zzd();
                                    iW8 = o4i.w(iB2);
                                } else {
                                    M = iW12;
                                    int i15 = l4j.a;
                                    iB2 = s.b((String) obj2);
                                    iW8 = o4i.w(iB2);
                                }
                                M += iW8 + iB2;
                            }
                            M = iW12;
                        }
                    }
                    i4 += M;
                    break;
                case 27:
                    ?? r8 = (List) unsafe.getObject(obj, j);
                    u1j u1jVarG2 = G(i3);
                    g3j g3jVar7 = y1j.a;
                    int size4 = r8.size();
                    if (size4 == 0) {
                        W = z;
                    } else {
                        int iW13 = o4i.w(i6 << 3) * size4;
                        for (?? r9 = z; r9 < size4; r9++) {
                            W = iW13;
                            int iC2 = ((plh) r8.get(r9)).c(u1jVarG2);
                            W = (W == true ? 1 : 0) + o4i.w(iC2) + iC2;
                        }
                        W = iW13;
                    }
                    i4 += W;
                    break;
                case 28:
                    ?? r10 = (List) unsafe.getObject(obj, j);
                    g3j g3jVar8 = y1j.a;
                    int size5 = r10.size();
                    if (size5 == 0) {
                        W2 = z;
                    } else {
                        W2 = size5 * o4i.w(i6 << 3);
                        for (?? r11 = z; r11 < r10.size(); r11++) {
                            int iZzd = ((zzfp) r10.get(r11)).zzd();
                            W2 += o4i.w(iZzd) + iZzd;
                        }
                    }
                    i4 += W2;
                    break;
                case 29:
                    List list5 = (List) unsafe.getObject(obj, j);
                    g3j g3jVar9 = y1j.a;
                    size = list5.size();
                    if (size == 0) {
                        F = z;
                    } else {
                        iW3 = y1j.p(list5);
                        iW7 = o4i.w(i6 << 3);
                        iX = size * iW7;
                        F = iW3 + iX;
                    }
                    i4 += F;
                    break;
                case 30:
                    List list6 = (List) unsafe.getObject(obj, j);
                    g3j g3jVar10 = y1j.a;
                    size = list6.size();
                    if (size == 0) {
                        F = z;
                    } else {
                        iW3 = y1j.g(list6);
                        iW7 = o4i.w(i6 << 3);
                        iX = size * iW7;
                        F = iW3 + iX;
                    }
                    i4 += F;
                    break;
                case 31:
                    F = y1j.h(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += F;
                    break;
                case 32:
                    F = y1j.j(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += F;
                    break;
                case 33:
                    List list7 = (List) unsafe.getObject(obj, j);
                    g3j g3jVar11 = y1j.a;
                    size = list7.size();
                    if (size == 0) {
                        F = z;
                    } else {
                        iW3 = y1j.n(list7);
                        iW7 = o4i.w(i6 << 3);
                        iX = size * iW7;
                        F = iW3 + iX;
                    }
                    i4 += F;
                    break;
                case 34:
                    List list8 = (List) unsafe.getObject(obj, j);
                    g3j g3jVar12 = y1j.a;
                    size = list8.size();
                    if (size == 0) {
                        F = z;
                    } else {
                        iW3 = y1j.o(list8);
                        iW7 = o4i.w(i6 << 3);
                        iX = size * iW7;
                        F = iW3 + iX;
                    }
                    i4 += F;
                    break;
                case 35:
                    iK = y1j.k((List) unsafe.getObject(obj, j));
                    if (iK > 0) {
                        iW10 = o4i.w(i6 << 3);
                        iW11 = o4i.w(iK);
                        W2 = iW10 + iW11 + iK;
                        i4 += W2;
                    }
                    break;
                case 36:
                    iK = y1j.i((List) unsafe.getObject(obj, j));
                    if (iK > 0) {
                        iW10 = o4i.w(i6 << 3);
                        iW11 = o4i.w(iK);
                        W2 = iW10 + iW11 + iK;
                        i4 += W2;
                    }
                    break;
                case 37:
                    iK = y1j.m((List) unsafe.getObject(obj, j));
                    if (iK > 0) {
                        iW10 = o4i.w(i6 << 3);
                        iW11 = o4i.w(iK);
                        W2 = iW10 + iW11 + iK;
                        i4 += W2;
                    }
                    break;
                case 38:
                    iK = y1j.q((List) unsafe.getObject(obj, j));
                    if (iK > 0) {
                        iW10 = o4i.w(i6 << 3);
                        iW11 = o4i.w(iK);
                        W2 = iW10 + iW11 + iK;
                        i4 += W2;
                    }
                    break;
                case 39:
                    iK = y1j.l((List) unsafe.getObject(obj, j));
                    if (iK > 0) {
                        iW10 = o4i.w(i6 << 3);
                        iW11 = o4i.w(iK);
                        W2 = iW10 + iW11 + iK;
                        i4 += W2;
                    }
                    break;
                case 40:
                    iK = y1j.k((List) unsafe.getObject(obj, j));
                    if (iK > 0) {
                        iW10 = o4i.w(i6 << 3);
                        iW11 = o4i.w(iK);
                        W2 = iW10 + iW11 + iK;
                        i4 += W2;
                    }
                    break;
                case 41:
                    iK = y1j.i((List) unsafe.getObject(obj, j));
                    if (iK > 0) {
                        iW10 = o4i.w(i6 << 3);
                        iW11 = o4i.w(iK);
                        W2 = iW10 + iW11 + iK;
                        i4 += W2;
                    }
                    break;
                case 42:
                    List list9 = (List) unsafe.getObject(obj, j);
                    g3j g3jVar13 = y1j.a;
                    iK = list9.size();
                    if (iK > 0) {
                        iW10 = o4i.w(i6 << 3);
                        iW11 = o4i.w(iK);
                        W2 = iW10 + iW11 + iK;
                        i4 += W2;
                    }
                    break;
                case 43:
                    iK = y1j.p((List) unsafe.getObject(obj, j));
                    if (iK > 0) {
                        iW10 = o4i.w(i6 << 3);
                        iW11 = o4i.w(iK);
                        W2 = iW10 + iW11 + iK;
                        i4 += W2;
                    }
                    break;
                case 44:
                    iK = y1j.g((List) unsafe.getObject(obj, j));
                    if (iK > 0) {
                        iW10 = o4i.w(i6 << 3);
                        iW11 = o4i.w(iK);
                        W2 = iW10 + iW11 + iK;
                        i4 += W2;
                    }
                    break;
                case 45:
                    iK = y1j.i((List) unsafe.getObject(obj, j));
                    if (iK > 0) {
                        iW10 = o4i.w(i6 << 3);
                        iW11 = o4i.w(iK);
                        W2 = iW10 + iW11 + iK;
                        i4 += W2;
                    }
                    break;
                case 46:
                    iK = y1j.k((List) unsafe.getObject(obj, j));
                    if (iK > 0) {
                        iW10 = o4i.w(i6 << 3);
                        iW11 = o4i.w(iK);
                        W2 = iW10 + iW11 + iK;
                        i4 += W2;
                    }
                    break;
                case 47:
                    iK = y1j.n((List) unsafe.getObject(obj, j));
                    if (iK > 0) {
                        iW10 = o4i.w(i6 << 3);
                        iW11 = o4i.w(iK);
                        W2 = iW10 + iW11 + iK;
                        i4 += W2;
                    }
                    break;
                case 48:
                    iK = y1j.o((List) unsafe.getObject(obj, j));
                    if (iK > 0) {
                        iW10 = o4i.w(i6 << 3);
                        iW11 = o4i.w(iK);
                        W2 = iW10 + iW11 + iK;
                        i4 += W2;
                    }
                    break;
                case 49:
                    ?? r12 = (List) unsafe.getObject(obj, j);
                    u1j u1jVarG3 = G(i3);
                    g3j g3jVar14 = y1j.a;
                    int size6 = r12.size();
                    if (size6 == 0) {
                        r4 = z;
                    } else {
                        boolean z2 = z;
                        r4 = z2;
                        while (r3 < size6) {
                            r3 = z2;
                            int iF = y1j.f(i6, (g0j) r12.get(r3), u1jVarG3);
                            r3++;
                            r4 = (r4 == true ? 1 : 0) + iF;
                        }
                        r3 = z2;
                    }
                    i4 += r4;
                    break;
                case 50:
                    zzhm zzhmVar = (zzhm) unsafe.getObject(obj, j);
                    rzi rziVar = (rzi) I(i3);
                    if (zzhmVar.isEmpty()) {
                        M = z;
                    } else {
                        M = z;
                        for (Map.Entry entry : zzhmVar.entrySet()) {
                            M += rziVar.a(i6, entry.getKey(), entry.getValue());
                        }
                    }
                    i4 += M;
                    break;
                case 51:
                    if (s(obj, i6, i3)) {
                        iW = o4i.w(i6 << 3);
                        F = iW + 8;
                        i4 += F;
                    }
                    break;
                case 52:
                    if (s(obj, i6, i3)) {
                        iW2 = o4i.w(i6 << 3);
                        F = iW2 + 4;
                        i4 += F;
                    }
                    break;
                case 53:
                    if (s(obj, i6, i3)) {
                        long jE = E(obj, j);
                        iW3 = o4i.w(i6 << 3);
                        iX = o4i.x(jE);
                        F = iW3 + iX;
                        i4 += F;
                    }
                    break;
                case 54:
                    if (s(obj, i6, i3)) {
                        long jE2 = E(obj, j);
                        iW3 = o4i.w(i6 << 3);
                        iX = o4i.x(jE2);
                        F = iW3 + iX;
                        i4 += F;
                    }
                    break;
                case 55:
                    if (s(obj, i6, i3)) {
                        long jZ = z(obj, j);
                        iW3 = o4i.w(i6 << 3);
                        iX = o4i.x(jZ);
                        F = iW3 + iX;
                        i4 += F;
                    }
                    break;
                case 56:
                    if (s(obj, i6, i3)) {
                        iW = o4i.w(i6 << 3);
                        F = iW + 8;
                        i4 += F;
                    }
                    break;
                case 57:
                    if (s(obj, i6, i3)) {
                        iW2 = o4i.w(i6 << 3);
                        F = iW2 + 4;
                        i4 += F;
                    }
                    break;
                case 58:
                    if (s(obj, i6, i3)) {
                        iW4 = o4i.w(i6 << 3);
                        F = iW4 + 1;
                        i4 += F;
                    }
                    break;
                case 59:
                    if (s(obj, i6, i3)) {
                        int i16 = i6 << 3;
                        Object object3 = unsafe.getObject(obj, j);
                        if (object3 instanceof zzfp) {
                            iW5 = o4i.w(i16);
                            iB = ((zzfp) object3).zzd();
                            iW6 = o4i.w(iB);
                        } else {
                            iW5 = o4i.w(i16);
                            int i17 = l4j.a;
                            iB = s.b((String) object3);
                            iW6 = o4i.w(iB);
                        }
                        F = iW5 + iW6 + iB;
                        i4 += F;
                    }
                    break;
                case 60:
                    if (s(obj, i6, i3)) {
                        Object object4 = unsafe.getObject(obj, j);
                        u1j u1jVarG4 = G(i3);
                        g3j g3jVar15 = y1j.a;
                        iW5 = o4i.w(i6 << 3);
                        iB = ((plh) object4).c(u1jVarG4);
                        iW6 = o4i.w(iB);
                        F = iW5 + iW6 + iB;
                        i4 += F;
                    }
                    break;
                case 61:
                    if (s(obj, i6, i3)) {
                        zzfp zzfpVar2 = (zzfp) unsafe.getObject(obj, j);
                        iW5 = o4i.w(i6 << 3);
                        iB = zzfpVar2.zzd();
                        iW6 = o4i.w(iB);
                        F = iW5 + iW6 + iB;
                        i4 += F;
                    }
                    break;
                case 62:
                    if (s(obj, i6, i3)) {
                        int iZ = z(obj, j);
                        iW3 = o4i.w(i6 << 3);
                        iX = o4i.w(iZ);
                        F = iW3 + iX;
                        i4 += F;
                    }
                    break;
                case 63:
                    if (s(obj, i6, i3)) {
                        long jZ2 = z(obj, j);
                        iW3 = o4i.w(i6 << 3);
                        iX = o4i.x(jZ2);
                        F = iW3 + iX;
                        i4 += F;
                    }
                    break;
                case 64:
                    if (s(obj, i6, i3)) {
                        iW2 = o4i.w(i6 << 3);
                        F = iW2 + 4;
                        i4 += F;
                    }
                    break;
                case 65:
                    if (s(obj, i6, i3)) {
                        iW = o4i.w(i6 << 3);
                        F = iW + 8;
                        i4 += F;
                    }
                    break;
                case 66:
                    if (s(obj, i6, i3)) {
                        int iZ2 = z(obj, j);
                        iW3 = o4i.w(i6 << 3);
                        iX = o4i.w((iZ2 >> 31) ^ (iZ2 + iZ2));
                        F = iW3 + iX;
                        i4 += F;
                    }
                    break;
                case 67:
                    if (s(obj, i6, i3)) {
                        long jE3 = E(obj, j);
                        iW3 = o4i.w(i6 << 3);
                        iX = o4i.x((jE3 >> 63) ^ (jE3 + jE3));
                        F = iW3 + iX;
                        i4 += F;
                    }
                    break;
                case 68:
                    if (s(obj, i6, i3)) {
                        F = y1j.f(i6, (g0j) unsafe.getObject(obj, j), G(i3));
                        i4 += F;
                    }
                    break;
            }
            i3 += 3;
            i5 = i;
            r2 = r16;
            z = false;
            i2 = 1048575;
        }
    }

    @Override
    public final int zzb(Object obj) {
        int i;
        long jDoubleToLongBits;
        int iFloatToIntBits;
        int i2;
        int iHashCode = 0;
        for (int i3 = 0; i3 < this.a.length; i3 += 3) {
            int iD = D(i3);
            int iC = C(iD);
            if (iC <= 50 || iC >= 69) {
                long j = iD & 1048575;
                int iHashCode2 = 37;
                switch (iC) {
                    case 0:
                        i = iHashCode * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(x3j.a(obj, j));
                        byte[] bArr = lqi.a;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 1:
                        i = iHashCode * 53;
                        iFloatToIntBits = Float.floatToIntBits(x3j.b(obj, j));
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 2:
                        i = iHashCode * 53;
                        jDoubleToLongBits = x3j.d(obj, j);
                        byte[] bArr2 = lqi.a;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 3:
                        i = iHashCode * 53;
                        jDoubleToLongBits = x3j.d(obj, j);
                        byte[] bArr3 = lqi.a;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 4:
                        i = iHashCode * 53;
                        iFloatToIntBits = x3j.c(obj, j);
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 5:
                        i = iHashCode * 53;
                        jDoubleToLongBits = x3j.d(obj, j);
                        byte[] bArr4 = lqi.a;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 6:
                        i = iHashCode * 53;
                        iFloatToIntBits = x3j.c(obj, j);
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 7:
                        i = iHashCode * 53;
                        iFloatToIntBits = lqi.a(x3j.t(obj, j));
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 8:
                        i = iHashCode * 53;
                        iFloatToIntBits = ((String) x3j.f(obj, j)).hashCode();
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 9:
                        i2 = iHashCode * 53;
                        Object objF = x3j.f(obj, j);
                        if (objF != null) {
                            iHashCode2 = objF.hashCode();
                        }
                        iHashCode = i2 + iHashCode2;
                        break;
                    case 10:
                        i = iHashCode * 53;
                        iFloatToIntBits = x3j.f(obj, j).hashCode();
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 11:
                        i = iHashCode * 53;
                        iFloatToIntBits = x3j.c(obj, j);
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 12:
                        i = iHashCode * 53;
                        iFloatToIntBits = x3j.c(obj, j);
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 13:
                        i = iHashCode * 53;
                        iFloatToIntBits = x3j.c(obj, j);
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 14:
                        i = iHashCode * 53;
                        jDoubleToLongBits = x3j.d(obj, j);
                        byte[] bArr5 = lqi.a;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 15:
                        i = iHashCode * 53;
                        iFloatToIntBits = x3j.c(obj, j);
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 16:
                        i = iHashCode * 53;
                        jDoubleToLongBits = x3j.d(obj, j);
                        byte[] bArr6 = lqi.a;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 17:
                        i2 = iHashCode * 53;
                        Object objF2 = x3j.f(obj, j);
                        if (objF2 != null) {
                            iHashCode2 = objF2.hashCode();
                        }
                        iHashCode = i2 + iHashCode2;
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
                    case 29:
                    case 30:
                    case 31:
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
                    case 48:
                    case 49:
                        i = iHashCode * 53;
                        iFloatToIntBits = x3j.f(obj, j).hashCode();
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 50:
                        i = iHashCode * 53;
                        iFloatToIntBits = x3j.f(obj, j).hashCode();
                        iHashCode = i + iFloatToIntBits;
                        break;
                }
            }
        }
        int i4 = this.i;
        while (true) {
            int[] iArr = this.g;
            if (i4 >= iArr.length) {
                int iHashCode3 = (iHashCode * 53) + ((kli) obj).zzc.hashCode();
                if (!this.f) {
                    return iHashCode3;
                }
                ubc.a(obj);
                throw null;
            }
            int i5 = iArr[i4];
            if (!s(obj, 0, i5)) {
                iHashCode = (iHashCode * 53) + x3j.f(obj, D(i5) & 1048575).hashCode();
            }
            i4++;
        }
    }

    @Override
    public final Object zze() {
        return ((kli) this.e).r();
    }
}
