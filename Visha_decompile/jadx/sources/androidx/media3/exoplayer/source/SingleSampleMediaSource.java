package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.source.SingleSampleMediaSource;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import com.google.common.collect.ImmutableList;
import defpackage.w6a;
import defpackage.zq6;
import java.util.concurrent.Executor;

@UnstableApi
@Deprecated
public final class SingleSampleMediaSource extends BaseMediaSource {
    private final DataSource.Factory dataSourceFactory;
    private final DataSpec dataSpec;

    @Nullable
    private final w6a downloadExecutorSupplier;
    private final long durationUs;
    private final Format format;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private final MediaItem mediaItem;
    private final Timeline timeline;

    @Nullable
    private TransferListener transferListener;
    private final boolean treatLoadErrorsAsEndOfStream;

    public static final class Factory {
        private final DataSource.Factory dataSourceFactory;

        @Nullable
        private w6a downloadExecutorSupplier;

        @Nullable
        private Object tag;

        @Nullable
        private String trackId;
        private LoadErrorHandlingPolicy loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
        private boolean treatLoadErrorsAsEndOfStream = true;

        public Factory(DataSource.Factory factory) {
            this.dataSourceFactory = (DataSource.Factory) Assertions.checkNotNull(factory);
        }

        public static ReleasableExecutor lambda$setDownloadExecutor$0(w6a w6aVar, Consumer consumer) {
            return ReleasableExecutor.from((Executor) w6aVar.get(), consumer);
        }

        public SingleSampleMediaSource createMediaSource(MediaItem.SubtitleConfiguration subtitleConfiguration, long j) {
            return new SingleSampleMediaSource(this.trackId, subtitleConfiguration, this.dataSourceFactory, j, this.loadErrorHandlingPolicy, this.treatLoadErrorsAsEndOfStream, this.tag, this.downloadExecutorSupplier);
        }

        public <T extends Executor> Factory setDownloadExecutor(final w6a w6aVar, final Consumer<T> consumer) {
            this.downloadExecutorSupplier = new w6a() {
                @Override
                public final Object get() {
                    return SingleSampleMediaSource.Factory.lambda$setDownloadExecutor$0(w6aVar, consumer);
                }
            };
            return this;
        }

        public Factory setLoadErrorHandlingPolicy(@Nullable LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            if (loadErrorHandlingPolicy == null) {
                loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
            }
            this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
            return this;
        }

        public Factory setTag(@Nullable Object obj) {
            this.tag = obj;
            return this;
        }

        @Deprecated
        public Factory setTrackId(@Nullable String str) {
            this.trackId = str;
            return this;
        }

        public Factory setTreatLoadErrorsAsEndOfStream(boolean z) {
            this.treatLoadErrorsAsEndOfStream = z;
            return this;
        }
    }

    @Override
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        DataSpec dataSpec = this.dataSpec;
        DataSource.Factory factory = this.dataSourceFactory;
        TransferListener transferListener = this.transferListener;
        Format format = this.format;
        long j2 = this.durationUs;
        LoadErrorHandlingPolicy loadErrorHandlingPolicy = this.loadErrorHandlingPolicy;
        MediaSourceEventListener.EventDispatcher eventDispatcherCreateEventDispatcher = createEventDispatcher(mediaPeriodId);
        boolean z = this.treatLoadErrorsAsEndOfStream;
        w6a w6aVar = this.downloadExecutorSupplier;
        return new SingleSampleMediaPeriod(dataSpec, factory, transferListener, format, j2, loadErrorHandlingPolicy, eventDispatcherCreateEventDispatcher, z, w6aVar != null ? (ReleasableExecutor) w6aVar.get() : null);
    }

    @Override
    public MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        this.transferListener = transferListener;
        refreshSourceInfo(this.timeline);
    }

    @Override
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((SingleSampleMediaPeriod) mediaPeriod).release();
    }

    @Override
    public void releaseSourceInternal() {
    }

    private SingleSampleMediaSource(@Nullable String str, MediaItem.SubtitleConfiguration subtitleConfiguration, DataSource.Factory factory, long j, LoadErrorHandlingPolicy loadErrorHandlingPolicy, boolean z, @Nullable Object obj, @Nullable w6a w6aVar) {
        this.dataSourceFactory = factory;
        this.durationUs = j;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.treatLoadErrorsAsEndOfStream = z;
        MediaItem mediaItemBuild = new MediaItem.Builder().setUri(Uri.EMPTY).setMediaId(subtitleConfiguration.uri.toString()).setSubtitleConfigurations(ImmutableList.of(subtitleConfiguration)).setTag(obj).build();
        this.mediaItem = mediaItemBuild;
        Format.Builder label = new Format.Builder().setSampleMimeType((String) zq6.a(subtitleConfiguration.mimeType, MimeTypes.TEXT_UNKNOWN)).setLanguage(subtitleConfiguration.language).setSelectionFlags(subtitleConfiguration.selectionFlags).setRoleFlags(subtitleConfiguration.roleFlags).setLabel(subtitleConfiguration.label);
        String str2 = subtitleConfiguration.id;
        this.format = label.setId(str2 == null ? str : str2).build();
        this.dataSpec = new DataSpec.Builder().setUri(subtitleConfiguration.uri).setFlags(1).build();
        this.timeline = new SinglePeriodTimeline(j, true, false, false, (Object) null, mediaItemBuild);
        this.downloadExecutorSupplier = w6aVar;
    }
}
