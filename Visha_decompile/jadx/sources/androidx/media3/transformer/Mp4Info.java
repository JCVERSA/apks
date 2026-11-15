package androidx.media3.transformer;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.mp4.Mp4Extractor;
import androidx.media3.extractor.text.SubtitleParser;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

final class Mp4Info {

    @Nullable
    public final Format audioFormat;
    public final long durationUs;
    public final long firstSyncSampleTimestampUsAfterTimeUs;
    public final long firstVideoSampleTimestampUs;
    public final boolean isFirstVideoSampleAfterTimeUsSyncSample;
    public final long lastSyncSampleTimestampUs;

    @Nullable
    public final Format videoFormat;

    private Mp4Info(long j, long j2, long j3, long j4, boolean z, @Nullable Format format, @Nullable Format format2) {
        this.durationUs = j;
        this.lastSyncSampleTimestampUs = j2;
        this.firstVideoSampleTimestampUs = j3;
        this.firstSyncSampleTimestampUsAfterTimeUs = j4;
        this.isFirstVideoSampleAfterTimeUsSyncSample = z;
        this.videoFormat = format;
        this.audioFormat = format2;
    }

    public static Mp4Info create(Context context, String str) throws IOException {
        return create(context, str, C.TIME_UNSET);
    }

    public static final class ExtractorOutputImpl implements ExtractorOutput {
        public boolean seekMapInitialized;
        public int videoTrackId = -1;
        public int audioTrackId = -1;
        final Map<Integer, TrackOutputImpl> trackTypeToTrackOutput = new HashMap();

        @Override
        public void endTracks() {
        }

        @Override
        public void seekMap(SeekMap seekMap) {
            this.seekMapInitialized = true;
        }

        @Override
        public TrackOutput track(int i, int i2) {
            if (i2 == 2) {
                this.videoTrackId = i;
            } else if (i2 == 1) {
                this.audioTrackId = i;
            }
            TrackOutputImpl trackOutputImpl = this.trackTypeToTrackOutput.get(Integer.valueOf(i2));
            if (trackOutputImpl != null) {
                return trackOutputImpl;
            }
            TrackOutputImpl trackOutputImpl2 = new TrackOutputImpl();
            this.trackTypeToTrackOutput.put(Integer.valueOf(i2), trackOutputImpl2);
            return trackOutputImpl2;
        }

        public static final class TrackOutputImpl implements TrackOutput {
            private static final int FIXED_BYTE_ARRAY_SIZE = 16000;
            private final byte[] byteArray = new byte[16000];
            public Format format;

            @Override
            public void format(Format format) {
                this.format = format;
            }

            @Override
            public int sampleData(DataReader dataReader, int i, boolean z, int i2) throws IOException {
                int i3 = i;
                while (i3 > 0) {
                    boolean z2 = false;
                    int i4 = dataReader.read(this.byteArray, 0, Math.min(i3, this.byteArray.length));
                    if (i4 != -1) {
                        z2 = true;
                    }
                    Assertions.checkState(z2);
                    i3 -= i4;
                }
                return i;
            }

            @Override
            public void sampleMetadata(long j, int i, int i2, int i3, @Nullable TrackOutput.CryptoData cryptoData) {
            }

