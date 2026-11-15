package defpackage;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;

public final class u93 implements h19 {
    @Override
    public int a(o44 o44Var, DecoderInputBuffer decoderInputBuffer, int i) {
        decoderInputBuffer.k(4);
        return -4;
    }

    @Override
    public boolean isReady() {
        return true;
    }

    @Override
    public void maybeThrowError() {
    }

    @Override
    public int skipData(long j) {
        return 0;
    }
}
