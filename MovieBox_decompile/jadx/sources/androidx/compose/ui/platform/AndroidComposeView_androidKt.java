package androidx.compose.ui.platform;

import android.view.View;
import android.view.ViewParent;
import androidx.compose.ui.graphics.i4;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class AndroidComposeView_androidKt {

    private static Function1 f5259a = new Function1<androidx.compose.ui.text.input.y, androidx.compose.ui.text.input.y>() {
        @Override
        public final androidx.compose.ui.text.input.y invoke(androidx.compose.ui.text.input.y yVar) {
            return yVar;
        }
    };

    public static final boolean e(View view, View view2) {
        if (Intrinsics.c(view2, view)) {
            return false;
        }
        for (ViewParent parent = view2.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == view) {
                return true;
            }
        }
        return false;
    }

    private static final float f(float[] fArr, int i10, float[] fArr2, int i11) {
        int i12 = i10 * 4;
        return (fArr[i12] * fArr2[i11]) + (fArr[i12 + 1] * fArr2[4 + i11]) + (fArr[i12 + 2] * fArr2[8 + i11]) + (fArr[i12 + 3] * fArr2[12 + i11]);
    }

    public static final androidx.compose.ui.platform.coreshims.d g(View view) {
        androidx.compose.ui.platform.coreshims.e.c(view, 1);
        return androidx.compose.ui.platform.coreshims.e.b(view);
    }

    public static final Function1 h() {
        return f5259a;
    }

    public static final void i(float[] fArr, float[] fArr2) {
        float f10 = f(fArr2, 0, fArr, 0);
        float f11 = f(fArr2, 0, fArr, 1);
        float f12 = f(fArr2, 0, fArr, 2);
        float f13 = f(fArr2, 0, fArr, 3);
        float f14 = f(fArr2, 1, fArr, 0);
        float f15 = f(fArr2, 1, fArr, 1);
        float f16 = f(fArr2, 1, fArr, 2);
        float f17 = f(fArr2, 1, fArr, 3);
        float f18 = f(fArr2, 2, fArr, 0);
        float f19 = f(fArr2, 2, fArr, 1);
        float f20 = f(fArr2, 2, fArr, 2);
        float f21 = f(fArr2, 2, fArr, 3);
        float f22 = f(fArr2, 3, fArr, 0);
        float f23 = f(fArr2, 3, fArr, 1);
        float f24 = f(fArr2, 3, fArr, 2);
        float f25 = f(fArr2, 3, fArr, 3);
        fArr[0] = f10;
        fArr[1] = f11;
        fArr[2] = f12;
        fArr[3] = f13;
        fArr[4] = f14;
        fArr[5] = f15;
        fArr[6] = f16;
        fArr[7] = f17;
        fArr[8] = f18;
        fArr[9] = f19;
        fArr[10] = f20;
        fArr[11] = f21;
        fArr[12] = f22;
        fArr[13] = f23;
        fArr[14] = f24;
        fArr[15] = f25;
    }

    public static final void j(float[] fArr, float f10, float f11, float[] fArr2) {
        i4.h(fArr2);
        i4.q(fArr2, f10, f11, 0.0f, 4, null);
        i(fArr, fArr2);
    }
}
