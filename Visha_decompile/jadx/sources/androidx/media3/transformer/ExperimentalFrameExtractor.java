package androidx.media3.transformer;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.Matrix;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.GlObjectsProvider;
import androidx.media3.common.GlTextureInfo;
import androidx.media3.common.MediaItem;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.GlProgram;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.effect.GlEffect;
import androidx.media3.effect.GlShaderProgram;
import androidx.media3.effect.MatrixTransformation;
import androidx.media3.effect.PassthroughShaderProgram;
import androidx.media3.effect.ScaleAndRotateTransformation;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.RenderersFactory;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.metadata.MetadataOutput;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.text.TextOutput;
import androidx.media3.exoplayer.video.MediaCodecVideoRenderer;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.extractor.DefaultExtractorsFactory;
import androidx.media3.transformer.ExperimentalFrameExtractor;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.MoreExecutors;
import defpackage.de1;
import defpackage.im5;
import defpackage.j94;
import defpackage.wk5;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

@UnstableApi
public final class ExperimentalFrameExtractor {
    private final AtomicBoolean extractedFrameNeedsRendering;
    private final AtomicReference<CallbackToFutureAdapter.Completer<Frame>> frameBeingExtractedCompleterAtomicReference;

    @Nullable
    private Frame lastExtractedFrame;
    private im5 lastRequestedFrameFuture;
    private final ExoPlayer player;
    private final Handler playerApplicationThreadHandler;

    public static final class Configuration {
        public final boolean extractHdrFrames;
        public final MediaCodecSelector mediaCodecSelector;
        public final SeekParameters seekParameters;

        public static final class Builder {
            private SeekParameters seekParameters = SeekParameters.DEFAULT;
            private MediaCodecSelector mediaCodecSelector = MediaCodecSelector.PREFER_SOFTWARE;
            private boolean extractHdrFrames = false;

            public Configuration build() {
                return new Configuration(this.seekParameters, this.mediaCodecSelector, this.extractHdrFrames);
            }

            @RequiresApi(34)
            public Builder setExtractHdrFrames(boolean z) {
                this.extractHdrFrames = z;
                return this;
            }

            public Builder setMediaCodecSelector(MediaCodecSelector mediaCodecSelector) {
                this.mediaCodecSelector = mediaCodecSelector;
                return this;
            }

            public Builder setSeekParameters(SeekParameters seekParameters) {
                this.seekParameters = seekParameters;
                return this;
            }
        }

        private Configuration(SeekParameters seekParameters, MediaCodecSelector mediaCodecSelector, boolean z) {
            this.seekParameters = seekParameters;
            this.mediaCodecSelector = mediaCodecSelector;
            this.extractHdrFrames = z;
        }
    }

    public static final class Frame {
        public final Bitmap bitmap;
        public final long presentationTimeMs;

        private Frame(long j, Bitmap bitmap) {
            this.presentationTimeMs = j;
            this.bitmap = bitmap;
        }
    }

    public final class FrameExtractorRenderer extends MediaCodecVideoRenderer {
        private List<Effect> effectsFromPlayer;
        private boolean frameRenderedSinceLastPositionReset;

        @Nullable
        private Effect rotation;
        private final boolean toneMapHdrToSdr;

        public FrameExtractorRenderer(Context context, MediaCodecSelector mediaCodecSelector, VideoRendererEventListener videoRendererEventListener, boolean z) {
            super(new MediaCodecVideoRenderer.Builder(context).setMediaCodecSelector(mediaCodecSelector).setAllowedJoiningTimeMs(0L).setEventHandler(Util.createHandlerForCurrentOrMainLooper()).setEventListener(videoRendererEventListener).setMaxDroppedFramesToNotify(0));
            this.toneMapHdrToSdr = z;
            this.effectsFromPlayer = ImmutableList.of();
        }

        private void setEffectsWithRotation() {
            ImmutableList.a aVar = new ImmutableList.a();
            Effect effect = this.rotation;
            if (effect != null) {
                aVar.a(effect);
            }
            aVar.l(this.effectsFromPlayer);
            super.setVideoEffects(aVar.e());
        }

