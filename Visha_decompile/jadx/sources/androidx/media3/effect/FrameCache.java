package androidx.media3.effect;

import android.content.Context;
import androidx.annotation.IntRange;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
public final class FrameCache implements GlEffect {
    public final int capacity;

    public FrameCache(@IntRange(from = 1, to = 8) int i) {
        Assertions.checkArgument(i > 0 && i < 9);
        this.capacity = i;
    }

    @Override
    public GlShaderProgram toGlShaderProgram(Context context, boolean z) throws VideoFrameProcessingException {
        return new FrameCacheGlShaderProgram(context, this.capacity, z);
    }
}
