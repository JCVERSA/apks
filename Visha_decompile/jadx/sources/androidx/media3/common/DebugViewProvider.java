package androidx.media3.common;

import android.view.SurfaceView;
import androidx.annotation.Nullable;
import androidx.media3.common.DebugViewProvider;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
public interface DebugViewProvider {
    public static final DebugViewProvider NONE = new DebugViewProvider() {
        @Override
        public final SurfaceView getDebugPreviewSurfaceView(int i, int i2) {
            return DebugViewProvider.lambda$static$0(i, i2);
        }
    };

    static SurfaceView lambda$static$0(int i, int i2) {
        return null;
    }

    @Nullable
    SurfaceView getDebugPreviewSurfaceView(int i, int i2);
}