        private void setRotation(@Nullable Effect effect) {
            this.rotation = effect;
            setEffectsWithRotation();
        }

        @Override
        public boolean isReady() {
            return this.frameRenderedSinceLastPositionReset;
        }

        @Override
        @CallSuper
        public boolean maybeInitializeProcessingPipeline(Format format) throws ExoPlaybackException {
            if (ColorInfo.isTransferHdr(format.colorInfo) && this.toneMapHdrToSdr) {
                format = format.buildUpon().setColorInfo(ColorInfo.SDR_BT709_LIMITED).build();
            }
            return super.maybeInitializeProcessingPipeline(format);
        }

        @Override
        @Nullable
        public DecoderReuseEvaluation onInputFormatChanged(FormatHolder formatHolder) throws ExoPlaybackException {
            Format format = formatHolder.format;
            if (format != null && format.rotationDegrees != 0) {
                setRotation(new ScaleAndRotateTransformation.Builder().setRotationDegrees(360 - format.rotationDegrees).build());
                formatHolder.format = format.buildUpon().setRotationDegrees(0).build();
            }
            return super.onInputFormatChanged(formatHolder);
        }

        @Override
        public void onPositionReset(long j, boolean z) throws ExoPlaybackException {
            this.frameRenderedSinceLastPositionReset = false;
            ExperimentalFrameExtractor.this.extractedFrameNeedsRendering.set(true);
            super.onPositionReset(j, z);
        }

        @Override
        public void onStreamChanged(Format[] formatArr, long j, long j2, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
            super.onStreamChanged(formatArr, j, j2, mediaPeriodId);
            this.frameRenderedSinceLastPositionReset = false;
            setRotation(null);
        }

        @Override
        public boolean processOutputBuffer(long j, long j2, @Nullable MediaCodecAdapter mediaCodecAdapter, @Nullable ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, Format format) throws ExoPlaybackException {
            if (this.frameRenderedSinceLastPositionReset) {
                return false;
            }
            return super.processOutputBuffer(j, j2, mediaCodecAdapter, byteBuffer, i, i2, i3, j3, z, z2, format);
        }

        @Override
        public void render(long j, long j2) throws ExoPlaybackException {
            if (this.frameRenderedSinceLastPositionReset) {
                return;
            }
            super.render(j, j2);
        }

        @Override
        public void renderOutputBufferV21(MediaCodecAdapter mediaCodecAdapter, int i, long j, long j2) {
            if (this.frameRenderedSinceLastPositionReset) {
                return;
            }
            this.frameRenderedSinceLastPositionReset = true;
            super.renderOutputBufferV21(mediaCodecAdapter, i, j, j2);
        }

        @Override
        public void setVideoEffects(List<Effect> list) {
            this.effectsFromPlayer = list;
            setEffectsWithRotation();
        }
    }

    public final class FrameReader implements GlEffect {
        private FrameReader() {
        }

        @Override
        public GlShaderProgram toGlShaderProgram(Context context, boolean z) throws VideoFrameProcessingException {
            return ExperimentalFrameExtractor.this.new FrameReadingGlShaderProgram(context, z);
        }
    }

    public final class FrameReadingGlShaderProgram extends PassthroughShaderProgram {
        private static final int BYTES_PER_PIXEL = 4;
        private ByteBuffer byteBuffer;
        private GlProgram glProgram;
        private GlTextureInfo hlgTextureInfo;
        private final boolean useHdr;
        private final ImmutableList<float[]> visiblePolygon;

