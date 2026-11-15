package androidx.media3.transformer;

import android.media.MediaCodec;
import android.util.SparseArray;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.effect.DebugTraceUtil;
import androidx.media3.muxer.MuxerException;
import com.google.common.collect.ImmutableList;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.io.File;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

final class MuxerWrapper {
    private static final long MAX_TRACK_WRITE_AHEAD_US = Util.msToUs(500);
    public static final int MUXER_MODE_APPEND = 2;
    public static final int MUXER_MODE_DEFAULT = 0;
    public static final int MUXER_MODE_MUX_PARTIAL = 1;
    public static final int MUXER_RELEASE_REASON_CANCELLED = 1;
    public static final int MUXER_RELEASE_REASON_COMPLETED = 0;
    public static final int MUXER_RELEASE_REASON_ERROR = 2;
    private static final String TAG = "MuxerWrapper";
    private volatile int additionalRotationDegrees;

    @Nullable
    private final Format appendVideoFormat;
    private final MediaCodec.BufferInfo bufferInfo;
    private final boolean dropSamplesBeforeFirstVideoSample;
    private long firstVideoPresentationTimeUs;
    private boolean isEnded;
    private boolean isReady;
    private final Listener listener;
    private long maxEndedTrackTimeUs;
    private long minEndedTrackTimeUs;
    private long minTrackTimeUs;
    private boolean muxedPartialAudio;
    private boolean muxedPartialVideo;
    private Muxer muxer;
    private final Muxer.Factory muxerFactory;
    private int muxerMode;
    private final String outputPath;
    private int previousTrackType;
    private volatile int trackCount;
    private final SparseArray<TrackInfo> trackTypeToInfo;

    public static final class AppendTrackFormatException extends Exception {
        public AppendTrackFormatException(String str) {
            super(str);
        }
    }

    public interface Listener {
        void onEnded(long j, long j2);

        void onError(ExportException exportException);

        void onSampleWrittenOrDropped();

