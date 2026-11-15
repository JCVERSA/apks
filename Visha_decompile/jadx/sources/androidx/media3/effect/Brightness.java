package androidx.media3.effect;

import android.opengl.Matrix;
import androidx.annotation.FloatRange;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.UnstableApi;
import java.util.Arrays;

@UnstableApi
public final class Brightness implements RgbMatrix {
    private final float[] rgbMatrix;

    public Brightness(@FloatRange(from = -1.0d, to = com.google.android.material.color.utilities.Contrast.RATIO_MIN) float f) {
        Assertions.checkArgument(f >= -1.0f && f <= 1.0f, "brightness value outside of range from -1f to 1f, inclusive");
        float[] fArrCreate4x4IdentityMatrix = GlUtil.create4x4IdentityMatrix();
        this.rgbMatrix = fArrCreate4x4IdentityMatrix;
        Matrix.translateM(fArrCreate4x4IdentityMatrix, 0, f, f, f);
    }

    @Override
    public float[] getMatrix(long j, boolean z) {
        Assertions.checkArgument(!z, "HDR is not supported.");
        return this.rgbMatrix;
    }

    @Override
    public boolean isNoOp(int i, int i2) {
        return Arrays.equals(this.rgbMatrix, GlUtil.create4x4IdentityMatrix());
    }
}