        public FrameReadingGlShaderProgram(Context context, boolean z) throws VideoFrameProcessingException {
            ImmutableList<float[]> immutableListOf = ImmutableList.of(new float[]{-1.0f, -1.0f, 0.0f, 1.0f}, new float[]{-1.0f, 1.0f, 0.0f, 1.0f}, new float[]{1.0f, 1.0f, 0.0f, 1.0f}, new float[]{1.0f, -1.0f, 0.0f, 1.0f});
            this.visiblePolygon = immutableListOf;
            this.byteBuffer = ByteBuffer.allocateDirect(0);
            this.useHdr = z;
            if (z) {
                Assertions.checkState(Util.SDK_INT >= 34);
                try {
                    GlProgram glProgram = new GlProgram(context, "shaders/vertex_shader_transformation_es3.glsl", "shaders/fragment_shader_oetf_es3.glsl");
                    this.glProgram = glProgram;
                    glProgram.setFloatsUniform("uTexTransformationMatrix", GlUtil.create4x4IdentityMatrix());
                    this.glProgram.setFloatsUniform("uTransformationMatrix", GlUtil.create4x4IdentityMatrix());
                    this.glProgram.setFloatsUniform("uRgbMatrix", GlUtil.create4x4IdentityMatrix());
                    this.glProgram.setIntUniform("uOutputColorTransfer", 7);
                    this.glProgram.setBufferAttribute("aFramePosition", GlUtil.createVertexBuffer(immutableListOf), 4);
                } catch (GlUtil.GlException | IOException e) {
                    throw new VideoFrameProcessingException(e);
                }
            }
        }

        private void ensureConfigured(GlObjectsProvider glObjectsProvider, int i, int i2) {
            int i3 = i * i2 * 4;
            if (this.byteBuffer.capacity() != i3) {
                this.byteBuffer = ByteBuffer.allocateDirect(i3);
            }
            this.byteBuffer.clear();
            if (this.useHdr) {
                GlTextureInfo glTextureInfo = this.hlgTextureInfo;
                if (glTextureInfo != null && glTextureInfo.width == i && glTextureInfo.height == i2) {
                    return;
                }
                if (glTextureInfo != null) {
                    try {
                        glTextureInfo.release();
                    } catch (GlUtil.GlException e) {
                        onError(e);
                        return;
                    }
                }
                this.hlgTextureInfo = glObjectsProvider.createBuffersForTexture(GlUtil.createRgb10A2Texture(i, i2), i, i2);
            }
        }

        @Override
        public void queueInputFrame(GlObjectsProvider glObjectsProvider, GlTextureInfo glTextureInfo, long j) {
            Bitmap bitmapCreateBitmap;
            GlTextureInfo glTextureInfo2;
            ensureConfigured(glObjectsProvider, glTextureInfo.width, glTextureInfo.height);
            if (!this.useHdr) {
                try {
                    GlUtil.focusFramebufferUsingCurrentContext(glTextureInfo.fboId, glTextureInfo.width, glTextureInfo.height);
                    GlUtil.checkGlError();
                    GLES20.glReadPixels(0, 0, glTextureInfo.width, glTextureInfo.height, 6408, 5121, this.byteBuffer);
                    GlUtil.checkGlError();
                    bitmapCreateBitmap = Bitmap.createBitmap(glTextureInfo.width, glTextureInfo.height, Bitmap.Config.ARGB_8888);
                } catch (GlUtil.GlException e) {
                    onError(e);
                    return;
                }
            } else {
                if (Util.SDK_INT < 34 || (glTextureInfo2 = this.hlgTextureInfo) == null) {
                    onError(ExoPlaybackException.createForUnexpected(new IllegalArgumentException(), -2));
                    return;
                }
                try {
                    GlUtil.focusFramebufferUsingCurrentContext(glTextureInfo2.fboId, glTextureInfo2.width, glTextureInfo2.height);
                    GlUtil.checkGlError();
                    ((GlProgram) Assertions.checkNotNull(this.glProgram)).use();
                    this.glProgram.setSamplerTexIdUniform("uTexSampler", glTextureInfo.texId, 0);
                    this.glProgram.bindAttributesAndUniforms();
                    GLES20.glDrawArrays(6, 0, this.visiblePolygon.size());
                    GlUtil.checkGlError();
                    GlTextureInfo glTextureInfo3 = this.hlgTextureInfo;
                    GLES20.glReadPixels(0, 0, glTextureInfo3.width, glTextureInfo3.height, 6408, 33640, this.byteBuffer);
                    GlUtil.checkGlError();
                    GlTextureInfo glTextureInfo4 = this.hlgTextureInfo;
                    bitmapCreateBitmap = Bitmap.createBitmap((DisplayMetrics) null, glTextureInfo4.width, glTextureInfo4.height, Bitmap.Config.RGBA_1010102, false, ColorSpace.get(ColorSpace.Named.BT2020_HLG));
                } catch (GlUtil.GlException e2) {
                    onError(e2);
                    return;
                }
            }
            bitmapCreateBitmap.copyPixelsFromBuffer(this.byteBuffer);
            ((CallbackToFutureAdapter.Completer) Assertions.checkNotNull((CallbackToFutureAdapter.Completer) ExperimentalFrameExtractor.this.frameBeingExtractedCompleterAtomicReference.getAndSet(null))).set(new Frame(Util.usToMs(j), bitmapCreateBitmap));
            getInputListener().onInputFrameProcessed(glTextureInfo);
        }
    }

