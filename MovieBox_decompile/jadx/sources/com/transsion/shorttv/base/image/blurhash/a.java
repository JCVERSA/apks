package com.transsion.shorttv.base.image.blurhash;

import android.graphics.Bitmap;
import android.graphics.Color;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class a {

    public static final a f50776a = new a();

    private static final HashMap f50777b = new HashMap();

    private static final HashMap f50778c = new HashMap();

    private static final Map f50779d;

    static {
        List listO = CollectionsKt.o('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '#', '$', '%', '*', '+', ',', '-', '.', ':', ';', '=', '?', '@', '[', ']', '^', '_', '{', '|', '}', '~');
        ArrayList arrayList = new ArrayList(CollectionsKt.v(listO, 10));
        int i10 = 0;
        for (Object obj : listO) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            Character ch2 = (Character) obj;
            ch2.charValue();
            arrayList.add(TuplesKt.a(ch2, Integer.valueOf(i10)));
            i10 = i11;
        }
        f50779d = MapsKt.s(arrayList);
    }

    private a() {
    }

    private final Bitmap a(int i10, int i11, int i12, int i13, float[][] fArr, boolean z10) {
        int[] iArr = new int[i10 * i11];
        boolean z11 = (z10 && f50777b.containsKey(Integer.valueOf(i10 * i12))) ? false : true;
        double[] dArrF = f(z11, i10, i12);
        boolean z12 = (z10 && f50778c.containsKey(Integer.valueOf(i11 * i13))) ? false : true;
        double[] dArrG = g(z12, i11, i13);
        int i14 = 0;
        while (i14 < i11) {
            int i15 = 0;
            while (i15 < i10) {
                float f10 = 0.0f;
                float f11 = 0.0f;
                float f12 = 0.0f;
                int i16 = 0;
                while (i16 < i13) {
                    float f13 = f10;
                    float f14 = f11;
                    float f15 = f12;
                    int i17 = 0;
                    while (i17 < i12) {
                        int i18 = i17;
                        int i19 = i16;
                        int i20 = i15;
                        boolean z13 = z12;
                        i14 = i14;
                        float fH = (float) (h(dArrG, z13, i19, i13, i14, i11) * h(dArrF, z11, i18, i12, i20, i10));
                        float[] fArr2 = fArr[(i19 * i12) + i18];
                        f13 += fArr2[0] * fH;
                        f14 += fArr2[1] * fH;
                        f15 += fArr2[2] * fH;
                        i17 = i18 + 1;
                        i16 = i19;
                        i15 = i20;
                        z12 = z13;
                    }
                    i16++;
                    f10 = f13;
                    f11 = f14;
                    f12 = f15;
                }
                int i21 = i15;
                iArr[i21 + (i10 * i14)] = Color.rgb(i(f10), i(f11), i(f12));
                i15 = i21 + 1;
            }
            i14++;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, i10, i11, Bitmap.Config.ARGB_8888);
        Intrinsics.g(bitmapCreateBitmap, "createBitmap(...)");
        return bitmapCreateBitmap;
    }

    private final int c(String str, int i10, int i11) {
        int i12 = 0;
        while (i10 < i11) {
            Integer num = (Integer) f50779d.get(Character.valueOf(str.charAt(i10)));
            int iIntValue = num != null ? num.intValue() : -1;
            if (iIntValue != -1) {
                i12 = (i12 * 83) + iIntValue;
            }
            i10++;
        }
        return i12;
    }

    private final float[] d(int i10, float f10) {
        return new float[]{j(((i10 / 361) - 9) / 9.0f) * f10, j((((i10 / 19) % 19) - 9) / 9.0f) * f10, j(((i10 % 19) - 9) / 9.0f) * f10};
    }

    private final float[] e(int i10) {
        return new float[]{k(i10 >> 16), k((i10 >> 8) & 255), k(i10 & 255)};
    }

    private final double[] f(boolean z10, int i10, int i11) {
        if (!z10) {
            Object obj = f50777b.get(Integer.valueOf(i10 * i11));
            Intrinsics.e(obj);
            return (double[]) obj;
        }
        int i12 = i10 * i11;
        double[] dArr = new double[i12];
        f50777b.put(Integer.valueOf(i12), dArr);
        return dArr;
    }

    private final double[] g(boolean z10, int i10, int i11) {
        if (!z10) {
            Object obj = f50778c.get(Integer.valueOf(i10 * i11));
            Intrinsics.e(obj);
            return (double[]) obj;
        }
        int i12 = i10 * i11;
        double[] dArr = new double[i12];
        f50778c.put(Integer.valueOf(i12), dArr);
        return dArr;
    }

    private final double h(double[] dArr, boolean z10, int i10, int i11, int i12, int i13) {
        if (z10) {
            dArr[(i11 * i12) + i10] = Math.cos(((((double) i12) * 3.141592653589793d) * ((double) i10)) / ((double) i13));
        }
        return dArr[i10 + (i11 * i12)];
    }

    private final int i(float f10) {
        float fPow;
        float f11;
        float fK = RangesKt.k(f10, 0.0f, 1.0f);
        if (fK <= 0.0031308f) {
            fPow = fK * 12.92f;
            f11 = 255.0f;
        } else {
            fPow = (((float) Math.pow(fK, 0.41666666f)) * 1.055f) - 0.055f;
            f11 = 255;
        }
        return (int) ((fPow * f11) + 0.5f);
    }

    private final float j(float f10) {
        return Math.copySign((float) Math.pow(f10, 2.0f), f10);
    }

    private final float k(int i10) {
        float f10 = i10 / 255.0f;
        return f10 <= 0.04045f ? f10 / 12.92f : (float) Math.pow((f10 + 0.055f) / 1.055f, 2.4f);
    }

    public final Bitmap b(String str, int i10, int i11, float f10, boolean z10) {
        float[] fArrD;
        if (str == null || str.length() < 6) {
            return null;
        }
        int iC = c(str, 0, 1);
        int i12 = (iC % 9) + 1;
        int i13 = (iC / 9) + 1;
        if (str.length() != (i12 * 2 * i13) + 4) {
            return null;
        }
        float fC = (c(str, 1, 2) + 1) / 166.0f;
        int i14 = i12 * i13;
        float[][] fArr = new float[i14][];
        for (int i15 = 0; i15 < i14; i15++) {
            if (i15 == 0) {
                a aVar = f50776a;
                fArrD = aVar.e(aVar.c(str, 2, 6));
            } else {
                int i16 = i15 * 2;
                a aVar2 = f50776a;
                fArrD = aVar2.d(aVar2.c(str, i16 + 4, i16 + 6), fC * f10);
            }
            fArr[i15] = fArrD;
        }
        return a(i10, i11, i12, i13, fArr, z10);
    }
}
