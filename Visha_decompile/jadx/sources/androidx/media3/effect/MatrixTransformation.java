package androidx.media3.effect;

import android.graphics.Matrix;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
public interface MatrixTransformation extends GlMatrixTransformation {
    @Override
    default float[] getGlMatrixArray(long j) {
        return MatrixUtils.getGlMatrixArray(getMatrix(j));
    }

    Matrix getMatrix(long j);
}
