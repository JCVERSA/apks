package androidx.compose.ui.graphics.vector;

import java.util.ArrayList;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

public final class g {

    private float[] f4531a = new float[64];

    public static ArrayList b(g gVar, String str, ArrayList arrayList, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            arrayList = new ArrayList();
        }
        return gVar.a(str, arrayList);
    }

    public final ArrayList a(String str, ArrayList arrayList) {
        int i10;
        char cCharAt;
        int i11;
        int length = str.length();
        int i12 = 0;
        while (i12 < length && Intrinsics.j(str.charAt(i12), 32) <= 0) {
            i12++;
        }
        while (length > i12 && Intrinsics.j(str.charAt(length - 1), 32) <= 0) {
            length--;
        }
        int i13 = 0;
        while (i12 < length) {
            while (true) {
                i10 = i12 + 1;
                cCharAt = str.charAt(i12);
                int i14 = cCharAt | ' ';
                if ((i14 - 97) * (i14 - 122) <= 0 && i14 != 101) {
                    break;
                }
                if (i10 >= length) {
                    cCharAt = 0;
                    break;
                }
                i12 = i10;
            }
            if (cCharAt != 0) {
                if ((cCharAt | ' ') != 122) {
                    i13 = 0;
                    while (true) {
                        if (i10 >= length || Intrinsics.j(str.charAt(i10), 32) > 0) {
                            long jA = b.a(str, i10, length);
                            i11 = (int) (jA >>> 32);
                            float fIntBitsToFloat = Float.intBitsToFloat((int) (jA & 4294967295L));
                            if (!Float.isNaN(fIntBitsToFloat)) {
                                float[] fArr = this.f4531a;
                                int i15 = i13 + 1;
                                fArr[i13] = fIntBitsToFloat;
                                if (i15 >= fArr.length) {
                                    float[] fArr2 = new float[i15 * 2];
                                    this.f4531a = fArr2;
                                    ArraysKt.i(fArr, fArr2, 0, 0, fArr.length);
                                }
                                i13 = i15;
                            }
                            while (i11 < length && str.charAt(i11) == ',') {
                                i11++;
                            }
                            if (i11 >= length || Float.isNaN(fIntBitsToFloat)) {
                                break;
                            }
                            i10 = i11;
                        } else {
                            i10++;
                        }
                    }
                    i10 = i11;
                }
                f.a(cCharAt, arrayList, this.f4531a, i13);
            }
            i12 = i10;
        }
        return arrayList;
    }
}
