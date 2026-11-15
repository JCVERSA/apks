package androidx.media3.effect;

import android.content.Context;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DebugViewProvider;
import androidx.media3.common.Effect;
import androidx.media3.common.PreviewingVideoGraph;
import androidx.media3.common.VideoCompositorSettings;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.VideoGraph;
import androidx.media3.common.util.UnstableApi;
import java.util.List;
import java.util.concurrent.Executor;

@UnstableApi
public final class PreviewingMultipleInputVideoGraph extends MultipleInputVideoGraph implements PreviewingVideoGraph {

    public static final class Factory implements PreviewingVideoGraph.Factory {
        private final VideoFrameProcessor.Factory videoFrameProcessorFactory = new DefaultVideoFrameProcessor.Factory.Builder().build();

        @Override
        public PreviewingVideoGraph create(Context context, ColorInfo colorInfo, DebugViewProvider debugViewProvider, VideoGraph.Listener listener, Executor executor, VideoCompositorSettings videoCompositorSettings, List<Effect> list, long j) {
            return new PreviewingMultipleInputVideoGraph(context, this.videoFrameProcessorFactory, colorInfo, debugViewProvider, listener, executor, videoCompositorSettings, list, j);
        }

        @Override
        public boolean supportsMultipleInputs() {
            return true;
        }
    }

    @Override
    public void renderOutputFrame(long j) {
        getCompositionVideoFrameProcessor().renderOutputFrame(j);
    }

    private PreviewingMultipleInputVideoGraph(Context context, VideoFrameProcessor.Factory factory, ColorInfo colorInfo, DebugViewProvider debugViewProvider, VideoGraph.Listener listener, Executor executor, VideoCompositorSettings videoCompositorSettings, List<Effect> list, long j) {
        super(context, factory, colorInfo, debugViewProvider, listener, executor, videoCompositorSettings, list, j, false);
    }
}
