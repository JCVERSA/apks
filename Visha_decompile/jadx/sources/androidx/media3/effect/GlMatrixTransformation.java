package androidx.media3.effect;

import android.content.Context;
import androidx.media3.common.C;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.UnstableApi;
import com.google.common.collect.ImmutableList;

@UnstableApi
public interface GlMatrixTransformation extends GlEffect {
    default Size configure(int i, int i2) {
        return new Size(i, i2);
    }

    float[] getGlMatrixArray(long j);

    default int getGlTextureMinFilter() {
        return C.TEXTURE_MIN_FILTER_LINEAR;
    }

    @Override
    default BaseGlShaderProgram toGlShaderProgram(Context context, boolean z) throws VideoFrameProcessingException {
        return DefaultShaderProgram.create(context, ImmutableList.of(this), ImmutableList.of(), z);
    }
}
