package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import java.util.ArrayList;

@UnstableApi
public final class SilenceMediaSource extends BaseMediaSource {
    private static final int CHANNEL_COUNT = 2;
    private static final Format FORMAT;
    public static final String MEDIA_ID = "SilenceMediaSource";
    private static final MediaItem MEDIA_ITEM;
    private static final int PCM_ENCODING = 2;
    private static final int SAMPLE_RATE_HZ = 44100;
    private static final byte[] SILENCE_SAMPLE;
    private final long durationUs;

    @GuardedBy("this")
    private MediaItem mediaItem;

    public static final class Factory {
        private long durationUs;

        @Nullable
        private Object tag;

        public SilenceMediaSource createMediaSource() {
            Assertions.checkState(this.durationUs > 0);
            return new SilenceMediaSource(this.durationUs, SilenceMediaSource.MEDIA_ITEM.buildUpon().setTag(this.tag).build());
        }

        public Factory setDurationUs(@IntRange(from = 1) long j) {
            this.durationUs = j;
            return this;
        }

        public Factory setTag(@Nullable Object obj) {
            this.tag = obj;
            return this;
        }
    }

    public static final class SilenceMediaPeriod implements MediaPeriod {
        private static final TrackGroupArray TRACKS = new TrackGroupArray(new TrackGroup(SilenceMediaSource.FORMAT));
        private final long durationUs;
        private final ArrayList<SampleStream> sampleStreams = new ArrayList<>();

        public SilenceMediaPeriod(long j) {
            this.durationUs = j;
        }

        private long constrainSeekPosition(long j) {
            return Util.constrainValue(j, 0L, this.durationUs);
        }

        @Override
        public boolean continueLoading(LoadingInfo loadingInfo) {
            return false;
        }

        @Override
        public void discardBuffer(long j, boolean z) {
        }

        @Override
        public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
            return constrainSeekPosition(j);
        }

        @Override
        public long getBufferedPositionUs() {
            return Long.MIN_VALUE;
        }

        @Override
        public long getNextLoadPositionUs() {
            return Long.MIN_VALUE;
        }

        @Override
        public TrackGroupArray getTrackGroups() {
            return TRACKS;
        }

        @Override
        public boolean isLoading() {
            return false;
        }

        @Override
        public void maybeThrowPrepareError() {
        }

        @Override
        public void prepare(MediaPeriod.Callback callback, long j) {
            callback.onPrepared(this);
        }

        @Override
        public long readDiscontinuity() {
            return C.TIME_UNSET;
        }

        @Override
        public void reevaluateBuffer(long j) {
        }

        @Override
        public long seekToUs(long j) {
            long jConstrainSeekPosition = constrainSeekPosition(j);
            for (int i = 0; i < this.sampleStreams.size(); i++) {
                ((SilenceSampleStream) this.sampleStreams.get(i)).seekTo(jConstrainSeekPosition);
            }
            return jConstrainSeekPosition;
        }

        @Override
        public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
            long jConstrainSeekPosition = constrainSeekPosition(j);
            for (int i = 0; i < exoTrackSelectionArr.length; i++) {
                SampleStream sampleStream = sampleStreamArr[i];
                if (sampleStream != null && (exoTrackSelectionArr[i] == null || !zArr[i])) {
                    this.sampleStreams.remove(sampleStream);
                    sampleStreamArr[i] = null;
                }
                if (sampleStreamArr[i] == null && exoTrackSelectionArr[i] != null) {
                    SilenceSampleStream silenceSampleStream = new SilenceSampleStream(this.durationUs);
                    silenceSampleStream.seekTo(jConstrainSeekPosition);
                    this.sampleStreams.add(silenceSampleStream);
                    sampleStreamArr[i] = silenceSampleStream;
                    zArr2[i] = true;
                }
            }
            return jConstrainSeekPosition;
        }
    }

    public static final class SilenceSampleStream implements SampleStream {
        private final long durationBytes;
        private long positionBytes;
        private boolean sentFormat;

        public SilenceSampleStream(long j) {
            this.durationBytes = SilenceMediaSource.getAudioByteCount(j);
            seekTo(0L);
        }

        @Override
        public boolean isReady() {
            return true;
        }

        @Override
        public void maybeThrowError() {
        }

        @Override
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
            if (!this.sentFormat || (i & 2) != 0) {
                formatHolder.format = SilenceMediaSource.FORMAT;
                this.sentFormat = true;
                return -5;
            }
            long j = this.durationBytes;
            long j2 = this.positionBytes;
            long j3 = j - j2;
            if (j3 == 0) {
                decoderInputBuffer.addFlag(4);
                return -4;
            }
            decoderInputBuffer.timeUs = SilenceMediaSource.getAudioPositionUs(j2);
            decoderInputBuffer.addFlag(1);
            int iMin = (int) Math.min(SilenceMediaSource.SILENCE_SAMPLE.length, j3);
            if ((i & 4) == 0) {
                decoderInputBuffer.ensureSpaceForWrite(iMin);
                decoderInputBuffer.data.put(SilenceMediaSource.SILENCE_SAMPLE, 0, iMin);
            }
            if ((i & 1) == 0) {
                this.positionBytes += (long) iMin;
            }
            return -4;
        }

        public void seekTo(long j) {
            this.positionBytes = Util.constrainValue(SilenceMediaSource.getAudioByteCount(j), 0L, this.durationBytes);
        }

        @Override
        public int skipData(long j) {
            long j2 = this.positionBytes;
            seekTo(j);
            return (int) ((this.positionBytes - j2) / ((long) SilenceMediaSource.SILENCE_SAMPLE.length));
        }
    }

    static {
        Format formatBuild = new Format.Builder().setSampleMimeType("audio/raw").setChannelCount(2).setSampleRate(SAMPLE_RATE_HZ).setPcmEncoding(2).build();
        FORMAT = formatBuild;
        MEDIA_ITEM = new MediaItem.Builder().setMediaId(MEDIA_ID).setUri(Uri.EMPTY).setMimeType(formatBuild.sampleMimeType).build();
        SILENCE_SAMPLE = new byte[Util.getPcmFrameSize(2, 2) * 1024];
    }

    public static long getAudioByteCount(long j) {
        return ((long) Util.getPcmFrameSize(2, 2)) * ((j * 44100) / 1000000);
    }

    public static long getAudioPositionUs(long j) {
        return ((j / ((long) Util.getPcmFrameSize(2, 2))) * 1000000) / 44100;
    }

    @Override
    public boolean canUpdateMediaItem(MediaItem mediaItem) {
        return true;
    }

    @Override
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        return new SilenceMediaPeriod(this.durationUs);
    }

    @Override
    public synchronized MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        refreshSourceInfo(new SinglePeriodTimeline(this.durationUs, true, false, false, (Object) null, getMediaItem()));
    }

    @Override
    public void releasePeriod(MediaPeriod mediaPeriod) {
    }

    @Override
    public void releaseSourceInternal() {
    }

    @Override
    public synchronized void updateMediaItem(MediaItem mediaItem) {
        this.mediaItem = mediaItem;
    }

    public SilenceMediaSource(long j) {
        this(j, MEDIA_ITEM);
    }

    private SilenceMediaSource(long j, MediaItem mediaItem) {
        Assertions.checkArgument(j >= 0);
        this.durationUs = j;
        this.mediaItem = mediaItem;
    }
}
