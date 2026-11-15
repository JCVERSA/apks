package androidx.media3.exoplayer.source;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import java.util.Objects;

@UnstableApi
public final class ExternallyLoadedMediaSource extends BaseMediaSource {
    private final ExternalLoader externalLoader;

    @GuardedBy("this")
    private MediaItem mediaItem;
    private final long timelineDurationUs;

    public static final class Factory implements MediaSource.Factory {
        private final ExternalLoader externalLoader;
        private final long timelineDurationUs;

        public Factory(long j, ExternalLoader externalLoader) {
            this.timelineDurationUs = j;
            this.externalLoader = externalLoader;
        }

        @Override
        public int[] getSupportedTypes() {
            return new int[]{4};
        }

        @Override
        public MediaSource.Factory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider) {
            return this;
        }

        @Override
        public MediaSource.Factory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            return this;
        }

        @Override
        public ExternallyLoadedMediaSource createMediaSource(MediaItem mediaItem) {
            return new ExternallyLoadedMediaSource(mediaItem, this.timelineDurationUs, this.externalLoader);
        }
    }

    @Override
    public boolean canUpdateMediaItem(MediaItem mediaItem) {
        MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
        MediaItem.LocalConfiguration localConfiguration2 = (MediaItem.LocalConfiguration) Assertions.checkNotNull(getMediaItem().localConfiguration);
        if (localConfiguration != null && localConfiguration.uri.equals(localConfiguration2.uri) && Objects.equals(localConfiguration.mimeType, localConfiguration2.mimeType)) {
            long j = localConfiguration.imageDurationMs;
            if (j == C.TIME_UNSET || Util.msToUs(j) == this.timelineDurationUs) {
                return true;
            }
        }
        return false;
    }

    @Override
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        MediaItem mediaItem = getMediaItem();
        Assertions.checkNotNull(mediaItem.localConfiguration);
        Assertions.checkNotNull(mediaItem.localConfiguration.mimeType, "Externally loaded mediaItems require a MIME type.");
        MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
        return new ExternallyLoadedMediaPeriod(localConfiguration.uri, localConfiguration.mimeType, this.externalLoader);
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
        refreshSourceInfo(new SinglePeriodTimeline(this.timelineDurationUs, true, false, false, (Object) null, getMediaItem()));
    }

    @Override
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((ExternallyLoadedMediaPeriod) mediaPeriod).releasePeriod();
    }

    @Override
    public void releaseSourceInternal() {
    }

    @Override
    public synchronized void updateMediaItem(MediaItem mediaItem) {
        this.mediaItem = mediaItem;
    }

    private ExternallyLoadedMediaSource(MediaItem mediaItem, long j, ExternalLoader externalLoader) {
        this.mediaItem = mediaItem;
        this.timelineDurationUs = j;
        this.externalLoader = externalLoader;
    }
}
