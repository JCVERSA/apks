package androidx.media3.exoplayer.source.preload;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.C;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DefaultRendererCapabilitiesList;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.PlaybackLooperProvider;
import androidx.media3.exoplayer.RendererCapabilitiesList;
import androidx.media3.exoplayer.RenderersFactory;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.preload.DefaultPreloadManager;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;
import com.google.common.base.Suppliers;
import defpackage.he8;
import defpackage.w6a;
import defpackage.wg3;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Comparator;

@UnstableApi
public final class DefaultPreloadManager extends BasePreloadManager<Integer> {
    private final boolean deprecatedConstructorCalled;
    private final Handler preloadHandler;
    private final PlaybackLooperProvider preloadLooperProvider;
    private final PreloadMediaSource.Factory preloadMediaSourceFactory;
    private final RendererCapabilitiesList rendererCapabilitiesList;
    private final TrackSelector trackSelector;

    public static final class Builder extends BasePreloadManager.BuilderBase<Integer> {
        private w6a bandwidthMeterSupplier;
        private boolean buildCalled;
        private boolean buildExoPlayerCalled;
        private final Context context;
        private w6a loadControlSupplier;
        private PlaybackLooperProvider preloadLooperProvider;
        private w6a renderersFactorySupplier;
        private TrackSelector.Factory trackSelectorFactory;

        public Builder(final Context context, TargetPreloadStatusControl<Integer> targetPreloadStatusControl) {
            super(new RankingDataComparator(), targetPreloadStatusControl, Suppliers.a(new w6a() {
                @Override
                public final Object get() {
                    return DefaultPreloadManager.Builder.lambda$new$0(context);
                }
            }));
            this.context = context;
            this.preloadLooperProvider = new PlaybackLooperProvider();
            this.trackSelectorFactory = new TrackSelector.Factory() {
                @Override
                public final TrackSelector createTrackSelector(Context context2) {
                    return new DefaultTrackSelector(context2);
                }
            };
            this.bandwidthMeterSupplier = new w6a() {
                @Override
                public final Object get() {
                    return DefaultBandwidthMeter.getSingletonInstance(context);
                }
            };
            this.renderersFactorySupplier = Suppliers.a(new w6a() {
                @Override
                public final Object get() {
                    return DefaultPreloadManager.Builder.lambda$new$2(context);
                }
            });
            this.loadControlSupplier = Suppliers.a(new wg3());
        }

        public static MediaSource.Factory lambda$new$0(Context context) {
            return new DefaultMediaSourceFactory(context);
        }

        public static RenderersFactory lambda$new$2(Context context) {
            return new DefaultRenderersFactory(context);
        }

