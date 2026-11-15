package androidx.media3.effect;

import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.GlUtil;

public final class l implements VideoFrameProcessingTaskExecutor.Task {
    public final DefaultVideoCompositor a;

    public l(DefaultVideoCompositor defaultVideoCompositor) {
        this.a = defaultVideoCompositor;
    }

    @Override
    public final void run() throws VideoFrameProcessingException, GlUtil.GlException {
        this.a.maybeComposite();
    }
}
