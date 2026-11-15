package zg;

import android.graphics.Bitmap;
import android.graphics.Color;
import androidx.core.view.ViewCompat;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;

public abstract class a {
    /* JADX WARN: Code duplicated, block: B:29:0x008e  */
    public static final int a(Bitmap bitmap, int i10, int i11) {
        Object objM453constructorimpl;
        int iRgb;
        int iRed;
        int iGreen;
        int iBlue;
        Intrinsics.h(bitmap, "bitmap");
        try {
            Result.Companion companion = Result.INSTANCE;
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            if (width <= 0 || height <= 0 || i10 >= i11) {
                iRgb = -16777216;
            } else {
                int i12 = 0;
                IntProgression intProgressionR = RangesKt.r(RangesKt.s(RangesKt.e(i10, 0), RangesKt.h(i11, height)), 10);
                int first = intProgressionR.getFirst();
                int last = intProgressionR.getLast();
                int step = intProgressionR.getStep();
                if ((step <= 0 || first > last) && (step >= 0 || last > first)) {
                    iRed = 0;
                    iGreen = 0;
                    iBlue = 0;
                } else {
                    iRed = 0;
                    iGreen = 0;
                    iBlue = 0;
                    int i13 = 0;
                    while (true) {
                        IntProgression intProgressionR2 = RangesKt.r(RangesKt.s(0, width), 10);
                        int first2 = intProgressionR2.getFirst();
                        int last2 = intProgressionR2.getLast();
                        int step2 = intProgressionR2.getStep();
                        if ((step2 > 0 && first2 <= last2) || (step2 < 0 && last2 <= first2)) {
                            while (true) {
                                int pixel = bitmap.getPixel(first2, first);
                                iRed += Color.red(pixel);
                                iGreen += Color.green(pixel);
                                iBlue += Color.blue(pixel);
                                i13++;
                                if (first2 == last2) {
                                    break;
                                }
                                first2 += step2;
                            }
                        }
                        if (first == last) {
                            break;
                        }
                        first += step;
                    }
                    i12 = i13;
                }
                if (i12 == 0) {
                    iRgb = -16777216;
                } else {
                    iRgb = Color.rgb(iRed / i12, iGreen / i12, iBlue / i12);
                }
            }
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf(iRgb));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Integer.valueOf(ViewCompat.MEASURED_STATE_MASK);
        }
        return ((Number) objM453constructorimpl).intValue();
    }

    public static int b(Bitmap bitmap, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = bitmap.getHeight();
        }
        return a(bitmap, i10, i11);
    }
}
