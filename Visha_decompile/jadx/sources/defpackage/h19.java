package defpackage;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;

public interface h19 {
    int a(o44 o44Var, DecoderInputBuffer decoderInputBuffer, int i);

    boolean isReady();

    void maybeThrowError();

    int skipData(long j);
}
