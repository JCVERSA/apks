package androidx.media3.common;

import androidx.media3.common.util.Size;
import androidx.media3.common.util.UnstableApi;
import java.util.List;

@UnstableApi
public interface VideoCompositorSettings {
    public static final VideoCompositorSettings DEFAULT = new VideoCompositorSettings() {
        @Override
        public Size getOutputSize(List<Size> list) {
            return list.get(0);
        }

        @Override
        public OverlaySettings getOverlaySettings(int i, long j) {
            return new OverlaySettings() {
            };
        }
    };

    Size getOutputSize(List<Size> list);

    OverlaySettings getOverlaySettings(int i, long j);
}
