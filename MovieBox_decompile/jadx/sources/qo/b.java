package qo;

import android.content.Context;

public class b {
    public static int[] a(Context context, int i10, int i11, int i12, int i13) {
        return b(context, i10, i11, i12, i13, 0.72f);
    }

    public static int[] b(Context context, int i10, int i11, int i12, int i13, float f10) {
        if (i12 == 0) {
            i12 = zg.h.f76787a.e(context);
        }
        if (i13 == 0) {
            i13 = zg.h.f76787a.c(context);
        }
        float f11 = ((i10 * 1.0f) / i11) * 1.0f;
        int i14 = (int) (f11 < 1.0f ? i12 * f10 : i12 * 0.92f);
        int i15 = (int) (i14 / f11);
        int i16 = (int) (i13 * f10);
        if (i15 > i16) {
            i14 = (int) (i16 * f11);
            i15 = i16;
        }
        return new int[]{i14, i15};
    }
}
