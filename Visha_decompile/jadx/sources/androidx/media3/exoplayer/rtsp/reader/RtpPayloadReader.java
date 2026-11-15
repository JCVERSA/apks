package androidx.media3.exoplayer.rtsp.reader;

import androidx.annotation.Nullable;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.rtsp.RtpPayloadFormat;
import androidx.media3.extractor.ExtractorOutput;

@UnstableApi
public interface RtpPayloadReader {

    public interface Factory {
        @Nullable
        RtpPayloadReader createPayloadReader(RtpPayloadFormat rtpPayloadFormat);
    }

    void consume(ParsableByteArray parsableByteArray, long j, int i, boolean z) throws ParserException;

    void createTracks(ExtractorOutput extractorOutput, int i);

    void onReceivingFirstPacket(long j, int i);

    void seek(long j, long j2);
}
