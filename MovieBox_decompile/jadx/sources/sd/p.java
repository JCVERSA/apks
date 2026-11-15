package sd;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.ResultMetadataType;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.Map;

public abstract class p implements com.google.zxing.i {
    /* JADX WARN: Code duplicated, block: B:35:0x006f  */
    private com.google.zxing.j d(com.google.zxing.b bVar, Map map) throws NotFoundException {
        Map map2;
        int i10;
        int i11;
        Map map3 = map;
        int iD = bVar.d();
        int iC = bVar.c();
        kd.a aVar = new kd.a(iD);
        int i12 = 0;
        int i13 = 1;
        boolean z10 = map3 != null && map3.containsKey(DecodeHintType.TRY_HARDER);
        int iMax = Math.max(1, iC >> (z10 ? 8 : 5));
        int i14 = z10 ? iC : 15;
        int i15 = iC / 2;
        int i16 = 0;
        while (i16 < i14) {
            int i17 = i16 + 1;
            int i18 = i17 / 2;
            if ((i16 & 1) != 0) {
                i18 = -i18;
            }
            int i19 = (i18 * iMax) + i15;
            if (i19 < 0 || i19 >= iC) {
                break;
            }
            try {
                aVar = bVar.b(i19, aVar);
                int i20 = i12;
                while (i20 < 2) {
                    if (i20 == i13) {
                        aVar.q();
                        if (map3 != null) {
                            DecodeHintType decodeHintType = DecodeHintType.NEED_RESULT_POINT_CALLBACK;
                            if (map3.containsKey(decodeHintType)) {
                                EnumMap enumMap = new EnumMap(DecodeHintType.class);
                                enumMap.putAll(map3);
                                enumMap.remove(decodeHintType);
                                map3 = enumMap;
                            }
                        }
                    }
                    try {
                        com.google.zxing.j jVarC = c(i19, aVar, map3);
                        if (i20 == i13) {
                            try {
                                jVarC.h(ResultMetadataType.ORIENTATION, 180);
                                com.google.zxing.k[] kVarArrE = jVarC.e();
                                if (kVarArrE != null) {
                                    map2 = map3;
                                    float f10 = iD;
                                    try {
                                        i10 = iD;
                                        try {
                                            kVarArrE[0] = new com.google.zxing.k((f10 - kVarArrE[i12].c()) - 1.0f, kVarArrE[i12].d());
                                            i11 = 1;
                                            try {
                                                kVarArrE[1] = new com.google.zxing.k((f10 - kVarArrE[1].c()) - 1.0f, kVarArrE[1].d());
                                            } catch (ReaderException unused) {
                                                continue;
                                                i20++;
                                                i13 = i11;
                                                map3 = map2;
                                                iD = i10;
                                                i12 = 0;
                                            }
                                        } catch (ReaderException unused2) {
                                            i11 = 1;
                                            i20++;
                                            i13 = i11;
                                            map3 = map2;
                                            iD = i10;
                                            i12 = 0;
                                        }
                                    } catch (ReaderException unused3) {
                                        i10 = iD;
                                        i11 = 1;
                                        i20++;
                                        i13 = i11;
                                        map3 = map2;
                                        iD = i10;
                                        i12 = 0;
                                    }
                                }
                            } catch (ReaderException unused4) {
                                map2 = map3;
                            }
                        }
                        return jVarC;
                    } catch (ReaderException unused5) {
                        map2 = map3;
                        i10 = iD;
                        i11 = i13;
                    }
                }
            } catch (NotFoundException unused6) {
            }
            i16 = i17;
            i13 = i13;
            iD = iD;
            i12 = 0;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    protected static float e(int[] iArr, int[] iArr2, float f10) {
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            i10 += iArr[i12];
            i11 += iArr2[i12];
        }
        if (i10 < i11) {
            return Float.POSITIVE_INFINITY;
        }
        float f11 = i10;
        float f12 = f11 / i11;
        float f13 = f10 * f12;
        float f14 = 0.0f;
        for (int i13 = 0; i13 < length; i13++) {
            int i14 = iArr[i13];
            float f15 = iArr2[i13] * f12;
            float f16 = i14;
            float f17 = f16 > f15 ? f16 - f15 : f15 - f16;
            if (f17 > f13) {
                return Float.POSITIVE_INFINITY;
            }
            f14 += f17;
        }
        return f14 / f11;
    }

    protected static void f(kd.a aVar, int i10, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int i11 = 0;
        Arrays.fill(iArr, 0, length, 0);
        int iM = aVar.m();
        if (i10 >= iM) {
            throw NotFoundException.getNotFoundInstance();
        }
        boolean z10 = !aVar.i(i10);
        while (i10 < iM) {
            if (aVar.i(i10) != z10) {
                iArr[i11] = iArr[i11] + 1;
            } else {
                i11++;
                if (i11 == length) {
                    break;
                }
                iArr[i11] = 1;
                z10 = !z10;
            }
            i10++;
        }
        if (i11 != length) {
            if (i11 != length - 1 || i10 != iM) {
                throw NotFoundException.getNotFoundInstance();
            }
        }
    }

    protected static void g(kd.a aVar, int i10, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        boolean zI = aVar.i(i10);
        while (i10 > 0 && length >= 0) {
            i10--;
            if (aVar.i(i10) != zI) {
                length--;
                zI = !zI;
            }
        }
        if (length >= 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        f(aVar, i10 + 1, iArr);
    }

    @Override
    public com.google.zxing.j a(com.google.zxing.b bVar, Map map) throws NotFoundException {
        try {
            return d(bVar, map);
        } catch (NotFoundException e10) {
            if (map == null || !map.containsKey(DecodeHintType.TRY_HARDER) || !bVar.e()) {
                throw e10;
            }
            com.google.zxing.b bVarF = bVar.f();
            com.google.zxing.j jVarD = d(bVarF, map);
            Map mapD = jVarD.d();
            int iIntValue = 270;
            if (mapD != null) {
                ResultMetadataType resultMetadataType = ResultMetadataType.ORIENTATION;
                if (mapD.containsKey(resultMetadataType)) {
                    iIntValue = (((Integer) mapD.get(resultMetadataType)).intValue() + 270) % 360;
                }
            }
            jVarD.h(ResultMetadataType.ORIENTATION, Integer.valueOf(iIntValue));
            com.google.zxing.k[] kVarArrE = jVarD.e();
            if (kVarArrE != null) {
                int iC = bVarF.c();
                for (int i10 = 0; i10 < kVarArrE.length; i10++) {
                    kVarArrE[i10] = new com.google.zxing.k((iC - kVarArrE[i10].d()) - 1.0f, kVarArrE[i10].c());
                }
            }
            return jVarD;
        }
    }

    @Override
    public com.google.zxing.j b(com.google.zxing.b bVar) {
        return a(bVar, null);
    }

    public abstract com.google.zxing.j c(int i10, kd.a aVar, Map map);

    @Override
    public void reset() {
    }
}
