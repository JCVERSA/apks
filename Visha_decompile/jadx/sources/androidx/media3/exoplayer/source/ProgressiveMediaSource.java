package androidx.media3.exoplayer.source;

import android.net.Uri;
import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManagerProvider;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.source.ProgressiveMediaExtractor;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import androidx.media3.extractor.DefaultExtractorsFactory;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.SeekMap;
import defpackage.w6a;
import java.util.Objects;
import java.util.concurrent.Executor;

@UnstableApi
public final class ProgressiveMediaSource extends BaseMediaSource implements ProgressiveMediaPeriod.Listener {
    public static final int DEFAULT_LOADING_CHECK_INTERVAL_BYTES = 1048576;
    private final int continueLoadingCheckIntervalBytes;
    private final DataSource.Factory dataSourceFactory;

    @Nullable
    private final w6a downloadExecutorSupplier;
    private final DrmSessionManager drmSessionManager;

    @Nullable
    private Listener listener;
    private final LoadErrorHandlingPolicy loadableLoadErrorHandlingPolicy;

    @GuardedBy("this")
    private MediaItem mediaItem;
    private final ProgressiveMediaExtractor.Factory progressiveMediaExtractorFactory;

    @Nullable
    private final Format singleTrackFormat;
    private final int singleTrackId;
    private long timelineDurationUs;
    private boolean timelineIsLive;
    private boolean timelineIsPlaceholder;
    private boolean timelineIsSeekable;

    @Nullable
    private TransferListener transferListener;

    public static final class Factory implements MediaSourceFactory {
        private int continueLoadingCheckIntervalBytes;
        private final DataSource.Factory dataSourceFactory;

        @Nullable
        private w6a downloadExecutorSupplier;
        private DrmSessionManagerProvider drmSessionManagerProvider;
        private LoadErrorHandlingPolicy loadErrorHandlingPolicy;
        private ProgressiveMediaExtractor.Factory progressiveMediaExtractorFactory;

        @Nullable
        private Format singleTrackFormat;
        private int singleTrackId;

        public Factory(DataSource.Factory factory) {
            this(factory, new DefaultExtractorsFactory());
        }

        public static ProgressiveMediaExtractor lambda$new$0(ExtractorsFactory extractorsFactory, PlayerId playerId) {
            return new BundledExtractorsAdapter(extractorsFactory);
        }

        public static ReleasableExecutor lambda$setDownloadExecutor$1(w6a w6aVar, Consumer consumer) {
            return ReleasableExecutor.from((Executor) w6aVar.get(), consumer);
        }

        public Factory enableLazyLoadingWithSingleTrack(int i, Format format) {
            this.singleTrackId = i;
            this.singleTrackFormat = (Format) Assertions.checkNotNull(format);
            return this;
        }

        @Override
        public int[] getSupportedTypes() {
            return new int[]{4};
        }

        public Factory setContinueLoadingCheckIntervalBytes(int i) {
            this.continueLoadingCheckIntervalBytes = i;
            return this;
        }

        public <T extends Executor> Factory setDownloadExecutor(final w6a w6aVar, final Consumer<T> consumer) {
            this.downloadExecutorSupplier = new w6a() {
                @Override
                public final Object get() {
                    return ProgressiveMediaSource.Factory.lambda$setDownloadExecutor$1(w6aVar, consumer);
                }
            };
            return this;
        }

        public Factory(DataSource.Factory factory, final ExtractorsFactory extractorsFactory) {
            this(factory, new ProgressiveMediaExtractor.Factory() {
                @Override
                public final ProgressiveMediaExtractor createProgressiveMediaExtractor(PlayerId playerId) {
                    return ProgressiveMediaSource.Factory.lambda$new$0(extractorsFactory, playerId);
                }
            });
        }

        @Override
        public ProgressiveMediaSource createMediaSource(MediaItem mediaItem) {
            Assertions.checkNotNull(mediaItem.localConfiguration);
            return new ProgressiveMediaSource(mediaItem, this.dataSourceFactory, this.progressiveMediaExtractorFactory, this.drmSessionManagerProvider.get(mediaItem), this.loadErrorHandlingPolicy, this.continueLoadingCheckIntervalBytes, this.singleTrackId, this.singleTrackFormat, this.downloadExecutorSupplier);
        }