            @Override
            public void sampleData(ParsableByteArray parsableByteArray, int i, int i2) {
                while (i > 0) {
                    int iMin = Math.min(i, this.byteArray.length);
                    parsableByteArray.readBytes(this.byteArray, 0, iMin);
                    i -= iMin;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:58:0x0156 A[Catch: all -> 0x0082, TryCatch #0 {all -> 0x0082, blocks: (B:3:0x0029, B:7:0x0037, B:8:0x0052, B:10:0x0057, B:12:0x005d, B:14:0x007d, B:18:0x0085, B:21:0x0099, B:24:0x009e, B:25:0x00a3, B:27:0x00a7, B:29:0x00b5, B:33:0x00d7, B:35:0x00e9, B:42:0x0103, B:44:0x010c, B:46:0x0114, B:48:0x011b, B:56:0x0151, B:58:0x0156, B:60:0x0175, B:38:0x00f8), top: B:65:0x0029 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0173  */
    public static Mp4Info create(Context context, String str, long j) throws IOException {
        long j2;
        Format format;
        long j3;
        long j4;
        long j5;
        Format format2;
        PositionHolder positionHolder;
        Mp4Extractor mp4Extractor = new Mp4Extractor(SubtitleParser.Factory.UNSUPPORTED, 16);
        ExtractorOutputImpl extractorOutputImpl = new ExtractorOutputImpl();
        boolean z = false;
        DefaultDataSource defaultDataSource = new DefaultDataSource(context, false);
        try {
            long jOpen = defaultDataSource.open(new DataSpec.Builder().setUri(str).build());
            Assertions.checkState(jOpen != 0);
            DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(defaultDataSource, 0L, jOpen);
            Assertions.checkState(mp4Extractor.sniff(defaultExtractorInput), "The MP4 file is invalid");
            mp4Extractor.init(extractorOutputImpl);
            PositionHolder positionHolder2 = new PositionHolder();
            while (!extractorOutputImpl.seekMapInitialized) {
                int i = mp4Extractor.read(defaultExtractorInput, positionHolder2);
                if (i == 1) {
                    defaultDataSource.close();
                    long jOpen2 = defaultDataSource.open(new DataSpec.Builder().setUri(str).setPosition(positionHolder2.position).build());
                    if (jOpen2 != -1) {
                        jOpen2 += positionHolder2.position;
                    }
                    positionHolder = positionHolder2;
                    defaultExtractorInput = new DefaultExtractorInput(defaultDataSource, positionHolder2.position, jOpen2);
                } else {
                    positionHolder = positionHolder2;
                    if (i == -1 && !extractorOutputImpl.seekMapInitialized) {
                        throw new IllegalStateException("The MP4 file is invalid");
                    }
                }
                positionHolder2 = positionHolder;
            }
            long durationUs = mp4Extractor.getDurationUs();
            if (extractorOutputImpl.videoTrackId != -1) {
                format = (Format) Assertions.checkNotNull(((ExtractorOutputImpl.TrackOutputImpl) Assertions.checkNotNull(extractorOutputImpl.trackTypeToTrackOutput.get(2))).format);
                Assertions.checkState(durationUs != C.TIME_UNSET);
                j2 = durationUs;
                j3 = mp4Extractor.getSeekPoints(durationUs, extractorOutputImpl.videoTrackId).first.timeUs;
                if (j != C.TIME_UNSET) {
                    SeekMap.SeekPoints seekPoints = mp4Extractor.getSeekPoints(j, extractorOutputImpl.videoTrackId);
                    j5 = seekPoints.first.timeUs;
                    if (j != j5) {
                        j5 = seekPoints.second.timeUs;
                        if (j > j5) {
                            j5 = Long.MIN_VALUE;
                        }
                    }
                    long[] sampleTimestampsUs = mp4Extractor.getSampleTimestampsUs(extractorOutputImpl.videoTrackId);
                    long j6 = sampleTimestampsUs.length > 0 ? sampleTimestampsUs[0] : C.TIME_UNSET;
                    int iBinarySearchCeil = Util.binarySearchCeil(sampleTimestampsUs, j, true, false);
                    z = iBinarySearchCeil < sampleTimestampsUs.length && sampleTimestampsUs[iBinarySearchCeil] == j5;
                    j4 = j6;
                } else {
                    format = format;
                    j3 = j3;
                }
                if (extractorOutputImpl.audioTrackId != -1) {
                    format2 = (Format) Assertions.checkNotNull(((ExtractorOutputImpl.TrackOutputImpl) Assertions.checkNotNull(extractorOutputImpl.trackTypeToTrackOutput.get(1))).format);
                } else {
                    format2 = null;
                }
                Mp4Info mp4Info = new Mp4Info(j2, j3, j4, j5, z, format, format2);
                DataSourceUtil.closeQuietly(defaultDataSource);
                mp4Extractor.release();
                return mp4Info;
            }
            j2 = durationUs;
            format = null;
            j3 = C.TIME_UNSET;
            j4 = C.TIME_UNSET;
            j5 = C.TIME_UNSET;
            if (extractorOutputImpl.audioTrackId != -1) {
                format2 = (Format) Assertions.checkNotNull(((ExtractorOutputImpl.TrackOutputImpl) Assertions.checkNotNull(extractorOutputImpl.trackTypeToTrackOutput.get(1))).format);
            } else {
                format2 = null;
            }
            Mp4Info mp4Info2 = new Mp4Info(j2, j3, j4, j5, z, format, format2);
            DataSourceUtil.closeQuietly(defaultDataSource);
            mp4Extractor.release();
            return mp4Info2;
        } catch (Throwable th) {
            DataSourceUtil.closeQuietly(defaultDataSource);
            mp4Extractor.release();
            throw th;
        }
    }
}
