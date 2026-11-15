package com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorInput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap;
import java.io.IOException;

interface OggSeeker {
    SeekMap createSeekMap();

    long read(ExtractorInput extractorInput) throws InterruptedException, IOException;

    long startSeek(long j10);
}