        void onTrackEnded(int i, Format format, int i2, int i3);
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface MuxerMode {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface MuxerReleaseReason {
    }

    public static final class TrackInfo {
        public long bytesWritten;
        public final Format format;
        public int sampleCount;
        public long startTimeUs;
        public long timeUs;
        public final int trackId;

        public TrackInfo(Format format, int i) {
            this.format = format;
            this.trackId = i;
        }

        public int getAverageBitrate() {
            long j = this.timeUs;
            if (j <= 0) {
                return C.RATE_UNSET_INT;
            }
            long j2 = this.bytesWritten;
            if (j2 <= 0) {
                return C.RATE_UNSET_INT;
            }
            long j3 = this.startTimeUs;
            return j == j3 ? C.RATE_UNSET_INT : (int) Util.scaleLargeTimestamp(j2, 8000000L, j - j3);
        }
    }

    public MuxerWrapper(String str, Muxer.Factory factory, Listener listener, int i, boolean z, @Nullable Format format) {
        this.outputPath = str;
        this.muxerFactory = factory;
        this.listener = listener;
        boolean z2 = false;
        Assertions.checkArgument(i == 0 || i == 1);
        this.muxerMode = i;
        this.dropSamplesBeforeFirstVideoSample = z;
        if ((i == 0 && format == null) || (i == 1 && format != null)) {
            z2 = true;
        }
        Assertions.checkArgument(z2, "appendVideoFormat must be present if and only if muxerMode is MUXER_MODE_MUX_PARTIAL.");
        this.appendVideoFormat = format;
        this.trackTypeToInfo = new SparseArray<>();
        this.previousTrackType = -2;
        this.firstVideoPresentationTimeUs = C.TIME_UNSET;
        this.minEndedTrackTimeUs = Long.MAX_VALUE;
        this.bufferInfo = new MediaCodec.BufferInfo();
    }

    private boolean canWriteSample(int i, long j) {
        if ((this.dropSamplesBeforeFirstVideoSample && i != 2 && Util.contains(this.trackTypeToInfo, 2) && this.firstVideoPresentationTimeUs == C.TIME_UNSET) || !this.isReady) {
            return false;
        }
        if (this.trackTypeToInfo.size() == 1) {
            return true;
        }
        long j2 = j - this.trackTypeToInfo.get(i).timeUs;
        long j3 = MAX_TRACK_WRITE_AHEAD_US;
        if (j2 > j3 && MimeTypes.getTrackType(((TrackInfo) Assertions.checkNotNull(getTrackInfoWithMinTimeUs(this.trackTypeToInfo))).format.sampleMimeType) == i) {
            return true;
        }
        if (i != this.previousTrackType) {
            this.minTrackTimeUs = ((TrackInfo) Assertions.checkNotNull(getTrackInfoWithMinTimeUs(this.trackTypeToInfo))).timeUs;
        }
        return j - this.minTrackTimeUs <= j3;
    }

    private void ensureMuxerInitialized() throws MuxerException {
        if (this.muxer == null) {
            this.muxer = this.muxerFactory.create(this.outputPath);
        }
    }

    private long getCurrentOutputSizeBytes() {
        long length = new File(this.outputPath).length();
        if (length > 0) {
            return length;
        }
        return -1L;
    }

    @Nullable
    @VisibleForTesting(otherwise = 2)
    public static List<byte[]> getMostCompatibleInitializationData(Format format, Format format2) {
        if (format.initializationDataEquals(format2)) {
            return format.initializationData;
        }
        if (!Objects.equals(format2.sampleMimeType, "video/avc") || !Objects.equals(format.sampleMimeType, "video/avc") || format2.initializationData.size() != 2 || format.initializationData.size() != 2 || !Arrays.equals(format2.initializationData.get(1), format.initializationData.get(1))) {
            return null;
        }
        int i = 0;
        byte[] bArr = format2.initializationData.get(0);
        byte[] bArr2 = format.initializationData.get(0);
        int length = NalUnitUtil.NAL_START_CODE.length + 3;
        if (length >= bArr.length || bArr.length != bArr2.length) {
            return null;
        }
        for (int i2 = 0; i2 < bArr.length; i2++) {
            if (i2 != length && bArr[i2] != bArr2[i2]) {
                return null;
            }
        }
        while (true) {
            byte[] bArr3 = NalUnitUtil.NAL_START_CODE;
            if (i >= bArr3.length) {
                if ((bArr[bArr3.length] & 31) == 7 && bArr[bArr3.length + 1] != 0) {
                    return bArr2[length] >= bArr[length] ? format.initializationData : format2.initializationData;
                }
                return null;
            }
            if (bArr[i] != bArr3[i]) {
                return null;
            }
            i++;
        }
    }

    @Nullable
    private static TrackInfo getTrackInfoWithMinTimeUs(SparseArray<TrackInfo> sparseArray) {
        if (sparseArray.size() == 0) {
            return null;
        }
        TrackInfo trackInfoValueAt = sparseArray.valueAt(0);
        for (int i = 1; i < sparseArray.size(); i++) {
            TrackInfo trackInfoValueAt2 = sparseArray.valueAt(i);
            if (trackInfoValueAt2.timeUs < trackInfoValueAt.timeUs) {
                trackInfoValueAt = trackInfoValueAt2;
            }
        }
        return trackInfoValueAt;
    }

    public void addTrackFormat(Format format) throws MuxerException, AppendTrackFormatException {
        String str = format.sampleMimeType;
        int trackType = MimeTypes.getTrackType(str);
        Assertions.checkArgument(trackType == 1 || trackType == 2, "Unsupported track format: " + str);
        if (trackType == 2) {
            format = format.buildUpon().setRotationDegrees((format.rotationDegrees + this.additionalRotationDegrees) % TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL).build();
            if (this.muxerMode == 1) {
                List<byte[]> mostCompatibleInitializationData = getMostCompatibleInitializationData(format, (Format) Assertions.checkNotNull(this.appendVideoFormat));
                if (mostCompatibleInitializationData == null) {
                    throw new AppendTrackFormatException("Switching to MUXER_MODE_APPEND will fail.");
                }
                format = format.buildUpon().setInitializationData(mostCompatibleInitializationData).build();
            }
        }
        if (this.muxerMode != 2) {
            int i = this.trackCount;
            Assertions.checkState(i > 0, "The track count should be set before the formats are added.");
            Assertions.checkState(this.trackTypeToInfo.size() < i, "All track formats have already been added.");
            Assertions.checkState(!Util.contains(this.trackTypeToInfo, trackType), "There is already a track of type " + trackType);
            ensureMuxerInitialized();
            this.trackTypeToInfo.put(trackType, new TrackInfo(format, this.muxer.addTrack(format)));
            DebugTraceUtil.logEvent(DebugTraceUtil.COMPONENT_MUXER, DebugTraceUtil.EVENT_INPUT_FORMAT, C.TIME_UNSET, "%s:%s", Util.getTrackTypeString(trackType), format);
            if (format.metadata != null) {
                for (int i2 = 0; i2 < format.metadata.length(); i2++) {
                    this.muxer.addMetadataEntry(format.metadata.get(i2));
                }
            }
            if (this.trackTypeToInfo.size() == i) {
                this.isReady = true;
                return;
            }
            return;
        }
        if (trackType != 2) {
            if (trackType == 1) {
                Assertions.checkState(Util.contains(this.trackTypeToInfo, 1));
                Format format2 = this.trackTypeToInfo.get(1).format;
                if (!Objects.equals(format2.sampleMimeType, format.sampleMimeType)) {
                    throw new AppendTrackFormatException("Audio format mismatch - sampleMimeType: " + format2.sampleMimeType + " != " + format.sampleMimeType);
                }
                if (format2.channelCount != format.channelCount) {
                    throw new AppendTrackFormatException("Audio format mismatch - channelCount: " + format2.channelCount + " != " + format.channelCount);
                }
                if (format2.sampleRate == format.sampleRate) {
                    if (!format2.initializationDataEquals(format)) {
                        throw new AppendTrackFormatException("Audio format mismatch - initializationData.");
                    }
                    return;
                }
                throw new AppendTrackFormatException("Audio format mismatch - sampleRate: " + format2.sampleRate + " != " + format.sampleRate);
            }
            return;
        }
        Assertions.checkState(Util.contains(this.trackTypeToInfo, 2));
        Format format3 = this.trackTypeToInfo.get(2).format;
        if (!Objects.equals(format3.sampleMimeType, format.sampleMimeType)) {
            throw new AppendTrackFormatException("Video format mismatch - sampleMimeType: " + format3.sampleMimeType + " != " + format.sampleMimeType);
        }
        if (format3.width != format.width) {
            throw new AppendTrackFormatException("Video format mismatch - width: " + format3.width + " != " + format.width);
        }
        if (format3.height != format.height) {
            throw new AppendTrackFormatException("Video format mismatch - height: " + format3.height + " != " + format.height);
        }
        if (format3.rotationDegrees == format.rotationDegrees) {
            if (!format.initializationDataEquals((Format) Assertions.checkNotNull(this.appendVideoFormat))) {
                throw new AppendTrackFormatException("The initialization data of the newly added track format doesn't match appendVideoFormat.");
            }
            return;
        }
        throw new AppendTrackFormatException("Video format mismatch - rotationDegrees: " + format3.rotationDegrees + " != " + format.rotationDegrees);
    }

    public void changeToAppendMode() {
        Assertions.checkState(this.muxerMode == 1);
        this.muxerMode = 2;
    }

    public void endTrack(int i) {
        if (this.isReady && Util.contains(this.trackTypeToInfo, i)) {
            TrackInfo trackInfo = this.trackTypeToInfo.get(i);
            this.minEndedTrackTimeUs = Math.max(0L, Math.min(this.minEndedTrackTimeUs, trackInfo.startTimeUs));
            this.maxEndedTrackTimeUs = Math.max(this.maxEndedTrackTimeUs, trackInfo.timeUs);
            this.listener.onTrackEnded(i, trackInfo.format, trackInfo.getAverageBitrate(), trackInfo.sampleCount);
            DebugTraceUtil.logEvent(DebugTraceUtil.COMPONENT_MUXER, DebugTraceUtil.EVENT_INPUT_ENDED, trackInfo.timeUs, "%s", Util.getTrackTypeString(i));
            if (this.muxerMode != 1) {
                this.trackTypeToInfo.delete(i);
                if (this.trackTypeToInfo.size() == 0) {
                    this.isEnded = true;
                    DebugTraceUtil.logEvent(DebugTraceUtil.COMPONENT_MUXER, DebugTraceUtil.EVENT_OUTPUT_ENDED, this.maxEndedTrackTimeUs);
                }
            } else if (i == 2) {
                this.muxedPartialVideo = true;
            } else if (i == 1) {
                this.muxedPartialAudio = true;
            }
            long jUsToMs = Util.usToMs(this.maxEndedTrackTimeUs - this.minEndedTrackTimeUs);
            if (this.muxerMode == 1 && this.muxedPartialVideo && (this.muxedPartialAudio || this.trackCount == 1)) {
                this.listener.onEnded(jUsToMs, getCurrentOutputSizeBytes());
            } else if (this.isEnded) {
                this.listener.onEnded(jUsToMs, getCurrentOutputSizeBytes());
            }
        }
    }

    public void finishWritingAndMaybeRelease(int i) throws MuxerException {
        if (i == 0 && this.muxerMode == 1) {
            return;
        }
        this.isReady = false;
        Muxer muxer = this.muxer;
        if (muxer != null) {
            try {
                muxer.close();
            } catch (MuxerException e) {
                if (i != 1 || !((String) Assertions.checkNotNull(e.getMessage())).equals(FrameworkMuxer.MUXER_STOPPING_FAILED_ERROR_MESSAGE)) {
                    throw e;
                }
            }
        }
    }

    public ImmutableList<String> getSupportedSampleMimeTypes(int i) {
        return this.muxerFactory.getSupportedSampleMimeTypes(i);
    }

    public Format getTrackFormat(int i) {
        Assertions.checkArgument(Util.contains(this.trackTypeToInfo, i));
        return this.trackTypeToInfo.get(i).format;
    }

    public boolean isEnded() {
        if (this.isEnded) {
            return true;
        }
        return this.muxerMode == 1 && this.muxedPartialVideo && (this.muxedPartialAudio || this.trackCount == 1);
    }

    public void setAdditionalRotationDegrees(int i) {
        Assertions.checkState(this.trackTypeToInfo.size() == 0 || this.additionalRotationDegrees == i, "The additional rotation cannot be changed after adding track formats.");
        this.additionalRotationDegrees = i;
    }

    public void setTrackCount(@IntRange(from = 1) int i) {
        if (this.muxerMode == 2) {
            return;
        }
        Assertions.checkState(this.trackTypeToInfo.size() == 0, "The track count cannot be changed after adding track formats.");
        this.trackCount = i;
    }

    public boolean supportsSampleMimeType(@Nullable String str) {
        return getSupportedSampleMimeTypes(MimeTypes.getTrackType(str)).contains(str);
    }

    public boolean writeSample(int i, ByteBuffer byteBuffer, boolean z, long j) throws MuxerException {
        long j2;
        Assertions.checkArgument(Util.contains(this.trackTypeToInfo, i));
        TrackInfo trackInfo = this.trackTypeToInfo.get(i);
        boolean zCanWriteSample = canWriteSample(i, j);
        DebugTraceUtil.logEvent(DebugTraceUtil.COMPONENT_MUXER, DebugTraceUtil.EVENT_CAN_WRITE_SAMPLE, j, "%s:%s", Util.getTrackTypeString(i), Boolean.valueOf(zCanWriteSample));
        if (i == 2) {
            if (this.firstVideoPresentationTimeUs == C.TIME_UNSET) {
                this.firstVideoPresentationTimeUs = j;
            }
        } else if (i == 1 && this.dropSamplesBeforeFirstVideoSample && Util.contains(this.trackTypeToInfo, 2)) {
            long j3 = this.firstVideoPresentationTimeUs;
            if (j3 != C.TIME_UNSET && j < j3) {
                this.listener.onSampleWrittenOrDropped();
                return true;
            }
        }
        if (!zCanWriteSample) {
            return false;
        }
        if (trackInfo.sampleCount == 0) {
            if (i == 2 && Util.contains(this.trackTypeToInfo, 1) && !this.dropSamplesBeforeFirstVideoSample) {
                Assertions.checkState(this.firstVideoPresentationTimeUs != C.TIME_UNSET);
                Log.w(TAG, "Applying workarounds for edit list: shifting only the first video timestamp to zero.");
                j2 = 0;
            } else {
                j2 = j;
            }
            trackInfo.startTimeUs = j2;
        } else {
            j2 = j;
        }
        trackInfo.sampleCount++;
        trackInfo.bytesWritten += (long) byteBuffer.remaining();
        trackInfo.timeUs = Math.max(trackInfo.timeUs, j2);
        this.listener.onSampleWrittenOrDropped();
        Assertions.checkStateNotNull(this.muxer);
        this.bufferInfo.set(byteBuffer.position(), byteBuffer.remaining(), j2, TransformerUtil.getMediaCodecFlags(z ? 1 : 0));
        this.muxer.writeSampleData(trackInfo.trackId, byteBuffer, this.bufferInfo);
        DebugTraceUtil.logEvent(DebugTraceUtil.COMPONENT_MUXER, DebugTraceUtil.EVENT_ACCEPTED_INPUT, j2, "%s", Util.getTrackTypeString(i));
        this.previousTrackType = i;
        return true;
    }
}
