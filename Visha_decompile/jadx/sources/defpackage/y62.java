package defpackage;

import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.effect.GlShaderProgram;

public final class y62 implements GlShaderProgram.ErrorListener {
    public final VideoFrameProcessor.Listener a;

    @Override
    public final void onError(VideoFrameProcessingException videoFrameProcessingException) {
        this.a.onError(videoFrameProcessingException);
    }
}
