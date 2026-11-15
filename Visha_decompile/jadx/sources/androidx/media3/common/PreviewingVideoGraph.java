package androidx.media3.common;

import android.content.Context;
import androidx.media3.common.util.UnstableApi;
import java.util.List;
import java.util.concurrent.Executor;

@UnstableApi
public interface PreviewingVideoGraph extends VideoGraph {

    public interface Factory {
        PreviewingVideoGraph create(Context context, ColorInfo colorInfo, DebugViewProvider debugViewProvider, VideoGraph.Listener listener, Executor executor, VideoCompositorSettings videoCompositorSettings, List<Effect> list, long j) throws VideoFrameProcessingException;

        boolean supportsMultipleInputs();
    }

    void renderOutputFrame(long j);
}
