package androidx.media3.exoplayer.rtsp;

import android.os.SystemClock;
import androidx.annotation.GuardedBy;
import androidx.media3.common.C;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.exoplayer.rtsp.reader.DefaultRtpPayloadReaderFactory;
import androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import java.io.IOException;

final class RtpExtractor implements Extractor {
    private boolean firstPacketRead;

    @GuardedBy("lock")
    private boolean isSeekPending;
    private ExtractorOutput output;
    private final RtpPayloadReader payloadReader;
    private final int trackId;
    private final ParsableByteArray rtpPacketScratchBuffer = new ParsableByteArray(RtpPacket.MAX_SIZE);
    private final ParsableByteArray rtpPacketDataBuffer = new ParsableByteArray();
    private final Object lock = new Object();
    private final RtpPacketReorderingQueue reorderingQueue = new RtpPacketReorderingQueue();
    private volatile long firstTimestamp = C.TIME_UNSET;
    private volatile int firstSequenceNumber = -1;

    @GuardedBy("lock")
    private long nextRtpTimestamp = C.TIME_UNSET;

    @GuardedBy("lock")
    private long playbackStartTimeUs = C.TIME_UNSET;

    public RtpExtractor(RtpPayloadFormat rtpPayloadFormat, int i) {
        this.trackId = i;
        this.payloadReader = (RtpPayloadReader) Assertions.checkNotNull(new DefaultRtpPayloadReaderFactory().createPayloadReader(rtpPayloadFormat));
    }

    private static long getCutoffTimeMs(long j) {
        return j - 30;
    }

    public boolean hasReadFirstRtpPacket() {
        return this.firstPacketRead;
    }

    @Override
    public void init(ExtractorOutput extractorOutput) {
        this.payloadReader.createTracks(extractorOutput, this.trackId);
        extractorOutput.endTracks();
        extractorOutput.seekMap(new SeekMap.Unseekable(C.TIME_UNSET));
        this.output = extractorOutput;
    }

    public void preSeek() {
        synchronized (this.lock) {
            this.isSeekPending = true;
        }
    }

    @Override
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        Assertions.checkNotNull(this.output);
        int i = extractorInput.read(this.rtpPacketScratchBuffer.getData(), 0, RtpPacket.MAX_SIZE);
        if (i == -1) {
            return -1;
        }
        if (i == 0) {
            return 0;
        }
        this.rtpPacketScratchBuffer.setPosition(0);
        this.rtpPacketScratchBuffer.setLimit(i);
        RtpPacket rtpPacket = RtpPacket.parse(this.rtpPacketScratchBuffer);
        if (rtpPacket == null) {
            return 0;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long cutoffTimeMs = getCutoffTimeMs(jElapsedRealtime);
        this.reorderingQueue.offer(rtpPacket, jElapsedRealtime);
        RtpPacket rtpPacketPoll = this.reorderingQueue.poll(cutoffTimeMs);
        if (rtpPacketPoll == null) {
            return 0;
        }
        if (!this.firstPacketRead) {
            if (this.firstTimestamp == C.TIME_UNSET) {
                this.firstTimestamp = rtpPacketPoll.timestamp;
            }
            if (this.firstSequenceNumber == -1) {
                this.firstSequenceNumber = rtpPacketPoll.sequenceNumber;
            }
            this.payloadReader.onReceivingFirstPacket(this.firstTimestamp, this.firstSequenceNumber);
            this.firstPacketRead = true;
        }
        synchronized (this.lock) {
            try {
                if (!this.isSeekPending) {
                    do {
                        this.rtpPacketDataBuffer.reset(rtpPacketPoll.payloadData);
                        this.payloadReader.consume(this.rtpPacketDataBuffer, rtpPacketPoll.timestamp, rtpPacketPoll.sequenceNumber, rtpPacketPoll.marker);
                        rtpPacketPoll = this.reorderingQueue.poll(cutoffTimeMs);
                    } while (rtpPacketPoll != null);
                } else if (this.nextRtpTimestamp != C.TIME_UNSET && this.playbackStartTimeUs != C.TIME_UNSET) {
                    this.reorderingQueue.reset();
                    this.payloadReader.seek(this.nextRtpTimestamp, this.playbackStartTimeUs);
                    this.isSeekPending = false;
                    this.nextRtpTimestamp = C.TIME_UNSET;
                    this.playbackStartTimeUs = C.TIME_UNSET;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return 0;
    }

    @Override
    public void release() {
    }

    @Override
    public void seek(long j, long j2) {
        synchronized (this.lock) {
            try {
                if (!this.isSeekPending) {
                    this.isSeekPending = true;
                }
                this.nextRtpTimestamp = j;
                this.playbackStartTimeUs = j2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setFirstSequenceNumber(int i) {
        this.firstSequenceNumber = i;
    }

    public void setFirstTimestamp(long j) {
        this.firstTimestamp = j;
    }

    @Override
    public boolean sniff(ExtractorInput extractorInput) {
        throw new UnsupportedOperationException("RTP packets are transmitted in a packet stream do not support sniffing.");
    }
}
