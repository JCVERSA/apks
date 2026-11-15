package androidx.media3.transformer;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.Tracks;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.DefaultLoadControl;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.ExoTimeoutException;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.RenderersFactory;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.metadata.MetadataOutput;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.text.TextOutput;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.extractor.DefaultExtractorsFactory;
import androidx.media3.transformer.ExoPlayerAssetLoader;
import com.google.common.collect.ImmutableMap;
import java.util.ArrayList;

@UnstableApi
public final class ExoPlayerAssetLoader implements AssetLoader {
    private static final String TAG = "ExoPlayerAssetLoader";
    private final Context context;
    private final CapturingDecoderFactory decoderFactory;
    private final EditedMediaItem editedMediaItem;
    private final ExoPlayer player;
    private int progressState;

    public static final class Factory implements AssetLoader.Factory {
        private final Clock clock;
        private final Context context;
        private final Codec.DecoderFactory decoderFactory;

        @Nullable
        private final MediaSource.Factory mediaSourceFactory;

        @Nullable
        private final TrackSelector.Factory trackSelectorFactory;

        public Factory(Context context, Codec.DecoderFactory decoderFactory, Clock clock) {
            this(context, decoderFactory, clock, null, null);
        }

        public static TrackSelector lambda$createAssetLoader$0(DefaultTrackSelector.Parameters parameters, Context context) {
            DefaultTrackSelector defaultTrackSelector = new DefaultTrackSelector(context);
            defaultTrackSelector.setParameters(parameters);
            return defaultTrackSelector;
        }

        @Override
        public AssetLoader createAssetLoader(EditedMediaItem editedMediaItem, Looper looper, AssetLoader.Listener listener, AssetLoader.CompositionSettings compositionSettings) {
            MediaSource.Factory defaultMediaSourceFactory;
            TrackSelector.Factory factory;
            MediaSource.Factory factory2 = this.mediaSourceFactory;
            if (factory2 == null) {
                DefaultExtractorsFactory defaultExtractorsFactory = new DefaultExtractorsFactory();
                if (editedMediaItem.flattenForSlowMotion) {
                    defaultExtractorsFactory.setMp4ExtractorFlags(4);
                }
                defaultMediaSourceFactory = new DefaultMediaSourceFactory(this.context, defaultExtractorsFactory);
            } else {
                defaultMediaSourceFactory = factory2;
            }
            TrackSelector.Factory factory3 = this.trackSelectorFactory;
            if (factory3 == null) {
                final DefaultTrackSelector.Parameters parametersBuild = new DefaultTrackSelector.Parameters.Builder(this.context).setForceHighestSupportedBitrate(true).setConstrainAudioChannelCountToDeviceCapabilities(false).build();
                factory = new TrackSelector.Factory() {
                    @Override
                    public final TrackSelector createTrackSelector(Context context) {
                        return ExoPlayerAssetLoader.Factory.lambda$createAssetLoader$0(parametersBuild, context);
                    }
                };
            } else {
                factory = factory3;
            }
            return new ExoPlayerAssetLoader(this.context, editedMediaItem, defaultMediaSourceFactory, this.decoderFactory, compositionSettings.hdrMode, looper, listener, this.clock, factory);
        }

        public Factory(Context context, Codec.DecoderFactory decoderFactory, Clock clock, MediaSource.Factory factory) {
            this(context, decoderFactory, clock, factory, null);
        }

        public Factory(Context context, Codec.DecoderFactory decoderFactory, Clock clock, @Nullable MediaSource.Factory factory, @Nullable TrackSelector.Factory factory2) {
            this.context = context;
            this.decoderFactory = decoderFactory;
            this.clock = clock;
            this.mediaSourceFactory = factory;
            this.trackSelectorFactory = factory2;
        }
    }

    public final class PlayerListener implements Player.Listener {
        private final AssetLoader.Listener assetLoaderListener;

        public PlayerListener(AssetLoader.Listener listener) {
            this.assetLoaderListener = listener;
        }

        @Override
        public void onPlayerError(PlaybackException playbackException) {
            Throwable cause = playbackException.getCause();
            if ((cause instanceof ExoTimeoutException) && ((ExoTimeoutException) cause).timeoutOperation == 1) {
                Log.e(ExoPlayerAssetLoader.TAG, "Releasing the player timed out.", playbackException);
            } else {
                this.assetLoaderListener.onError(ExportException.createForAssetLoader(playbackException, ((Integer) Assertions.checkNotNull(ExportException.NAME_TO_ERROR_CODE.getOrDefault(playbackException.getErrorCodeName(), 1000))).intValue()));
            }
        }

