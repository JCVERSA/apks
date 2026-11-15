package androidx.media3.exoplayer.upstream;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSpec;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMap;
import defpackage.dgb;
import defpackage.r95;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.regex.Pattern;

@UnstableApi
public final class CmcdData {
    private static final r95 COMMA_JOINER = r95.h(StringUtils.COMMA);
    public static final String OBJECT_TYPE_AUDIO_ONLY = "a";
    public static final String OBJECT_TYPE_INIT_SEGMENT = "i";
    public static final String OBJECT_TYPE_MANIFEST = "m";
    public static final String OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO = "av";
    public static final String OBJECT_TYPE_VIDEO_ONLY = "v";
    public static final String STREAMING_FORMAT_DASH = "d";
    public static final String STREAMING_FORMAT_HLS = "h";
    public static final String STREAMING_FORMAT_SS = "s";
    public static final String STREAM_TYPE_LIVE = "l";
    public static final String STREAM_TYPE_VOD = "v";
    private final CmcdObject cmcdObject;
    private final CmcdRequest cmcdRequest;
    private final CmcdSession cmcdSession;
    private final CmcdStatus cmcdStatus;
    private final int dataTransmissionMode;

    public static final class CmcdObject {
        public final int bitrateKbps;
        public final ImmutableList<String> customDataList;
        public final long objectDurationMs;

        @Nullable
        public final String objectType;
        public final int topBitrateKbps;

        public static final class Builder {

            @Nullable
            private String objectType;
            private int bitrateKbps = C.RATE_UNSET_INT;
            private int topBitrateKbps = C.RATE_UNSET_INT;
            private long objectDurationMs = C.TIME_UNSET;
            private ImmutableList<String> customDataList = ImmutableList.of();

            public CmcdObject build() {
                return new CmcdObject(this);
            }

            public Builder setBitrateKbps(int i) {
                Assertions.checkArgument(i >= 0 || i == -2147483647);
                this.bitrateKbps = i;
                return this;
            }

            public Builder setCustomDataList(List<String> list) {
                this.customDataList = ImmutableList.copyOf((Collection) list);
                return this;
            }

            public Builder setObjectDurationMs(long j) {
                Assertions.checkArgument(j >= 0 || j == C.TIME_UNSET);
                this.objectDurationMs = j;
                return this;
            }

            public Builder setObjectType(@Nullable String str) {
                this.objectType = str;
                return this;
            }

            public Builder setTopBitrateKbps(int i) {
                Assertions.checkArgument(i >= 0 || i == -2147483647);
                this.topBitrateKbps = i;
                return this;
            }
        }

        public void populateCmcdDataMap(ArrayListMultimap<String, String> arrayListMultimap) {
            ArrayList arrayList = new ArrayList();
            if (this.bitrateKbps != -2147483647) {
                arrayList.add("br=" + this.bitrateKbps);
            }
            if (this.topBitrateKbps != -2147483647) {
                arrayList.add("tb=" + this.topBitrateKbps);
            }
            if (this.objectDurationMs != C.TIME_UNSET) {
                arrayList.add("d=" + this.objectDurationMs);
            }
            if (!TextUtils.isEmpty(this.objectType)) {
                arrayList.add("ot=" + this.objectType);
            }
            arrayList.addAll(this.customDataList);
            if (arrayList.isEmpty()) {
                return;
            }
            arrayListMultimap.putAll(CmcdConfiguration.KEY_CMCD_OBJECT, arrayList);
        }

        private CmcdObject(Builder builder) {
            this.bitrateKbps = builder.bitrateKbps;
            this.topBitrateKbps = builder.topBitrateKbps;
            this.objectDurationMs = builder.objectDurationMs;
            this.objectType = builder.objectType;
            this.customDataList = builder.customDataList;
        }
    }

    public static final class CmcdRequest {
        public final long bufferLengthMs;
        public final ImmutableList<String> customDataList;
        public final long deadlineMs;
        public final long measuredThroughputInKbps;

        @Nullable
        public final String nextObjectRequest;

        @Nullable
        public final String nextRangeRequest;
        public final boolean startup;

        public static final class Builder {

            @Nullable
            private String nextObjectRequest;

