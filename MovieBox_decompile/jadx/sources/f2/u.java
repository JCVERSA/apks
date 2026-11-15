package f2;

import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.s2;

public interface u {
    int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i10);

    boolean isReady();

    void maybeThrowError();

    int skipData(long j10);
}
