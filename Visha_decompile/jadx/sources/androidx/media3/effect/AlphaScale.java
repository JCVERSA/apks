package androidx.media3.effect;

import android.content.Context;
import androidx.annotation.FloatRange;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
public final class AlphaScale implements GlEffect {
    private final float alphaScale;

    public AlphaScale(@FloatRange(from = 0.0d) float f) {
        Assertions.checkArgument(0.0f <= f);
        this.alphaScale = f;
    }

    @Override
    public boolean isNoOp(int i, int i2) {
        return this.alphaScale == 1.0f;
    }

    @Override
    public AlphaScaleShaderProgram toGlShaderProgram(Context context, boolean z) throws VideoFrameProcessingException {
        return new AlphaScaleShaderProgram(context, z, this.alphaScale);
    }
}