            @Nullable
            private String nextRangeRequest;
            private boolean startup;
            private long bufferLengthMs = C.TIME_UNSET;
            private long measuredThroughputInKbps = -2147483647L;
            private long deadlineMs = C.TIME_UNSET;
            private ImmutableList<String> customDataList = ImmutableList.of();

            public CmcdRequest build() {
                return new CmcdRequest(this);
            }

            public Builder setBufferLengthMs(long j) {
                if (j == C.TIME_UNSET) {
                    this.bufferLengthMs = j;
                } else {
                    if (j < 0) {
                        throw new IllegalArgumentException();
                    }
                    this.bufferLengthMs = ((j + 50) / 100) * 100;
                }
                return this;
            }

            public Builder setCustomDataList(List<String> list) {
                this.customDataList = ImmutableList.copyOf((Collection) list);
                return this;
            }

            public Builder setDeadlineMs(long j) {
                if (j == C.TIME_UNSET) {
                    this.deadlineMs = j;
                } else {
                    if (j < 0) {
                        throw new IllegalArgumentException();
                    }
                    this.deadlineMs = ((j + 50) / 100) * 100;
                }
                return this;
            }

            public Builder setMeasuredThroughputInKbps(long j) {
                if (j == -2147483647L) {
                    this.measuredThroughputInKbps = j;
                } else {
                    if (j < 0) {
                        throw new IllegalArgumentException();
                    }
                    this.measuredThroughputInKbps = ((j + 50) / 100) * 100;
                }
                return this;
            }

            public Builder setNextObjectRequest(@Nullable String str) {
                this.nextObjectRequest = str == null ? null : Uri.encode(str);
                return this;
            }

            public Builder setNextRangeRequest(@Nullable String str) {
                this.nextRangeRequest = str;
                return this;
            }

            public Builder setStartup(boolean z) {
                this.startup = z;
                return this;
            }
        }

        public void populateCmcdDataMap(ArrayListMultimap<String, String> arrayListMultimap) {
            ArrayList arrayList = new ArrayList();
            if (this.bufferLengthMs != C.TIME_UNSET) {
                arrayList.add("bl=" + this.bufferLengthMs);
            }
            if (this.measuredThroughputInKbps != -2147483647L) {
                arrayList.add("mtp=" + this.measuredThroughputInKbps);
            }
            if (this.deadlineMs != C.TIME_UNSET) {
                arrayList.add("dl=" + this.deadlineMs);
            }
            if (this.startup) {
                arrayList.add(CmcdConfiguration.KEY_STARTUP);
            }
            if (!TextUtils.isEmpty(this.nextObjectRequest)) {
                arrayList.add(Util.formatInvariant("%s=\"%s\"", CmcdConfiguration.KEY_NEXT_OBJECT_REQUEST, this.nextObjectRequest));
            }
            if (!TextUtils.isEmpty(this.nextRangeRequest)) {
                arrayList.add(Util.formatInvariant("%s=\"%s\"", CmcdConfiguration.KEY_NEXT_RANGE_REQUEST, this.nextRangeRequest));
            }
            arrayList.addAll(this.customDataList);
            if (arrayList.isEmpty()) {
                return;
            }
            arrayListMultimap.putAll(CmcdConfiguration.KEY_CMCD_REQUEST, arrayList);
        }

        private CmcdRequest(Builder builder) {
            this.bufferLengthMs = builder.bufferLengthMs;
            this.measuredThroughputInKbps = builder.measuredThroughputInKbps;
            this.deadlineMs = builder.deadlineMs;
            this.startup = builder.startup;
            this.nextObjectRequest = builder.nextObjectRequest;
            this.nextRangeRequest = builder.nextRangeRequest;
            this.customDataList = builder.customDataList;
        }
    }

    public static final class CmcdSession {
        public static final int VERSION = 1;

        @Nullable
        public final String contentId;
        public final ImmutableList<String> customDataList;
        public final float playbackRate;

        @Nullable
        public final String sessionId;

        @Nullable
        public final String streamType;

        @Nullable
        public final String streamingFormat;

        public static final class Builder {

            @Nullable
            private String contentId;
            private ImmutableList<String> customDataList = ImmutableList.of();
            private float playbackRate;