        public static BandwidthMeter lambda$setBandwidthMeter$6(BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        public static LoadControl lambda$setLoadControl$5(LoadControl loadControl) {
            return loadControl;
        }

        public static MediaSource.Factory lambda$setMediaSourceFactory$3(MediaSource.Factory factory) {
            return factory;
        }

        public static RenderersFactory lambda$setRenderersFactory$4(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        public ExoPlayer buildExoPlayer() {
            return buildExoPlayer(new ExoPlayer.Builder(this.context));
        }

        public Builder setBandwidthMeter(final BandwidthMeter bandwidthMeter) {
            Assertions.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.bandwidthMeterSupplier = new w6a() {
                @Override
                public final Object get() {
                    return DefaultPreloadManager.Builder.lambda$setBandwidthMeter$6(bandwidthMeter);
                }
            };
            return this;
        }

        public Builder setLoadControl(final LoadControl loadControl) {
            Assertions.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.loadControlSupplier = new w6a() {
                @Override
                public final Object get() {
                    return DefaultPreloadManager.Builder.lambda$setLoadControl$5(loadControl);
                }
            };
            return this;
        }

        public Builder setMediaSourceFactory(final MediaSource.Factory factory) {
            Assertions.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.mediaSourceFactorySupplier = new w6a() {
                @Override
                public final Object get() {
                    return DefaultPreloadManager.Builder.lambda$setMediaSourceFactory$3(factory);
                }
            };
            return this;
        }

        public Builder setPreloadLooper(Looper looper) {
            Assertions.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.preloadLooperProvider = new PlaybackLooperProvider(looper);
            return this;
        }

        public Builder setRenderersFactory(final RenderersFactory renderersFactory) {
            Assertions.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.renderersFactorySupplier = new w6a() {
                @Override
                public final Object get() {
                    return DefaultPreloadManager.Builder.lambda$setRenderersFactory$4(renderersFactory);
                }
            };
            return this;
        }

        public Builder setTrackSelectorFactory(TrackSelector.Factory factory) {
            Assertions.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.trackSelectorFactory = factory;
            return this;
        }

        @Override
        public BasePreloadManager<Integer> build() {
            Assertions.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new DefaultPreloadManager(this);
        }

        public ExoPlayer buildExoPlayer(ExoPlayer.Builder builder) {
            this.buildExoPlayerCalled = true;
            return builder.setMediaSourceFactory((MediaSource.Factory) this.mediaSourceFactorySupplier.get()).setBandwidthMeter((BandwidthMeter) this.bandwidthMeterSupplier.get()).setRenderersFactory((RenderersFactory) this.renderersFactorySupplier.get()).setLoadControl((LoadControl) this.loadControlSupplier.get()).setPlaybackLooperProvider(this.preloadLooperProvider).setTrackSelector(this.trackSelectorFactory.createTrackSelector(this.context)).build();
        }
    }

    public static final class RankingDataComparator implements Comparator<Integer> {
        public int currentPlayingIndex = -1;

        @Override
        public int compare(Integer num, Integer num2) {
            return Integer.compare(Math.abs(num.intValue() - this.currentPlayingIndex), Math.abs(num2.intValue() - this.currentPlayingIndex));
        }
    }

    public final class SourcePreloadControl implements PreloadMediaSource.PreloadControl {
        private SourcePreloadControl() {
        }

        private boolean continueOrCompletePreloading(PreloadMediaSource preloadMediaSource, he8 he8Var, boolean z) {
            TargetPreloadStatusControl.PreloadStatus targetPreloadStatus = DefaultPreloadManager.this.getTargetPreloadStatus(preloadMediaSource);
            if (targetPreloadStatus == null) {
                DefaultPreloadManager.this.onPreloadSkipped(preloadMediaSource);
                return false;
            }
            if (he8Var.apply((Status) Assertions.checkNotNull((Status) targetPreloadStatus))) {
                return true;
            }
            if (z) {
                DefaultPreloadManager.this.clearSourceInternal(preloadMediaSource);
            }
            DefaultPreloadManager.this.onPreloadCompleted(preloadMediaSource);
            return false;
        }

        public static boolean lambda$onContinueLoadingRequested$2(long j, Status status) {
            return status.getStage() == 2 && status.getValue() > Util.usToMs(j);
        }

        public static boolean lambda$onSourcePrepared$0(Status status) {
            return status.getStage() > 0;
        }

        public static boolean lambda$onTracksSelected$1(Status status) {
            return status.getStage() > 1;
        }

        @Override
        public boolean onContinueLoadingRequested(PreloadMediaSource preloadMediaSource, final long j) {
            return continueOrCompletePreloading(preloadMediaSource, new he8() {
                @Override
                public final boolean apply(Object obj) {
                    return DefaultPreloadManager.SourcePreloadControl.lambda$onContinueLoadingRequested$2(j, (DefaultPreloadManager.Status) obj);
                }
            }, false);
        }

        @Override
        public void onLoadedToTheEndOfSource(PreloadMediaSource preloadMediaSource) {
            DefaultPreloadManager.this.onPreloadCompleted(preloadMediaSource);
        }

        @Override
        public void onPreloadError(PreloadException preloadException, PreloadMediaSource preloadMediaSource) {
            DefaultPreloadManager.this.onPreloadError(preloadException, preloadMediaSource);
        }

        @Override
        public boolean onSourcePrepared(PreloadMediaSource preloadMediaSource) {
            return continueOrCompletePreloading(preloadMediaSource, new he8() {
                @Override
                public final boolean apply(Object obj) {
                    return DefaultPreloadManager.SourcePreloadControl.lambda$onSourcePrepared$0((DefaultPreloadManager.Status) obj);
                }
            }, true);
        }

        @Override
        public boolean onTracksSelected(PreloadMediaSource preloadMediaSource) {
            return continueOrCompletePreloading(preloadMediaSource, new he8() {
                @Override
                public final boolean apply(Object obj) {
                    return DefaultPreloadManager.SourcePreloadControl.lambda$onTracksSelected$1((DefaultPreloadManager.Status) obj);
                }
            }, false);
        }

        @Override
        public void onUsedByPlayer(PreloadMediaSource preloadMediaSource) {
            DefaultPreloadManager.this.onPreloadSkipped(preloadMediaSource);
        }
    }

    public static void lambda$new$0() {
    }

    public void lambda$releaseInternal$1() {
        this.rendererCapabilitiesList.release();
        if (!this.deprecatedConstructorCalled) {
            this.trackSelector.release();
        }
        this.preloadLooperProvider.releaseLooper();
    }

    @Override
    public void clearSourceInternal(MediaSource mediaSource) {
        Assertions.checkArgument(mediaSource instanceof PreloadMediaSource);
        ((PreloadMediaSource) mediaSource).clear();
    }

    @Override
    public MediaSource createMediaSourceForPreloading(MediaSource mediaSource) {
        return this.preloadMediaSourceFactory.createMediaSource(mediaSource);
    }

    @Override
    public void preloadSourceInternal(MediaSource mediaSource, long j) {
        Assertions.checkArgument(mediaSource instanceof PreloadMediaSource);
        ((PreloadMediaSource) mediaSource).preload(j);
    }

    @Override
    public void releaseInternal() {
        this.preloadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$releaseInternal$1();
            }
        });
    }

    @Override
    public void releaseSourceInternal(MediaSource mediaSource) {
        Assertions.checkArgument(mediaSource instanceof PreloadMediaSource);
        ((PreloadMediaSource) mediaSource).releasePreloadMediaSource();
    }

    public void setCurrentPlayingIndex(int i) {
        ((RankingDataComparator) this.rankingDataComparator).currentPlayingIndex = i;
    }

    private DefaultPreloadManager(Builder builder) {
        super(new RankingDataComparator(), builder.targetPreloadStatusControl, (MediaSource.Factory) builder.mediaSourceFactorySupplier.get());
        DefaultRendererCapabilitiesList defaultRendererCapabilitiesListCreateRendererCapabilitiesList = new DefaultRendererCapabilitiesList.Factory((RenderersFactory) builder.renderersFactorySupplier.get()).createRendererCapabilitiesList();
        this.rendererCapabilitiesList = defaultRendererCapabilitiesListCreateRendererCapabilitiesList;
        PlaybackLooperProvider playbackLooperProvider = builder.preloadLooperProvider;
        this.preloadLooperProvider = playbackLooperProvider;
        TrackSelector trackSelectorCreateTrackSelector = builder.trackSelectorFactory.createTrackSelector(builder.context);
        this.trackSelector = trackSelectorCreateTrackSelector;
        BandwidthMeter bandwidthMeter = (BandwidthMeter) builder.bandwidthMeterSupplier.get();
        trackSelectorCreateTrackSelector.init(new TrackSelector.InvalidationListener() {
            @Override
            public final void onTrackSelectionsInvalidated() {
                DefaultPreloadManager.lambda$new$0();
            }
        }, bandwidthMeter);
        Looper looperObtainLooper = playbackLooperProvider.obtainLooper();
        this.preloadMediaSourceFactory = new PreloadMediaSource.Factory((MediaSource.Factory) builder.mediaSourceFactorySupplier.get(), new SourcePreloadControl(), trackSelectorCreateTrackSelector, bandwidthMeter, defaultRendererCapabilitiesListCreateRendererCapabilitiesList.getRendererCapabilities(), ((LoadControl) builder.loadControlSupplier.get()).getAllocator(), looperObtainLooper);
        this.preloadHandler = Util.createHandler(looperObtainLooper, null);
        this.deprecatedConstructorCalled = false;
    }

    public static class Status implements TargetPreloadStatusControl.PreloadStatus {
        public static final int STAGE_LOADED_FOR_DURATION_MS = 2;
        public static final int STAGE_SOURCE_PREPARED = 0;
        public static final int STAGE_TRACKS_SELECTED = 1;
        private final int stage;
        private final long value;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Stage {
        }

        public Status(int i, long j) {
            this.stage = i;
            this.value = j;
        }

        @Override
        public int getStage() {
            return this.stage;
        }

        @Override
        public long getValue() {
            return this.value;
        }

        public Status(int i) {
            this(i, C.TIME_UNSET);
        }
    }

    @Deprecated
    public DefaultPreloadManager(TargetPreloadStatusControl<Integer> targetPreloadStatusControl, MediaSource.Factory factory, TrackSelector trackSelector, BandwidthMeter bandwidthMeter, RendererCapabilitiesList.Factory factory2, Allocator allocator, Looper looper) {
        super(new RankingDataComparator(), targetPreloadStatusControl, factory);
        RendererCapabilitiesList rendererCapabilitiesListCreateRendererCapabilitiesList = factory2.createRendererCapabilitiesList();
        this.rendererCapabilitiesList = rendererCapabilitiesListCreateRendererCapabilitiesList;
        PlaybackLooperProvider playbackLooperProvider = new PlaybackLooperProvider(looper);
        this.preloadLooperProvider = playbackLooperProvider;
        this.trackSelector = trackSelector;
        Looper looperObtainLooper = playbackLooperProvider.obtainLooper();
        this.preloadMediaSourceFactory = new PreloadMediaSource.Factory(factory, new SourcePreloadControl(), trackSelector, bandwidthMeter, rendererCapabilitiesListCreateRendererCapabilitiesList.getRendererCapabilities(), allocator, looperObtainLooper);
        this.preloadHandler = Util.createHandler(looperObtainLooper, null);
        this.deprecatedConstructorCalled = true;
    }
}
