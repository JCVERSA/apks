package androidx.compose.ui.platform;

import android.graphics.Matrix;
import android.view.View;
import android.view.ViewParent;

final class p0 implements m0 {

    private final Matrix f5540a = new Matrix();

    private final int[] f5541b = new int[2];

    @Override
    public void a(View view, float[] fArr) {
        this.f5540a.reset();
        view.transformMatrixToGlobal(this.f5540a);
        ViewParent parent = view.getParent();
        while (parent instanceof View) {
            view = parent;
            parent = view.getParent();
        }
        view.getLocationOnScreen(this.f5541b);
        int[] iArr = this.f5541b;
        int i10 = iArr[0];
        int i11 = iArr[1];
        view.getLocationInWindow(iArr);
        int[] iArr2 = this.f5541b;
        this.f5540a.postTranslate(iArr2[0] - i10, iArr2[1] - i11);
        androidx.compose.ui.graphics.r0.b(fArr, this.f5540a);
    }
}