            @Nullable
            private String sessionId;

            @Nullable
            private String streamType;

            @Nullable
            private String streamingFormat;

            public CmcdSession build() {
                return new CmcdSession(this);
            }

            public Builder setContentId(@Nullable String str) {
                Assertions.checkArgument(str == null || str.length() <= 64);
                this.contentId = str;
                return this;
            }

            public Builder setCustomDataList(List<String> list) {
                this.customDataList = ImmutableList.copyOf((Collection) list);
                return this;
            }

            public Builder setPlaybackRate(float f) {
                Assertions.checkArgument(f > 0.0f || f == -3.4028235E38f);
                this.playbackRate = f;
                return this;
            }

            public Builder setSessionId(@Nullable String str) {
                Assertions.checkArgument(str == null || str.length() <= 64);
                this.sessionId = str;
                return this;
            }

            public Builder setStreamType(@Nullable String str) {
                this.streamType = str;
                return this;
            }

            public Builder setStreamingFormat(@Nullable String str) {
                this.streamingFormat = str;
                return this;
            }
        }

        public void populateCmcdDataMap(ArrayListMultimap<String, String> arrayListMultimap) {
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(this.contentId)) {
                arrayList.add(Util.formatInvariant("%s=\"%s\"", CmcdConfiguration.KEY_CONTENT_ID, this.contentId));
            }
            if (!TextUtils.isEmpty(this.sessionId)) {
                arrayList.add(Util.formatInvariant("%s=\"%s\"", "sid", this.sessionId));
            }
            if (!TextUtils.isEmpty(this.streamingFormat)) {
                arrayList.add("sf=" + this.streamingFormat);
            }
            if (!TextUtils.isEmpty(this.streamType)) {
                arrayList.add("st=" + this.streamType);
            }
            float f = this.playbackRate;
            if (f != -3.4028235E38f && f != 1.0f) {
                arrayList.add(Util.formatInvariant("%s=%.2f", CmcdConfiguration.KEY_PLAYBACK_RATE, Float.valueOf(f)));
            }
            arrayList.addAll(this.customDataList);
            if (arrayList.isEmpty()) {
                return;
            }
            arrayListMultimap.putAll(CmcdConfiguration.KEY_CMCD_SESSION, arrayList);
        }