        @Override
        public Factory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider) {
            this.drmSessionManagerProvider = (DrmSessionManagerProvider) Assertions.checkNotNull(drmSessionManagerProvider, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override
        public Factory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            this.loadErrorHandlingPolicy = (LoadErrorHandlingPolicy) Assertions.checkNotNull(loadErrorHandlingPolicy, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        public Factory(DataSource.Factory factory, ProgressiveMediaExtractor.Factory factory2) {
            this(factory, factory2, new DefaultDrmSessionManagerProvider(), new DefaultLoadErrorHandlingPolicy(), 1048576);
        }

        public Factory(DataSource.Factory factory, ProgressiveMediaExtractor.Factory factory2, DrmSessionManagerProvider drmSessionManagerProvider, LoadErrorHandlingPolicy loadErrorHandlingPolicy, int i) {
            this.dataSourceFactory = factory;
            this.progressiveMediaExtractorFactory = factory2;
            this.drmSessionManagerProvider = drmSessionManagerProvider;
            this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
            this.continueLoadingCheckIntervalBytes = i;
        }
    }

    public interface Listener {
        void onSeekMap(MediaSource mediaSource, SeekMap seekMap);
    }

    private MediaItem.LocalConfiguration getLocalConfiguration() {
        return (MediaItem.LocalConfiguration) Assertions.checkNotNull(getMediaItem().localConfiguration);
    }

    private void notifySourceInfoRefreshed() {
        Timeline singlePeriodTimeline = new SinglePeriodTimeline(this.timelineDurationUs, this.timelineIsSeekable, false, this.timelineIsLive, (Object) null, getMediaItem());
        if (this.timelineIsPlaceholder) {
            singlePeriodTimeline = new ForwardingTimeline(singlePeriodTimeline) {
                @Override
                public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
                    super.getPeriod(i, period, z);
                    period.isPlaceholder = true;
                    return period;
                }

                @Override
                public Timeline.Window getWindow(int i, Timeline.Window window, long j) {
                    super.getWindow(i, window, j);
                    window.isPlaceholder = true;
                    return window;
                }
            };
        }
        refreshSourceInfo(singlePeriodTimeline);
    }

    @Override
    public boolean canUpdateMediaItem(MediaItem mediaItem) {
        MediaItem.LocalConfiguration localConfiguration = getLocalConfiguration();
        MediaItem.LocalConfiguration localConfiguration2 = mediaItem.localConfiguration;
        return localConfiguration2 != null && localConfiguration2.uri.equals(localConfiguration.uri) && localConfiguration2.imageDurationMs == localConfiguration.imageDurationMs && Objects.equals(localConfiguration2.customCacheKey, localConfiguration.customCacheKey);
    }

    public void clearListener() {
        this.listener = null;
    }

    @Override
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        DataSource dataSourceCreateDataSource = this.dataSourceFactory.createDataSource();
        TransferListener transferListener = this.transferListener;
        if (transferListener != null) {
            dataSourceCreateDataSource.addTransferListener(transferListener);
        }
        MediaItem.LocalConfiguration localConfiguration = getLocalConfiguration();
        Uri uri = localConfiguration.uri;
        ProgressiveMediaExtractor progressiveMediaExtractorCreateProgressiveMediaExtractor = this.progressiveMediaExtractorFactory.createProgressiveMediaExtractor(getPlayerId());
        DrmSessionManager drmSessionManager = this.drmSessionManager;
        DrmSessionEventListener.EventDispatcher eventDispatcherCreateDrmEventDispatcher = createDrmEventDispatcher(mediaPeriodId);
        LoadErrorHandlingPolicy loadErrorHandlingPolicy = this.loadableLoadErrorHandlingPolicy;
        MediaSourceEventListener.EventDispatcher eventDispatcherCreateEventDispatcher = createEventDispatcher(mediaPeriodId);
        String str = localConfiguration.customCacheKey;
        int i = this.continueLoadingCheckIntervalBytes;
        int i2 = this.singleTrackId;
        Format format = this.singleTrackFormat;
        long jMsToUs = Util.msToUs(localConfiguration.imageDurationMs);
        w6a w6aVar = this.downloadExecutorSupplier;
        return new ProgressiveMediaPeriod(uri, dataSourceCreateDataSource, progressiveMediaExtractorCreateProgressiveMediaExtractor, drmSessionManager, eventDispatcherCreateDrmEventDispatcher, loadErrorHandlingPolicy, eventDispatcherCreateEventDispatcher, this, allocator, str, i, i2, format, jMsToUs, w6aVar != null ? (ReleasableExecutor) w6aVar.get() : null);
    }

    @Override
    public synchronized MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override
    public void onSourceInfoRefreshed(long j, SeekMap seekMap, boolean z) {
        if (j == C.TIME_UNSET) {
            j = this.timelineDurationUs;
        }
        boolean zIsSeekable = seekMap.isSeekable();
        if (!this.timelineIsPlaceholder && this.timelineDurationUs == j && this.timelineIsSeekable == zIsSeekable && this.timelineIsLive == z) {
            return;
        }
        this.timelineDurationUs = j;
        this.timelineIsSeekable = zIsSeekable;
        this.timelineIsLive = z;
        this.timelineIsPlaceholder = false;
        notifySourceInfoRefreshed();
        Listener listener = this.listener;
        if (listener != null) {
            listener.onSeekMap(this, seekMap);
        }
    }

    @Override
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        this.transferListener = transferListener;
        this.drmSessionManager.setPlayer((Looper) Assertions.checkNotNull(Looper.myLooper()), getPlayerId());
        this.drmSessionManager.prepare();
        notifySourceInfoRefreshed();
    }

    @Override
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((ProgressiveMediaPeriod) mediaPeriod).release();
    }

    @Override
    public void releaseSourceInternal() {
        this.drmSessionManager.release();
    }

    public void setListener(Listener listener) {
        this.listener = listener;
    }

    @Override
    public synchronized void updateMediaItem(MediaItem mediaItem) {
        this.mediaItem = mediaItem;
    }

    private ProgressiveMediaSource(MediaItem mediaItem, DataSource.Factory factory, ProgressiveMediaExtractor.Factory factory2, DrmSessionManager drmSessionManager, LoadErrorHandlingPolicy loadErrorHandlingPolicy, int i, int i2, @Nullable Format format, @Nullable w6a w6aVar) {
        this.mediaItem = mediaItem;
        this.dataSourceFactory = factory;
        this.progressiveMediaExtractorFactory = factory2;
        this.drmSessionManager = drmSessionManager;
        this.loadableLoadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.continueLoadingCheckIntervalBytes = i;
        this.singleTrackFormat = format;
        this.singleTrackId = i2;
        this.timelineIsPlaceholder = true;
        this.timelineDurationUs = C.TIME_UNSET;
        this.downloadExecutorSupplier = w6aVar;
    }
}
