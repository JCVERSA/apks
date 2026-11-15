package androidx.transition;

import android.graphics.Matrix;
import android.view.View;

class k0 extends j0 {
    k0() {
    }

    @Override
    public float b(View view) {
        return view.getTransitionAlpha();
    }

    @Override
    public void d(View view, int i10, int i11, int i12, int i13) {
        view.setLeftTopRightBottom(i10, i11, i12, i13);
    }

    @Override
    public void e(View view, float f10) {
        view.setTransitionAlpha(f10);
    }

    @Override
    public void f(View view, int i10) {
        view.setTransitionVisibility(i10);
    }

    @Override
    public void g(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override
    public void h(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