        private CmcdSession(Builder builder) {
            this.contentId = builder.contentId;
            this.sessionId = builder.sessionId;
            this.streamingFormat = builder.streamingFormat;
            this.streamType = builder.streamType;
            this.playbackRate = builder.playbackRate;
            this.customDataList = builder.customDataList;
        }
    }

    public static final class CmcdStatus {
        public final boolean bufferStarvation;
        public final ImmutableList<String> customDataList;
        public final int maximumRequestedThroughputKbps;

        public static final class Builder {
            private boolean bufferStarvation;
            private int maximumRequestedThroughputKbps = C.RATE_UNSET_INT;
            private ImmutableList<String> customDataList = ImmutableList.of();

            public CmcdStatus build() {
                return new CmcdStatus(this);
            }

            public Builder setBufferStarvation(boolean z) {
                this.bufferStarvation = z;
                return this;
            }

            public Builder setCustomDataList(List<String> list) {
                this.customDataList = ImmutableList.copyOf((Collection) list);
                return this;
            }

            public Builder setMaximumRequestedThroughputKbps(int i) {
                Assertions.checkArgument(i >= 0 || i == -2147483647);
                if (i != -2147483647) {
                    i = ((i + 50) / 100) * 100;
                }
                this.maximumRequestedThroughputKbps = i;
                return this;
            }
        }

        public void populateCmcdDataMap(ArrayListMultimap<String, String> arrayListMultimap) {
            ArrayList arrayList = new ArrayList();
            if (this.maximumRequestedThroughputKbps != -2147483647) {
                arrayList.add("rtp=" + this.maximumRequestedThroughputKbps);
            }
            if (this.bufferStarvation) {
                arrayList.add(CmcdConfiguration.KEY_BUFFER_STARVATION);
            }
            arrayList.addAll(this.customDataList);
            if (arrayList.isEmpty()) {
                return;
            }
            arrayListMultimap.putAll(CmcdConfiguration.KEY_CMCD_STATUS, arrayList);
        }

        private CmcdStatus(Builder builder) {
            this.maximumRequestedThroughputKbps = builder.maximumRequestedThroughputKbps;
            this.bufferStarvation = builder.bufferStarvation;
            this.customDataList = builder.customDataList;
        }
    }

    public static final class Factory {
        private static final Pattern CUSTOM_KEY_NAME_PATTERN = Pattern.compile(".*-.*");
        private final CmcdConfiguration cmcdConfiguration;
        private boolean didRebuffer;
        private boolean isBufferEmpty;

        @Nullable
        private Boolean isLive;

        @Nullable
        private String nextObjectRequest;

        @Nullable
        private String nextRangeRequest;

        @Nullable
        private String objectType;
        private final String streamingFormat;

        @Nullable
        private ExoTrackSelection trackSelection;
        private long bufferedDurationUs = C.TIME_UNSET;
        private float playbackRate = -3.4028235E38f;
        private long chunkDurationUs = C.TIME_UNSET;

        public Factory(CmcdConfiguration cmcdConfiguration, String str) {
            this.cmcdConfiguration = cmcdConfiguration;
            this.streamingFormat = str;
        }

        @Nullable
        private static String getObjectTypeFromFormat(Format format) {
            String audioMediaMimeType = MimeTypes.getAudioMediaMimeType(format.codecs);
            String videoMediaMimeType = MimeTypes.getVideoMediaMimeType(format.codecs);
            if (audioMediaMimeType != null && videoMediaMimeType != null) {
                return CmcdData.OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO;
            }
            int trackType = MimeTypes.getTrackType(format.sampleMimeType);
            if (trackType == -1) {
                trackType = MimeTypes.getTrackType(format.containerMimeType);
            }
            if (trackType == 1) {
                return CmcdData.OBJECT_TYPE_AUDIO_ONLY;
            }
            if (trackType == 2) {
                return "v";
            }
            return null;
        }

        private static boolean isManifestObjectType(@Nullable String str) {
            return Objects.equals(str, CmcdData.OBJECT_TYPE_MANIFEST);
        }

        private static boolean isMediaObjectType(@Nullable String str) {
            return Objects.equals(str, CmcdData.OBJECT_TYPE_AUDIO_ONLY) || Objects.equals(str, "v") || Objects.equals(str, CmcdData.OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO);
        }

        private void validateCustomDataListFormat(List<String> list) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                Assertions.checkState(CUSTOM_KEY_NAME_PATTERN.matcher(Util.split(it.next(), "=")[0]).matches());
            }
        }

        public CmcdData createCmcdData() {
            int iCeilDivide;
            int requestedMaximumThroughputKbps;
            int iCeilDivide2;
            boolean zIsManifestObjectType = isManifestObjectType(this.objectType);
            if (!zIsManifestObjectType) {
                Assertions.checkStateNotNull(this.trackSelection, "Track selection must be set");
            }
            if (this.objectType == null) {
                this.objectType = getObjectTypeFromFormat(((ExoTrackSelection) Assertions.checkNotNull(this.trackSelection)).getSelectedFormat());
            }
            boolean zIsMediaObjectType = isMediaObjectType(this.objectType);
            if (zIsMediaObjectType) {
                Assertions.checkState(this.bufferedDurationUs != C.TIME_UNSET, "Buffered duration must be set");
                Assertions.checkState(this.chunkDurationUs != C.TIME_UNSET, "Chunk duration must be set");
            }
            ImmutableListMultimap<String, String> customData = this.cmcdConfiguration.requestConfig.getCustomData();
            dgb it = customData.keySet().iterator();
            while (it.hasNext()) {
                validateCustomDataListFormat(customData.get((String) it.next()));
            }
            long jCeilDivide = -2147483647L;
            if (zIsManifestObjectType) {
                iCeilDivide = C.RATE_UNSET_INT;
                requestedMaximumThroughputKbps = -2147483647;
                iCeilDivide2 = -2147483647;
            } else {
                ExoTrackSelection exoTrackSelection = (ExoTrackSelection) Assertions.checkNotNull(this.trackSelection);
                int iMax = exoTrackSelection.getSelectedFormat().bitrate;
                iCeilDivide = Util.ceilDivide(iMax, 1000);
                TrackGroup trackGroup = exoTrackSelection.getTrackGroup();
                for (int i = 0; i < trackGroup.length; i++) {
                    iMax = Math.max(iMax, trackGroup.getFormat(i).bitrate);
                }
                iCeilDivide2 = Util.ceilDivide(iMax, 1000);
                jCeilDivide = exoTrackSelection.getLatestBitrateEstimate() != -2147483647L ? Util.ceilDivide(exoTrackSelection.getLatestBitrateEstimate(), 1000L) : -2147483647L;
                requestedMaximumThroughputKbps = this.cmcdConfiguration.requestConfig.getRequestedMaximumThroughputKbps(iCeilDivide);
            }
            CmcdObject.Builder builder = new CmcdObject.Builder();
            if (this.cmcdConfiguration.isBitrateLoggingAllowed()) {
                builder.setBitrateKbps(iCeilDivide);
            }
            if (this.cmcdConfiguration.isTopBitrateLoggingAllowed()) {
                builder.setTopBitrateKbps(iCeilDivide2);
            }
            if (zIsMediaObjectType && this.cmcdConfiguration.isObjectDurationLoggingAllowed()) {
                builder.setObjectDurationMs(Util.usToMs(this.chunkDurationUs));
            }
            if (this.cmcdConfiguration.isObjectTypeLoggingAllowed()) {
                builder.setObjectType(this.objectType);
            }
            if (customData.containsKey(CmcdConfiguration.KEY_CMCD_OBJECT)) {
                builder.setCustomDataList(customData.get(CmcdConfiguration.KEY_CMCD_OBJECT));
            }
            CmcdRequest.Builder builder2 = new CmcdRequest.Builder();
            if (zIsMediaObjectType) {
                if (this.cmcdConfiguration.isBufferLengthLoggingAllowed()) {
                    builder2.setBufferLengthMs(Util.usToMs(this.bufferedDurationUs));
                }
                if (this.cmcdConfiguration.isDeadlineLoggingAllowed()) {
                    builder2.setDeadlineMs(Util.usToMs((long) (this.bufferedDurationUs / this.playbackRate)));
                }
            }
            if (this.cmcdConfiguration.isMeasuredThroughputLoggingAllowed()) {
                builder2.setMeasuredThroughputInKbps(jCeilDivide);
            }
            if (this.cmcdConfiguration.isStartupLoggingAllowed()) {
                builder2.setStartup(this.didRebuffer || this.isBufferEmpty);
            }
            if (this.cmcdConfiguration.isNextObjectRequestLoggingAllowed()) {
                builder2.setNextObjectRequest(this.nextObjectRequest);
            }
            if (this.cmcdConfiguration.isNextRangeRequestLoggingAllowed()) {
                builder2.setNextRangeRequest(this.nextRangeRequest);
            }
            if (customData.containsKey(CmcdConfiguration.KEY_CMCD_REQUEST)) {
                builder2.setCustomDataList(customData.get(CmcdConfiguration.KEY_CMCD_REQUEST));
            }
            CmcdSession.Builder builder3 = new CmcdSession.Builder();
            if (this.cmcdConfiguration.isContentIdLoggingAllowed()) {
                builder3.setContentId(this.cmcdConfiguration.contentId);
            }
            if (this.cmcdConfiguration.isSessionIdLoggingAllowed()) {
                builder3.setSessionId(this.cmcdConfiguration.sessionId);
            }
            if (this.cmcdConfiguration.isStreamingFormatLoggingAllowed()) {
                builder3.setStreamingFormat(this.streamingFormat);
            }
            if (this.isLive != null && this.cmcdConfiguration.isStreamTypeLoggingAllowed()) {
                builder3.setStreamType(((Boolean) Assertions.checkNotNull(this.isLive)).booleanValue() ? CmcdData.STREAM_TYPE_LIVE : "v");
            }
            if (this.cmcdConfiguration.isPlaybackRateLoggingAllowed()) {
                builder3.setPlaybackRate(this.playbackRate);
            }
            if (customData.containsKey(CmcdConfiguration.KEY_CMCD_SESSION)) {
                builder3.setCustomDataList(customData.get(CmcdConfiguration.KEY_CMCD_SESSION));
            }
            CmcdStatus.Builder builder4 = new CmcdStatus.Builder();
            if (this.cmcdConfiguration.isMaximumRequestThroughputLoggingAllowed()) {
                builder4.setMaximumRequestedThroughputKbps(requestedMaximumThroughputKbps);
            }
            if (this.cmcdConfiguration.isBufferStarvationLoggingAllowed()) {
                builder4.setBufferStarvation(this.didRebuffer);
            }
            if (customData.containsKey(CmcdConfiguration.KEY_CMCD_STATUS)) {
                builder4.setCustomDataList(customData.get(CmcdConfiguration.KEY_CMCD_STATUS));
            }
            return new CmcdData(builder.build(), builder2.build(), builder3.build(), builder4.build(), this.cmcdConfiguration.dataTransmissionMode);
        }

        public Factory setBufferedDurationUs(long j) {
            Assertions.checkArgument(j >= 0);
            this.bufferedDurationUs = j;
            return this;
        }

        public Factory setChunkDurationUs(long j) {
            Assertions.checkArgument(j >= 0);
            this.chunkDurationUs = j;
            return this;
        }

        public Factory setDidRebuffer(boolean z) {
            this.didRebuffer = z;
            return this;
        }

        public Factory setIsBufferEmpty(boolean z) {
            this.isBufferEmpty = z;
            return this;
        }

        public Factory setIsLive(boolean z) {
            this.isLive = Boolean.valueOf(z);
            return this;
        }

        public Factory setNextObjectRequest(@Nullable String str) {
            this.nextObjectRequest = str;
            return this;
        }

        public Factory setNextRangeRequest(@Nullable String str) {
            this.nextRangeRequest = str;
            return this;
        }

        public Factory setObjectType(@Nullable String str) {
            this.objectType = str;
            return this;
        }

        public Factory setPlaybackRate(float f) {
            Assertions.checkArgument(f == -3.4028235E38f || f > 0.0f);
            this.playbackRate = f;
            return this;
        }

        public Factory setTrackSelection(ExoTrackSelection exoTrackSelection) {
            this.trackSelection = exoTrackSelection;
            return this;
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ObjectType {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface StreamType {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface StreamingFormat {
    }

    public DataSpec addToDataSpec(DataSpec dataSpec) {
        ArrayListMultimap<String, String> arrayListMultimapCreate = ArrayListMultimap.create();
        this.cmcdObject.populateCmcdDataMap(arrayListMultimapCreate);
        this.cmcdRequest.populateCmcdDataMap(arrayListMultimapCreate);
        this.cmcdSession.populateCmcdDataMap(arrayListMultimapCreate);
        this.cmcdStatus.populateCmcdDataMap(arrayListMultimapCreate);
        if (this.dataTransmissionMode != 0) {
            ArrayList arrayList = new ArrayList();
            Iterator it = arrayListMultimapCreate.asMap().values().iterator();
            while (it.hasNext()) {
                arrayList.addAll((Collection) it.next());
            }
            Collections.sort(arrayList);
            return dataSpec.buildUpon().setUri(dataSpec.uri.buildUpon().appendQueryParameter(CmcdConfiguration.CMCD_QUERY_PARAMETER_KEY, COMMA_JOINER.d(arrayList)).build()).build();
        }
        ImmutableMap.b bVarBuilder = ImmutableMap.builder();
        for (String str : arrayListMultimapCreate.keySet()) {
            List list = arrayListMultimapCreate.get((Object) str);
            Collections.sort(list);
            bVarBuilder.h(str, COMMA_JOINER.d(list));
        }
        return dataSpec.withAdditionalHeaders(bVarBuilder.d());
    }

    private CmcdData(CmcdObject cmcdObject, CmcdRequest cmcdRequest, CmcdSession cmcdSession, CmcdStatus cmcdStatus, int i) {
        this.cmcdObject = cmcdObject;
        this.cmcdRequest = cmcdRequest;
        this.cmcdSession = cmcdSession;
        this.cmcdStatus = cmcdStatus;
        this.dataTransmissionMode = i;
    }
}
