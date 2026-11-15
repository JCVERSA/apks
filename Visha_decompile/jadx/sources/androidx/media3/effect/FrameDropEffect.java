package androidx.media3.effect;

import android.content.Context;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
public final class FrameDropEffect implements GlEffect {
    private final float inputFrameRate;
    private final float targetFrameRate;

    private FrameDropEffect(float f, float f2) {
        this.inputFrameRate = f;
        this.targetFrameRate = f2;
    }

    public static FrameDropEffect createDefaultFrameDropEffect(float f) {
        return new FrameDropEffect(-3.4028235E38f, f);
    }

    public static FrameDropEffect createSimpleFrameDropEffect(float f, float f2) {
        return new FrameDropEffect(f, f2);
    }

    @Override
    public GlShaderProgram toGlShaderProgram(Context context, boolean z) throws VideoFrameProcessingException {
        float f = this.inputFrameRate;
        return f == -3.4028235E38f ? new DefaultFrameDroppingShaderProgram(context, z, this.targetFrameRate) : new SimpleFrameDroppingShaderProgram(f, this.targetFrameRate);
    }
}
