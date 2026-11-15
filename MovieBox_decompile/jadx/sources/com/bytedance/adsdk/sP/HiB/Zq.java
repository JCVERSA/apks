package com.bytedance.adsdk.sP.HiB;

import android.graphics.Color;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Zq implements Ei<com.bytedance.adsdk.sP.TKC.sP.EjP> {
    private int Sj;

    public Zq(int i10) {
        this.Sj = i10;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00c9  */
    @Override
    public com.bytedance.adsdk.sP.TKC.sP.EjP sP(JsonReader jsonReader, float f10) throws IOException {
        ArrayList arrayList = new ArrayList();
        boolean z10 = jsonReader.peek() == JsonToken.BEGIN_ARRAY;
        if (z10) {
            jsonReader.beginArray();
        }
        while (jsonReader.hasNext()) {
            arrayList.add(Float.valueOf((float) jsonReader.nextDouble()));
        }
        if (arrayList.size() == 4 && arrayList.get(0).floatValue() == 1.0f) {
            arrayList.set(0, Float.valueOf(0.0f));
            arrayList.add(Float.valueOf(1.0f));
            arrayList.add(arrayList.get(1));
            arrayList.add(arrayList.get(2));
            arrayList.add(arrayList.get(3));
            this.Sj = 2;
        }
        if (z10) {
            jsonReader.endArray();
        }
        if (this.Sj == -1) {
            this.Sj = arrayList.size() / 4;
        }
        int i10 = this.Sj;
        float[] fArr = new float[i10];
        int[] iArr = new int[i10];
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < this.Sj * 4; i13++) {
            int i14 = i13 / 4;
            double dFloatValue = arrayList.get(i13).floatValue();
            int i15 = i13 % 4;
            if (i15 != 0) {
                if (i15 == 1) {
                    i11 = (int) (dFloatValue * 255.0d);
                } else if (i15 == 2) {
                    i12 = (int) (dFloatValue * 255.0d);
                } else if (i15 == 3) {
                    iArr[i14] = Color.argb(255, i11, i12, (int) (dFloatValue * 255.0d));
                }
            } else if (i14 > 0) {
                float f11 = (float) dFloatValue;
                if (fArr[i14 - 1] >= f11) {
                    fArr[i14] = f11 + 0.01f;
                } else {
                    fArr[i14] = (float) dFloatValue;
                }
            } else {
                fArr[i14] = (float) dFloatValue;
            }
        }
        return Sj(new com.bytedance.adsdk.sP.TKC.sP.EjP(fArr, iArr), arrayList);
    }

    private com.bytedance.adsdk.sP.TKC.sP.EjP Sj(com.bytedance.adsdk.sP.TKC.sP.EjP ejP, List<Float> list) {
        int i10 = this.Sj * 4;
        if (list.size() <= i10) {
            return ejP;
        }
        float[] fArrSj = ejP.Sj();
        int[] iArrSP = ejP.sP();
        int size = (list.size() - i10) / 2;
        float[] fArr = new float[size];
        float[] fArr2 = new float[size];
        int i11 = 0;
        while (i10 < list.size()) {
            if (i10 % 2 == 0) {
                fArr[i11] = list.get(i10).floatValue();
            } else {
                fArr2[i11] = list.get(i10).floatValue();
                i11++;
            }
            i10++;
        }
        float[] fArrSj2 = Sj(ejP.Sj(), fArr);
        int length = fArrSj2.length;
        int[] iArr = new int[length];
        for (int i12 = 0; i12 < length; i12++) {
            float f10 = fArrSj2[i12];
            int iBinarySearch = Arrays.binarySearch(fArrSj, f10);
            int iBinarySearch2 = Arrays.binarySearch(fArr, f10);
            if (iBinarySearch >= 0 && iBinarySearch2 <= 0) {
                iArr[i12] = Sj(f10, iArrSP[iBinarySearch], fArr, fArr2);
            } else {
                if (iBinarySearch2 < 0) {
                    iBinarySearch2 = -(iBinarySearch2 + 1);
                }
                iArr[i12] = Sj(f10, fArr2[iBinarySearch2], fArrSj, iArrSP);
            }
        }
        return new com.bytedance.adsdk.sP.TKC.sP.EjP(fArrSj2, iArr);
    }

    int Sj(float f10, float f11, float[] fArr, int[] iArr) {
        if (iArr.length >= 2 && f10 != fArr[0]) {
            for (int i10 = 1; i10 < fArr.length; i10++) {
                float f12 = fArr[i10];
                if (f12 >= f10 || i10 == fArr.length - 1) {
                    int i11 = i10 - 1;
                    float f13 = fArr[i11];
                    float f14 = (f10 - f13) / (f12 - f13);
                    int i12 = iArr[i10];
                    int i13 = iArr[i11];
                    return Color.argb((int) (f11 * 255.0f), com.bytedance.adsdk.sP.vS.sP.Sj(f14, Color.red(i13), Color.red(i12)), com.bytedance.adsdk.sP.vS.sP.Sj(f14, Color.green(i13), Color.green(i12)), com.bytedance.adsdk.sP.vS.sP.Sj(f14, Color.blue(i13), Color.blue(i12)));
                }
            }
            throw new IllegalArgumentException("Unreachable code.");
        }
        return iArr[0];
    }

    private int Sj(float f10, int i10, float[] fArr, float[] fArr2) {
        float fSj;
        if (fArr2.length >= 2 && f10 > fArr[0]) {
            for (int i11 = 1; i11 < fArr.length; i11++) {
                float f11 = fArr[i11];
                if (f11 >= f10 || i11 == fArr.length - 1) {
                    if (f11 <= f10) {
                        fSj = fArr2[i11];
                    } else {
                        int i12 = i11 - 1;
                        float f12 = fArr[i12];
                        fSj = com.bytedance.adsdk.sP.vS.HiB.Sj(fArr2[i12], fArr2[i11], (f10 - f12) / (f11 - f12));
                    }
                    return Color.argb((int) (fSj * 255.0f), Color.red(i10), Color.green(i10), Color.blue(i10));
                }
            }
            throw new IllegalArgumentException("Unreachable code.");
        }
        return Color.argb((int) (fArr2[0] * 255.0f), Color.red(i10), Color.green(i10), Color.blue(i10));
    }

    protected static float[] Sj(float[] fArr, float[] fArr2) {
        if (fArr.length == 0) {
            return fArr2;
        }
        if (fArr2.length == 0) {
            return fArr;
        }
        int length = fArr.length + fArr2.length;
        float[] fArr3 = new float[length];
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            float f10 = i11 < fArr.length ? fArr[i11] : Float.NaN;
            float f11 = i12 < fArr2.length ? fArr2[i12] : Float.NaN;
            if (!Float.isNaN(f11) && f10 >= f11) {
                if (!Float.isNaN(f10) && f11 >= f10) {
                    fArr3[i13] = f10;
                    i11++;
                    i12++;
                    i10++;
                } else {
                    fArr3[i13] = f11;
                    i12++;
                }
            } else {
                fArr3[i13] = f10;
                i11++;
            }
        }
        return i10 == 0 ? fArr3 : Arrays.copyOf(fArr3, length - i10);
    }
}
