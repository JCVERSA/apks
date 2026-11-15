package androidx.transition;

import android.graphics.Matrix;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(29)
class ViewUtilsApi29 extends ViewUtilsApi23 {
    @Override
    public float getTransitionAlpha(@NonNull View view) {
        return view.getTransitionAlpha();
    }

    @Override
    public void setAnimationMatrix(@NonNull View view, @Nullable Matrix matrix) {
        view.setAnimationMatrix(matrix);
    }

    @Override
    public void setLeftTopRightBottom(@NonNull View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override
    public void setTransitionAlpha(@NonNull View view, float f) {
        view.setTransitionAlpha(f);
    }

    @Override
    public void setTransitionVisibility(@NonNull View view, int i) {
        view.setTransitionVisibility(i);
    }

    @Override
    public void transformMatrixToGlobal(@NonNull View view, @NonNull Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override
    public void transformMatrixToLocal(@NonNull View view, @NonNull Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
