package androidx.compose.ui.platform;

import android.graphics.Matrix;
import android.view.View;
import androidx.compose.ui.graphics.i4;
import kotlin.jvm.internal.DefaultConstructorMarker;

final class n0 implements m0 {

    private final float[] f5536a;

    private final int[] f5537b;

    public n0(float[] fArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(fArr);
    }

    private final void b(float[] fArr, Matrix matrix) {
        androidx.compose.ui.graphics.r0.b(this.f5536a, matrix);
        AndroidComposeView_androidKt.i(fArr, this.f5536a);
    }

    private final void c(float[] fArr, float f10, float f11) {
        AndroidComposeView_androidKt.j(fArr, f10, f11, this.f5536a);
    }

    private final void d(View view, float[] fArr) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            d((View) parent, fArr);
            c(fArr, -view.getScrollX(), -view.getScrollY());
            c(fArr, view.getLeft(), view.getTop());
        } else {
            int[] iArr = this.f5537b;
            view.getLocationInWindow(iArr);
            c(fArr, -view.getScrollX(), -view.getScrollY());
            c(fArr, iArr[0], iArr[1]);
        }
        Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            return;
        }
        b(fArr, matrix);
    }

    @Override
    public void a(View view, float[] fArr) {
        i4.h(fArr);
        d(view, fArr);
    }

    private n0(float[] fArr) {
        this.f5536a = fArr;
        this.f5537b = new int[2];
    }
}