        @Override
        public void onTimelineChanged(Timeline timeline, int i) {
            try {
                if (ExoPlayerAssetLoader.this.progressState != 1) {
                    return;
                }
                Timeline.Window window = new Timeline.Window();
                timeline.getWindow(0, window);
                if (window.isPlaceholder) {
                    return;
                }
                long j = window.durationUs;
                ExoPlayerAssetLoader.this.progressState = (j <= 0 || j == C.TIME_UNSET) ? 3 : 2;
                this.assetLoaderListener.onDurationUs(window.durationUs);
            } catch (RuntimeException e) {
                this.assetLoaderListener.onError(ExportException.createForAssetLoader(e, 1000));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10 */
        /* JADX WARN: Type inference failed for: r0v11 */
        /* JADX WARN: Type inference failed for: r0v2, types: [boolean, int] */
        /* JADX WARN: Type inference failed for: r0v3, types: [int] */
        /* JADX WARN: Type inference failed for: r3v9, types: [androidx.media3.transformer.AssetLoader$Listener] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override
        public void onTracksChanged(Tracks tracks) {
            try {
                ?? IsTypeSelected = tracks.isTypeSelected(1);
                ?? r0 = IsTypeSelected;
                if (tracks.isTypeSelected(2)) {
                    r0 = IsTypeSelected + 1;
                }
                ExoPlayerAssetLoader.maybeWarnUnsupportedTrackTypes(tracks);
                if (r0 > 0) {
                    this.assetLoaderListener.onTrackCount(r0);
                    ExoPlayerAssetLoader.this.player.play();
                    return;
                }
                String str = "The asset loader has no audio or video track to output.";
                if (TransformerUtil.isImage(ExoPlayerAssetLoader.this.context, ExoPlayerAssetLoader.this.editedMediaItem.mediaItem)) {
                    str = "The asset loader has no audio or video track to output. Try setting an image duration on input image MediaItems.";
                }
                this.assetLoaderListener.onError(ExportException.createForAssetLoader(new IllegalStateException(str), 1001));
            } catch (RuntimeException e) {
                this.assetLoaderListener.onError(ExportException.createForAssetLoader(e, 1000));
            }
        }
    }

    public static final class RenderersFactoryImpl implements RenderersFactory {
        private final AssetLoader.Listener assetLoaderListener;
        private final Codec.DecoderFactory decoderFactory;
        private final boolean flattenForSlowMotion;
        private final int hdrMode;
        private final TransformerMediaClock mediaClock = new TransformerMediaClock();
        private final boolean removeAudio;
        private final boolean removeVideo;

        public RenderersFactoryImpl(boolean z, boolean z2, boolean z3, Codec.DecoderFactory decoderFactory, int i, AssetLoader.Listener listener) {
            this.removeAudio = z;
            this.removeVideo = z2;
            this.flattenForSlowMotion = z3;
            this.decoderFactory = decoderFactory;
            this.hdrMode = i;
            this.assetLoaderListener = listener;
        }

        @Override
        public Renderer[] createRenderers(Handler handler, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textOutput, MetadataOutput metadataOutput) {
            ArrayList arrayList = new ArrayList();
            if (!this.removeAudio) {
                arrayList.add(new ExoAssetLoaderAudioRenderer(this.decoderFactory, this.mediaClock, this.assetLoaderListener));
            }
            if (!this.removeVideo) {
                arrayList.add(new ExoAssetLoaderVideoRenderer(this.flattenForSlowMotion, this.decoderFactory, this.hdrMode, this.mediaClock, this.assetLoaderListener));
            }
            return (Renderer[]) arrayList.toArray(new Renderer[arrayList.size()]);
        }
    }

    public static void maybeWarnUnsupportedTrackTypes(Tracks tracks) {
        for (int i = 0; i < tracks.getGroups().size(); i++) {
            int type = tracks.getGroups().get(i).getType();
            if (type != 1 && type != 2) {
                Log.w(TAG, "Unsupported track type: " + type);
            }
        }
    }

    @Override
    public ImmutableMap<Integer, String> getDecoderNames() {
        ImmutableMap.b bVar = new ImmutableMap.b();
        String audioDecoderName = this.decoderFactory.getAudioDecoderName();
        if (audioDecoderName != null) {
            bVar.h(1, audioDecoderName);
        }
        String videoDecoderName = this.decoderFactory.getVideoDecoderName();
        if (videoDecoderName != null) {
            bVar.h(2, videoDecoderName);
        }
        return bVar.d();
    }

    @Override
    public int getProgress(ProgressHolder progressHolder) {
        if (this.progressState == 2) {
            progressHolder.progress = Math.min((int) ((this.player.getCurrentPosition() * 100) / this.player.getDuration()), 99);
        }
        return this.progressState;
    }

    @Override
    public void release() {
        this.player.release();
        this.progressState = 0;
    }

    @Override
    public void start() {
        this.player.setMediaItem(this.editedMediaItem.mediaItem);
        this.player.prepare();
        this.progressState = 1;
    }

    private ExoPlayerAssetLoader(Context context, EditedMediaItem editedMediaItem, MediaSource.Factory factory, Codec.DecoderFactory decoderFactory, int i, Looper looper, AssetLoader.Listener listener, Clock clock, TrackSelector.Factory factory2) {
        this.context = context;
        this.editedMediaItem = editedMediaItem;
        CapturingDecoderFactory capturingDecoderFactory = new CapturingDecoderFactory(decoderFactory);
        this.decoderFactory = capturingDecoderFactory;
        TrackSelector trackSelectorCreateTrackSelector = factory2.createTrackSelector(context);
        ExoPlayer.Builder usePlatformDiagnostics = new ExoPlayer.Builder(context, new RenderersFactoryImpl(editedMediaItem.removeAudio, editedMediaItem.removeVideo, editedMediaItem.flattenForSlowMotion, capturingDecoderFactory, i, listener)).setMediaSourceFactory(factory).setTrackSelector(trackSelectorCreateTrackSelector).setLoadControl(new DefaultLoadControl.Builder().setBufferDurationsMs(50000, 50000, 100, 200).build()).setLooper(looper).setUsePlatformDiagnostics(false);
        if (decoderFactory instanceof DefaultDecoderFactory) {
            usePlatformDiagnostics.experimentalSetDynamicSchedulingEnabled(((DefaultDecoderFactory) decoderFactory).isDynamicSchedulingEnabled());
        }
        if (clock != Clock.DEFAULT) {
            usePlatformDiagnostics.setClock(clock);
        }
        ExoPlayer exoPlayerBuild = usePlatformDiagnostics.build();
        this.player = exoPlayerBuild;
        exoPlayerBuild.addListener(new PlayerListener(listener));
        this.progressState = 0;
    }
}
