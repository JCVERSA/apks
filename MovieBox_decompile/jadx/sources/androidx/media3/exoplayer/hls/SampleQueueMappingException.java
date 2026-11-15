package androidx.media3.exoplayer.hls;

import androidx.annotation.Nullable;
import java.io.IOException;

public final class SampleQueueMappingException extends IOException {
    public SampleQueueMappingException(@Nullable String str) {
        super("Unable to bind a sample queue to TrackGroup with MIME type " + str + ".");
    }
}
