package androidx.media3.effect;

import android.content.Context;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DebugViewProvider;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
public final class DebugViewEffect implements GlEffect {
    private final DebugViewProvider debugViewProvider;
    private final ColorInfo outputColorInfo;

    public DebugViewEffect(DebugViewProvider debugViewProvider, ColorInfo colorInfo) {
        this.debugViewProvider = debugViewProvider;
        this.outputColorInfo = colorInfo;
    }

    @Override
    public GlShaderProgram toGlShaderProgram(Context context, boolean z) {
        return new DebugViewShaderProgram(context, this.debugViewProvider, this.outputColorInfo);
    }
}
