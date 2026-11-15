package androidx.media3.effect;

import android.content.Context;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.UnstableApi;
import com.google.common.collect.ImmutableList;

@UnstableApi
public interface RgbMatrix extends GlEffect {
    float[] getMatrix(long j, boolean z);

    @Override
    default BaseGlShaderProgram toGlShaderProgram(Context context, boolean z) throws VideoFrameProcessingException {
        return DefaultShaderProgram.create(context, ImmutableList.of(), ImmutableList.of(this), z);
    }
}
