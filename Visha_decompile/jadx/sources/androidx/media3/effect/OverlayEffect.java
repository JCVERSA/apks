package androidx.media3.effect;

import android.content.Context;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.UnstableApi;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.List;

@UnstableApi
public final class OverlayEffect implements GlEffect {
    private final ImmutableList<TextureOverlay> overlays;

    public OverlayEffect(List<TextureOverlay> list) {
        this.overlays = ImmutableList.copyOf((Collection) list);
    }

    @Override
    public BaseGlShaderProgram toGlShaderProgram(Context context, boolean z) throws VideoFrameProcessingException {
        return new OverlayShaderProgram(context, z, this.overlays);
    }
}
