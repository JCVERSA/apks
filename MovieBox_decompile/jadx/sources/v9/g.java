package v9;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.q1;

public final class g implements s {
    @Override
    public int a(q1 q1Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        decoderInputBuffer.k(4);
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
