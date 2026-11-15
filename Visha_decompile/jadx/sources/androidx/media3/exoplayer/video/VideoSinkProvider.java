package androidx.media3.exoplayer.video;

import android.view.Surface;
import androidx.media3.common.util.Size;

interface VideoSinkProvider {
    void clearOutputSurfaceInfo();

    VideoSink getSink(int i);

    void release();

    void setOutputSurfaceInfo(Surface surface, Size size);
}
