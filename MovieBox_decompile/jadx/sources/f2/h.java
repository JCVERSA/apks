package f2;

import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.s2;

public final class h implements u {
    @Override
    public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        decoderInputBuffer.setFlags(4);
        return -4;
    }

    @Override
    public boolean isReady() {
        return true;
    }

    @Override
    public int skipData(long j10) {
        return 0;
    }

    @Override
    public void maybeThrowError() {
    }
}
