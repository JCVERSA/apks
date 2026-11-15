package com.mbridge.msdk.playercommon.exoplayer2.source;

import com.mbridge.msdk.playercommon.exoplayer2.FormatHolder;
import com.mbridge.msdk.playercommon.exoplayer2.decoder.DecoderInputBuffer;
import java.io.IOException;

public final class EmptySampleStream implements SampleStream {
    @Override
    public boolean isReady() {
        return true;
    }

    @Override
    public void maybeThrowError() throws IOException {
    }

    @Override
    public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z10) {
        decoderInputBuffer.setFlags(4);
        return -4;
    }

    @Override
    public int skipData(long j10) {
        return 0;
    }
}