    public final class PlayerListener implements AnalyticsListener {
        private PlayerListener() {
        }

        @Override
        public void onPlaybackStateChanged(AnalyticsListener.EventTime eventTime, int i) {
            if (i != 3 || ExperimentalFrameExtractor.this.extractedFrameNeedsRendering.get()) {
                return;
            }
            ((CallbackToFutureAdapter.Completer) Assertions.checkNotNull((CallbackToFutureAdapter.Completer) ExperimentalFrameExtractor.this.frameBeingExtractedCompleterAtomicReference.getAndSet(null))).set((Frame) Assertions.checkNotNull(ExperimentalFrameExtractor.this.lastExtractedFrame));
        }

        @Override
        public void onPlayerError(AnalyticsListener.EventTime eventTime, PlaybackException playbackException) {
            CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) ExperimentalFrameExtractor.this.frameBeingExtractedCompleterAtomicReference.getAndSet(null);
            if (completer != null) {
                completer.setException(playbackException);
            }
        }
    }

    public ExperimentalFrameExtractor(final Context context, final Configuration configuration) {
        ExoPlayer exoPlayerBuild = new ExoPlayer.Builder(context, new RenderersFactory() {
            @Override
            public final Renderer[] createRenderers(Handler handler, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textOutput, MetadataOutput metadataOutput) {
                return this.a.lambda$new$0(context, configuration, handler, videoRendererEventListener, audioRendererEventListener, textOutput, metadataOutput);
            }
        }, new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory()).experimentalSetCodecsToParseWithinGopSampleDependencies(3)).setSeekParameters(configuration.seekParameters).build();
        this.player = exoPlayerBuild;
        exoPlayerBuild.addAnalyticsListener(new PlayerListener());
        this.playerApplicationThreadHandler = new Handler(exoPlayerBuild.getApplicationLooper());
        this.extractedFrameNeedsRendering = new AtomicBoolean();
        this.frameBeingExtractedCompleterAtomicReference = new AtomicReference<>(null);
        this.lastRequestedFrameFuture = Futures.f();
    }

    private ImmutableList<Effect> buildVideoEffects(List<Effect> list) {
        ImmutableList.a aVar = new ImmutableList.a();
        aVar.l(list);
        aVar.a(new MatrixTransformation() {
            @Override
            public final Matrix getMatrix(long j) {
                return ExperimentalFrameExtractor.lambda$buildVideoEffects$8(j);
            }
        });
        aVar.a(new FrameReader());
        return aVar.e();
    }

    public static Matrix lambda$buildVideoEffects$8(long j) {
        Matrix matrix = new Matrix();
        matrix.setScale(1.0f, -1.0f);
        return matrix;
    }

    public void lambda$getDecoderCounters$7(com.google.common.util.concurrent.g gVar) {
        gVar.set(this.player.getVideoDecoderCounters());
    }

    public Object lambda$getFrame$3(im5 im5Var, final long j, final CallbackToFutureAdapter.Completer completer) throws Exception {
        j94 j94Var = new j94() {
            @Override
            public void onFailure(Throwable th) {
                ExperimentalFrameExtractor.this.processNext(j, completer);
            }

            @Override
            public void onSuccess(Frame frame) {
                ExperimentalFrameExtractor.this.lastExtractedFrame = frame;
                ExperimentalFrameExtractor.this.processNext(j, completer);
            }
        };
        Handler handler = this.playerApplicationThreadHandler;
        Objects.requireNonNull(handler);
        Futures.a(im5Var, j94Var, new de1(handler));
        return "ExperimentalFrameExtractor.getFrame";
    }

    public static Frame lambda$getFrame$4(im5 im5Var) throws Exception {
        return (Frame) Futures.e(im5Var);
    }

    public Renderer[] lambda$new$0(Context context, Configuration configuration, Handler handler, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textOutput, MetadataOutput metadataOutput) {
        return new Renderer[]{new FrameExtractorRenderer(context, configuration.mediaCodecSelector, videoRendererEventListener, !configuration.extractHdrFrames)};
    }

    public void lambda$release$6(ConditionVariable conditionVariable) {
        this.player.release();
        conditionVariable.open();
    }

    public void lambda$setMediaItem$1(CallbackToFutureAdapter.Completer completer, List list, MediaItem mediaItem) {
        this.frameBeingExtractedCompleterAtomicReference.set(completer);
        this.lastExtractedFrame = null;
        this.player.setVideoEffects(buildVideoEffects(list));
        this.player.setMediaItem(mediaItem);
        this.player.setPlayWhenReady(false);
        this.player.prepare();
    }

    public Object lambda$setMediaItem$2(im5 im5Var, final List list, final MediaItem mediaItem, final CallbackToFutureAdapter.Completer completer) throws Exception {
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$setMediaItem$1(completer, list, mediaItem);
            }
        };
        Handler handler = this.playerApplicationThreadHandler;
        Objects.requireNonNull(handler);
        im5Var.addListener(runnable, new de1(handler));
        return "ExperimentalFrameExtractor.setMediaItem";
    }

    public void processNext(long j, CallbackToFutureAdapter.Completer<Frame> completer) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        completer.addCancellationListener(new Runnable() {
            @Override
            public final void run() {
                atomicBoolean.set(true);
            }
        }, MoreExecutors.a());
        if (atomicBoolean.get()) {
            return;
        }
        Throwable playbackException = this.player.isReleased() ? new PlaybackException("The player is already released", null, 1004) : this.player.getPlayerError();
        if (playbackException != null) {
            completer.setException(playbackException);
        } else {
            if (this.player.getCurrentMediaItem() == null) {
                completer.setException(new PlaybackException("Player has no current item. Call setMediaItem before getFrame.", null, PlaybackException.ERROR_CODE_SETUP_REQUIRED));
                return;
            }
            Assertions.checkState(wk5.a(this.frameBeingExtractedCompleterAtomicReference, null, completer));
            this.extractedFrameNeedsRendering.set(false);
            this.player.seekTo(j);
        }
    }

    @VisibleForTesting
    public im5 getDecoderCounters() {
        final com.google.common.util.concurrent.g gVarO = com.google.common.util.concurrent.g.o();
        this.playerApplicationThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$getDecoderCounters$7(gVarO);
            }
        });
        return gVarO;
    }

    public im5 getFrame(final long j) {
        final im5 im5Var = this.lastRequestedFrameFuture;
        final im5 future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() {
            @Override
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return this.a.lambda$getFrame$3(im5Var, j, completer);
            }
        });
        this.lastRequestedFrameFuture = Futures.k(this.lastRequestedFrameFuture, future).a(new Callable() {
            @Override
            public final Object call() {
                return ExperimentalFrameExtractor.lambda$getFrame$4(future);
            }
        }, MoreExecutors.a());
        return future;
    }

    public void release() {
        if (this.player.getApplicationLooper() == Looper.myLooper()) {
            this.player.release();
            return;
        }
        final ConditionVariable conditionVariable = new ConditionVariable();
        this.playerApplicationThreadHandler.removeCallbacksAndMessages(null);
        this.playerApplicationThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$release$6(conditionVariable);
            }
        });
        conditionVariable.blockUninterruptible();
    }

    public void setMediaItem(final MediaItem mediaItem, final List<Effect> list) {
        final im5 im5Var = this.lastRequestedFrameFuture;
        this.lastRequestedFrameFuture = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() {
            @Override
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return this.a.lambda$setMediaItem$2(im5Var, list, mediaItem, completer);
            }
        });
    }
}
