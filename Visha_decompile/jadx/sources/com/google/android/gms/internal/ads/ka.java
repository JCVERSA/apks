package com.google.android.gms.internal.ads;

import defpackage.aui;
import defpackage.bti;
import defpackage.bvi;
import defpackage.cti;
import defpackage.cui;
import defpackage.esi;
import defpackage.eti;
import defpackage.fsi;
import defpackage.mri;
import defpackage.mti;
import defpackage.nri;
import defpackage.osi;
import defpackage.oti;
import defpackage.pui;
import defpackage.qui;
import defpackage.rti;
import defpackage.tti;
import defpackage.ubc;
import defpackage.usi;
import defpackage.vri;
import defpackage.vui;
import defpackage.wri;
import defpackage.xti;
import defpackage.ysi;
import defpackage.zsi;
import defpackage.zti;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

public final class ka implements cui {
    public static final int[] m = new int[0];
    public static final Unsafe n = vui.q();
    public final int[] a;
    public final Object[] b;
    public final int c;
    public final int d;
    public final rti e;
    public final boolean f = false;
    public final boolean g;
    public final int[] h;
    public final int i;
    public final int j;
    public final pui k;
    public final fsi l;

    public ka(int[] iArr, Object[] objArr, int i, int i2, rti rtiVar, boolean z, int[] iArr2, int i3, int i4, tti ttiVar, cti ctiVar, pui puiVar, fsi fsiVar, mti mtiVar) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        this.g = rtiVar instanceof ia;
        this.h = iArr2;
        this.i = i3;
        this.j = i4;
        this.k = puiVar;
        this.l = fsiVar;
        this.e = rtiVar;
    }

    public static final void A(int i, Object obj, bvi bviVar) {
        if (obj instanceof String) {
            bviVar.s(i, (String) obj);
        } else {
            bviVar.v(i, (zzgwn) obj);
        }
    }

    public static qui C(Object obj) {
        ia iaVar = (ia) obj;
        qui quiVar = iaVar.zzt;
        if (quiVar != qui.c()) {
            return quiVar;
        }
        qui quiVarF = qui.f();
        iaVar.zzt = quiVarF;
        return quiVarF;
    }

    /* JADX WARN: Code duplicated, block: B:125:0x0266  */
    /* JADX WARN: Code duplicated, block: B:126:0x0269  */
    /* JADX WARN: Code duplicated, block: B:129:0x0280  */
    /* JADX WARN: Code duplicated, block: B:131:0x0284  */
    /* JADX WARN: Code duplicated, block: B:170:0x0349  */
    /* JADX WARN: Code duplicated, block: B:185:0x0396  */
    /* JADX WARN: Code duplicated, block: B:188:0x039f  */
    public static ka D(Class cls, oti otiVar, tti ttiVar, cti ctiVar, pui puiVar, fsi fsiVar, mti mtiVar) {
        int i;
        int iCharAt;
        int iCharAt2;
        int i2;
        int i3;
        int i4;
        int[] iArr;
        int i5;
        int i6;
        int i7;
        char cCharAt;
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
        char cCharAt8;
        int i15;
        int i16;
        int i17;
        int i18;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i19;
        int i20;
        int i21;
        Field fieldJ;
        int i22;
        char cCharAt9;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        Object obj;
        Field fieldJ2;
        int i28;
        Object obj2;
        Field fieldJ3;
        int i29;
        char cCharAt10;
        int i30;
        char cCharAt11;
        int i31;
        char cCharAt12;
        int i32;
        char cCharAt13;
        if (!(otiVar instanceof zti)) {
            ubc.a(otiVar);
            throw null;
        }
        zti ztiVar = (zti) otiVar;
        String strA = ztiVar.a();
        int length = strA.length();
        char c = 55296;
        if (strA.charAt(0) >= 55296) {
            int i33 = 1;
            while (true) {
                i = i33 + 1;
                if (strA.charAt(i33) < 55296) {
                    break;
                }
                i33 = i;
            }
        } else {
            i = 1;
        }
        int i34 = i + 1;
        int iCharAt3 = strA.charAt(i);
        if (iCharAt3 >= 55296) {
            int i35 = iCharAt3 & 8191;
            int i36 = 13;
            while (true) {
                i32 = i34 + 1;
                cCharAt13 = strA.charAt(i34);
                if (cCharAt13 < 55296) {
                    break;
                }
                i35 |= (cCharAt13 & 8191) << i36;
                i36 += 13;
                i34 = i32;
            }
            iCharAt3 = i35 | (cCharAt13 << i36);
            i34 = i32;
        }
        if (iCharAt3 == 0) {
            i4 = 0;
            iCharAt = 0;
            iCharAt2 = 0;
            i2 = 0;
            i5 = 0;
            i3 = 0;
            iArr = m;
            i6 = 0;
        } else {
            int i37 = i34 + 1;
            int iCharAt4 = strA.charAt(i34);
            if (iCharAt4 >= 55296) {
                int i38 = iCharAt4 & 8191;
                int i39 = 13;
                while (true) {
                    i14 = i37 + 1;
                    cCharAt8 = strA.charAt(i37);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i38 |= (cCharAt8 & 8191) << i39;
                    i39 += 13;
                    i37 = i14;
                }
                iCharAt4 = i38 | (cCharAt8 << i39);
                i37 = i14;
            }
            int i40 = i37 + 1;
            int iCharAt5 = strA.charAt(i37);
            if (iCharAt5 >= 55296) {
                int i41 = iCharAt5 & 8191;
                int i42 = 13;
                while (true) {
                    i13 = i40 + 1;
                    cCharAt7 = strA.charAt(i40);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i41 |= (cCharAt7 & 8191) << i42;
                    i42 += 13;
                    i40 = i13;
                }
                iCharAt5 = i41 | (cCharAt7 << i42);
                i40 = i13;
            }
            int i43 = i40 + 1;
            int iCharAt6 = strA.charAt(i40);
            if (iCharAt6 >= 55296) {
                int i44 = iCharAt6 & 8191;
                int i45 = 13;
                while (true) {
                    i12 = i43 + 1;
                    cCharAt6 = strA.charAt(i43);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt6 & 8191) << i45;
                    i45 += 13;
                    i43 = i12;
                }
                iCharAt6 = i44 | (cCharAt6 << i45);
                i43 = i12;
            }
            int i46 = i43 + 1;
            int iCharAt7 = strA.charAt(i43);
            if (iCharAt7 >= 55296) {
                int i47 = iCharAt7 & 8191;
                int i48 = 13;
                while (true) {
                    i11 = i46 + 1;
                    cCharAt5 = strA.charAt(i46);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt5 & 8191) << i48;
                    i48 += 13;
                    i46 = i11;
                }
                iCharAt7 = i47 | (cCharAt5 << i48);
                i46 = i11;
            }
            int i49 = i46 + 1;
            iCharAt = strA.charAt(i46);
            if (iCharAt >= 55296) {
                int i50 = iCharAt & 8191;
                int i51 = 13;
                while (true) {
                    i10 = i49 + 1;
                    cCharAt4 = strA.charAt(i49);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt4 & 8191) << i51;
                    i51 += 13;
                    i49 = i10;
                }
                iCharAt = i50 | (cCharAt4 << i51);
                i49 = i10;
            }
            int i52 = i49 + 1;
            iCharAt2 = strA.charAt(i49);
            if (iCharAt2 >= 55296) {
                int i53 = iCharAt2 & 8191;
                int i54 = 13;
                while (true) {
                    i9 = i52 + 1;
                    cCharAt3 = strA.charAt(i52);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt3 & 8191) << i54;
                    i54 += 13;
                    i52 = i9;
                }
                iCharAt2 = i53 | (cCharAt3 << i54);
                i52 = i9;
            }
            int i55 = i52 + 1;
            int iCharAt8 = strA.charAt(i52);
            if (iCharAt8 >= 55296) {
                int i56 = iCharAt8 & 8191;
                int i57 = 13;
                while (true) {
                    i8 = i55 + 1;
                    cCharAt2 = strA.charAt(i55);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i56 |= (cCharAt2 & 8191) << i57;
                    i57 += 13;
                    i55 = i8;
                }
                iCharAt8 = i56 | (cCharAt2 << i57);
                i55 = i8;
            }
            int i58 = i55 + 1;
            int iCharAt9 = strA.charAt(i55);
            if (iCharAt9 >= 55296) {
                int i59 = iCharAt9 & 8191;
                int i60 = 13;
                while (true) {
                    i7 = i58 + 1;
                    cCharAt = strA.charAt(i58);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i59 |= (cCharAt & 8191) << i60;
                    i60 += 13;
                    i58 = i7;
                }
                iCharAt9 = i59 | (cCharAt << i60);
                i58 = i7;
            }
            int i61 = iCharAt4 + iCharAt4 + iCharAt5;
            int[] iArr2 = new int[iCharAt9 + iCharAt2 + iCharAt8];
            i2 = iCharAt6;
            i3 = iCharAt9;
            i4 = i61;
            iArr = iArr2;
            i5 = iCharAt7;
            i6 = iCharAt4;
            i34 = i58;
        }
        Unsafe unsafe = n;
        Object[] objArrB = ztiVar.b();
        Class<?> cls2 = ztiVar.zza().getClass();
        int i62 = i3 + iCharAt2;
        int i63 = iCharAt + iCharAt;
        int[] iArr3 = new int[iCharAt * 3];
        Object[] objArr = new Object[i63];
        int i64 = i3;
        int i65 = i62;
        int i66 = 0;
        int i67 = 0;
        while (i34 < length) {
            int i68 = i34 + 1;
            int iCharAt10 = strA.charAt(i34);
            if (iCharAt10 >= c) {
                int i69 = iCharAt10 & 8191;
                int i70 = i68;
                int i71 = 13;
                while (true) {
                    i31 = i70 + 1;
                    cCharAt12 = strA.charAt(i70);
                    if (cCharAt12 < c) {
                        break;
                    }
                    i69 |= (cCharAt12 & 8191) << i71;
                    i71 += 13;
                    i70 = i31;
                }
                iCharAt10 = i69 | (cCharAt12 << i71);
                i15 = i31;
            } else {
                i15 = i68;
            }
            int i72 = i15 + 1;
            int iCharAt11 = strA.charAt(i15);
            if (iCharAt11 >= c) {
                int i73 = iCharAt11 & 8191;
                int i74 = i72;
                int i75 = 13;
                while (true) {
                    i30 = i74 + 1;
                    cCharAt11 = strA.charAt(i74);
                    if (cCharAt11 < c) {
                        break;
                    }
                    i73 |= (cCharAt11 & 8191) << i75;
                    i75 += 13;
                    i74 = i30;
                }
                iCharAt11 = i73 | (cCharAt11 << i75);
                i16 = i30;
            } else {
                i16 = i72;
            }
            if ((iCharAt11 & 1024) != 0) {
                iArr[i66] = i67;
                i66++;
            }
            int i76 = iCharAt11 & 255;
            int i77 = length;
            int i78 = iCharAt11 & 2048;
            int i79 = i5;
            if (i76 >= 51) {
                int i80 = i16 + 1;
                int iCharAt12 = strA.charAt(i16);
                if (iCharAt12 >= 55296) {
                    int i81 = iCharAt12 & 8191;
                    int i82 = i80;
                    int i83 = 13;
                    while (true) {
                        i29 = i82 + 1;
                        cCharAt10 = strA.charAt(i82);
                        i17 = i2;
                        if (cCharAt10 < 55296) {
                            break;
                        }
                        i81 |= (cCharAt10 & 8191) << i83;
                        i83 += 13;
                        i82 = i29;
                        i2 = i17;
                    }
                    iCharAt12 = i81 | (cCharAt10 << i83);
                    i25 = i29;
                } else {
                    i17 = i2;
                    i25 = i80;
                }
                int i84 = i76 - 51;
                int i85 = i25;
                if (i84 == 9 || i84 == 17) {
                    i26 = i4 + 1;
                    int i86 = i67 / 3;
                    objArr[i86 + i86 + 1] = objArrB[i4];
                } else {
                    if (i84 == 12) {
                        if (ztiVar.zzc() == 1 || i78 != 0) {
                            i26 = i4 + 1;
                            int i87 = i67 / 3;
                            objArr[i87 + i87 + 1] = objArrB[i4];
                        } else {
                            i78 = 0;
                        }
                    }
                    i27 = iCharAt12 + iCharAt12;
                    obj = objArrB[i27];
                    if (obj instanceof Field) {
                        fieldJ2 = (Field) obj;
                    } else {
                        fieldJ2 = j(cls2, (String) obj);
                        objArrB[i27] = fieldJ2;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldJ2);
                    i28 = i27 + 1;
                    obj2 = objArrB[i28];
                    int i88 = i78;
                    if (obj2 instanceof Field) {
                        fieldJ3 = (Field) obj2;
                    } else {
                        fieldJ3 = j(cls2, (String) obj2);
                        objArrB[i28] = fieldJ3;
                    }
                    i18 = i4;
                    i19 = i85;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldJ3);
                    i20 = 0;
                    strA = strA;
                    ztiVar = ztiVar;
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i21 = i88;
                }
                i4 = i26;
                i27 = iCharAt12 + iCharAt12;
                obj = objArrB[i27];
                if (obj instanceof Field) {
                    fieldJ2 = (Field) obj;
                } else {
                    fieldJ2 = j(cls2, (String) obj);
                    objArrB[i27] = fieldJ2;
                }
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldJ2);
                i28 = i27 + 1;
                obj2 = objArrB[i28];
                int i89 = i78;
                if (obj2 instanceof Field) {
                    fieldJ3 = (Field) obj2;
                } else {
                    fieldJ3 = j(cls2, (String) obj2);
                    objArrB[i28] = fieldJ3;
                }
                i18 = i4;
                i19 = i85;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldJ3);
                i20 = 0;
                strA = strA;
                ztiVar = ztiVar;
                iObjectFieldOffset = iObjectFieldOffset4;
                i21 = i89;
            } else {
                i17 = i2;
                i18 = i4 + 1;
                Field fieldJ4 = j(cls2, (String) objArrB[i4]);
                if (i76 == 9 || i76 == 17) {
                    int i90 = i67 / 3;
                    objArr[i90 + i90 + 1] = fieldJ4.getType();
                } else {
                    if (i76 != 27) {
                        if (i76 == 49) {
                            i24 = i4 + 2;
                            i23 = 1;
                        } else if (i76 == 12 || i76 == 30 || i76 == 44) {
                            ztiVar = ztiVar;
                            if (ztiVar.zzc() == 1 || i78 != 0) {
                                i24 = i4 + 2;
                                int i91 = i67 / 3;
                                objArr[i91 + i91 + 1] = objArrB[i18];
                                i18 = i24;
                            } else {
                                i78 = 0;
                            }
                        } else if (i76 == 50) {
                            int i92 = i4 + 2;
                            int i93 = i64 + 1;
                            iArr[i64] = i67;
                            int i94 = i67 / 3;
                            int i95 = i94 + i94;
                            objArr[i95] = objArrB[i18];
                            if (i78 != 0) {
                                i18 = i4 + 3;
                                objArr[i95 + 1] = objArrB[i92];
                                i64 = i93;
                                ztiVar = ztiVar;
                            } else {
                                i18 = i92;
                                i64 = i93;
                                i78 = 0;
                            }
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldJ4);
                        iObjectFieldOffset2 = 1048575;
                        if ((iCharAt11 & 4096) != 0 || i76 > 17) {
                            i19 = i16;
                            i20 = 0;
                        } else {
                            int i96 = i16 + 1;
                            int iCharAt13 = strA.charAt(i16);
                            if (iCharAt13 >= 55296) {
                                int i97 = iCharAt13 & 8191;
                                int i98 = 13;
                                while (true) {
                                    i22 = i96 + 1;
                                    cCharAt9 = strA.charAt(i96);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i97 |= (cCharAt9 & 8191) << i98;
                                    i98 += 13;
                                    i96 = i22;
                                }
                                iCharAt13 = i97 | (cCharAt9 << i98);
                                i96 = i22;
                            }
                            int i99 = i6 + i6 + (iCharAt13 / 32);
                            Object obj3 = objArrB[i99];
                            i19 = i96;
                            if (obj3 instanceof Field) {
                                fieldJ = (Field) obj3;
                            } else {
                                fieldJ = j(cls2, (String) obj3);
                                objArrB[i99] = fieldJ;
                            }
                            i20 = iCharAt13 % 32;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldJ);
                        }
                        if (i76 >= 18 && i76 <= 49) {
                            iArr[i65] = iObjectFieldOffset;
                            i65++;
                        }
                        i21 = i78;
                    } else {
                        i23 = 1;
                        i24 = i4 + 2;
                    }
                    int i100 = i67 / 3;
                    objArr[i100 + i100 + i23] = objArrB[i18];
                    i18 = i24;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldJ4);
                    iObjectFieldOffset2 = 1048575;
                    if ((iCharAt11 & 4096) != 0) {
                        i19 = i16;
                        i20 = 0;
                    } else {
                        i19 = i16;
                        i20 = 0;
                    }
                    if (i76 >= 18) {
                        iArr[i65] = iObjectFieldOffset;
                        i65++;
                    }
                    i21 = i78;
                }
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldJ4);
                iObjectFieldOffset2 = 1048575;
                if ((iCharAt11 & 4096) != 0) {
                    i19 = i16;
                    i20 = 0;
                } else {
                    i19 = i16;
                    i20 = 0;
                }
                if (i76 >= 18) {
                    iArr[i65] = iObjectFieldOffset;
                    i65++;
                }
                i21 = i78;
            }
            int i101 = i67 + 1;
            iArr3[i67] = iCharAt10;
            int i102 = i67 + 2;
            Class<?> cls3 = cls2;
            iArr3[i101] = iObjectFieldOffset | (i21 != 0 ? Integer.MIN_VALUE : 0) | ((iCharAt11 & 512) != 0 ? 536870912 : 0) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | (i76 << 20);
            i67 += 3;
            iArr3[i102] = (i20 << 20) | iObjectFieldOffset2;
            strA = strA;
            i4 = i18;
            length = i77;
            i5 = i79;
            cls2 = cls3;
            ztiVar = ztiVar;
            i34 = i19;
            i2 = i17;
            c = 55296;
        }
        return new ka(iArr3, objArr, i2, i5, ztiVar.zza(), false, iArr, i3, i62, ttiVar, ctiVar, puiVar, fsiVar, mtiVar);
    }

    public static double E(Object obj, long j) {
        return ((Double) vui.p(obj, j)).doubleValue();
    }

    public static float F(Object obj, long j) {
        return ((Float) vui.p(obj, j)).floatValue();
    }

    public static int G(Object obj, long j) {
        return ((Integer) vui.p(obj, j)).intValue();
    }

    public static int K(int i) {
        return (i >>> 20) & 255;
    }

    public static long M(Object obj, long j) {
        return ((Long) vui.p(obj, j)).longValue();
    }

    public static Field j(Class cls, String str) {
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

    public static void k(Object obj) {
        if (!x(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    public static boolean t(int i) {
        return (i & 536870912) != 0;
    }

    public static boolean w(Object obj, int i, cui cuiVar) {
        return cuiVar.g(vui.p(obj, i & 1048575));
    }

    public static boolean x(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof ia) {
            return ((ia) obj).V();
        }
        return true;
    }

    public static boolean z(Object obj, long j) {
        return ((Boolean) vui.p(obj, j)).booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:459:0x0c0b A[PHI: r0 r3 r11 r12 r14 r18 r21
      0x0c0b: PHI (r0v97 int) = 
      (r0v68 int)
      (r0v69 int)
      (r0v70 int)
      (r0v71 int)
      (r0v72 int)
      (r0v73 int)
      (r0v74 int)
      (r0v75 int)
      (r0v78 int)
      (r0v83 int)
      (r0v89 int)
      (r0v94 int)
      (r0v98 int)
     binds: [B:457:0x0bf4, B:454:0x0bd1, B:451:0x0bb2, B:448:0x0b93, B:445:0x0b74, B:442:0x0b54, B:435:0x0b2c, B:433:0x0b1d, B:418:0x0ac7, B:414:0x0a87, B:397:0x0a01, B:392:0x09c9, B:387:0x098b] A[DONT_GENERATE, DONT_INLINE]
      0x0c0b: PHI (r3v37 mri) = 
      (r3v20 mri)
      (r3v21 mri)
      (r3v22 mri)
      (r3v23 mri)
      (r3v24 mri)
      (r3v25 mri)
      (r3v26 mri)
      (r3v27 mri)
      (r3v28 mri)
      (r3v31 mri)
      (r3v33 mri)
      (r3v35 mri)
      (r3v38 mri)
     binds: [B:457:0x0bf4, B:454:0x0bd1, B:451:0x0bb2, B:448:0x0b93, B:445:0x0b74, B:442:0x0b54, B:435:0x0b2c, B:433:0x0b1d, B:418:0x0ac7, B:414:0x0a87, B:397:0x0a01, B:392:0x09c9, B:387:0x098b] A[DONT_GENERATE, DONT_INLINE]
      0x0c0b: PHI (r11v76 int) = 
      (r11v50 int)
      (r11v51 int)
      (r11v52 int)
      (r11v53 int)
      (r11v54 int)
      (r11v55 int)
      (r11v56 int)
      (r11v57 int)
      (r11v59 int)
      (r11v62 int)
      (r11v67 int)
      (r11v71 int)
      (r11v77 int)
     binds: [B:457:0x0bf4, B:454:0x0bd1, B:451:0x0bb2, B:448:0x0b93, B:445:0x0b74, B:442:0x0b54, B:435:0x0b2c, B:433:0x0b1d, B:418:0x0ac7, B:414:0x0a87, B:397:0x0a01, B:392:0x09c9, B:387:0x098b] A[DONT_GENERATE, DONT_INLINE]
      0x0c0b: PHI (r12v56 sun.misc.Unsafe) = 
      (r12v36 sun.misc.Unsafe)
      (r12v37 sun.misc.Unsafe)
      (r12v38 sun.misc.Unsafe)
      (r12v39 sun.misc.Unsafe)
      (r12v40 sun.misc.Unsafe)
      (r12v41 sun.misc.Unsafe)
      (r12v42 sun.misc.Unsafe)
      (r12v43 sun.misc.Unsafe)
      (r12v44 sun.misc.Unsafe)
      (r12v45 sun.misc.Unsafe)
      (r12v49 sun.misc.Unsafe)
      (r12v52 sun.misc.Unsafe)
      (r12v57 sun.misc.Unsafe)
     binds: [B:457:0x0bf4, B:454:0x0bd1, B:451:0x0bb2, B:448:0x0b93, B:445:0x0b74, B:442:0x0b54, B:435:0x0b2c, B:433:0x0b1d, B:418:0x0ac7, B:414:0x0a87, B:397:0x0a01, B:392:0x09c9, B:387:0x098b] A[DONT_GENERATE, DONT_INLINE]
      0x0c0b: PHI (r14v56 int) = 
      (r14v34 int)
      (r14v35 int)
      (r14v36 int)
      (r14v37 int)
      (r14v38 int)
      (r14v39 int)
      (r14v40 int)
      (r14v41 int)
      (r14v42 int)
      (r14v43 int)
      (r14v47 int)
      (r14v51 int)
      (r14v57 int)
     binds: [B:457:0x0bf4, B:454:0x0bd1, B:451:0x0bb2, B:448:0x0b93, B:445:0x0b74, B:442:0x0b54, B:435:0x0b2c, B:433:0x0b1d, B:418:0x0ac7, B:414:0x0a87, B:397:0x0a01, B:392:0x09c9, B:387:0x098b] A[DONT_GENERATE, DONT_INLINE]
      0x0c0b: PHI (r18v66 int) = 
      (r18v43 int)
      (r18v44 int)
      (r18v45 int)
      (r18v46 int)
      (r18v47 int)
      (r18v48 int)
      (r18v49 int)
      (r18v50 int)
      (r18v54 int)
      (r18v56 int)
      (r18v59 int)
      (r18v62 int)
      (r18v67 int)
     binds: [B:457:0x0bf4, B:454:0x0bd1, B:451:0x0bb2, B:448:0x0b93, B:445:0x0b74, B:442:0x0b54, B:435:0x0b2c, B:433:0x0b1d, B:418:0x0ac7, B:414:0x0a87, B:397:0x0a01, B:392:0x09c9, B:387:0x098b] A[DONT_GENERATE, DONT_INLINE]
      0x0c0b: PHI (r21v27 int) = 
      (r21v11 int)
      (r21v12 int)
      (r21v13 int)
      (r21v14 int)
      (r21v15 int)
      (r21v16 int)
      (r21v17 int)
      (r21v18 int)
      (r21v19 int)
      (r21v21 int)
      (r21v23 int)
      (r21v25 int)
      (r21v28 int)
     binds: [B:457:0x0bf4, B:454:0x0bd1, B:451:0x0bb2, B:448:0x0b93, B:445:0x0b74, B:442:0x0b54, B:435:0x0b2c, B:433:0x0b1d, B:418:0x0ac7, B:414:0x0a87, B:397:0x0a01, B:392:0x09c9, B:387:0x098b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:461:0x0c0e  */
    /* JADX WARN: Code duplicated, block: B:463:0x0c22  */
    /* JADX WARN: Code duplicated, block: B:473:0x0c5a  */
    /* JADX WARN: Code duplicated, block: B:537:0x08f9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:578:0x090f A[SYNTHETIC] */
    public final int B(Object obj, byte[] bArr, int i, int i2, int i3, mri mriVar) {
        Unsafe unsafe;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        mri mriVar2;
        int i11;
        int i12;
        int iG;
        int i13;
        mri mriVar3;
        int i14;
        int i15;
        boolean z;
        int iH;
        int i16;
        boolean z2;
        int i17;
        int iH2;
        Unsafe unsafe2;
        boolean z3;
        boolean z4;
        mri mriVar4;
        Unsafe unsafe3;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        mri mriVar5;
        int i24;
        int iA;
        int i25;
        boolean z5;
        int i26;
        int i27;
        int iK;
        int i28;
        int i29;
        Unsafe unsafe4;
        int i30;
        int i31;
        int iF;
        int iH3;
        int iH4;
        Object obj2;
        Unsafe unsafe5;
        int i32;
        int iJ;
        ka kaVar = this;
        Object obj3 = obj;
        byte[] bArr2 = bArr;
        i2 = i2;
        i3 = i3;
        mri mriVar6 = mriVar;
        int i33 = 3;
        k(obj);
        Unsafe unsafe6 = n;
        int i34 = -1;
        int iL = i;
        int i35 = -1;
        int iJ2 = 0;
        int i36 = 0;
        int i37 = 0;
        int i38 = 1048575;
        while (true) {
            if (iL < i2) {
                int i39 = iL + 1;
                int i40 = bArr2[iL];
                if (i40 < 0) {
                    i39 = nri.i(i40, bArr2, i39, mriVar6);
                    i40 = mriVar6.a;
                }
                int i41 = i40 >>> 3;
                iJ2 = i41 > i35 ? (i41 < kaVar.c || i41 > kaVar.d) ? i34 : kaVar.J(i41, iJ2 / i33) : kaVar.H(i41);
                if (iJ2 == i34) {
                    i6 = i33;
                    i3 = i3;
                    i7 = i40;
                    i8 = i38;
                    i9 = i41;
                    i10 = i34;
                    unsafe = unsafe6;
                    iJ2 = 0;
                    int i42 = i39;
                    mriVar2 = mriVar6;
                    i11 = i42;
                } else {
                    int i43 = i40 & 7;
                    int[] iArr = kaVar.a;
                    int i44 = iArr[iJ2 + 1];
                    int iK2 = K(i44);
                    long j = i44 & 1048575;
                    int i45 = i40;
                    if (iK2 <= 17) {
                        int i46 = iArr[iJ2 + 2];
                        int i47 = 1 << (i46 >>> 20);
                        int i48 = 1048575;
                        int i49 = i46 & 1048575;
                        if (i49 != i38) {
                            if (i38 != 1048575) {
                                unsafe6.putInt(obj3, i38, i36);
                                i48 = 1048575;
                            }
                            i13 = i49 == i48 ? 0 : unsafe6.getInt(obj3, i49);
                            i38 = i49;
                        } else {
                            i13 = i36;
                            i38 = i38;
                        }
                        switch (iK2) {
                            case 0:
                                mriVar3 = mriVar;
                                i14 = i41;
                                z = true;
                                i10 = -1;
                                i15 = i45 == true ? 1 : 0;
                                if (i43 == 1) {
                                    iH = i39 + 8;
                                    i13 |= i47;
                                    vui.z(obj3, j, Double.longBitsToDouble(nri.n(bArr2, i39)));
                                    z3 = z;
                                    mriVar6 = mriVar3;
                                    i35 = i14;
                                    i34 = i10;
                                    iL = iH;
                                    i37 = i15;
                                    i38 = i38;
                                    i36 = i13;
                                    i33 = 3;
                                } else {
                                    i3 = i3;
                                    i11 = i39;
                                    mriVar2 = mriVar3;
                                    i7 = i15;
                                    unsafe = unsafe6;
                                    i8 = i38;
                                    i9 = i14;
                                    i6 = 3;
                                    i36 = i13;
                                }
                                break;
                            case 1:
                                mriVar3 = mriVar;
                                i14 = i41;
                                z = true;
                                i10 = -1;
                                i15 = i45 == true ? 1 : 0;
                                if (i43 == 5) {
                                    iH = i39 + 4;
                                    i13 |= i47;
                                    vui.A(obj3, j, Float.intBitsToFloat(nri.b(bArr2, i39)));
                                    z3 = z;
                                    mriVar6 = mriVar3;
                                    i35 = i14;
                                    i34 = i10;
                                    iL = iH;
                                    i37 = i15;
                                    i38 = i38;
                                    i36 = i13;
                                    i33 = 3;
                                } else {
                                    i3 = i3;
                                    i11 = i39;
                                    mriVar2 = mriVar3;
                                    i7 = i15;
                                    unsafe = unsafe6;
                                    i8 = i38;
                                    i9 = i14;
                                    i6 = 3;
                                    i36 = i13;
                                }
                                break;
                            case 2:
                            case 3:
                                mriVar3 = mriVar;
                                i14 = i41;
                                i10 = -1;
                                i15 = i45 == true ? 1 : 0;
                                if (i43 == 0) {
                                    i16 = i13 | i47;
                                    int iK3 = nri.k(bArr2, i39, mriVar3);
                                    unsafe6.putLong(obj, j, mriVar3.b);
                                    i2 = i2;
                                    mriVar6 = mriVar3;
                                    iL = iK3;
                                    i34 = -1;
                                    i33 = 3;
                                    i36 = i16;
                                    i35 = i14;
                                    i37 = i15;
                                } else {
                                    i3 = i3;
                                    i11 = i39;
                                    mriVar2 = mriVar3;
                                    i7 = i15;
                                    unsafe = unsafe6;
                                    i8 = i38;
                                    i9 = i14;
                                    i6 = 3;
                                    i36 = i13;
                                }
                                break;
                            case 4:
                            case 11:
                                mriVar3 = mriVar;
                                i14 = i41;
                                z2 = true;
                                i10 = -1;
                                i15 = i45 == true ? 1 : 0;
                                if (i43 == 0) {
                                    i17 = i13 | i47;
                                    iH2 = nri.h(bArr2, i39, mriVar3);
                                    unsafe6.putInt(obj3, j, mriVar3.a);
                                    mriVar6 = mriVar3;
                                    z4 = z2;
                                    i35 = i14;
                                    i34 = i10;
                                    iL = iH2;
                                    i37 = i15;
                                    i33 = 3;
                                    i36 = i17;
                                    i38 = i38;
                                } else {
                                    i3 = i3;
                                    i11 = i39;
                                    mriVar2 = mriVar3;
                                    i7 = i15;
                                    unsafe = unsafe6;
                                    i8 = i38;
                                    i9 = i14;
                                    i6 = 3;
                                    i36 = i13;
                                }
                                break;
                            case 5:
                            case 14:
                                mriVar3 = mriVar;
                                i14 = i41;
                                i10 = -1;
                                i15 = i45 == true ? 1 : 0;
                                if (i43 == 1) {
                                    int i50 = i47 | i13;
                                    unsafe6.putLong(obj, j, nri.n(bArr2, i39));
                                    i2 = i2;
                                    i3 = i3;
                                    mriVar6 = mriVar3;
                                    iL = i39 + 8;
                                    i38 = i38;
                                    i35 = i14;
                                    i33 = 3;
                                    i37 = i15 == true ? 1 : 0;
                                    i36 = i50;
                                    i34 = -1;
                                } else {
                                    i3 = i3;
                                    i11 = i39;
                                    mriVar2 = mriVar3;
                                    i7 = i15;
                                    unsafe = unsafe6;
                                    i8 = i38;
                                    i9 = i14;
                                    i6 = 3;
                                    i36 = i13;
                                }
                                break;
                            case 6:
                            case 13:
                                mriVar3 = mriVar;
                                i14 = i41;
                                z = true;
                                i10 = -1;
                                i15 = i45 == true ? 1 : 0;
                                if (i43 == 5) {
                                    iH = i39 + 4;
                                    i13 |= i47;
                                    unsafe6.putInt(obj3, j, nri.b(bArr2, i39));
                                    z3 = z;
                                    mriVar6 = mriVar3;
                                    i35 = i14;
                                    i34 = i10;
                                    iL = iH;
                                    i37 = i15;
                                    i38 = i38;
                                    i36 = i13;
                                    i33 = 3;
                                } else {
                                    i3 = i3;
                                    i11 = i39;
                                    mriVar2 = mriVar3;
                                    i7 = i15;
                                    unsafe = unsafe6;
                                    i8 = i38;
                                    i9 = i14;
                                    i6 = 3;
                                    i36 = i13;
                                }
                                break;
                            case 7:
                                mriVar3 = mriVar;
                                i14 = i41;
                                z2 = true;
                                i10 = -1;
                                i15 = i45 == true ? 1 : 0;
                                if (i43 == 0) {
                                    i17 = i13 | i47;
                                    iH2 = nri.k(bArr2, i39, mriVar3);
                                    vui.x(obj3, j, mriVar3.b != 0);
                                    mriVar6 = mriVar3;
                                    z4 = z2;
                                    i35 = i14;
                                    i34 = i10;
                                    iL = iH2;
                                    i37 = i15;
                                    i33 = 3;
                                    i36 = i17;
                                    i38 = i38;
                                } else {
                                    i3 = i3;
                                    i11 = i39;
                                    mriVar2 = mriVar3;
                                    i7 = i15;
                                    unsafe = unsafe6;
                                    i8 = i38;
                                    i9 = i14;
                                    i6 = 3;
                                    i36 = i13;
                                }
                                break;
                            case 8:
                                mriVar3 = mriVar;
                                z = true;
                                i10 = -1;
                                i14 = i41;
                                i15 = i45 == true ? 1 : 0;
                                if (i43 == 2) {
                                    if (t(i44)) {
                                        iH = nri.h(bArr2, i39, mriVar3);
                                        int i51 = mriVar3.a;
                                        if (i51 < 0) {
                                            throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                        }
                                        i13 |= i47;
                                        if (i51 == 0) {
                                            mriVar3.c = "";
                                        } else {
                                            mriVar3.c = ra.h(bArr2, iH, i51);
                                            iH += i51;
                                        }
                                    } else {
                                        int i52 = i13 | i47;
                                        int iH5 = nri.h(bArr2, i39, mriVar3);
                                        int i53 = mriVar3.a;
                                        if (i53 < 0) {
                                            throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                        }
                                        if (i53 == 0) {
                                            mriVar3.c = "";
                                        } else {
                                            mriVar3.c = new String(bArr2, iH5, i53, zsi.a);
                                            iH5 += i53;
                                        }
                                        int i54 = iH5;
                                        i13 = i52;
                                        iH = i54;
                                    }
                                    unsafe6.putObject(obj3, j, mriVar3.c);
                                    z3 = z;
                                    mriVar6 = mriVar3;
                                    i35 = i14;
                                    i34 = i10;
                                    iL = iH;
                                    i37 = i15;
                                    i38 = i38;
                                    i36 = i13;
                                    i33 = 3;
                                } else {
                                    i3 = i3;
                                    i11 = i39;
                                    mriVar2 = mriVar3;
                                    i7 = i15;
                                    unsafe = unsafe6;
                                    i8 = i38;
                                    i9 = i14;
                                    i6 = 3;
                                    i36 = i13;
                                }
                                break;
                            case 9:
                                mriVar3 = mriVar;
                                unsafe2 = unsafe6;
                                i10 = -1;
                                i14 = i41;
                                i15 = i45 == true ? 1 : 0;
                                if (i43 == 2) {
                                    i16 = i13 | i47;
                                    Object objH = kaVar.h(obj3, iJ2);
                                    unsafe6 = unsafe2;
                                    i2 = i2;
                                    int iM = nri.m(objH, kaVar.O(iJ2), bArr, i39, i2, mriVar);
                                    kaVar.q(obj3, iJ2, objH);
                                    mriVar6 = mriVar3;
                                    i34 = -1;
                                    i33 = 3;
                                    iL = iM;
                                    i36 = i16;
                                    i35 = i14;
                                    i37 = i15;
                                } else {
                                    unsafe6 = unsafe2;
                                    i3 = i3;
                                    i11 = i39;
                                    mriVar2 = mriVar3;
                                    i7 = i15;
                                    unsafe = unsafe6;
                                    i8 = i38;
                                    i9 = i14;
                                    i6 = 3;
                                    i36 = i13;
                                }
                                break;
                            case 10:
                                mriVar3 = mriVar;
                                unsafe2 = unsafe6;
                                i10 = -1;
                                i14 = i41;
                                i15 = i45 == true ? 1 : 0;
                                if (i43 == 2) {
                                    int i55 = i13 | i47;
                                    bArr2 = bArr;
                                    int iA2 = nri.a(bArr2, i39, mriVar3);
                                    unsafe2.putObject(obj3, j, mriVar3.c);
                                    i2 = i2;
                                    i3 = i3;
                                    unsafe6 = unsafe2;
                                    mriVar6 = mriVar3;
                                    i38 = i38;
                                    i35 = i14;
                                    i34 = -1;
                                    i36 = i55;
                                    iL = iA2;
                                    i37 = i15 == true ? 1 : 0;
                                    i33 = 3;
                                } else {
                                    bArr2 = bArr;
                                    unsafe6 = unsafe2;
                                    i3 = i3;
                                    i11 = i39;
                                    mriVar2 = mriVar3;
                                    i7 = i15;
                                    unsafe = unsafe6;
                                    i8 = i38;
                                    i9 = i14;
                                    i6 = 3;
                                    i36 = i13;
                                }
                                break;
                            case 12:
                                mriVar3 = mriVar;
                                unsafe2 = unsafe6;
                                z3 = true;
                                i10 = -1;
                                i14 = i41;
                                i15 = i45 == true ? 1 : 0;
                                if (i43 == 0) {
                                    iH = nri.h(bArr2, i39, mriVar3);
                                    int i56 = mriVar3.a;
                                    usi usiVarN = kaVar.N(iJ2);
                                    if ((i44 & Integer.MIN_VALUE) == 0 || usiVarN == null || usiVarN.zza(i56)) {
                                        i13 |= i47;
                                        unsafe2.putInt(obj3, j, i56);
                                    } else {
                                        C(obj).j(i15 == true ? 1 : 0, Long.valueOf(i56));
                                    }
                                    bArr2 = bArr;
                                    unsafe6 = unsafe2;
                                    mriVar6 = mriVar3;
                                    i35 = i14;
                                    i34 = i10;
                                    iL = iH;
                                    i37 = i15;
                                    i38 = i38;
                                    i36 = i13;
                                    i33 = 3;
                                } else {
                                    bArr2 = bArr;
                                    unsafe6 = unsafe2;
                                    i3 = i3;
                                    i11 = i39;
                                    mriVar2 = mriVar3;
                                    i7 = i15;
                                    unsafe = unsafe6;
                                    i8 = i38;
                                    i9 = i14;
                                    i6 = 3;
                                    i36 = i13;
                                }
                                break;
                            case 15:
                                mriVar3 = mriVar;
                                z4 = true;
                                i10 = -1;
                                i15 = i45 == true ? 1 : 0;
                                Unsafe unsafe7 = unsafe6;
                                i14 = i41;
                                if (i43 == 0) {
                                    i17 = i13 | i47;
                                    iH2 = nri.h(bArr2, i39, mriVar3);
                                    unsafe7.putInt(obj3, j, vri.c(mriVar3.a));
                                    mriVar6 = mriVar3;
                                    unsafe6 = unsafe7;
                                    i35 = i14;
                                    i34 = i10;
                                    iL = iH2;
                                    i37 = i15;
                                    i33 = 3;
                                    i36 = i17;
                                    i38 = i38;
                                } else {
                                    unsafe6 = unsafe7;
                                    i3 = i3;
                                    i11 = i39;
                                    mriVar2 = mriVar3;
                                    i7 = i15;
                                    unsafe = unsafe6;
                                    i8 = i38;
                                    i9 = i14;
                                    i6 = 3;
                                    i36 = i13;
                                }
                                break;
                            case 16:
                                i10 = -1;
                                i15 = i45 == true ? 1 : 0;
                                Unsafe unsafe8 = unsafe6;
                                if (i43 == 0) {
                                    int i57 = i13 | i47;
                                    int iK4 = nri.k(bArr2, i39, mriVar);
                                    unsafe8.putLong(obj, j, vri.d(mriVar.b));
                                    unsafe6 = unsafe8;
                                    i2 = i2;
                                    i3 = i3;
                                    mriVar6 = mriVar;
                                    i35 = i41;
                                    i34 = -1;
                                    i33 = 3;
                                    i37 = i15 == true ? 1 : 0;
                                    i36 = i57;
                                    iL = iK4;
                                    i38 = i38;
                                } else {
                                    i14 = i41;
                                    unsafe6 = unsafe8;
                                    mriVar3 = mriVar;
                                    i3 = i3;
                                    i11 = i39;
                                    mriVar2 = mriVar3;
                                    i7 = i15;
                                    unsafe = unsafe6;
                                    i8 = i38;
                                    i9 = i14;
                                    i6 = 3;
                                    i36 = i13;
                                }
                                break;
                            default:
                                if (i43 == 3) {
                                    int i58 = i13 | i47;
                                    Object objH2 = kaVar.h(obj3, iJ2);
                                    iL = nri.l(objH2, kaVar.O(iJ2), bArr, i39, i2, (i41 << 3) | 4, mriVar);
                                    kaVar.q(obj3, iJ2, objH2);
                                    unsafe6 = unsafe6;
                                    i33 = 3;
                                    i35 = i41;
                                    i37 = i45 == true ? 1 : 0;
                                    iJ2 = iJ2;
                                    i38 = i38;
                                    i34 = -1;
                                    i2 = i2;
                                    i3 = i3;
                                    mriVar6 = mriVar;
                                    i36 = i58;
                                } else {
                                    i10 = -1;
                                    mriVar3 = mriVar;
                                    i14 = i41;
                                    i15 = i45 == true ? 1 : 0;
                                    i3 = i3;
                                    i11 = i39;
                                    mriVar2 = mriVar3;
                                    i7 = i15;
                                    unsafe = unsafe6;
                                    i8 = i38;
                                    i9 = i14;
                                    i6 = 3;
                                    i36 = i13;
                                }
                                break;
                        }
                    } else {
                        i10 = -1;
                        if (iK2 != 27) {
                            i8 = i38;
                            unsafe3 = unsafe6;
                            i9 = i41;
                            int i59 = i45 == true ? 1 : 0;
                            if (iK2 <= 49) {
                                long j2 = i44;
                                ysi ysiVar = (ysi) unsafe3.getObject(obj3, j);
                                if (!ysiVar.zzc()) {
                                    int size = ysiVar.size();
                                    ysi ysiVarE = ysiVar.e(size + size);
                                    unsafe3.putObject(obj3, j, ysiVarE);
                                    ysiVar = ysiVarE;
                                }
                                switch (iK2) {
                                    case 18:
                                    case 35:
                                        i25 = i39;
                                        i9 = i9;
                                        z5 = true;
                                        i26 = i2;
                                        mriVar4 = mriVar;
                                        i27 = iJ2;
                                        if (i43 == 2) {
                                            int i60 = nri.a;
                                            ubc.a(ysiVar);
                                            if (nri.h(bArr2, i25, mriVar4) + mriVar4.a > bArr2.length) {
                                                throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            throw null;
                                        }
                                        if (i43 == 1) {
                                            int i61 = nri.a;
                                            ubc.a(ysiVar);
                                            Double.longBitsToDouble(nri.n(bArr2, i25));
                                            throw null;
                                        }
                                        iK = i25;
                                        if (iK != i25) {
                                            obj3 = obj;
                                            i3 = i3;
                                            i35 = i9;
                                            i2 = i26;
                                            i37 = i59;
                                            iJ2 = i27;
                                            mriVar6 = mriVar4;
                                            i34 = -1;
                                            i33 = 3;
                                            iL = iK;
                                            unsafe6 = unsafe3;
                                            i38 = i8;
                                            kaVar = this;
                                        } else {
                                            kaVar = this;
                                            obj3 = obj;
                                            i11 = iK;
                                            i7 = i59;
                                            iJ2 = i27;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                        }
                                        break;
                                        break;
                                    case 19:
                                    case 36:
                                        i25 = i39;
                                        i9 = i9;
                                        z5 = true;
                                        i26 = i2;
                                        mriVar4 = mriVar;
                                        i27 = iJ2;
                                        if (i43 == 2) {
                                            int i62 = nri.a;
                                            ubc.a(ysiVar);
                                            if (nri.h(bArr2, i25, mriVar4) + mriVar4.a > bArr2.length) {
                                                throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            throw null;
                                        }
                                        if (i43 == 5) {
                                            int i63 = nri.a;
                                            ubc.a(ysiVar);
                                            Float.intBitsToFloat(nri.b(bArr2, i25));
                                            throw null;
                                        }
                                        iK = i25;
                                        if (iK != i25) {
                                            obj3 = obj;
                                            i3 = i3;
                                            i35 = i9;
                                            i2 = i26;
                                            i37 = i59;
                                            iJ2 = i27;
                                            mriVar6 = mriVar4;
                                            i34 = -1;
                                            i33 = 3;
                                            iL = iK;
                                            unsafe6 = unsafe3;
                                            i38 = i8;
                                            kaVar = this;
                                        } else {
                                            kaVar = this;
                                            obj3 = obj;
                                            i11 = iK;
                                            i7 = i59;
                                            iJ2 = i27;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                        }
                                        break;
                                        break;
                                    case 20:
                                    case 21:
                                    case 37:
                                    case 38:
                                        i25 = i39;
                                        i9 = i9;
                                        z5 = true;
                                        i26 = i2;
                                        mriVar4 = mriVar;
                                        i27 = iJ2;
                                        if (i43 == 2) {
                                            int i64 = nri.a;
                                            eti etiVar = (eti) ysiVar;
                                            iK = nri.h(bArr2, i25, mriVar4);
                                            int i65 = mriVar4.a + iK;
                                            while (iK < i65) {
                                                iK = nri.k(bArr2, iK, mriVar4);
                                                etiVar.i(mriVar4.b);
                                            }
                                            if (iK != i65) {
                                                throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        } else if (i43 == 0) {
                                            int i66 = nri.a;
                                            eti etiVar2 = (eti) ysiVar;
                                            iK = nri.k(bArr2, i25, mriVar4);
                                            etiVar2.i(mriVar4.b);
                                            while (iK < i26) {
                                                int iH6 = nri.h(bArr2, iK, mriVar4);
                                                if (i59 == mriVar4.a) {
                                                    iK = nri.k(bArr2, iH6, mriVar4);
                                                    etiVar2.i(mriVar4.b);
                                                }
                                            }
                                        } else {
                                            iK = i25;
                                        }
                                        if (iK != i25) {
                                            obj3 = obj;
                                            i3 = i3;
                                            i35 = i9;
                                            i2 = i26;
                                            i37 = i59;
                                            iJ2 = i27;
                                            mriVar6 = mriVar4;
                                            i34 = -1;
                                            i33 = 3;
                                            iL = iK;
                                            unsafe6 = unsafe3;
                                            i38 = i8;
                                            kaVar = this;
                                        } else {
                                            kaVar = this;
                                            obj3 = obj;
                                            i11 = iK;
                                            i7 = i59;
                                            iJ2 = i27;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                        }
                                        break;
                                    case 22:
                                    case 29:
                                    case 39:
                                    case 43:
                                        i25 = i39;
                                        i28 = i9;
                                        i29 = i59 == true ? 1 : 0;
                                        unsafe4 = unsafe3;
                                        i30 = iJ2;
                                        z5 = true;
                                        i31 = i2;
                                        mriVar4 = mriVar;
                                        if (i43 == 2) {
                                            iF = nri.f(bArr2, i25, ysiVar, mriVar4);
                                            i27 = i30;
                                            iK = iF;
                                            unsafe3 = unsafe4;
                                            i26 = i31;
                                            i59 = i29;
                                            i9 = i28;
                                        } else if (i43 == 0) {
                                            i27 = i30;
                                            unsafe3 = unsafe4;
                                            i26 = i31;
                                            i59 = i29 == true ? 1 : 0;
                                            iK = nri.j(i29 == true ? 1 : 0, bArr, i25, i2, ysiVar, mriVar);
                                            i9 = i28;
                                        } else {
                                            i27 = i30;
                                            unsafe3 = unsafe4;
                                            i26 = i31;
                                            i59 = i29;
                                            i9 = i28;
                                            iK = i25;
                                        }
                                        if (iK != i25) {
                                            obj3 = obj;
                                            i3 = i3;
                                            i35 = i9;
                                            i2 = i26;
                                            i37 = i59;
                                            iJ2 = i27;
                                            mriVar6 = mriVar4;
                                            i34 = -1;
                                            i33 = 3;
                                            iL = iK;
                                            unsafe6 = unsafe3;
                                            i38 = i8;
                                            kaVar = this;
                                        } else {
                                            kaVar = this;
                                            obj3 = obj;
                                            i11 = iK;
                                            i7 = i59;
                                            iJ2 = i27;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                        }
                                        break;
                                    case 23:
                                    case 32:
                                    case 40:
                                    case 46:
                                        i25 = i39;
                                        i28 = i9;
                                        i29 = i59 == true ? 1 : 0;
                                        unsafe4 = unsafe3;
                                        i30 = iJ2;
                                        i31 = i2;
                                        mriVar4 = mriVar;
                                        if (i43 != 2) {
                                            z5 = true;
                                            if (i43 == 1) {
                                                iF = i25 + 8;
                                                int i67 = nri.a;
                                                eti etiVar3 = (eti) ysiVar;
                                                etiVar3.i(nri.n(bArr2, i25));
                                                while (iF < i31) {
                                                    int iH7 = nri.h(bArr2, iF, mriVar4);
                                                    if (i29 != mriVar4.a) {
                                                        i27 = i30;
                                                        iK = iF;
                                                        unsafe3 = unsafe4;
                                                        i26 = i31;
                                                        i59 = i29;
                                                        i9 = i28;
                                                        if (iK != i25) {
                                                            obj3 = obj;
                                                            i3 = i3;
                                                            i35 = i9;
                                                            i2 = i26;
                                                            i37 = i59;
                                                            iJ2 = i27;
                                                            mriVar6 = mriVar4;
                                                            i34 = -1;
                                                            i33 = 3;
                                                            iL = iK;
                                                            unsafe6 = unsafe3;
                                                            i38 = i8;
                                                            kaVar = this;
                                                        } else {
                                                            kaVar = this;
                                                            obj3 = obj;
                                                            i11 = iK;
                                                            i7 = i59;
                                                            iJ2 = i27;
                                                            i6 = 3;
                                                            unsafe = unsafe3;
                                                            i9 = i9;
                                                            mriVar2 = mriVar4;
                                                        }
                                                    } else {
                                                        etiVar3.i(nri.n(bArr2, iH7));
                                                        iF = iH7 + 8;
                                                    }
                                                    break;
                                                }
                                                i27 = i30;
                                                iK = iF;
                                                unsafe3 = unsafe4;
                                                i26 = i31;
                                                i59 = i29;
                                                i9 = i28;
                                                if (iK != i25) {
                                                    obj3 = obj;
                                                    i3 = i3;
                                                    i35 = i9;
                                                    i2 = i26;
                                                    i37 = i59;
                                                    iJ2 = i27;
                                                    mriVar6 = mriVar4;
                                                    i34 = -1;
                                                    i33 = 3;
                                                    iL = iK;
                                                    unsafe6 = unsafe3;
                                                    i38 = i8;
                                                    kaVar = this;
                                                } else {
                                                    kaVar = this;
                                                    obj3 = obj;
                                                    i11 = iK;
                                                    i7 = i59;
                                                    iJ2 = i27;
                                                    i6 = 3;
                                                    unsafe = unsafe3;
                                                    i9 = i9;
                                                    mriVar2 = mriVar4;
                                                }
                                            }
                                            i27 = i30;
                                            unsafe3 = unsafe4;
                                            i26 = i31;
                                            i59 = i29;
                                            i9 = i28;
                                            iK = i25;
                                            if (iK != i25) {
                                                obj3 = obj;
                                                i3 = i3;
                                                i35 = i9;
                                                i2 = i26;
                                                i37 = i59;
                                                iJ2 = i27;
                                                mriVar6 = mriVar4;
                                                i34 = -1;
                                                i33 = 3;
                                                iL = iK;
                                                unsafe6 = unsafe3;
                                                i38 = i8;
                                                kaVar = this;
                                            } else {
                                                kaVar = this;
                                                obj3 = obj;
                                                i11 = iK;
                                                i7 = i59;
                                                iJ2 = i27;
                                                i6 = 3;
                                                unsafe = unsafe3;
                                                i9 = i9;
                                                mriVar2 = mriVar4;
                                            }
                                            break;
                                        } else {
                                            int i68 = nri.a;
                                            eti etiVar4 = (eti) ysiVar;
                                            iH3 = nri.h(bArr2, i25, mriVar4);
                                            int i69 = mriVar4.a;
                                            int i70 = iH3 + i69;
                                            if (i70 > bArr2.length) {
                                                throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            etiVar4.zzi(etiVar4.size() + (i69 / 8));
                                            while (iH3 < i70) {
                                                etiVar4.i(nri.n(bArr2, iH3));
                                                iH3 += 8;
                                            }
                                            if (iH3 != i70) {
                                                throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            i27 = i30;
                                            unsafe3 = unsafe4;
                                            i26 = i31;
                                            i59 = i29;
                                            i9 = i28;
                                            iK = iH3;
                                            z5 = true;
                                            if (iK != i25) {
                                                obj3 = obj;
                                                i3 = i3;
                                                i35 = i9;
                                                i2 = i26;
                                                i37 = i59;
                                                iJ2 = i27;
                                                mriVar6 = mriVar4;
                                                i34 = -1;
                                                i33 = 3;
                                                iL = iK;
                                                unsafe6 = unsafe3;
                                                i38 = i8;
                                                kaVar = this;
                                            } else {
                                                kaVar = this;
                                                obj3 = obj;
                                                i11 = iK;
                                                i7 = i59;
                                                iJ2 = i27;
                                                i6 = 3;
                                                unsafe = unsafe3;
                                                i9 = i9;
                                                mriVar2 = mriVar4;
                                            }
                                        }
                                        break;
                                    case 24:
                                    case 31:
                                    case 41:
                                    case 45:
                                        i25 = i39;
                                        i28 = i9;
                                        i29 = i59 == true ? 1 : 0;
                                        unsafe4 = unsafe3;
                                        i30 = iJ2;
                                        i31 = i2;
                                        mriVar4 = mriVar;
                                        if (i43 != 2) {
                                            if (i43 == 5) {
                                                int i71 = i25 + 4;
                                                int i72 = nri.a;
                                                osi osiVar = (osi) ysiVar;
                                                osiVar.zzi(nri.b(bArr2, i25));
                                                while (i71 < i31) {
                                                    int iH8 = nri.h(bArr2, i71, mriVar4);
                                                    if (i29 == mriVar4.a) {
                                                        osiVar.zzi(nri.b(bArr2, iH8));
                                                        i71 = iH8 + 4;
                                                    } else {
                                                        i27 = i30;
                                                        iK = i71;
                                                        unsafe3 = unsafe4;
                                                        i26 = i31;
                                                        i59 = i29 == true ? 1 : 0;
                                                        i9 = i28;
                                                    }
                                                }
                                                i27 = i30;
                                                iK = i71;
                                                unsafe3 = unsafe4;
                                                i26 = i31;
                                                i59 = i29 == true ? 1 : 0;
                                                i9 = i28;
                                            }
                                            i27 = i30;
                                            unsafe3 = unsafe4;
                                            i26 = i31;
                                            i59 = i29;
                                            i9 = i28;
                                            z5 = true;
                                            iK = i25;
                                            if (iK != i25) {
                                                obj3 = obj;
                                                i3 = i3;
                                                i35 = i9;
                                                i2 = i26;
                                                i37 = i59;
                                                iJ2 = i27;
                                                mriVar6 = mriVar4;
                                                i34 = -1;
                                                i33 = 3;
                                                iL = iK;
                                                unsafe6 = unsafe3;
                                                i38 = i8;
                                                kaVar = this;
                                            } else {
                                                kaVar = this;
                                                obj3 = obj;
                                                i11 = iK;
                                                i7 = i59;
                                                iJ2 = i27;
                                                i6 = 3;
                                                unsafe = unsafe3;
                                                i9 = i9;
                                                mriVar2 = mriVar4;
                                            }
                                        } else {
                                            int i73 = nri.a;
                                            osi osiVar2 = (osi) ysiVar;
                                            iH3 = nri.h(bArr2, i25, mriVar4);
                                            int i74 = mriVar4.a;
                                            int i75 = iH3 + i74;
                                            if (i75 > bArr2.length) {
                                                throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            osiVar2.j(osiVar2.size() + (i74 / 4));
                                            while (iH3 < i75) {
                                                osiVar2.zzi(nri.b(bArr2, iH3));
                                                iH3 += 4;
                                            }
                                            if (iH3 != i75) {
                                                throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            i27 = i30;
                                            unsafe3 = unsafe4;
                                            i26 = i31;
                                            i59 = i29;
                                            i9 = i28;
                                            iK = iH3;
                                        }
                                        z5 = true;
                                        if (iK != i25) {
                                            obj3 = obj;
                                            i3 = i3;
                                            i35 = i9;
                                            i2 = i26;
                                            i37 = i59;
                                            iJ2 = i27;
                                            mriVar6 = mriVar4;
                                            i34 = -1;
                                            i33 = 3;
                                            iL = iK;
                                            unsafe6 = unsafe3;
                                            i38 = i8;
                                            kaVar = this;
                                        } else {
                                            kaVar = this;
                                            obj3 = obj;
                                            i11 = iK;
                                            i7 = i59;
                                            iJ2 = i27;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                        }
                                        break;
                                    case 25:
                                    case 42:
                                        i25 = i39;
                                        i28 = i9;
                                        i29 = i59 == true ? 1 : 0;
                                        unsafe4 = unsafe3;
                                        i30 = iJ2;
                                        i31 = i2;
                                        mriVar4 = mriVar;
                                        if (i43 == 2) {
                                            int i76 = nri.a;
                                            ubc.a(ysiVar);
                                            iH3 = nri.h(bArr2, i25, mriVar4);
                                            int i77 = mriVar4.a + iH3;
                                            if (iH3 < i77) {
                                                nri.k(bArr2, iH3, mriVar4);
                                                throw null;
                                            }
                                            if (iH3 != i77) {
                                                throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            i27 = i30;
                                            unsafe3 = unsafe4;
                                            i26 = i31;
                                            i59 = i29;
                                            i9 = i28;
                                            iK = iH3;
                                            z5 = true;
                                            if (iK != i25) {
                                                obj3 = obj;
                                                i3 = i3;
                                                i35 = i9;
                                                i2 = i26;
                                                i37 = i59;
                                                iJ2 = i27;
                                                mriVar6 = mriVar4;
                                                i34 = -1;
                                                i33 = 3;
                                                iL = iK;
                                                unsafe6 = unsafe3;
                                                i38 = i8;
                                                kaVar = this;
                                            } else {
                                                kaVar = this;
                                                obj3 = obj;
                                                i11 = iK;
                                                i7 = i59;
                                                iJ2 = i27;
                                                i6 = 3;
                                                unsafe = unsafe3;
                                                i9 = i9;
                                                mriVar2 = mriVar4;
                                            }
                                        } else {
                                            if (i43 == 0) {
                                                int i78 = nri.a;
                                                ubc.a(ysiVar);
                                                nri.k(bArr2, i25, mriVar4);
                                                long j3 = mriVar4.b;
                                                throw null;
                                            }
                                            i27 = i30;
                                            unsafe3 = unsafe4;
                                            i26 = i31;
                                            i59 = i29;
                                            i9 = i28;
                                            z5 = true;
                                            iK = i25;
                                            if (iK != i25) {
                                                obj3 = obj;
                                                i3 = i3;
                                                i35 = i9;
                                                i2 = i26;
                                                i37 = i59;
                                                iJ2 = i27;
                                                mriVar6 = mriVar4;
                                                i34 = -1;
                                                i33 = 3;
                                                iL = iK;
                                                unsafe6 = unsafe3;
                                                i38 = i8;
                                                kaVar = this;
                                            } else {
                                                kaVar = this;
                                                obj3 = obj;
                                                i11 = iK;
                                                i7 = i59;
                                                iJ2 = i27;
                                                i6 = 3;
                                                unsafe = unsafe3;
                                                i9 = i9;
                                                mriVar2 = mriVar4;
                                            }
                                        }
                                        break;
                                    case 26:
                                        i25 = i39;
                                        i28 = i9;
                                        i29 = i59 == true ? 1 : 0;
                                        unsafe4 = unsafe3;
                                        i30 = iJ2;
                                        i31 = i2;
                                        mriVar4 = mriVar;
                                        if (i43 == 2) {
                                            if ((j2 & 536870912) == 0) {
                                                iH4 = nri.h(bArr2, i25, mriVar4);
                                                int i79 = mriVar4.a;
                                                if (i79 < 0) {
                                                    throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                }
                                                if (i79 == 0) {
                                                    obj2 = "";
                                                    ysiVar.add(obj2);
                                                } else {
                                                    obj2 = "";
                                                    ysiVar.add(new String(bArr2, iH4, i79, zsi.a));
                                                    iH4 += i79;
                                                }
                                                while (iH4 < i31) {
                                                    int iH9 = nri.h(bArr2, iH4, mriVar4);
                                                    if (i29 == mriVar4.a) {
                                                        iH4 = nri.h(bArr2, iH9, mriVar4);
                                                        int i80 = mriVar4.a;
                                                        if (i80 < 0) {
                                                            throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                        }
                                                        if (i80 == 0) {
                                                            ysiVar.add(obj2);
                                                        } else {
                                                            ysiVar.add(new String(bArr2, iH4, i80, zsi.a));
                                                            iH4 += i80;
                                                        }
                                                    }
                                                }
                                            } else {
                                                iH4 = nri.h(bArr2, i25, mriVar4);
                                                int i81 = mriVar4.a;
                                                if (i81 < 0) {
                                                    throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                }
                                                if (i81 == 0) {
                                                    ysiVar.add("");
                                                } else {
                                                    int i82 = iH4 + i81;
                                                    if (!ra.i(bArr2, iH4, i82)) {
                                                        throw new zzgyk("Protocol message had invalid UTF-8.");
                                                    }
                                                    ysiVar.add(new String(bArr2, iH4, i81, zsi.a));
                                                    iH4 = i82;
                                                }
                                                while (iH4 < i31) {
                                                    int iH10 = nri.h(bArr2, iH4, mriVar4);
                                                    if (i29 == mriVar4.a) {
                                                        iH4 = nri.h(bArr2, iH10, mriVar4);
                                                        int i83 = mriVar4.a;
                                                        if (i83 < 0) {
                                                            throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                        }
                                                        if (i83 == 0) {
                                                            ysiVar.add("");
                                                        } else {
                                                            int i84 = iH4 + i83;
                                                            if (!ra.i(bArr2, iH4, i84)) {
                                                                throw new zzgyk("Protocol message had invalid UTF-8.");
                                                            }
                                                            ysiVar.add(new String(bArr2, iH4, i83, zsi.a));
                                                            iH4 = i84;
                                                        }
                                                    }
                                                }
                                            }
                                            i27 = i30;
                                            unsafe3 = unsafe4;
                                            i59 = i29;
                                            iK = iH4;
                                            z5 = true;
                                            i26 = i31;
                                            i9 = i28;
                                            if (iK != i25) {
                                                obj3 = obj;
                                                i3 = i3;
                                                i35 = i9;
                                                i2 = i26;
                                                i37 = i59;
                                                iJ2 = i27;
                                                mriVar6 = mriVar4;
                                                i34 = -1;
                                                i33 = 3;
                                                iL = iK;
                                                unsafe6 = unsafe3;
                                                i38 = i8;
                                                kaVar = this;
                                            } else {
                                                kaVar = this;
                                                obj3 = obj;
                                                i11 = iK;
                                                i7 = i59;
                                                iJ2 = i27;
                                                i6 = 3;
                                                unsafe = unsafe3;
                                                i9 = i9;
                                                mriVar2 = mriVar4;
                                            }
                                        }
                                        i27 = i30;
                                        unsafe3 = unsafe4;
                                        i26 = i31;
                                        i59 = i29;
                                        i9 = i28;
                                        z5 = true;
                                        iK = i25;
                                        if (iK != i25) {
                                            obj3 = obj;
                                            i3 = i3;
                                            i35 = i9;
                                            i2 = i26;
                                            i37 = i59;
                                            iJ2 = i27;
                                            mriVar6 = mriVar4;
                                            i34 = -1;
                                            i33 = 3;
                                            iL = iK;
                                            unsafe6 = unsafe3;
                                            i38 = i8;
                                            kaVar = this;
                                        } else {
                                            kaVar = this;
                                            obj3 = obj;
                                            i11 = iK;
                                            i7 = i59;
                                            iJ2 = i27;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                        }
                                        break;
                                    case 27:
                                        i25 = i39;
                                        unsafe5 = unsafe3;
                                        i32 = i2;
                                        if (i43 == 2) {
                                            cui cuiVarO = kaVar.O(iJ2);
                                            i28 = i9;
                                            i29 = i59 == true ? 1 : 0;
                                            i31 = i32;
                                            unsafe4 = unsafe5;
                                            iH4 = nri.e(cuiVarO, i59 == true ? 1 : 0, bArr, i25, i2, ysiVar, mriVar);
                                            i27 = iJ2;
                                            mriVar4 = mriVar;
                                            unsafe3 = unsafe4;
                                            i59 = i29;
                                            iK = iH4;
                                            z5 = true;
                                            i26 = i31;
                                            i9 = i28;
                                            if (iK != i25) {
                                                obj3 = obj;
                                                i3 = i3;
                                                i35 = i9;
                                                i2 = i26;
                                                i37 = i59;
                                                iJ2 = i27;
                                                mriVar6 = mriVar4;
                                                i34 = -1;
                                                i33 = 3;
                                                iL = iK;
                                                unsafe6 = unsafe3;
                                                i38 = i8;
                                                kaVar = this;
                                            } else {
                                                kaVar = this;
                                                obj3 = obj;
                                                i11 = iK;
                                                i7 = i59;
                                                iJ2 = i27;
                                                i6 = 3;
                                                unsafe = unsafe3;
                                                i9 = i9;
                                                mriVar2 = mriVar4;
                                            }
                                        }
                                        i26 = i32;
                                        unsafe3 = unsafe5;
                                        z5 = true;
                                        mriVar4 = mriVar;
                                        i27 = iJ2;
                                        iK = i25;
                                        if (iK != i25) {
                                            obj3 = obj;
                                            i3 = i3;
                                            i35 = i9;
                                            i2 = i26;
                                            i37 = i59;
                                            iJ2 = i27;
                                            mriVar6 = mriVar4;
                                            i34 = -1;
                                            i33 = 3;
                                            iL = iK;
                                            unsafe6 = unsafe3;
                                            i38 = i8;
                                            kaVar = this;
                                        } else {
                                            kaVar = this;
                                            obj3 = obj;
                                            i11 = iK;
                                            i7 = i59;
                                            iJ2 = i27;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                        }
                                        break;
                                    case 28:
                                        i25 = i39;
                                        unsafe5 = unsafe3;
                                        i32 = i2;
                                        if (i43 == 2) {
                                            iK = nri.h(bArr2, i25, mriVar);
                                            int i85 = mriVar.a;
                                            if (i85 < 0) {
                                                throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            if (i85 > bArr2.length - iK) {
                                                throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            if (i85 == 0) {
                                                ysiVar.add(zzgwn.zzb);
                                            } else {
                                                ysiVar.add(zzgwn.zzv(bArr2, iK, i85));
                                                iK += i85;
                                            }
                                            while (iK < i32) {
                                                int iH11 = nri.h(bArr2, iK, mriVar);
                                                if (i59 != mriVar.a) {
                                                    i26 = i32;
                                                    unsafe3 = unsafe5;
                                                    z5 = true;
                                                    mriVar4 = mriVar;
                                                    i27 = iJ2;
                                                    if (iK != i25) {
                                                        obj3 = obj;
                                                        i3 = i3;
                                                        i35 = i9;
                                                        i2 = i26;
                                                        i37 = i59;
                                                        iJ2 = i27;
                                                        mriVar6 = mriVar4;
                                                        i34 = -1;
                                                        i33 = 3;
                                                        iL = iK;
                                                        unsafe6 = unsafe3;
                                                        i38 = i8;
                                                        kaVar = this;
                                                    } else {
                                                        kaVar = this;
                                                        obj3 = obj;
                                                        i11 = iK;
                                                        i7 = i59;
                                                        iJ2 = i27;
                                                        i6 = 3;
                                                        unsafe = unsafe3;
                                                        i9 = i9;
                                                        mriVar2 = mriVar4;
                                                    }
                                                    break;
                                                } else {
                                                    iK = nri.h(bArr2, iH11, mriVar);
                                                    int i86 = mriVar.a;
                                                    if (i86 < 0) {
                                                        throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i86 > bArr2.length - iK) {
                                                        throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                    }
                                                    if (i86 == 0) {
                                                        ysiVar.add(zzgwn.zzb);
                                                    } else {
                                                        ysiVar.add(zzgwn.zzv(bArr2, iK, i86));
                                                        iK += i86;
                                                    }
                                                }
                                            }
                                            i26 = i32;
                                            unsafe3 = unsafe5;
                                            z5 = true;
                                            mriVar4 = mriVar;
                                            i27 = iJ2;
                                            if (iK != i25) {
                                                obj3 = obj;
                                                i3 = i3;
                                                i35 = i9;
                                                i2 = i26;
                                                i37 = i59;
                                                iJ2 = i27;
                                                mriVar6 = mriVar4;
                                                i34 = -1;
                                                i33 = 3;
                                                iL = iK;
                                                unsafe6 = unsafe3;
                                                i38 = i8;
                                                kaVar = this;
                                            } else {
                                                kaVar = this;
                                                obj3 = obj;
                                                i11 = iK;
                                                i7 = i59;
                                                iJ2 = i27;
                                                i6 = 3;
                                                unsafe = unsafe3;
                                                i9 = i9;
                                                mriVar2 = mriVar4;
                                            }
                                        }
                                        i26 = i32;
                                        unsafe3 = unsafe5;
                                        z5 = true;
                                        mriVar4 = mriVar;
                                        i27 = iJ2;
                                        iK = i25;
                                        if (iK != i25) {
                                            obj3 = obj;
                                            i3 = i3;
                                            i35 = i9;
                                            i2 = i26;
                                            i37 = i59;
                                            iJ2 = i27;
                                            mriVar6 = mriVar4;
                                            i34 = -1;
                                            i33 = 3;
                                            iL = iK;
                                            unsafe6 = unsafe3;
                                            i38 = i8;
                                            kaVar = this;
                                        } else {
                                            kaVar = this;
                                            obj3 = obj;
                                            i11 = iK;
                                            i7 = i59;
                                            iJ2 = i27;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                        }
                                        break;
                                    case 30:
                                    case 44:
                                        i25 = i39;
                                        unsafe5 = unsafe3;
                                        i32 = i2;
                                        if (i43 != 2) {
                                            if (i43 == 0) {
                                                iJ = nri.j(i59 == true ? 1 : 0, bArr, i25, i2, ysiVar, mriVar);
                                            }
                                            i26 = i32;
                                            unsafe3 = unsafe5;
                                            z5 = true;
                                            mriVar4 = mriVar;
                                            i27 = iJ2;
                                            iK = i25;
                                            if (iK != i25) {
                                                obj3 = obj;
                                                i3 = i3;
                                                i35 = i9;
                                                i2 = i26;
                                                i37 = i59;
                                                iJ2 = i27;
                                                mriVar6 = mriVar4;
                                                i34 = -1;
                                                i33 = 3;
                                                iL = iK;
                                                unsafe6 = unsafe3;
                                                i38 = i8;
                                                kaVar = this;
                                            } else {
                                                kaVar = this;
                                                obj3 = obj;
                                                i11 = iK;
                                                i7 = i59;
                                                iJ2 = i27;
                                                i6 = 3;
                                                unsafe = unsafe3;
                                                i9 = i9;
                                                mriVar2 = mriVar4;
                                            }
                                        } else {
                                            iJ = nri.f(bArr2, i25, ysiVar, mriVar);
                                        }
                                        int i87 = iJ;
                                        pa.x(obj, i9, ysiVar, kaVar.N(iJ2), null, kaVar.k);
                                        iK = i87;
                                        i26 = i32;
                                        unsafe3 = unsafe5;
                                        z5 = true;
                                        mriVar4 = mriVar;
                                        i27 = iJ2;
                                        if (iK != i25) {
                                            obj3 = obj;
                                            i3 = i3;
                                            i35 = i9;
                                            i2 = i26;
                                            i37 = i59;
                                            iJ2 = i27;
                                            mriVar6 = mriVar4;
                                            i34 = -1;
                                            i33 = 3;
                                            iL = iK;
                                            unsafe6 = unsafe3;
                                            i38 = i8;
                                            kaVar = this;
                                        } else {
                                            kaVar = this;
                                            obj3 = obj;
                                            i11 = iK;
                                            i7 = i59;
                                            iJ2 = i27;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                        }
                                        break;
                                    case 33:
                                    case 47:
                                        i25 = i39;
                                        unsafe5 = unsafe3;
                                        i32 = i2;
                                        if (i43 != 2) {
                                            if (i43 == 0) {
                                                int i88 = nri.a;
                                                osi osiVar3 = (osi) ysiVar;
                                                iK = nri.h(bArr2, i25, mriVar);
                                                osiVar3.zzi(vri.c(mriVar.a));
                                                while (iK < i32) {
                                                    int iH12 = nri.h(bArr2, iK, mriVar);
                                                    if (i59 == mriVar.a) {
                                                        iK = nri.h(bArr2, iH12, mriVar);
                                                        osiVar3.zzi(vri.c(mriVar.a));
                                                    }
                                                }
                                            }
                                            i26 = i32;
                                            unsafe3 = unsafe5;
                                            z5 = true;
                                            mriVar4 = mriVar;
                                            i27 = iJ2;
                                            iK = i25;
                                            if (iK != i25) {
                                                obj3 = obj;
                                                i3 = i3;
                                                i35 = i9;
                                                i2 = i26;
                                                i37 = i59;
                                                iJ2 = i27;
                                                mriVar6 = mriVar4;
                                                i34 = -1;
                                                i33 = 3;
                                                iL = iK;
                                                unsafe6 = unsafe3;
                                                i38 = i8;
                                                kaVar = this;
                                            } else {
                                                kaVar = this;
                                                obj3 = obj;
                                                i11 = iK;
                                                i7 = i59;
                                                iJ2 = i27;
                                                i6 = 3;
                                                unsafe = unsafe3;
                                                i9 = i9;
                                                mriVar2 = mriVar4;
                                            }
                                        } else {
                                            int i89 = nri.a;
                                            osi osiVar4 = (osi) ysiVar;
                                            iK = nri.h(bArr2, i25, mriVar);
                                            int i90 = mriVar.a + iK;
                                            while (iK < i90) {
                                                iK = nri.h(bArr2, iK, mriVar);
                                                osiVar4.zzi(vri.c(mriVar.a));
                                            }
                                            if (iK != i90) {
                                                throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        i26 = i32;
                                        unsafe3 = unsafe5;
                                        z5 = true;
                                        mriVar4 = mriVar;
                                        i27 = iJ2;
                                        if (iK != i25) {
                                            obj3 = obj;
                                            i3 = i3;
                                            i35 = i9;
                                            i2 = i26;
                                            i37 = i59;
                                            iJ2 = i27;
                                            mriVar6 = mriVar4;
                                            i34 = -1;
                                            i33 = 3;
                                            iL = iK;
                                            unsafe6 = unsafe3;
                                            i38 = i8;
                                            kaVar = this;
                                        } else {
                                            kaVar = this;
                                            obj3 = obj;
                                            i11 = iK;
                                            i7 = i59;
                                            iJ2 = i27;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                        }
                                        break;
                                    case 34:
                                    case 48:
                                        i25 = i39;
                                        unsafe5 = unsafe3;
                                        i32 = i2;
                                        if (i43 != 2) {
                                            if (i43 == 0) {
                                                int i91 = nri.a;
                                                eti etiVar5 = (eti) ysiVar;
                                                iK = nri.k(bArr2, i25, mriVar);
                                                etiVar5.i(vri.d(mriVar.b));
                                                while (iK < i32) {
                                                    int iH13 = nri.h(bArr2, iK, mriVar);
                                                    if (i59 == mriVar.a) {
                                                        iK = nri.k(bArr2, iH13, mriVar);
                                                        etiVar5.i(vri.d(mriVar.b));
                                                    }
                                                }
                                            }
                                            i26 = i32;
                                            unsafe3 = unsafe5;
                                            z5 = true;
                                            mriVar4 = mriVar;
                                            i27 = iJ2;
                                            iK = i25;
                                            if (iK != i25) {
                                                obj3 = obj;
                                                i3 = i3;
                                                i35 = i9;
                                                i2 = i26;
                                                i37 = i59;
                                                iJ2 = i27;
                                                mriVar6 = mriVar4;
                                                i34 = -1;
                                                i33 = 3;
                                                iL = iK;
                                                unsafe6 = unsafe3;
                                                i38 = i8;
                                                kaVar = this;
                                            } else {
                                                kaVar = this;
                                                obj3 = obj;
                                                i11 = iK;
                                                i7 = i59;
                                                iJ2 = i27;
                                                i6 = 3;
                                                unsafe = unsafe3;
                                                i9 = i9;
                                                mriVar2 = mriVar4;
                                            }
                                        } else {
                                            int i92 = nri.a;
                                            eti etiVar6 = (eti) ysiVar;
                                            iK = nri.h(bArr2, i25, mriVar);
                                            int i93 = mriVar.a + iK;
                                            while (iK < i93) {
                                                iK = nri.k(bArr2, iK, mriVar);
                                                etiVar6.i(vri.d(mriVar.b));
                                            }
                                            if (iK != i93) {
                                                throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        i26 = i32;
                                        unsafe3 = unsafe5;
                                        z5 = true;
                                        mriVar4 = mriVar;
                                        i27 = iJ2;
                                        if (iK != i25) {
                                            obj3 = obj;
                                            i3 = i3;
                                            i35 = i9;
                                            i2 = i26;
                                            i37 = i59;
                                            iJ2 = i27;
                                            mriVar6 = mriVar4;
                                            i34 = -1;
                                            i33 = 3;
                                            iL = iK;
                                            unsafe6 = unsafe3;
                                            i38 = i8;
                                            kaVar = this;
                                        } else {
                                            kaVar = this;
                                            obj3 = obj;
                                            i11 = iK;
                                            i7 = i59;
                                            iJ2 = i27;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                        }
                                        break;
                                    default:
                                        if (i43 == 3) {
                                            int i94 = ((i59 == true ? 1 : 0) & (-8)) | 4;
                                            cui cuiVarO2 = kaVar.O(iJ2);
                                            i25 = i39;
                                            iK = nri.c(cuiVarO2, bArr, i39, i2, i94, mriVar);
                                            ysiVar.add(mriVar.c);
                                            int i95 = i2;
                                            while (iK < i95) {
                                                int iH14 = nri.h(bArr2, iK, mriVar);
                                                if (i59 != mriVar.a) {
                                                    unsafe5 = unsafe3;
                                                    i32 = i95;
                                                    i26 = i32;
                                                    unsafe3 = unsafe5;
                                                    z5 = true;
                                                    mriVar4 = mriVar;
                                                    i27 = iJ2;
                                                    if (iK != i25) {
                                                        obj3 = obj;
                                                        i3 = i3;
                                                        i35 = i9;
                                                        i2 = i26;
                                                        i37 = i59;
                                                        iJ2 = i27;
                                                        mriVar6 = mriVar4;
                                                        i34 = -1;
                                                        i33 = 3;
                                                        iL = iK;
                                                        unsafe6 = unsafe3;
                                                        i38 = i8;
                                                        kaVar = this;
                                                    } else {
                                                        kaVar = this;
                                                        obj3 = obj;
                                                        i11 = iK;
                                                        i7 = i59;
                                                        iJ2 = i27;
                                                        i6 = 3;
                                                        unsafe = unsafe3;
                                                        i9 = i9;
                                                        mriVar2 = mriVar4;
                                                    }
                                                } else {
                                                    iK = nri.c(cuiVarO2, bArr, iH14, i2, i94, mriVar);
                                                    ysiVar.add(mriVar.c);
                                                    i95 = i95;
                                                    unsafe3 = unsafe3;
                                                }
                                                break;
                                            }
                                            unsafe5 = unsafe3;
                                            i32 = i95;
                                            i26 = i32;
                                            unsafe3 = unsafe5;
                                            z5 = true;
                                            mriVar4 = mriVar;
                                            i27 = iJ2;
                                            if (iK != i25) {
                                                obj3 = obj;
                                                i3 = i3;
                                                i35 = i9;
                                                i2 = i26;
                                                i37 = i59;
                                                iJ2 = i27;
                                                mriVar6 = mriVar4;
                                                i34 = -1;
                                                i33 = 3;
                                                iL = iK;
                                                unsafe6 = unsafe3;
                                                i38 = i8;
                                                kaVar = this;
                                            } else {
                                                kaVar = this;
                                                obj3 = obj;
                                                i11 = iK;
                                                i7 = i59;
                                                iJ2 = i27;
                                                i6 = 3;
                                                unsafe = unsafe3;
                                                i9 = i9;
                                                mriVar2 = mriVar4;
                                            }
                                        } else {
                                            i25 = i39;
                                            z5 = true;
                                            i26 = i2;
                                            mriVar4 = mriVar;
                                            i27 = iJ2;
                                            iK = i25;
                                            if (iK != i25) {
                                                obj3 = obj;
                                                i3 = i3;
                                                i35 = i9;
                                                i2 = i26;
                                                i37 = i59;
                                                iJ2 = i27;
                                                mriVar6 = mriVar4;
                                                i34 = -1;
                                                i33 = 3;
                                                iL = iK;
                                                unsafe6 = unsafe3;
                                                i38 = i8;
                                                kaVar = this;
                                            } else {
                                                kaVar = this;
                                                obj3 = obj;
                                                i11 = iK;
                                                i7 = i59;
                                                iJ2 = i27;
                                                i6 = 3;
                                                unsafe = unsafe3;
                                                i9 = i9;
                                                mriVar2 = mriVar4;
                                            }
                                        }
                                        break;
                                }
                            } else {
                                int i96 = i39;
                                i9 = i9;
                                i19 = i59 == true ? 1 : 0;
                                mriVar4 = mriVar;
                                i20 = iJ2;
                                if (iK2 != 50) {
                                    kaVar = this;
                                    obj3 = obj;
                                    long j4 = iArr[i20 + 2] & 1048575;
                                    switch (iK2) {
                                        case 51:
                                            i21 = i20;
                                            i7 = i19 == true ? 1 : 0;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                            i22 = i96;
                                            if (i43 == 1) {
                                                iL = i22 + 8;
                                                unsafe.putObject(obj3, j, Double.valueOf(Double.longBitsToDouble(nri.n(bArr2, i22))));
                                                unsafe.putInt(obj3, j4, i9);
                                            } else {
                                                iL = i22;
                                            }
                                            if (iL != i22) {
                                                i3 = i3;
                                                mriVar6 = mriVar2;
                                                i35 = i9;
                                                unsafe6 = unsafe;
                                                iJ2 = i21;
                                                i38 = i8;
                                                i34 = -1;
                                                i33 = i6;
                                                i37 = i7 == true ? 1 : 0;
                                            } else {
                                                i3 = i3;
                                                i11 = iL;
                                                iJ2 = i21;
                                            }
                                            break;
                                        case 52:
                                            i21 = i20;
                                            i7 = i19 == true ? 1 : 0;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                            i22 = i96;
                                            if (i43 == 5) {
                                                iL = i22 + 4;
                                                unsafe.putObject(obj3, j, Float.valueOf(Float.intBitsToFloat(nri.b(bArr2, i22))));
                                                unsafe.putInt(obj3, j4, i9);
                                            } else {
                                                iL = i22;
                                            }
                                            if (iL != i22) {
                                                i3 = i3;
                                                mriVar6 = mriVar2;
                                                i35 = i9;
                                                unsafe6 = unsafe;
                                                iJ2 = i21;
                                                i38 = i8;
                                                i34 = -1;
                                                i33 = i6;
                                                i37 = i7 == true ? 1 : 0;
                                            } else {
                                                i3 = i3;
                                                i11 = iL;
                                                iJ2 = i21;
                                            }
                                            break;
                                        case 53:
                                        case 54:
                                            i21 = i20;
                                            i7 = i19 == true ? 1 : 0;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                            i22 = i96;
                                            if (i43 == 0) {
                                                iL = nri.k(bArr2, i22, mriVar2);
                                                unsafe.putObject(obj3, j, Long.valueOf(mriVar2.b));
                                                unsafe.putInt(obj3, j4, i9);
                                            } else {
                                                iL = i22;
                                            }
                                            if (iL != i22) {
                                                i3 = i3;
                                                mriVar6 = mriVar2;
                                                i35 = i9;
                                                unsafe6 = unsafe;
                                                iJ2 = i21;
                                                i38 = i8;
                                                i34 = -1;
                                                i33 = i6;
                                                i37 = i7 == true ? 1 : 0;
                                            } else {
                                                i3 = i3;
                                                i11 = iL;
                                                iJ2 = i21;
                                            }
                                            break;
                                        case 55:
                                        case 62:
                                            i21 = i20;
                                            i7 = i19 == true ? 1 : 0;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                            i22 = i96;
                                            if (i43 == 0) {
                                                iL = nri.h(bArr2, i22, mriVar2);
                                                unsafe.putObject(obj3, j, Integer.valueOf(mriVar2.a));
                                                unsafe.putInt(obj3, j4, i9);
                                            } else {
                                                iL = i22;
                                            }
                                            if (iL != i22) {
                                                i3 = i3;
                                                mriVar6 = mriVar2;
                                                i35 = i9;
                                                unsafe6 = unsafe;
                                                iJ2 = i21;
                                                i38 = i8;
                                                i34 = -1;
                                                i33 = i6;
                                                i37 = i7 == true ? 1 : 0;
                                            } else {
                                                i3 = i3;
                                                i11 = iL;
                                                iJ2 = i21;
                                            }
                                            break;
                                        case 56:
                                        case 65:
                                            i21 = i20;
                                            i7 = i19 == true ? 1 : 0;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                            i22 = i96;
                                            if (i43 == 1) {
                                                iL = i22 + 8;
                                                unsafe.putObject(obj3, j, Long.valueOf(nri.n(bArr2, i22)));
                                                unsafe.putInt(obj3, j4, i9);
                                            } else {
                                                iL = i22;
                                            }
                                            if (iL != i22) {
                                                i3 = i3;
                                                mriVar6 = mriVar2;
                                                i35 = i9;
                                                unsafe6 = unsafe;
                                                iJ2 = i21;
                                                i38 = i8;
                                                i34 = -1;
                                                i33 = i6;
                                                i37 = i7 == true ? 1 : 0;
                                            } else {
                                                i3 = i3;
                                                i11 = iL;
                                                iJ2 = i21;
                                            }
                                            break;
                                        case 57:
                                        case 64:
                                            i21 = i20;
                                            i7 = i19 == true ? 1 : 0;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                            i22 = i96;
                                            if (i43 == 5) {
                                                iL = i22 + 4;
                                                unsafe.putObject(obj3, j, Integer.valueOf(nri.b(bArr2, i22)));
                                                unsafe.putInt(obj3, j4, i9);
                                            } else {
                                                iL = i22;
                                            }
                                            if (iL != i22) {
                                                i3 = i3;
                                                mriVar6 = mriVar2;
                                                i35 = i9;
                                                unsafe6 = unsafe;
                                                iJ2 = i21;
                                                i38 = i8;
                                                i34 = -1;
                                                i33 = i6;
                                                i37 = i7 == true ? 1 : 0;
                                            } else {
                                                i3 = i3;
                                                i11 = iL;
                                                iJ2 = i21;
                                            }
                                            break;
                                        case 58:
                                            i21 = i20;
                                            i7 = i19 == true ? 1 : 0;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                            i22 = i96;
                                            if (i43 == 0) {
                                                iL = nri.k(bArr2, i22, mriVar2);
                                                unsafe.putObject(obj3, j, Boolean.valueOf(mriVar2.b != 0));
                                                unsafe.putInt(obj3, j4, i9);
                                            } else {
                                                iL = i22;
                                            }
                                            if (iL != i22) {
                                                i3 = i3;
                                                mriVar6 = mriVar2;
                                                i35 = i9;
                                                unsafe6 = unsafe;
                                                iJ2 = i21;
                                                i38 = i8;
                                                i34 = -1;
                                                i33 = i6;
                                                i37 = i7 == true ? 1 : 0;
                                            } else {
                                                i3 = i3;
                                                i11 = iL;
                                                iJ2 = i21;
                                            }
                                            break;
                                        case 59:
                                            i21 = i20;
                                            i7 = i19 == true ? 1 : 0;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                            i22 = i96;
                                            if (i43 == 2) {
                                                int iH15 = nri.h(bArr2, i22, mriVar2);
                                                int i97 = mriVar2.a;
                                                if (i97 == 0) {
                                                    unsafe.putObject(obj3, j, "");
                                                } else {
                                                    int i98 = iH15 + i97;
                                                    if ((i44 & 536870912) != 0 && !ra.i(bArr2, iH15, i98)) {
                                                        throw new zzgyk("Protocol message had invalid UTF-8.");
                                                    }
                                                    unsafe.putObject(obj3, j, new String(bArr2, iH15, i97, zsi.a));
                                                    iH15 = i98;
                                                }
                                                unsafe.putInt(obj3, j4, i9);
                                                iL = iH15;
                                            } else {
                                                i21 = i21;
                                                iL = i22;
                                            }
                                            if (iL != i22) {
                                                i3 = i3;
                                                mriVar6 = mriVar2;
                                                i35 = i9;
                                                unsafe6 = unsafe;
                                                iJ2 = i21;
                                                i38 = i8;
                                                i34 = -1;
                                                i33 = i6;
                                                i37 = i7 == true ? 1 : 0;
                                            } else {
                                                i3 = i3;
                                                i11 = iL;
                                                iJ2 = i21;
                                            }
                                            break;
                                        case 60:
                                            i22 = i96;
                                            unsafe = unsafe3;
                                            if (i43 == 2) {
                                                Object objI = kaVar.i(obj3, i9, i20);
                                                i6 = 3;
                                                i9 = i9;
                                                int iM2 = nri.m(objI, kaVar.O(i20), bArr, i22, i2, mriVar);
                                                kaVar.r(obj3, i9, i20, objI);
                                                i21 = i20;
                                                mriVar2 = mriVar4;
                                                iL = iM2;
                                                i7 = i19 == true ? 1 : 0;
                                            } else {
                                                i9 = i9;
                                                i6 = 3;
                                                mriVar2 = mriVar4;
                                                i21 = i20;
                                                i7 = i19 == true ? 1 : 0;
                                                iL = i22;
                                            }
                                            if (iL != i22) {
                                                i3 = i3;
                                                mriVar6 = mriVar2;
                                                i35 = i9;
                                                unsafe6 = unsafe;
                                                iJ2 = i21;
                                                i38 = i8;
                                                i34 = -1;
                                                i33 = i6;
                                                i37 = i7 == true ? 1 : 0;
                                            } else {
                                                i3 = i3;
                                                i11 = iL;
                                                iJ2 = i21;
                                            }
                                            break;
                                        case 61:
                                            i23 = i20;
                                            mriVar5 = mriVar4;
                                            i24 = i19 == true ? 1 : 0;
                                            i22 = i96;
                                            unsafe = unsafe3;
                                            if (i43 == 2) {
                                                iA = nri.a(bArr2, i22, mriVar5);
                                                unsafe.putObject(obj3, j, mriVar5.c);
                                                unsafe.putInt(obj3, j4, i9);
                                                i9 = i9;
                                                i21 = i23;
                                                iL = iA;
                                                i6 = 3;
                                                mriVar2 = mriVar5;
                                                i7 = i24;
                                                if (iL != i22) {
                                                    i3 = i3;
                                                    mriVar6 = mriVar2;
                                                    i35 = i9;
                                                    unsafe6 = unsafe;
                                                    iJ2 = i21;
                                                    i38 = i8;
                                                    i34 = -1;
                                                    i33 = i6;
                                                    i37 = i7 == true ? 1 : 0;
                                                } else {
                                                    i3 = i3;
                                                    i11 = iL;
                                                    iJ2 = i21;
                                                }
                                            } else {
                                                i9 = i9;
                                                i21 = i23;
                                                i6 = 3;
                                                mriVar2 = mriVar5;
                                                i7 = i24 == true ? 1 : 0;
                                                iL = i22;
                                                if (iL != i22) {
                                                    i3 = i3;
                                                    mriVar6 = mriVar2;
                                                    i35 = i9;
                                                    unsafe6 = unsafe;
                                                    iJ2 = i21;
                                                    i38 = i8;
                                                    i34 = -1;
                                                    i33 = i6;
                                                    i37 = i7 == true ? 1 : 0;
                                                } else {
                                                    i3 = i3;
                                                    i11 = iL;
                                                    iJ2 = i21;
                                                }
                                            }
                                            break;
                                        case 63:
                                            i23 = i20;
                                            mriVar5 = mriVar4;
                                            i22 = i96;
                                            unsafe = unsafe3;
                                            if (i43 == 0) {
                                                iA = nri.h(bArr2, i22, mriVar5);
                                                int i99 = mriVar5.a;
                                                usi usiVarN2 = kaVar.N(i23);
                                                if (usiVarN2 == null || usiVarN2.zza(i99)) {
                                                    i24 = i19 == true ? 1 : 0;
                                                    unsafe.putObject(obj3, j, Integer.valueOf(i99));
                                                    unsafe.putInt(obj3, j4, i9);
                                                } else {
                                                    qui quiVarC = C(obj);
                                                    Long lValueOf = Long.valueOf(i99);
                                                    i24 = i19 == true ? 1 : 0;
                                                    quiVarC.j(i24 == true ? 1 : 0, lValueOf);
                                                }
                                                i9 = i9;
                                                i21 = i23;
                                                iL = iA;
                                                i6 = 3;
                                                mriVar2 = mriVar5;
                                                i7 = i24;
                                                if (iL != i22) {
                                                    i3 = i3;
                                                    mriVar6 = mriVar2;
                                                    i35 = i9;
                                                    unsafe6 = unsafe;
                                                    iJ2 = i21;
                                                    i38 = i8;
                                                    i34 = -1;
                                                    i33 = i6;
                                                    i37 = i7 == true ? 1 : 0;
                                                } else {
                                                    i3 = i3;
                                                    i11 = iL;
                                                    iJ2 = i21;
                                                }
                                            }
                                            i9 = i9;
                                            i21 = i23;
                                            mriVar2 = mriVar5;
                                            i7 = i19 == true ? 1 : 0;
                                            i6 = 3;
                                            iL = i22;
                                            if (iL != i22) {
                                                i3 = i3;
                                                mriVar6 = mriVar2;
                                                i35 = i9;
                                                unsafe6 = unsafe;
                                                iJ2 = i21;
                                                i38 = i8;
                                                i34 = -1;
                                                i33 = i6;
                                                i37 = i7 == true ? 1 : 0;
                                            } else {
                                                i3 = i3;
                                                i11 = iL;
                                                iJ2 = i21;
                                            }
                                            break;
                                        case 66:
                                            i23 = i20;
                                            mriVar5 = mriVar4;
                                            i22 = i96;
                                            unsafe = unsafe3;
                                            if (i43 == 0) {
                                                int iH16 = nri.h(bArr2, i22, mriVar5);
                                                unsafe.putObject(obj3, j, Integer.valueOf(vri.c(mriVar5.a)));
                                                unsafe.putInt(obj3, j4, i9);
                                                i21 = i23;
                                                iL = iH16;
                                                mriVar2 = mriVar5;
                                                i7 = i19 == true ? 1 : 0;
                                                i6 = 3;
                                                if (iL != i22) {
                                                    i3 = i3;
                                                    mriVar6 = mriVar2;
                                                    i35 = i9;
                                                    unsafe6 = unsafe;
                                                    iJ2 = i21;
                                                    i38 = i8;
                                                    i34 = -1;
                                                    i33 = i6;
                                                    i37 = i7 == true ? 1 : 0;
                                                } else {
                                                    i3 = i3;
                                                    i11 = iL;
                                                    iJ2 = i21;
                                                }
                                            }
                                            i9 = i9;
                                            i21 = i23;
                                            mriVar2 = mriVar5;
                                            i7 = i19 == true ? 1 : 0;
                                            i6 = 3;
                                            iL = i22;
                                            if (iL != i22) {
                                                i3 = i3;
                                                mriVar6 = mriVar2;
                                                i35 = i9;
                                                unsafe6 = unsafe;
                                                iJ2 = i21;
                                                i38 = i8;
                                                i34 = -1;
                                                i33 = i6;
                                                i37 = i7 == true ? 1 : 0;
                                            } else {
                                                i3 = i3;
                                                i11 = iL;
                                                iJ2 = i21;
                                            }
                                            break;
                                        case 67:
                                            i23 = i20;
                                            mriVar5 = mriVar4;
                                            unsafe = unsafe3;
                                            if (i43 == 0) {
                                                i22 = i96;
                                                int iK5 = nri.k(bArr2, i22, mriVar5);
                                                unsafe.putObject(obj3, j, Long.valueOf(vri.d(mriVar5.b)));
                                                unsafe.putInt(obj3, j4, i9);
                                                i21 = i23;
                                                iL = iK5;
                                                mriVar2 = mriVar5;
                                                i7 = i19 == true ? 1 : 0;
                                                i6 = 3;
                                                if (iL != i22) {
                                                    i3 = i3;
                                                    mriVar6 = mriVar2;
                                                    i35 = i9;
                                                    unsafe6 = unsafe;
                                                    iJ2 = i21;
                                                    i38 = i8;
                                                    i34 = -1;
                                                    i33 = i6;
                                                    i37 = i7 == true ? 1 : 0;
                                                } else {
                                                    i3 = i3;
                                                    i11 = iL;
                                                    iJ2 = i21;
                                                }
                                            } else {
                                                i22 = i96;
                                                i9 = i9;
                                                i21 = i23;
                                                mriVar2 = mriVar5;
                                                i7 = i19 == true ? 1 : 0;
                                                i6 = 3;
                                                iL = i22;
                                                if (iL != i22) {
                                                    i3 = i3;
                                                    mriVar6 = mriVar2;
                                                    i35 = i9;
                                                    unsafe6 = unsafe;
                                                    iJ2 = i21;
                                                    i38 = i8;
                                                    i34 = -1;
                                                    i33 = i6;
                                                    i37 = i7 == true ? 1 : 0;
                                                } else {
                                                    i3 = i3;
                                                    i11 = iL;
                                                    iJ2 = i21;
                                                }
                                            }
                                            break;
                                        case 68:
                                            if (i43 == 3) {
                                                int i100 = ((i19 == true ? 1 : 0) & (-8)) | 4;
                                                Object objI2 = kaVar.i(obj3, i9, i20);
                                                mriVar5 = mriVar4;
                                                iL = nri.l(objI2, kaVar.O(i20), bArr, i96, i2, i100, mriVar);
                                                kaVar.r(obj3, i9, i20, objI2);
                                                i22 = i96;
                                                unsafe = unsafe3;
                                                i21 = i20;
                                                mriVar2 = mriVar5;
                                                i7 = i19 == true ? 1 : 0;
                                                i6 = 3;
                                                if (iL != i22) {
                                                    i3 = i3;
                                                    mriVar6 = mriVar2;
                                                    i35 = i9;
                                                    unsafe6 = unsafe;
                                                    iJ2 = i21;
                                                    i38 = i8;
                                                    i34 = -1;
                                                    i33 = i6;
                                                    i37 = i7 == true ? 1 : 0;
                                                } else {
                                                    i3 = i3;
                                                    i11 = iL;
                                                    iJ2 = i21;
                                                }
                                            } else {
                                                i21 = i20;
                                                unsafe = unsafe3;
                                                i9 = i9;
                                                mriVar2 = mriVar4;
                                                i22 = i96;
                                                i6 = 3;
                                                i7 = i19 == true ? 1 : 0;
                                                iL = i22;
                                                if (iL != i22) {
                                                    i3 = i3;
                                                    mriVar6 = mriVar2;
                                                    i35 = i9;
                                                    unsafe6 = unsafe;
                                                    iJ2 = i21;
                                                    i38 = i8;
                                                    i34 = -1;
                                                    i33 = i6;
                                                    i37 = i7 == true ? 1 : 0;
                                                } else {
                                                    i3 = i3;
                                                    i11 = iL;
                                                    iJ2 = i21;
                                                }
                                            }
                                            break;
                                        default:
                                            i21 = i20;
                                            i7 = i19 == true ? 1 : 0;
                                            i6 = 3;
                                            unsafe = unsafe3;
                                            i9 = i9;
                                            mriVar2 = mriVar4;
                                            i22 = i96;
                                            iL = i22;
                                            if (iL != i22) {
                                                i3 = i3;
                                                mriVar6 = mriVar2;
                                                i35 = i9;
                                                unsafe6 = unsafe;
                                                iJ2 = i21;
                                                i38 = i8;
                                                i34 = -1;
                                                i33 = i6;
                                                i37 = i7 == true ? 1 : 0;
                                            } else {
                                                i3 = i3;
                                                i11 = iL;
                                                iJ2 = i21;
                                            }
                                            break;
                                    }
                                } else {
                                    if (i43 == 2) {
                                        Object objQ = Q(i20);
                                        Object object = unsafe3.getObject(obj, j);
                                        if (mti.a(object)) {
                                            zzgza zzgzaVarZzb = zzgza.zza().zzb();
                                            mti.b(zzgzaVarZzb, object);
                                            unsafe3.putObject(obj, j, zzgzaVarZzb);
                                        }
                                        ubc.a(objQ);
                                        throw null;
                                    }
                                    i18 = i96;
                                    kaVar = this;
                                    obj3 = obj;
                                }
                            }
                        } else if (i43 == 2) {
                            ysi ysiVarE2 = (ysi) unsafe6.getObject(obj3, j);
                            if (!ysiVarE2.zzc()) {
                                int size2 = ysiVarE2.size();
                                ysiVarE2 = ysiVarE2.e(size2 == 0 ? 10 : size2 + size2);
                                unsafe6.putObject(obj3, j, ysiVarE2);
                            }
                            iL = nri.e(kaVar.O(iJ2), i45 == true ? 1 : 0, bArr, i39, i2, ysiVarE2, mriVar);
                            iJ2 = iJ2;
                            unsafe6 = unsafe6;
                            i37 = i45 == true ? 1 : 0;
                            i35 = i41;
                            i38 = i38;
                            i34 = -1;
                            i2 = i2;
                            i3 = i3;
                            mriVar6 = mriVar;
                            i33 = 3;
                        } else {
                            i8 = i38;
                            Unsafe unsafe9 = unsafe6;
                            mriVar4 = mriVar;
                            unsafe3 = unsafe9;
                            i18 = i39;
                            i19 = i45 == true ? 1 : 0;
                            i9 = i41;
                            i20 = iJ2;
                        }
                        i7 = i19;
                        iJ2 = i20;
                        i6 = 3;
                        i11 = i18;
                        unsafe = unsafe3;
                        i9 = i9;
                        mriVar2 = mriVar4;
                    }
                }
                if (i7 != i3 || i3 == 0) {
                    if (kaVar.f) {
                        esi esiVar = mriVar2.d;
                        esi esiVar2 = esi.b;
                        xti xtiVar = xti.c;
                        if (esiVar != esi.c) {
                            rti rtiVar = kaVar.e;
                            int i101 = nri.a;
                            esiVar.c(rtiVar, i9);
                            i12 = i7;
                            iG = nri.g(i7, bArr, i11, i2, C(obj), mriVar);
                        } else {
                            i12 = i7;
                            iG = nri.g(i12 == true ? 1 : 0, bArr, i11, i2, C(obj), mriVar);
                        }
                    } else {
                        i12 = i7;
                        iG = nri.g(i12 == true ? 1 : 0, bArr, i11, i2, C(obj), mriVar);
                    }
                    mriVar6 = mriVar;
                    i37 = i12;
                    i3 = i3;
                    i35 = i9;
                    unsafe6 = unsafe;
                    i38 = i8;
                    i34 = i10;
                    i33 = i6;
                    iL = iG;
                } else {
                    i5 = i7;
                    iL = i11;
                    i4 = i36;
                    i38 = i8;
                }
            } else {
                i3 = i3;
                unsafe = unsafe6;
                i4 = i36;
                i5 = i37;
            }
        }
        if (i38 != 1048575) {
            unsafe.putInt(obj3, i38, i4);
        }
        for (int i102 = kaVar.i; i102 < kaVar.j; i102++) {
            P(obj, kaVar.h[i102], null, kaVar.k, obj);
        }
        if (i3 == 0) {
            if (iL != i2) {
                throw new zzgyk("Failed to parse the message.");
            }
        } else if (iL > i2 || i5 != i3) {
            throw new zzgyk("Failed to parse the message.");
        }
        return iL;
    }

    public final int H(int i) {
        if (i < this.c || i > this.d) {
            return -1;
        }
        return J(i, 0);
    }

    public final int I(int i) {
        return this.a[i + 2];
    }

    public final int J(int i, int i2) {
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

    public final int L(int i) {
        return this.a[i + 1];
    }

    public final usi N(int i) {
        int i2 = i / 3;
        return (usi) this.b[i2 + i2 + 1];
    }

    public final cui O(int i) {
        Object[] objArr = this.b;
        int i2 = i / 3;
        int i3 = i2 + i2;
        cui cuiVar = (cui) objArr[i3];
        if (cuiVar != null) {
            return cuiVar;
        }
        cui cuiVarB = xti.a().b((Class) objArr[i3 + 1]);
        objArr[i3] = cuiVarB;
        return cuiVarB;
    }

    public final Object P(Object obj, int i, Object obj2, pui puiVar, Object obj3) {
        int i2 = this.a[i];
        Object objP = vui.p(obj, L(i) & 1048575);
        if (objP == null || N(i) == null) {
            return obj2;
        }
        ubc.a(Q(i));
        throw null;
    }

    public final Object Q(int i) {
        int i2 = i / 3;
        return this.b[i2 + i2];
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006d  */
    /* JADX WARN: Code duplicated, block: B:28:0x0073  */
    /* JADX WARN: Code duplicated, block: B:41:0x0080 A[SYNTHETIC] */
    @Override
    public final void a(Object obj) {
        if (x(obj)) {
            if (obj instanceof ia) {
                ia iaVar = (ia) obj;
                iaVar.B();
                iaVar.A();
                iaVar.E();
            }
            int[] iArr = this.a;
            for (int i = 0; i < iArr.length; i += 3) {
                int iL = L(i);
                int i2 = 1048575 & iL;
                int iK = K(iL);
                long j = i2;
                if (iK != 9) {
                    if (iK != 60 && iK != 68) {
                        switch (iK) {
                            case 17:
                                if (u(obj, i)) {
                                    O(i).a(n.getObject(obj, j));
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
                                ((ysi) vui.p(obj, j)).zzb();
                                break;
                            case 50:
                                Unsafe unsafe = n;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((zzgza) object).zzc();
                                    unsafe.putObject(obj, j, object);
                                }
                                break;
                        }
                    } else if (y(obj, iArr[i], i)) {
                        O(i).a(n.getObject(obj, j));
                    }
                } else if (u(obj, i)) {
                    O(i).a(n.getObject(obj, j));
                }
            }
            this.k.i(obj);
            if (this.f) {
                this.l.a(obj);
            }
        }
    }

    @Override
    public final void b(Object obj, Object obj2) {
        k(obj);
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.a;
            if (i >= iArr.length) {
                pa.A(this.k, obj, obj2);
                if (this.f) {
                    pa.z(this.l, obj, obj2);
                    return;
                }
                return;
            }
            int iL = L(i);
            int i2 = 1048575 & iL;
            int iK = K(iL);
            int i3 = iArr[i];
            long j = i2;
            switch (iK) {
                case 0:
                    if (u(obj2, i)) {
                        vui.z(obj, j, vui.j(obj2, j));
                        o(obj, i);
                    }
                    break;
                case 1:
                    if (u(obj2, i)) {
                        vui.A(obj, j, vui.k(obj2, j));
                        o(obj, i);
                    }
                    break;
                case 2:
                    if (u(obj2, i)) {
                        vui.C(obj, j, vui.n(obj2, j));
                        o(obj, i);
                    }
                    break;
                case 3:
                    if (u(obj2, i)) {
                        vui.C(obj, j, vui.n(obj2, j));
                        o(obj, i);
                    }
                    break;
                case 4:
                    if (u(obj2, i)) {
                        vui.B(obj, j, vui.l(obj2, j));
                        o(obj, i);
                    }
                    break;
                case 5:
                    if (u(obj2, i)) {
                        vui.C(obj, j, vui.n(obj2, j));
                        o(obj, i);
                    }
                    break;
                case 6:
                    if (u(obj2, i)) {
                        vui.B(obj, j, vui.l(obj2, j));
                        o(obj, i);
                    }
                    break;
                case 7:
                    if (u(obj2, i)) {
                        vui.x(obj, j, vui.H(obj2, j));
                        o(obj, i);
                    }
                    break;
                case 8:
                    if (u(obj2, i)) {
                        vui.D(obj, j, vui.p(obj2, j));
                        o(obj, i);
                    }
                    break;
                case 9:
                    l(obj, obj2, i);
                    break;
                case 10:
                    if (u(obj2, i)) {
                        vui.D(obj, j, vui.p(obj2, j));
                        o(obj, i);
                    }
                    break;
                case 11:
                    if (u(obj2, i)) {
                        vui.B(obj, j, vui.l(obj2, j));
                        o(obj, i);
                    }
                    break;
                case 12:
                    if (u(obj2, i)) {
                        vui.B(obj, j, vui.l(obj2, j));
                        o(obj, i);
                    }
                    break;
                case 13:
                    if (u(obj2, i)) {
                        vui.B(obj, j, vui.l(obj2, j));
                        o(obj, i);
                    }
                    break;
                case 14:
                    if (u(obj2, i)) {
                        vui.C(obj, j, vui.n(obj2, j));
                        o(obj, i);
                    }
                    break;
                case 15:
                    if (u(obj2, i)) {
                        vui.B(obj, j, vui.l(obj2, j));
                        o(obj, i);
                    }
                    break;
                case 16:
                    if (u(obj2, i)) {
                        vui.C(obj, j, vui.n(obj2, j));
                        o(obj, i);
                    }
                    break;
                case 17:
                    l(obj, obj2, i);
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
                    ysi ysiVarE = (ysi) vui.p(obj, j);
                    ysi ysiVar = (ysi) vui.p(obj2, j);
                    int size = ysiVarE.size();
                    int size2 = ysiVar.size();
                    if (size > 0 && size2 > 0) {
                        if (!ysiVarE.zzc()) {
                            ysiVarE = ysiVarE.e(size2 + size);
                        }
                        ysiVarE.addAll(ysiVar);
                    }
                    if (size > 0) {
                        ysiVar = ysiVarE;
                    }
                    vui.D(obj, j, ysiVar);
                    break;
                case 50:
                    pui puiVar = pa.a;
                    vui.D(obj, j, mti.b(vui.p(obj, j), vui.p(obj2, j)));
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
                    if (y(obj2, i3, i)) {
                        vui.D(obj, j, vui.p(obj2, j));
                        p(obj, i3, i);
                    }
                    break;
                case 60:
                    m(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (y(obj2, i3, i)) {
                        vui.D(obj, j, vui.p(obj2, j));
                        p(obj, i3, i);
                    }
                    break;
                case 68:
                    m(obj, obj2, i);
                    break;
            }
            i += 3;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override
    public final void c(Object obj, bvi bviVar) throws Throwable {
        int i;
        int i2;
        int i3;
        int[] iArr;
        boolean z;
        boolean z2;
        Throwable th = null;
        if (this.f) {
            ubc.a(obj);
            throw null;
        }
        int[] iArr2 = this.a;
        Unsafe unsafe = n;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (i6 < iArr2.length) {
            int iL = L(i6);
            int iK = K(iL);
            int i7 = iArr2[i6];
            if (iK <= 17) {
                int i8 = iArr2[i6 + 2];
                int i9 = i8 & 1048575;
                if (i9 != i4) {
                    i5 = i9 == 1048575 ? 0 : unsafe.getInt(obj, i9);
                    i4 = i9;
                }
                i = i4;
                i2 = i5;
                i3 = 1 << (i8 >>> 20);
            } else {
                i = i4;
                i2 = i5;
                i3 = 0;
            }
            long j = iL & 1048575;
            switch (iK) {
                case 0:
                    iArr = iArr2;
                    if (v(obj, i6, i, i2, i3)) {
                        bviVar.e(i7, vui.j(obj, j));
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 1:
                    iArr = iArr2;
                    if (v(obj, i6, i, i2, i3)) {
                        bviVar.j(i7, vui.k(obj, j));
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 2:
                    iArr = iArr2;
                    if (v(obj, i6, i, i2, i3)) {
                        bviVar.n(i7, unsafe.getLong(obj, j));
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 3:
                    iArr = iArr2;
                    if (v(obj, i6, i, i2, i3)) {
                        bviVar.D(i7, unsafe.getLong(obj, j));
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 4:
                    iArr = iArr2;
                    if (v(obj, i6, i, i2, i3)) {
                        bviVar.b(i7, unsafe.getInt(obj, j));
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 5:
                    iArr = iArr2;
                    if (v(obj, i6, i, i2, i3)) {
                        bviVar.l(i7, unsafe.getLong(obj, j));
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 6:
                    iArr = iArr2;
                    if (v(obj, i6, i, i2, i3)) {
                        bviVar.f(i7, unsafe.getInt(obj, j));
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 7:
                    iArr = iArr2;
                    if (v(obj, i6, i, i2, i3)) {
                        bviVar.c(i7, vui.H(obj, j));
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 8:
                    iArr = iArr2;
                    if (v(obj, i6, i, i2, i3)) {
                        A(i7, unsafe.getObject(obj, j), bviVar);
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 9:
                    iArr = iArr2;
                    if (v(obj, i6, i, i2, i3)) {
                        bviVar.F(i7, unsafe.getObject(obj, j), O(i6));
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 10:
                    iArr = iArr2;
                    if (v(obj, i6, i, i2, i3)) {
                        bviVar.v(i7, (zzgwn) unsafe.getObject(obj, j));
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 11:
                    iArr = iArr2;
                    if (v(obj, i6, i, i2, i3)) {
                        bviVar.y(i7, unsafe.getInt(obj, j));
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 12:
                    iArr = iArr2;
                    if (v(obj, i6, i, i2, i3)) {
                        bviVar.h(i7, unsafe.getInt(obj, j));
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 13:
                    iArr = iArr2;
                    if (v(obj, i6, i, i2, i3)) {
                        bviVar.G(i7, unsafe.getInt(obj, j));
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 14:
                    iArr = iArr2;
                    if (v(obj, i6, i, i2, i3)) {
                        bviVar.J(i7, unsafe.getLong(obj, j));
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 15:
                    iArr = iArr2;
                    if (v(obj, i6, i, i2, i3)) {
                        bviVar.w(i7, unsafe.getInt(obj, j));
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 16:
                    iArr = iArr2;
                    if (v(obj, i6, i, i2, i3)) {
                        bviVar.u(i7, unsafe.getLong(obj, j));
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 17:
                    iArr = iArr2;
                    if (v(obj, i6, i, i2, i3)) {
                        bviVar.H(i7, unsafe.getObject(obj, j), O(i6));
                    }
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 18:
                    z = false;
                    pa.D(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, false);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 19:
                    z = false;
                    pa.H(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, false);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 20:
                    z = false;
                    pa.a(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, false);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 21:
                    z = false;
                    pa.i(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, false);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 22:
                    z = false;
                    pa.J(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, false);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 23:
                    z = false;
                    pa.G(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, false);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 24:
                    z = false;
                    pa.F(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, false);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 25:
                    z = false;
                    pa.B(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, false);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 26:
                    pa.g(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 27:
                    pa.b(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, O(i6));
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 28:
                    pa.C(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 29:
                    z2 = false;
                    pa.h(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, false);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 30:
                    z2 = false;
                    pa.E(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, false);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 31:
                    z2 = false;
                    pa.c(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, false);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 32:
                    z2 = false;
                    pa.d(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, false);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 33:
                    z2 = false;
                    pa.e(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, false);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 34:
                    z2 = false;
                    pa.f(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, false);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 35:
                    pa.D(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, true);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 36:
                    pa.H(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, true);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 37:
                    pa.a(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, true);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 38:
                    pa.i(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, true);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 39:
                    pa.J(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, true);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 40:
                    pa.G(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, true);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 41:
                    pa.F(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, true);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 42:
                    pa.B(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, true);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 43:
                    pa.h(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, true);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 44:
                    pa.E(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, true);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 45:
                    pa.c(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, true);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 46:
                    pa.d(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, true);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 47:
                    pa.e(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, true);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 48:
                    pa.f(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, true);
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 49:
                    pa.I(iArr2[i6], (List) unsafe.getObject(obj, j), bviVar, O(i6));
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 50:
                    if (unsafe.getObject(obj, j) != null) {
                        ubc.a(Q(i6));
                        throw th;
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 51:
                    if (y(obj, i7, i6)) {
                        bviVar.e(i7, E(obj, j));
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 52:
                    if (y(obj, i7, i6)) {
                        bviVar.j(i7, F(obj, j));
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 53:
                    if (y(obj, i7, i6)) {
                        bviVar.n(i7, M(obj, j));
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 54:
                    if (y(obj, i7, i6)) {
                        bviVar.D(i7, M(obj, j));
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 55:
                    if (y(obj, i7, i6)) {
                        bviVar.b(i7, G(obj, j));
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 56:
                    if (y(obj, i7, i6)) {
                        bviVar.l(i7, M(obj, j));
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 57:
                    if (y(obj, i7, i6)) {
                        bviVar.f(i7, G(obj, j));
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 58:
                    if (y(obj, i7, i6)) {
                        bviVar.c(i7, z(obj, j));
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 59:
                    if (y(obj, i7, i6)) {
                        A(i7, unsafe.getObject(obj, j), bviVar);
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 60:
                    if (y(obj, i7, i6)) {
                        bviVar.F(i7, unsafe.getObject(obj, j), O(i6));
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 61:
                    if (y(obj, i7, i6)) {
                        bviVar.v(i7, (zzgwn) unsafe.getObject(obj, j));
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 62:
                    if (y(obj, i7, i6)) {
                        bviVar.y(i7, G(obj, j));
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 63:
                    if (y(obj, i7, i6)) {
                        bviVar.h(i7, G(obj, j));
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 64:
                    if (y(obj, i7, i6)) {
                        bviVar.G(i7, G(obj, j));
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 65:
                    if (y(obj, i7, i6)) {
                        bviVar.J(i7, M(obj, j));
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 66:
                    if (y(obj, i7, i6)) {
                        bviVar.w(i7, G(obj, j));
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 67:
                    if (y(obj, i7, i6)) {
                        bviVar.u(i7, M(obj, j));
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                case 68:
                    if (y(obj, i7, i6)) {
                        bviVar.H(i7, unsafe.getObject(obj, j), O(i6));
                    }
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
                default:
                    iArr = iArr2;
                    i6 += 3;
                    i4 = i;
                    i5 = i2;
                    iArr2 = iArr;
                    th = null;
                    break;
            }
        }
        ((ia) obj).zzt.k(bviVar);
    }

    @Override
    public final void d(Object obj, byte[] bArr, int i, int i2, mri mriVar) {
        B(obj, bArr, i, i2, 0, mriVar);
    }

    /* JADX WARN: Code duplicated, block: B:138:0x0507  */
    /* JADX WARN: Code duplicated, block: B:316:? A[RETURN, SYNTHETIC] */
    @Override
    public final void e(Object obj, aui auiVar, esi esiVar) {
        esiVar.getClass();
        k(obj);
        pui puiVar = this.k;
        Object objA = null;
        while (true) {
            try {
                int iZzc = auiVar.zzc();
                int iH = H(iZzc);
                if (iH >= 0) {
                    int iL = L(iH);
                    try {
                        switch (K(iL)) {
                            case 0:
                                vui.z(obj, iL & 1048575, auiVar.zza());
                                o(obj, iH);
                                break;
                            case 1:
                                vui.A(obj, iL & 1048575, auiVar.zzb());
                                o(obj, iH);
                                break;
                            case 2:
                                vui.C(obj, iL & 1048575, auiVar.zzl());
                                o(obj, iH);
                                break;
                            case 3:
                                vui.C(obj, iL & 1048575, auiVar.zzo());
                                o(obj, iH);
                                break;
                            case 4:
                                vui.B(obj, iL & 1048575, auiVar.zzg());
                                o(obj, iH);
                                break;
                            case 5:
                                vui.C(obj, iL & 1048575, auiVar.zzk());
                                o(obj, iH);
                                break;
                            case 6:
                                vui.B(obj, iL & 1048575, auiVar.zzf());
                                o(obj, iH);
                                break;
                            case 7:
                                vui.x(obj, iL & 1048575, auiVar.zzN());
                                o(obj, iH);
                                break;
                            case 8:
                                n(obj, iL, auiVar);
                                o(obj, iH);
                                break;
                            case 9:
                                rti rtiVar = (rti) h(obj, iH);
                                auiVar.q(rtiVar, O(iH), esiVar);
                                q(obj, iH, rtiVar);
                                break;
                            case 10:
                                vui.D(obj, iL & 1048575, auiVar.zzp());
                                o(obj, iH);
                                break;
                            case 11:
                                vui.B(obj, iL & 1048575, auiVar.zzj());
                                o(obj, iH);
                                break;
                            case 12:
                                int iZze = auiVar.zze();
                                usi usiVarN = N(iH);
                                if (usiVarN == null || usiVarN.zza(iZze)) {
                                    vui.B(obj, iL & 1048575, iZze);
                                    o(obj, iH);
                                } else {
                                    objA = pa.y(obj, iZzc, iZze, objA, puiVar);
                                }
                                break;
                            case 13:
                                vui.B(obj, iL & 1048575, auiVar.zzh());
                                o(obj, iH);
                                break;
                            case 14:
                                vui.C(obj, iL & 1048575, auiVar.zzm());
                                o(obj, iH);
                                break;
                            case 15:
                                vui.B(obj, iL & 1048575, auiVar.zzi());
                                o(obj, iH);
                                break;
                            case 16:
                                vui.C(obj, iL & 1048575, auiVar.zzn());
                                o(obj, iH);
                                break;
                            case 17:
                                rti rtiVar2 = (rti) h(obj, iH);
                                auiVar.l(rtiVar2, O(iH), esiVar);
                                q(obj, iH, rtiVar2);
                                break;
                            case 18:
                                auiVar.b(cti.a(obj, iL & 1048575));
                                break;
                            case 19:
                                auiVar.s(cti.a(obj, iL & 1048575));
                                break;
                            case 20:
                                auiVar.m(cti.a(obj, iL & 1048575));
                                break;
                            case 21:
                                auiVar.h(cti.a(obj, iL & 1048575));
                                break;
                            case 22:
                                auiVar.n(cti.a(obj, iL & 1048575));
                                break;
                            case 23:
                                auiVar.r(cti.a(obj, iL & 1048575));
                                break;
                            case 24:
                                auiVar.f(cti.a(obj, iL & 1048575));
                                break;
                            case 25:
                                auiVar.g(cti.a(obj, iL & 1048575));
                                break;
                            case 26:
                                if (t(iL)) {
                                    ((wri) auiVar).t(cti.a(obj, iL & 1048575), true);
                                } else {
                                    ((wri) auiVar).t(cti.a(obj, iL & 1048575), false);
                                }
                                break;
                            case 27:
                                auiVar.d(cti.a(obj, iL & 1048575), O(iH), esiVar);
                                break;
                            case 28:
                                auiVar.c(cti.a(obj, iL & 1048575));
                                break;
                            case 29:
                                auiVar.k(cti.a(obj, iL & 1048575));
                                break;
                            case 30:
                                List listA = cti.a(obj, iL & 1048575);
                                auiVar.a(listA);
                                objA = pa.x(obj, iZzc, listA, N(iH), objA, puiVar);
                                break;
                            case 31:
                                auiVar.p(cti.a(obj, iL & 1048575));
                                break;
                            case 32:
                                auiVar.o(cti.a(obj, iL & 1048575));
                                break;
                            case 33:
                                auiVar.j(cti.a(obj, iL & 1048575));
                                break;
                            case 34:
                                auiVar.i(cti.a(obj, iL & 1048575));
                                break;
                            case 35:
                                auiVar.b(cti.a(obj, iL & 1048575));
                                break;
                            case 36:
                                auiVar.s(cti.a(obj, iL & 1048575));
                                break;
                            case 37:
                                auiVar.m(cti.a(obj, iL & 1048575));
                                break;
                            case 38:
                                auiVar.h(cti.a(obj, iL & 1048575));
                                break;
                            case 39:
                                auiVar.n(cti.a(obj, iL & 1048575));
                                break;
                            case 40:
                                auiVar.r(cti.a(obj, iL & 1048575));
                                break;
                            case 41:
                                auiVar.f(cti.a(obj, iL & 1048575));
                                break;
                            case 42:
                                auiVar.g(cti.a(obj, iL & 1048575));
                                break;
                            case 43:
                                auiVar.k(cti.a(obj, iL & 1048575));
                                break;
                            case 44:
                                List listA2 = cti.a(obj, iL & 1048575);
                                auiVar.a(listA2);
                                objA = pa.x(obj, iZzc, listA2, N(iH), objA, puiVar);
                                break;
                            case 45:
                                auiVar.p(cti.a(obj, iL & 1048575));
                                break;
                            case 46:
                                auiVar.o(cti.a(obj, iL & 1048575));
                                break;
                            case 47:
                                auiVar.j(cti.a(obj, iL & 1048575));
                                break;
                            case 48:
                                auiVar.i(cti.a(obj, iL & 1048575));
                                break;
                            case 49:
                                auiVar.e(cti.a(obj, iL & 1048575), O(iH), esiVar);
                                break;
                            case 50:
                                Object objQ = Q(iH);
                                long jL = L(iH) & 1048575;
                                Object objP = vui.p(obj, jL);
                                if (objP == null) {
                                    objP = zzgza.zza().zzb();
                                    vui.D(obj, jL, objP);
                                } else if (mti.a(objP)) {
                                    Object objZzb = zzgza.zza().zzb();
                                    mti.b(objZzb, objP);
                                    vui.D(obj, jL, objZzb);
                                    objP = objZzb;
                                }
                                ubc.a(objQ);
                                throw null;
                            case 51:
                                vui.D(obj, iL & 1048575, Double.valueOf(auiVar.zza()));
                                p(obj, iZzc, iH);
                                break;
                            case 52:
                                vui.D(obj, iL & 1048575, Float.valueOf(auiVar.zzb()));
                                p(obj, iZzc, iH);
                                break;
                            case 53:
                                vui.D(obj, iL & 1048575, Long.valueOf(auiVar.zzl()));
                                p(obj, iZzc, iH);
                                break;
                            case 54:
                                vui.D(obj, iL & 1048575, Long.valueOf(auiVar.zzo()));
                                p(obj, iZzc, iH);
                                break;
                            case 55:
                                vui.D(obj, iL & 1048575, Integer.valueOf(auiVar.zzg()));
                                p(obj, iZzc, iH);
                                break;
                            case 56:
                                vui.D(obj, iL & 1048575, Long.valueOf(auiVar.zzk()));
                                p(obj, iZzc, iH);
                                break;
                            case 57:
                                vui.D(obj, iL & 1048575, Integer.valueOf(auiVar.zzf()));
                                p(obj, iZzc, iH);
                                break;
                            case 58:
                                vui.D(obj, iL & 1048575, Boolean.valueOf(auiVar.zzN()));
                                p(obj, iZzc, iH);
                                break;
                            case 59:
                                n(obj, iL, auiVar);
                                p(obj, iZzc, iH);
                                break;
                            case 60:
                                rti rtiVar3 = (rti) i(obj, iZzc, iH);
                                auiVar.q(rtiVar3, O(iH), esiVar);
                                r(obj, iZzc, iH, rtiVar3);
                                break;
                            case 61:
                                vui.D(obj, iL & 1048575, auiVar.zzp());
                                p(obj, iZzc, iH);
                                break;
                            case 62:
                                vui.D(obj, iL & 1048575, Integer.valueOf(auiVar.zzj()));
                                p(obj, iZzc, iH);
                                break;
                            case 63:
                                int iZze2 = auiVar.zze();
                                usi usiVarN2 = N(iH);
                                if (usiVarN2 == null || usiVarN2.zza(iZze2)) {
                                    vui.D(obj, iL & 1048575, Integer.valueOf(iZze2));
                                    p(obj, iZzc, iH);
                                } else {
                                    objA = pa.y(obj, iZzc, iZze2, objA, puiVar);
                                }
                                break;
                            case 64:
                                vui.D(obj, iL & 1048575, Integer.valueOf(auiVar.zzh()));
                                p(obj, iZzc, iH);
                                break;
                            case 65:
                                vui.D(obj, iL & 1048575, Long.valueOf(auiVar.zzm()));
                                p(obj, iZzc, iH);
                                break;
                            case 66:
                                vui.D(obj, iL & 1048575, Integer.valueOf(auiVar.zzi()));
                                p(obj, iZzc, iH);
                                break;
                            case 67:
                                vui.D(obj, iL & 1048575, Long.valueOf(auiVar.zzn()));
                                p(obj, iZzc, iH);
                                break;
                            case 68:
                                rti rtiVar4 = (rti) i(obj, iZzc, iH);
                                auiVar.l(rtiVar4, O(iH), esiVar);
                                r(obj, iZzc, iH, rtiVar4);
                                break;
                            default:
                                if (objA == null) {
                                    objA = puiVar.a(obj);
                                }
                                if (!puiVar.k(objA, auiVar, 0)) {
                                    for (int i = this.i; i < this.j; i++) {
                                        P(obj, this.h[i], objA, puiVar, obj);
                                    }
                                }
                                break;
                        }
                    } catch (zzgyj unused) {
                        if (objA == null) {
                            objA = puiVar.a(obj);
                        }
                        if (!puiVar.k(objA, auiVar, 0)) {
                            for (int i2 = this.i; i2 < this.j; i2++) {
                                P(obj, this.h[i2], objA, puiVar, obj);
                            }
                            if (objA != null) {
                                puiVar.j(obj, objA);
                            }
                        }
                    }
                } else if (iZzc == Integer.MAX_VALUE) {
                    for (int i3 = this.i; i3 < this.j; i3++) {
                        P(obj, this.h[i3], objA, puiVar, obj);
                    }
                } else {
                    if (this.f) {
                        esiVar.c(this.e, iZzc);
                    }
                    if (objA == null) {
                        objA = puiVar.a(obj);
                    }
                    if (!puiVar.k(objA, auiVar, 0)) {
                        for (int i4 = this.i; i4 < this.j; i4++) {
                            P(obj, this.h[i4], objA, puiVar, obj);
                        }
                    }
                }
            } catch (Throwable th) {
                for (int i5 = this.i; i5 < this.j; i5++) {
                    P(obj, this.h[i5], objA, puiVar, obj);
                }
                if (objA != null) {
                    puiVar.j(obj, objA);
                }
                throw th;
            }
        }
        if (objA != null) {
            puiVar.j(obj, objA);
        }
    }

    @Override
    public final boolean f(Object obj, Object obj2) {
        boolean zJ;
        for (int i = 0; i < this.a.length; i += 3) {
            int iL = L(i);
            long j = iL & 1048575;
            switch (K(iL)) {
                case 0:
                    if (!s(obj, obj2, i) || Double.doubleToLongBits(vui.j(obj, j)) != Double.doubleToLongBits(vui.j(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!s(obj, obj2, i) || Float.floatToIntBits(vui.k(obj, j)) != Float.floatToIntBits(vui.k(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!s(obj, obj2, i) || vui.n(obj, j) != vui.n(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!s(obj, obj2, i) || vui.n(obj, j) != vui.n(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!s(obj, obj2, i) || vui.l(obj, j) != vui.l(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!s(obj, obj2, i) || vui.n(obj, j) != vui.n(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!s(obj, obj2, i) || vui.l(obj, j) != vui.l(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!s(obj, obj2, i) || vui.H(obj, j) != vui.H(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!s(obj, obj2, i) || !pa.j(vui.p(obj, j), vui.p(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!s(obj, obj2, i) || !pa.j(vui.p(obj, j), vui.p(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!s(obj, obj2, i) || !pa.j(vui.p(obj, j), vui.p(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!s(obj, obj2, i) || vui.l(obj, j) != vui.l(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!s(obj, obj2, i) || vui.l(obj, j) != vui.l(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!s(obj, obj2, i) || vui.l(obj, j) != vui.l(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!s(obj, obj2, i) || vui.n(obj, j) != vui.n(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!s(obj, obj2, i) || vui.l(obj, j) != vui.l(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!s(obj, obj2, i) || vui.n(obj, j) != vui.n(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!s(obj, obj2, i) || !pa.j(vui.p(obj, j), vui.p(obj2, j))) {
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
                    zJ = pa.j(vui.p(obj, j), vui.p(obj2, j));
                    break;
                case 50:
                    zJ = pa.j(vui.p(obj, j), vui.p(obj2, j));
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
                    long jI = I(i) & 1048575;
                    if (vui.l(obj, jI) != vui.l(obj2, jI) || !pa.j(vui.p(obj, j), vui.p(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zJ) {
                return false;
            }
        }
        if (!((ia) obj).zzt.equals(((ia) obj2).zzt)) {
            return false;
        }
        if (!this.f) {
            return true;
        }
        ubc.a(obj);
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009d  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c2 A[LOOP:1: B:45:0x00b1->B:50:0x00c2, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:66:0x00c1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x00e0 A[SYNTHETIC] */
    @Override
    public final boolean g(Object obj) {
        int i;
        int i2;
        List list;
        cui cuiVarO;
        int i3;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        while (i5 < this.i) {
            int[] iArr = this.h;
            int[] iArr2 = this.a;
            int i7 = iArr[i5];
            int i8 = iArr2[i7];
            int iL = L(i7);
            int i9 = iArr2[i7 + 2];
            int i10 = i9 & 1048575;
            int i11 = 1 << (i9 >>> 20);
            if (i10 != i6) {
                if (i10 != 1048575) {
                    i4 = n.getInt(obj, i10);
                }
                i2 = i4;
                i = i10;
            } else {
                i = i6;
                i2 = i4;
            }
            if ((268435456 & iL) != 0 && !v(obj, i7, i, i2, i11)) {
                return false;
            }
            int iK = K(iL);
            if (iK == 9 || iK == 17) {
                if (v(obj, i7, i, i2, i11) && !w(obj, iL, O(i7))) {
                    return false;
                }
            } else if (iK == 27) {
                list = (List) vui.p(obj, iL & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    cuiVarO = O(i7);
                    for (i3 = 0; i3 < list.size(); i3++) {
                        if (!cuiVarO.g(list.get(i3))) {
                            return false;
                        }
                    }
                }
            } else if (iK == 60 || iK == 68) {
                if (y(obj, i8, i7) && !w(obj, iL, O(i7))) {
                    return false;
                }
            } else if (iK == 49) {
                list = (List) vui.p(obj, iL & 1048575);
                if (list.isEmpty()) {
                    cuiVarO = O(i7);
                    while (i3 < list.size()) {
                        if (!cuiVarO.g(list.get(i3))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iK == 50 && !((zzgza) vui.p(obj, iL & 1048575)).isEmpty()) {
                ubc.a(Q(i7));
                throw null;
            }
            i5++;
            i6 = i;
            i4 = i2;
        }
        if (!this.f) {
            return true;
        }
        ubc.a(obj);
        throw null;
    }

    public final Object h(Object obj, int i) {
        cui cuiVarO = O(i);
        int iL = L(i) & 1048575;
        if (!u(obj, i)) {
            return cuiVarO.zze();
        }
        Object object = n.getObject(obj, iL);
        if (x(object)) {
            return object;
        }
        Object objZze = cuiVarO.zze();
        if (object != null) {
            cuiVarO.b(objZze, object);
        }
        return objZze;
    }

    public final Object i(Object obj, int i, int i2) {
        cui cuiVarO = O(i2);
        if (!y(obj, i, i2)) {
            return cuiVarO.zze();
        }
        Object object = n.getObject(obj, L(i2) & 1048575);
        if (x(object)) {
            return object;
        }
        Object objZze = cuiVarO.zze();
        if (object != null) {
            cuiVarO.b(objZze, object);
        }
        return objZze;
    }

    public final void l(Object obj, Object obj2, int i) {
        if (u(obj2, i)) {
            int iL = L(i) & 1048575;
            Unsafe unsafe = n;
            long j = iL;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.a[i] + " is present but null: " + obj2.toString());
            }
            cui cuiVarO = O(i);
            if (!u(obj, i)) {
                if (x(object)) {
                    Object objZze = cuiVarO.zze();
                    cuiVarO.b(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                o(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!x(object2)) {
                Object objZze2 = cuiVarO.zze();
                cuiVarO.b(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            cuiVarO.b(object2, object);
        }
    }

    public final void m(Object obj, Object obj2, int i) {
        int[] iArr = this.a;
        int i2 = iArr[i];
        if (y(obj2, i2, i)) {
            int iL = L(i) & 1048575;
            Unsafe unsafe = n;
            long j = iL;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i] + " is present but null: " + obj2.toString());
            }
            cui cuiVarO = O(i);
            if (!y(obj, i2, i)) {
                if (x(object)) {
                    Object objZze = cuiVarO.zze();
                    cuiVarO.b(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                p(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!x(object2)) {
                Object objZze2 = cuiVarO.zze();
                cuiVarO.b(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            cuiVarO.b(object2, object);
        }
    }

    public final void n(Object obj, int i, aui auiVar) {
        long j = i & 1048575;
        if (t(i)) {
            vui.D(obj, j, auiVar.zzs());
        } else if (this.g) {
            vui.D(obj, j, auiVar.zzr());
        } else {
            vui.D(obj, j, auiVar.zzp());
        }
    }

    public final void o(Object obj, int i) {
        int I = I(i);
        long j = 1048575 & I;
        if (j == 1048575) {
            return;
        }
        vui.B(obj, j, (1 << (I >>> 20)) | vui.l(obj, j));
    }

    public final void p(Object obj, int i, int i2) {
        vui.B(obj, I(i2) & 1048575, i);
    }

    public final void q(Object obj, int i, Object obj2) {
        n.putObject(obj, L(i) & 1048575, obj2);
        o(obj, i);
    }

    public final void r(Object obj, int i, int i2, Object obj2) {
        n.putObject(obj, L(i2) & 1048575, obj2);
        p(obj, i, i2);
    }

    public final boolean s(Object obj, Object obj2, int i) {
        return u(obj, i) == u(obj2, i);
    }

    public final boolean u(Object obj, int i) {
        int I = I(i);
        long j = I & 1048575;
        if (j != 1048575) {
            return ((1 << (I >>> 20)) & vui.l(obj, j)) != 0;
        }
        int iL = L(i);
        long j2 = iL & 1048575;
        switch (K(iL)) {
            case 0:
                return Double.doubleToRawLongBits(vui.j(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(vui.k(obj, j2)) != 0;
            case 2:
                return vui.n(obj, j2) != 0;
            case 3:
                return vui.n(obj, j2) != 0;
            case 4:
                return vui.l(obj, j2) != 0;
            case 5:
                return vui.n(obj, j2) != 0;
            case 6:
                return vui.l(obj, j2) != 0;
            case 7:
                return vui.H(obj, j2);
            case 8:
                Object objP = vui.p(obj, j2);
                if (objP instanceof String) {
                    return !((String) objP).isEmpty();
                }
                if (objP instanceof zzgwn) {
                    return !zzgwn.zzb.equals(objP);
                }
                throw new IllegalArgumentException();
            case 9:
                return vui.p(obj, j2) != null;
            case 10:
                return !zzgwn.zzb.equals(vui.p(obj, j2));
            case 11:
                return vui.l(obj, j2) != 0;
            case 12:
                return vui.l(obj, j2) != 0;
            case 13:
                return vui.l(obj, j2) != 0;
            case 14:
                return vui.n(obj, j2) != 0;
            case 15:
                return vui.l(obj, j2) != 0;
            case 16:
                return vui.n(obj, j2) != 0;
            case 17:
                return vui.p(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final boolean v(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return u(obj, i);
        }
        return (i3 & i4) != 0;
    }

    public final boolean y(Object obj, int i, int i2) {
        return vui.l(obj, (long) (I(i2) & 1048575)) == i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:143:0x038e  */
    /* JADX WARN: Code duplicated, block: B:204:0x0511  */
    /* JADX WARN: Code duplicated, block: B:227:0x05cf A[PHI: r13 r18
      0x05cf: PHI (r13v6 int) = 
      (r13v1 int)
      (r13v1 int)
      (r13v1 int)
      (r13v1 int)
      (r13v1 int)
      (r13v1 int)
      (r13v1 int)
      (r13v5 int)
      (r13v1 int)
      (r13v1 int)
     binds: [B:247:0x06c1, B:244:0x0694, B:241:0x066f, B:238:0x0649, B:235:0x062b, B:232:0x060e, B:229:0x05e6, B:226:0x05ce, B:223:0x05b8, B:219:0x058e] A[DONT_GENERATE, DONT_INLINE]
      0x05cf: PHI (r18v10 int) = 
      (r18v0 int)
      (r18v1 int)
      (r18v2 int)
      (r18v3 int)
      (r18v4 int)
      (r18v5 int)
      (r18v6 int)
      (r18v7 int)
      (r18v9 int)
      (r18v11 int)
     binds: [B:247:0x06c1, B:244:0x0694, B:241:0x066f, B:238:0x0649, B:235:0x062b, B:232:0x060e, B:229:0x05e6, B:226:0x05ce, B:223:0x05b8, B:219:0x058e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:92:0x021a  */
    @Override
    public final int zza(Object obj) {
        int i;
        int i2;
        int i3;
        int i4;
        int iE;
        int iE2;
        int iE3;
        int iF;
        int iE4;
        int i5;
        int i6;
        int iR;
        int iE5;
        int iE6;
        int iE7;
        boolean z;
        int iN;
        int iQ;
        int size;
        int iV;
        int iE8;
        int iN2;
        boolean z2;
        int iL;
        int iD;
        int iE9;
        int iE10;
        int size2;
        int iU;
        int iE11;
        int iF2;
        int iO;
        int iE12;
        int iE13;
        int iE14;
        int iE15;
        int iE16;
        int iZzd;
        int iE17;
        Unsafe unsafe = n;
        int i7 = 1048575;
        int i8 = 1048575;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int[] iArr = this.a;
            if (i10 >= iArr.length) {
                int iA = i11 + ((ia) obj).zzt.a();
                if (!this.f) {
                    return iA;
                }
                ubc.a(obj);
                throw null;
            }
            int iL2 = L(i10);
            int iK = K(iL2);
            int i12 = iArr[i10];
            int i13 = iArr[i10 + 2];
            int i14 = i13 & i7;
            if (iK <= 17) {
                if (i14 != i8) {
                    i9 = i14 == i7 ? 0 : unsafe.getInt(obj, i14);
                    i8 = i14;
                }
                i = i8;
                i2 = i9;
                i3 = 1 << (i13 >>> 20);
            } else {
                i = i8;
                i2 = i9;
                i3 = 0;
            }
            int i15 = iL2 & i7;
            if (iK >= zzgxl.zzJ.zza()) {
                zzgxl.zzW.zza();
            }
            long j = i15;
            switch (iK) {
                case 0:
                    i4 = i10;
                    if (v(obj, i4, i, i2, i3)) {
                        iE = ha.e(i12 << 3);
                        iE4 = iE + 8;
                        i11 += iE4;
                    }
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 1:
                    i4 = i10;
                    if (v(obj, i4, i, i2, i3)) {
                        iE2 = ha.e(i12 << 3);
                        iE4 = iE2 + 4;
                        i11 += iE4;
                    }
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 2:
                    i4 = i10;
                    if (v(obj, i4, i, i2, i3)) {
                        long j2 = unsafe.getLong(obj, j);
                        iE3 = ha.e(i12 << 3);
                        iF = ha.f(j2);
                        iE4 = iE3 + iF;
                        i11 += iE4;
                    }
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 3:
                    i4 = i10;
                    if (v(obj, i4, i, i2, i3)) {
                        long j3 = unsafe.getLong(obj, j);
                        iE3 = ha.e(i12 << 3);
                        iF = ha.f(j3);
                        iE4 = iE3 + iF;
                        i11 += iE4;
                    }
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 4:
                    i4 = i10;
                    if (v(obj, i4, i, i2, i3)) {
                        long j4 = unsafe.getInt(obj, j);
                        iE3 = ha.e(i12 << 3);
                        iF = ha.f(j4);
                        iE4 = iE3 + iF;
                        i11 += iE4;
                    }
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 5:
                    i4 = i10;
                    if (v(obj, i4, i, i2, i3)) {
                        iE = ha.e(i12 << 3);
                        iE4 = iE + 8;
                        i11 += iE4;
                    }
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 6:
                    i4 = i10;
                    if (v(obj, i4, i, i2, i3)) {
                        iE2 = ha.e(i12 << 3);
                        iE4 = iE2 + 4;
                        i11 += iE4;
                    }
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 7:
                    i4 = i10;
                    if (v(obj, i4, i, i2, i3)) {
                        iE4 = ha.e(i12 << 3) + 1;
                        i11 += iE4;
                    }
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 8:
                    int i16 = i10;
                    i4 = i16;
                    if (v(obj, i16, i, i2, i3)) {
                        int i17 = i12 << 3;
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof zzgwn) {
                            int iE18 = ha.e(i17);
                            int iZzd2 = ((zzgwn) object).zzd();
                            iE4 = iE18 + ha.e(iZzd2) + iZzd2;
                        } else {
                            iE3 = ha.e(i17);
                            iF = ha.d((String) object);
                            iE4 = iE3 + iF;
                        }
                        i11 += iE4;
                    }
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 9:
                    i5 = i10;
                    if (v(obj, i5, i, i2, i3)) {
                        i6 = i5;
                        iR = pa.r(i12, unsafe.getObject(obj, j), O(i6));
                        i11 += iR;
                        i4 = i6;
                    } else {
                        i4 = i5;
                    }
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 10:
                    i5 = i10;
                    if (v(obj, i5, i, i2, i3)) {
                        zzgwn zzgwnVar = (zzgwn) unsafe.getObject(obj, j);
                        int iE19 = ha.e(i12 << 3);
                        int iZzd3 = zzgwnVar.zzd();
                        iE5 = iE19 + ha.e(iZzd3) + iZzd3;
                        i11 += iE5;
                    }
                    i4 = i5;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 11:
                    i5 = i10;
                    if (v(obj, i5, i, i2, i3)) {
                        int i18 = unsafe.getInt(obj, j);
                        iE6 = ha.e(i12 << 3);
                        iE7 = ha.e(i18);
                        iE5 = iE6 + iE7;
                        i11 += iE5;
                    }
                    i4 = i5;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 12:
                    i5 = i10;
                    if (v(obj, i5, i, i2, i3)) {
                        long j5 = unsafe.getInt(obj, j);
                        iE6 = ha.e(i12 << 3);
                        iE7 = ha.f(j5);
                        iE5 = iE6 + iE7;
                        i11 += iE5;
                    }
                    i4 = i5;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 13:
                    i5 = i10;
                    if (v(obj, i5, i, i2, i3)) {
                        iE5 = ha.e(i12 << 3) + 4;
                        i11 += iE5;
                    }
                    i4 = i5;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 14:
                    i5 = i10;
                    if (v(obj, i5, i, i2, i3)) {
                        iE5 = ha.e(i12 << 3) + 8;
                        i11 += iE5;
                    }
                    i4 = i5;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 15:
                    i5 = i10;
                    if (v(obj, i5, i, i2, i3)) {
                        int i19 = unsafe.getInt(obj, j);
                        iE6 = ha.e(i12 << 3);
                        iE7 = ha.e((i19 >> 31) ^ (i19 + i19));
                        iE5 = iE6 + iE7;
                        i11 += iE5;
                    }
                    i4 = i5;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 16:
                    int i20 = i10;
                    i5 = i20;
                    if (v(obj, i20, i, i2, i3)) {
                        long j6 = unsafe.getLong(obj, j);
                        iE6 = ha.e(i12 << 3);
                        iE7 = ha.f((j6 >> 63) ^ (j6 + j6));
                        iE5 = iE6 + iE7;
                        i11 += iE5;
                    }
                    i4 = i5;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 17:
                    i5 = i10;
                    if (v(obj, i10, i, i2, i3)) {
                        i6 = i5;
                        iR = ha.B(i12, (rti) unsafe.getObject(obj, j), O(i6));
                        i11 += iR;
                        i4 = i6;
                    } else {
                        i4 = i5;
                    }
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 18:
                    z = false;
                    iN = pa.n(i12, (List) unsafe.getObject(obj, j), false);
                    i11 += iN;
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 19:
                    z = false;
                    iN = pa.l(i12, (List) unsafe.getObject(obj, j), false);
                    i11 += iN;
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j);
                    pui puiVar = pa.a;
                    if (list.size() == 0) {
                        iQ = 0;
                    } else {
                        iQ = pa.q(list) + (list.size() * ha.e(i12 << 3));
                    }
                    i11 += iQ;
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j);
                    pui puiVar2 = pa.a;
                    size = list2.size();
                    if (size == 0) {
                        iQ = 0;
                    } else {
                        iV = pa.v(list2);
                        iE8 = ha.e(i12 << 3);
                        iQ = (size * iE8) + iV;
                    }
                    i11 += iQ;
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j);
                    pui puiVar3 = pa.a;
                    size = list3.size();
                    if (size == 0) {
                        iQ = 0;
                    } else {
                        iV = pa.p(list3);
                        iE8 = ha.e(i12 << 3);
                        iQ = (size * iE8) + iV;
                    }
                    i11 += iQ;
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 23:
                    iN2 = pa.n(i12, (List) unsafe.getObject(obj, j), false);
                    i11 += iN2;
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 24:
                    z2 = false;
                    iL = pa.l(i12, (List) unsafe.getObject(obj, j), false);
                    i11 += iL;
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j);
                    pui puiVar4 = pa.a;
                    int size3 = list4.size();
                    if (size3 == 0) {
                        iN2 = 0;
                    } else {
                        iN2 = size3 * (ha.e(i12 << 3) + 1);
                    }
                    i11 += iN2;
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 26:
                    List list5 = (List) unsafe.getObject(obj, j);
                    pui puiVar5 = pa.a;
                    int size4 = list5.size();
                    if (size4 == 0) {
                        iD = 0;
                    } else {
                        int iE20 = ha.e(i12 << 3) * size4;
                        if (list5 instanceof bti) {
                            bti btiVar = (bti) list5;
                            iD = iE20;
                            for (int i21 = 0; i21 < size4; i21++) {
                                Object objZzc = btiVar.zzc();
                                if (objZzc instanceof zzgwn) {
                                    int iZzd4 = ((zzgwn) objZzc).zzd();
                                    iD += ha.e(iZzd4) + iZzd4;
                                } else {
                                    iD += ha.d((String) objZzc);
                                }
                            }
                        } else {
                            iD = iE20;
                            for (int i22 = 0; i22 < size4; i22++) {
                                Object obj2 = list5.get(i22);
                                if (obj2 instanceof zzgwn) {
                                    int iZzd5 = ((zzgwn) obj2).zzd();
                                    iD += ha.e(iZzd5) + iZzd5;
                                } else {
                                    iD += ha.d((String) obj2);
                                }
                            }
                        }
                    }
                    i11 += iD;
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 27:
                    List list6 = (List) unsafe.getObject(obj, j);
                    cui cuiVarO = O(i10);
                    pui puiVar6 = pa.a;
                    int size5 = list6.size();
                    if (size5 == 0) {
                        iE9 = 0;
                    } else {
                        iE9 = ha.e(i12 << 3) * size5;
                        for (int i23 = 0; i23 < size5; i23++) {
                            iE9 += ha.b((rti) list6.get(i23), cuiVarO);
                        }
                    }
                    i11 += iE9;
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 28:
                    List list7 = (List) unsafe.getObject(obj, j);
                    pui puiVar7 = pa.a;
                    int size6 = list7.size();
                    if (size6 == 0) {
                        iE10 = 0;
                    } else {
                        iE10 = size6 * ha.e(i12 << 3);
                        for (int i24 = 0; i24 < list7.size(); i24++) {
                            int iZzd6 = ((zzgwn) list7.get(i24)).zzd();
                            iE10 += ha.e(iZzd6) + iZzd6;
                        }
                    }
                    i11 += iE10;
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 29:
                    List list8 = (List) unsafe.getObject(obj, j);
                    pui puiVar8 = pa.a;
                    size2 = list8.size();
                    if (size2 == 0) {
                        iN2 = 0;
                    } else {
                        iU = pa.u(list8);
                        iE11 = ha.e(i12 << 3);
                        iF2 = size2 * iE11;
                        iN2 = iU + iF2;
                    }
                    i11 += iN2;
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 30:
                    List list9 = (List) unsafe.getObject(obj, j);
                    pui puiVar9 = pa.a;
                    size2 = list9.size();
                    if (size2 == 0) {
                        iN2 = 0;
                    } else {
                        iU = pa.k(list9);
                        iE11 = ha.e(i12 << 3);
                        iF2 = size2 * iE11;
                        iN2 = iU + iF2;
                    }
                    i11 += iN2;
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 31:
                    iN2 = pa.l(i12, (List) unsafe.getObject(obj, j), false);
                    i11 += iN2;
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 32:
                    z2 = false;
                    iL = pa.n(i12, (List) unsafe.getObject(obj, j), false);
                    i11 += iL;
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 33:
                    List list10 = (List) unsafe.getObject(obj, j);
                    pui puiVar10 = pa.a;
                    size2 = list10.size();
                    if (size2 == 0) {
                        iN2 = 0;
                    } else {
                        iU = pa.s(list10);
                        iE11 = ha.e(i12 << 3);
                        iF2 = size2 * iE11;
                        iN2 = iU + iF2;
                    }
                    i11 += iN2;
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 34:
                    List list11 = (List) unsafe.getObject(obj, j);
                    pui puiVar11 = pa.a;
                    size2 = list11.size();
                    if (size2 == 0) {
                        iN2 = 0;
                    } else {
                        iU = pa.t(list11);
                        iE11 = ha.e(i12 << 3);
                        iF2 = size2 * iE11;
                        iN2 = iU + iF2;
                    }
                    i11 += iN2;
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 35:
                    iO = pa.o((List) unsafe.getObject(obj, j));
                    if (iO > 0) {
                        iE12 = ha.e(i12 << 3);
                        iE13 = ha.e(iO);
                        iQ = iE12 + iE13 + iO;
                        i11 += iQ;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 36:
                    iO = pa.m((List) unsafe.getObject(obj, j));
                    if (iO > 0) {
                        iE12 = ha.e(i12 << 3);
                        iE13 = ha.e(iO);
                        iQ = iE12 + iE13 + iO;
                        i11 += iQ;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 37:
                    iO = pa.q((List) unsafe.getObject(obj, j));
                    if (iO > 0) {
                        iE12 = ha.e(i12 << 3);
                        iE13 = ha.e(iO);
                        iQ = iE12 + iE13 + iO;
                        i11 += iQ;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 38:
                    iO = pa.v((List) unsafe.getObject(obj, j));
                    if (iO > 0) {
                        iE12 = ha.e(i12 << 3);
                        iE13 = ha.e(iO);
                        iQ = iE12 + iE13 + iO;
                        i11 += iQ;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 39:
                    iO = pa.p((List) unsafe.getObject(obj, j));
                    if (iO > 0) {
                        iE12 = ha.e(i12 << 3);
                        iE13 = ha.e(iO);
                        iQ = iE12 + iE13 + iO;
                        i11 += iQ;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 40:
                    iO = pa.o((List) unsafe.getObject(obj, j));
                    if (iO > 0) {
                        iE12 = ha.e(i12 << 3);
                        iE13 = ha.e(iO);
                        iQ = iE12 + iE13 + iO;
                        i11 += iQ;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 41:
                    iO = pa.m((List) unsafe.getObject(obj, j));
                    if (iO > 0) {
                        iE12 = ha.e(i12 << 3);
                        iE13 = ha.e(iO);
                        iQ = iE12 + iE13 + iO;
                        i11 += iQ;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 42:
                    List list12 = (List) unsafe.getObject(obj, j);
                    pui puiVar12 = pa.a;
                    iO = list12.size();
                    if (iO > 0) {
                        iE12 = ha.e(i12 << 3);
                        iE13 = ha.e(iO);
                        iQ = iE12 + iE13 + iO;
                        i11 += iQ;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 43:
                    iO = pa.u((List) unsafe.getObject(obj, j));
                    if (iO > 0) {
                        iE12 = ha.e(i12 << 3);
                        iE13 = ha.e(iO);
                        iQ = iE12 + iE13 + iO;
                        i11 += iQ;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 44:
                    iO = pa.k((List) unsafe.getObject(obj, j));
                    if (iO > 0) {
                        iE12 = ha.e(i12 << 3);
                        iE13 = ha.e(iO);
                        iQ = iE12 + iE13 + iO;
                        i11 += iQ;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 45:
                    iO = pa.m((List) unsafe.getObject(obj, j));
                    if (iO > 0) {
                        iE12 = ha.e(i12 << 3);
                        iE13 = ha.e(iO);
                        iQ = iE12 + iE13 + iO;
                        i11 += iQ;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 46:
                    iO = pa.o((List) unsafe.getObject(obj, j));
                    if (iO > 0) {
                        iE12 = ha.e(i12 << 3);
                        iE13 = ha.e(iO);
                        iQ = iE12 + iE13 + iO;
                        i11 += iQ;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 47:
                    iO = pa.s((List) unsafe.getObject(obj, j));
                    if (iO > 0) {
                        iE12 = ha.e(i12 << 3);
                        iE13 = ha.e(iO);
                        iQ = iE12 + iE13 + iO;
                        i11 += iQ;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 48:
                    iO = pa.t((List) unsafe.getObject(obj, j));
                    if (iO > 0) {
                        iE12 = ha.e(i12 << 3);
                        iE13 = ha.e(iO);
                        iQ = iE12 + iE13 + iO;
                        i11 += iQ;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 49:
                    List list13 = (List) unsafe.getObject(obj, j);
                    cui cuiVarO2 = O(i10);
                    pui puiVar13 = pa.a;
                    int size7 = list13.size();
                    if (size7 == 0) {
                        iE9 = 0;
                    } else {
                        iE9 = 0;
                        for (int i25 = 0; i25 < size7; i25++) {
                            iE9 += ha.B(i12, (rti) list13.get(i25), cuiVarO2);
                        }
                    }
                    i11 += iE9;
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 50:
                    zzgza zzgzaVar = (zzgza) unsafe.getObject(obj, j);
                    ubc.a(Q(i10));
                    if (!zzgzaVar.isEmpty()) {
                        Iterator it = zzgzaVar.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 51:
                    if (y(obj, i12, i10)) {
                        iE14 = ha.e(i12 << 3);
                        iN2 = iE14 + 8;
                        i11 += iN2;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 52:
                    if (y(obj, i12, i10)) {
                        iE15 = ha.e(i12 << 3);
                        iN2 = iE15 + 4;
                        i11 += iN2;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 53:
                    if (y(obj, i12, i10)) {
                        long jM = M(obj, j);
                        iU = ha.e(i12 << 3);
                        iF2 = ha.f(jM);
                        iN2 = iU + iF2;
                        i11 += iN2;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 54:
                    if (y(obj, i12, i10)) {
                        long jM2 = M(obj, j);
                        iU = ha.e(i12 << 3);
                        iF2 = ha.f(jM2);
                        iN2 = iU + iF2;
                        i11 += iN2;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 55:
                    if (y(obj, i12, i10)) {
                        long jG = G(obj, j);
                        iU = ha.e(i12 << 3);
                        iF2 = ha.f(jG);
                        iN2 = iU + iF2;
                        i11 += iN2;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 56:
                    if (y(obj, i12, i10)) {
                        iE14 = ha.e(i12 << 3);
                        iN2 = iE14 + 8;
                        i11 += iN2;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 57:
                    if (y(obj, i12, i10)) {
                        iE15 = ha.e(i12 << 3);
                        iN2 = iE15 + 4;
                        i11 += iN2;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 58:
                    if (y(obj, i12, i10)) {
                        iN2 = ha.e(i12 << 3) + 1;
                        i11 += iN2;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 59:
                    if (y(obj, i12, i10)) {
                        int i26 = i12 << 3;
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof zzgwn) {
                            iE16 = ha.e(i26);
                            iZzd = ((zzgwn) object2).zzd();
                            iE17 = ha.e(iZzd);
                            iN2 = iE16 + iE17 + iZzd;
                            i11 += iN2;
                        } else {
                            iU = ha.e(i26);
                            iF2 = ha.d((String) object2);
                            iN2 = iU + iF2;
                            i11 += iN2;
                        }
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 60:
                    if (y(obj, i12, i10)) {
                        iN2 = pa.r(i12, unsafe.getObject(obj, j), O(i10));
                        i11 += iN2;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 61:
                    if (y(obj, i12, i10)) {
                        zzgwn zzgwnVar2 = (zzgwn) unsafe.getObject(obj, j);
                        iE16 = ha.e(i12 << 3);
                        iZzd = zzgwnVar2.zzd();
                        iE17 = ha.e(iZzd);
                        iN2 = iE16 + iE17 + iZzd;
                        i11 += iN2;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 62:
                    if (y(obj, i12, i10)) {
                        int iG = G(obj, j);
                        iU = ha.e(i12 << 3);
                        iF2 = ha.e(iG);
                        iN2 = iU + iF2;
                        i11 += iN2;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 63:
                    if (y(obj, i12, i10)) {
                        long jG2 = G(obj, j);
                        iU = ha.e(i12 << 3);
                        iF2 = ha.f(jG2);
                        iN2 = iU + iF2;
                        i11 += iN2;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 64:
                    if (y(obj, i12, i10)) {
                        iE15 = ha.e(i12 << 3);
                        iN2 = iE15 + 4;
                        i11 += iN2;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 65:
                    if (y(obj, i12, i10)) {
                        iE14 = ha.e(i12 << 3);
                        iN2 = iE14 + 8;
                        i11 += iN2;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 66:
                    if (y(obj, i12, i10)) {
                        int iG2 = G(obj, j);
                        iU = ha.e(i12 << 3);
                        iF2 = ha.e((iG2 >> 31) ^ (iG2 + iG2));
                        iN2 = iU + iF2;
                        i11 += iN2;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 67:
                    if (y(obj, i12, i10)) {
                        long jM3 = M(obj, j);
                        iU = ha.e(i12 << 3);
                        iF2 = ha.f((jM3 >> 63) ^ (jM3 + jM3));
                        iN2 = iU + iF2;
                        i11 += iN2;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                case 68:
                    if (y(obj, i12, i10)) {
                        iN2 = ha.B(i12, (rti) unsafe.getObject(obj, j), O(i10));
                        i11 += iN2;
                    }
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
                default:
                    i4 = i10;
                    i10 = i4 + 3;
                    i8 = i;
                    i9 = i2;
                    i7 = 1048575;
                    break;
            }
        }
    }

    @Override
    public final int zzb(Object obj) {
        int i;
        long jDoubleToLongBits;
        int iFloatToIntBits;
        int i2;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr = this.a;
            if (i3 >= iArr.length) {
                int iHashCode = (i4 * 53) + ((ia) obj).zzt.hashCode();
                if (!this.f) {
                    return iHashCode;
                }
                ubc.a(obj);
                throw null;
            }
            int iL = L(i3);
            int i5 = 1048575 & iL;
            int iK = K(iL);
            int i6 = iArr[i3];
            long j = i5;
            int iHashCode2 = 37;
            switch (iK) {
                case 0:
                    i = i4 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(vui.j(obj, j));
                    Charset charset = zsi.a;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i4 = i + iFloatToIntBits;
                    break;
                case 1:
                    i = i4 * 53;
                    iFloatToIntBits = Float.floatToIntBits(vui.k(obj, j));
                    i4 = i + iFloatToIntBits;
                    break;
                case 2:
                    i = i4 * 53;
                    jDoubleToLongBits = vui.n(obj, j);
                    Charset charset2 = zsi.a;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i4 = i + iFloatToIntBits;
                    break;
                case 3:
                    i = i4 * 53;
                    jDoubleToLongBits = vui.n(obj, j);
                    Charset charset3 = zsi.a;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i4 = i + iFloatToIntBits;
                    break;
                case 4:
                    i = i4 * 53;
                    iFloatToIntBits = vui.l(obj, j);
                    i4 = i + iFloatToIntBits;
                    break;
                case 5:
                    i = i4 * 53;
                    jDoubleToLongBits = vui.n(obj, j);
                    Charset charset4 = zsi.a;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i4 = i + iFloatToIntBits;
                    break;
                case 6:
                    i = i4 * 53;
                    iFloatToIntBits = vui.l(obj, j);
                    i4 = i + iFloatToIntBits;
                    break;
                case 7:
                    i = i4 * 53;
                    iFloatToIntBits = zsi.a(vui.H(obj, j));
                    i4 = i + iFloatToIntBits;
                    break;
                case 8:
                    i = i4 * 53;
                    iFloatToIntBits = ((String) vui.p(obj, j)).hashCode();
                    i4 = i + iFloatToIntBits;
                    break;
                case 9:
                    i2 = i4 * 53;
                    Object objP = vui.p(obj, j);
                    if (objP != null) {
                        iHashCode2 = objP.hashCode();
                    }
                    i4 = i2 + iHashCode2;
                    break;
                case 10:
                    i = i4 * 53;
                    iFloatToIntBits = vui.p(obj, j).hashCode();
                    i4 = i + iFloatToIntBits;
                    break;
                case 11:
                    i = i4 * 53;
                    iFloatToIntBits = vui.l(obj, j);
                    i4 = i + iFloatToIntBits;
                    break;
                case 12:
                    i = i4 * 53;
                    iFloatToIntBits = vui.l(obj, j);
                    i4 = i + iFloatToIntBits;
                    break;
                case 13:
                    i = i4 * 53;
                    iFloatToIntBits = vui.l(obj, j);
                    i4 = i + iFloatToIntBits;
                    break;
                case 14:
                    i = i4 * 53;
                    jDoubleToLongBits = vui.n(obj, j);
                    Charset charset5 = zsi.a;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i4 = i + iFloatToIntBits;
                    break;
                case 15:
                    i = i4 * 53;
                    iFloatToIntBits = vui.l(obj, j);
                    i4 = i + iFloatToIntBits;
                    break;
                case 16:
                    i = i4 * 53;
                    jDoubleToLongBits = vui.n(obj, j);
                    Charset charset6 = zsi.a;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i4 = i + iFloatToIntBits;
                    break;
                case 17:
                    i2 = i4 * 53;
                    Object objP2 = vui.p(obj, j);
                    if (objP2 != null) {
                        iHashCode2 = objP2.hashCode();
                    }
                    i4 = i2 + iHashCode2;
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
                    i = i4 * 53;
                    iFloatToIntBits = vui.p(obj, j).hashCode();
                    i4 = i + iFloatToIntBits;
                    break;
                case 50:
                    i = i4 * 53;
                    iFloatToIntBits = vui.p(obj, j).hashCode();
                    i4 = i + iFloatToIntBits;
                    break;
                case 51:
                    if (y(obj, i6, i3)) {
                        i = i4 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(E(obj, j));
                        Charset charset7 = zsi.a;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 52:
                    if (y(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = Float.floatToIntBits(F(obj, j));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 53:
                    if (y(obj, i6, i3)) {
                        i = i4 * 53;
                        jDoubleToLongBits = M(obj, j);
                        Charset charset8 = zsi.a;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 54:
                    if (y(obj, i6, i3)) {
                        i = i4 * 53;
                        jDoubleToLongBits = M(obj, j);
                        Charset charset9 = zsi.a;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 55:
                    if (y(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = G(obj, j);
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 56:
                    if (y(obj, i6, i3)) {
                        i = i4 * 53;
                        jDoubleToLongBits = M(obj, j);
                        Charset charset10 = zsi.a;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 57:
                    if (y(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = G(obj, j);
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 58:
                    if (y(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zsi.a(z(obj, j));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 59:
                    if (y(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = ((String) vui.p(obj, j)).hashCode();
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 60:
                    if (y(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = vui.p(obj, j).hashCode();
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 61:
                    if (y(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = vui.p(obj, j).hashCode();
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 62:
                    if (y(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = G(obj, j);
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 63:
                    if (y(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = G(obj, j);
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 64:
                    if (y(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = G(obj, j);
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 65:
                    if (y(obj, i6, i3)) {
                        i = i4 * 53;
                        jDoubleToLongBits = M(obj, j);
                        Charset charset11 = zsi.a;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 66:
                    if (y(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = G(obj, j);
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 67:
                    if (y(obj, i6, i3)) {
                        i = i4 * 53;
                        jDoubleToLongBits = M(obj, j);
                        Charset charset12 = zsi.a;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 68:
                    if (y(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = vui.p(obj, j).hashCode();
                        i4 = i + iFloatToIntBits;
                    }
                    break;
            }
            i3 += 3;
        }
    }

    @Override
    public final Object zze() {
        return ((ia) this.e).K();
    }
}
