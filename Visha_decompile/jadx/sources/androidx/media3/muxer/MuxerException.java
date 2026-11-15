package androidx.media3.muxer;

import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
public final class MuxerException extends Exception {
    static {
        MediaLibraryInfo.registerModule("media3.muxer");
    }

    public MuxerException(String str, Throwable th) {
        super(str, th);
    }
}
