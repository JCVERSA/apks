package androidx.media3.transformer;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaFormat;
import android.os.Handler;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ConstantRateTimestampIterator;
import androidx.media3.common.util.TimestampIterator;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.RenderersFactory;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.MediaCodecAudioRenderer;
import androidx.media3.exoplayer.image.ImageDecoder;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.exoplayer.image.ImageRenderer;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecInfo;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.metadata.MetadataOutput;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.text.TextOutput;
import androidx.media3.exoplayer.video.MediaCodecVideoRenderer;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.VideoSink;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.concurrent.Executor;

final class SequenceRenderersFactory implements RenderersFactory {
    private static final int DEFAULT_FRAME_RATE = 30;
    private final Context context;

    @Nullable
    private final ImageDecoder.Factory imageDecoderFactory;
    private final int inputIndex;
    private final PlaybackAudioGraphWrapper playbackAudioGraphWrapper;
    private final boolean requestToneMapping;
    private final EditedMediaItemSequence sequence;
    private final boolean videoPrewarmingEnabled;

    @Nullable
    private final VideoSink videoSink;

    public static final class SequenceAudioRenderer extends MediaCodecAudioRenderer {
        private final AudioGraphInputAudioSink audioSink;

        @Nullable
        private EditedMediaItem pendingEditedMediaItem;
        private long pendingOffsetToCompositionTimeUs;
        private final PlaybackAudioGraphWrapper playbackAudioGraphWrapper;
        private final EditedMediaItemSequence sequence;

        public SequenceAudioRenderer(Context context, @Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener, EditedMediaItemSequence editedMediaItemSequence, AudioGraphInputAudioSink audioGraphInputAudioSink, PlaybackAudioGraphWrapper playbackAudioGraphWrapper) {
            super(context, MediaCodecSelector.DEFAULT, handler, audioRendererEventListener, audioGraphInputAudioSink);
            this.sequence = editedMediaItemSequence;
            this.audioSink = audioGraphInputAudioSink;
            this.playbackAudioGraphWrapper = playbackAudioGraphWrapper;
        }

        private void onMediaItemChanged() {
            EditedMediaItem editedMediaItem = (EditedMediaItem) Assertions.checkStateNotNull(this.pendingEditedMediaItem);
            this.audioSink.onMediaItemChanged(editedMediaItem, this.pendingOffsetToCompositionTimeUs, SequenceRenderersFactory.isLastInSequence(getTimeline(), this.sequence, editedMediaItem));
        }

        @Override
        public void onPositionReset(long j, boolean z) throws ExoPlaybackException {
            super.onPositionReset(j, z);
            onMediaItemChanged();
        }

        @Override
        public void onProcessedStreamChange() {
            super.onProcessedStreamChange();
            onMediaItemChanged();
        }

        @Override
        public void onStreamChanged(Format[] formatArr, long j, long j2, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
            Assertions.checkState(getTimeline().getWindowCount() == 1);
            int indexOfPeriod = getTimeline().getIndexOfPeriod(mediaPeriodId.periodUid);
            this.pendingEditedMediaItem = SequenceRenderersFactory.getRepeatedEditedMediaItem(this.sequence, indexOfPeriod);
            this.pendingOffsetToCompositionTimeUs = SequenceRenderersFactory.getOffsetToCompositionTimeUs(this.sequence, indexOfPeriod, j2);
            super.onStreamChanged(formatArr, j, j2, mediaPeriodId);
        }

        @Override
        public void render(long j, long j2) throws ExoPlaybackException {
            super.render(j, j2);
            do {
                try {
                } catch (AudioSink.ConfigurationException | AudioSink.InitializationException | AudioSink.WriteException | ExportException e) {
                    throw createRendererException(e, null, 5002);
                }
            } while (this.playbackAudioGraphWrapper.processData());
        }
    }

    public static final class SequenceImageRenderer extends ImageRenderer {
        private EditedMediaItem currentEditedMediaItem;
        private boolean inputStreamPending;
        private boolean mayRenderStartOfStream;
        private long offsetToCompositionTimeUs;

        @Nullable
        private ExoPlaybackException pendingExoPlaybackException;
        private final EditedMediaItemSequence sequence;
        private long streamStartPositionUs;
        private ConstantRateTimestampIterator timestampIterator;
        private ImmutableList<Effect> videoEffects;
        private final VideoSink videoSink;

        public SequenceImageRenderer(EditedMediaItemSequence editedMediaItemSequence, ImageDecoder.Factory factory, VideoSink videoSink) {
            super(factory, ImageOutput.NO_OP);
            this.sequence = editedMediaItemSequence;
            this.videoSink = videoSink;
            this.videoEffects = ImmutableList.of();
            this.streamStartPositionUs = C.TIME_UNSET;
        }

        private ConstantRateTimestampIterator createTimestampIterator(long j) {
            long streamOffsetUs = getStreamOffsetUs();
            long j2 = this.offsetToCompositionTimeUs + streamOffsetUs;
            return new ConstantRateTimestampIterator(j2 + (j - streamOffsetUs), j2 + ((EditedMediaItem) Assertions.checkNotNull(this.currentEditedMediaItem)).getPresentationDurationUs(), 30.0f);
        }

        public static void lambda$onEnabled$0(Runnable runnable) {
        }

        @Override
        public void handleMessage(int i, @Nullable Object obj) throws ExoPlaybackException {
            if (i == 11) {
                this.videoSink.setWakeupListener((Renderer.WakeupListener) Assertions.checkNotNull(obj));
            } else {
                super.handleMessage(i, obj);
            }
        }

        @Override
        public boolean isEnded() {
            ConstantRateTimestampIterator constantRateTimestampIterator;
            return super.isEnded() && this.videoSink.isEnded() && ((constantRateTimestampIterator = this.timestampIterator) == null || !constantRateTimestampIterator.hasNext());
        }

        @Override
        public boolean isReady() {
            return this.mayRenderStartOfStream ? this.videoSink.isReady(super.isReady()) : super.isReady();
        }

        @Override
        public boolean maybeInitializeProcessingPipeline() throws ExoPlaybackException {
            if (this.videoSink.isInitialized()) {
                return true;
            }
            Format formatBuild = new Format.Builder().build();
            try {
                return this.videoSink.initialize(formatBuild);
            } catch (VideoSink.VideoSinkException e) {
                throw createRendererException(e, formatBuild, 7000);
            }
        }

        @Override
        public void onDisabled() {
            super.onDisabled();
            this.videoSink.onRendererDisabled();
        }

        @Override
        public void onEnabled(boolean z, boolean z2) throws ExoPlaybackException {
            super.onEnabled(z, z2);
            this.mayRenderStartOfStream = z2;
            this.videoSink.onRendererEnabled(z2);
            this.videoSink.setListener(VideoSink.Listener.NO_OP, new Executor() {
                @Override
                public final void execute(Runnable runnable) {
                    SequenceRenderersFactory.SequenceImageRenderer.lambda$onEnabled$0(runnable);
                }
            });
        }

        @Override
        public void onPositionReset(long j, boolean z) throws ExoPlaybackException {
            if (!z) {
                this.videoSink.flush(true);
                this.timestampIterator = createTimestampIterator(j);
            }
            super.onPositionReset(j, z);
        }

        @Override
        public void onReset() {
            super.onReset();
            this.pendingExoPlaybackException = null;
        }

        @Override
        public void onStarted() throws ExoPlaybackException {
            super.onStarted();
            this.videoSink.onRendererStarted();
        }

        @Override
        public void onStopped() {
            super.onStopped();
            this.videoSink.onRendererStopped();
        }

        @Override
        public void onStreamChanged(Format[] formatArr, long j, long j2, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
            Assertions.checkState(getTimeline().getWindowCount() == 1);
            this.streamStartPositionUs = j;
            int indexOfPeriod = getTimeline().getIndexOfPeriod(mediaPeriodId.periodUid);
            this.currentEditedMediaItem = this.sequence.editedMediaItems.get(indexOfPeriod);
            this.offsetToCompositionTimeUs = SequenceRenderersFactory.getOffsetToCompositionTimeUs(this.sequence, indexOfPeriod, j2);
            this.timestampIterator = createTimestampIterator(j);
            this.videoEffects = this.currentEditedMediaItem.effects.videoEffects;
            this.inputStreamPending = true;
            super.onStreamChanged(formatArr, j, j2, mediaPeriodId);
        }

        @Override
        public boolean processOutputBuffer(long j, long j2, Bitmap bitmap, long j3) {
            if (this.inputStreamPending) {
                Assertions.checkState(this.streamStartPositionUs != C.TIME_UNSET);
                this.videoSink.setStreamTimestampInfo(this.streamStartPositionUs, this.offsetToCompositionTimeUs);
                this.videoSink.onInputStreamChanged(2, new Format.Builder().setSampleMimeType(MimeTypes.IMAGE_RAW).setWidth(bitmap.getWidth()).setHeight(bitmap.getHeight()).setColorInfo(ColorInfo.SRGB_BT709_FULL).setFrameRate(30.0f).build(), this.videoEffects);
                this.inputStreamPending = false;
            }
            if (!this.videoSink.handleInputBitmap(bitmap, (TimestampIterator) Assertions.checkStateNotNull(this.timestampIterator))) {
                return false;
            }
            this.videoSink.signalEndOfCurrentInputStream();
            if (SequenceRenderersFactory.isLastInSequence(getTimeline(), this.sequence, (EditedMediaItem) Assertions.checkNotNull(this.currentEditedMediaItem))) {
                this.videoSink.signalEndOfInput();
            }
            return true;
        }

        @Override
        public void render(long j, long j2) throws ExoPlaybackException {
            ExoPlaybackException exoPlaybackException = this.pendingExoPlaybackException;
            if (exoPlaybackException != null) {
                this.pendingExoPlaybackException = null;
                throw exoPlaybackException;
            }
            super.render(j, j2);
            try {
                this.videoSink.render(j, j2);
            } catch (VideoSink.VideoSinkException e) {
                throw createRendererException(e, e.format, 7001);
            }
        }
    }

    public final class SequenceVideoRenderer extends MediaCodecVideoRenderer {
        private final BufferingVideoSink bufferingVideoSink;

        @Nullable
        private EditedMediaItem currentEditedMediaItem;
        private long offsetToCompositionTimeUs;
        private ImmutableList<Effect> pendingEffects;
        private final boolean requestToneMapping;
        private final EditedMediaItemSequence sequence;

        public SequenceVideoRenderer(Context context, Handler handler, VideoRendererEventListener videoRendererEventListener, EditedMediaItemSequence editedMediaItemSequence, BufferingVideoSink bufferingVideoSink, boolean z) {
            super(new MediaCodecVideoRenderer.Builder(context).setMediaCodecSelector(MediaCodecSelector.DEFAULT).setCodecAdapterFactory(MediaCodecAdapter.Factory.getDefault(context)).setAllowedJoiningTimeMs(5000L).setEnableDecoderFallback(false).setEventHandler(handler).setEventListener(videoRendererEventListener).setMaxDroppedFramesToNotify(50).setAssumedMinimumCodecOperatingRate(30.0f).setVideoSink(bufferingVideoSink));
            this.sequence = editedMediaItemSequence;
            this.bufferingVideoSink = bufferingVideoSink;
            this.requestToneMapping = z;
            this.pendingEffects = ImmutableList.of();
            experimentalEnableProcessedStreamChangedAtStart();
        }

        private void activateBufferingVideoSink() {
            if (this.bufferingVideoSink.getVideoSink() != null) {
                return;
            }
            VideoSink videoSink = (VideoSink) Assertions.checkNotNull(SequenceRenderersFactory.this.videoSink);
            this.bufferingVideoSink.setVideoSink(videoSink);
            MediaCodecAdapter codec = getCodec();
            if (!SequenceRenderersFactory.this.isVideoPrewarmingEnabled() || !videoSink.isInitialized() || codec == null || codecNeedsSetOutputSurfaceWorkaround(((MediaCodecInfo) Assertions.checkNotNull(getCodecInfo())).name)) {
                return;
            }
            setOutputSurfaceV23(codec, videoSink.getInputSurface());
        }

        private void deactivateBufferingVideoSink() {
            if (SequenceRenderersFactory.this.isVideoPrewarmingEnabled()) {
                this.bufferingVideoSink.setVideoSink(null);
                this.bufferingVideoSink.clearPendingOperations();
                MediaCodecAdapter codec = getCodec();
                if (codec == null) {
                    return;
                }
                if (codecNeedsSetOutputSurfaceWorkaround(((MediaCodecInfo) Assertions.checkNotNull(getCodecInfo())).name)) {
                    releaseCodec();
                } else {
                    setOutputSurfaceV23(codec, this.bufferingVideoSink.getInputSurface());
                }
            }
        }

        @Override
        public void changeVideoSinkInputStream(VideoSink videoSink, int i, Format format) {
            videoSink.onInputStreamChanged(i, format, this.pendingEffects);
        }

        @Override
        public long getBufferTimestampAdjustmentUs() {
            return this.offsetToCompositionTimeUs;
        }

        @Override
        public MediaFormat getMediaFormat(Format format, String str, MediaCodecVideoRenderer.CodecMaxValues codecMaxValues, float f, boolean z, int i) {
            MediaFormat mediaFormat = super.getMediaFormat(format, str, codecMaxValues, f, z, i);
            if (this.requestToneMapping && Util.SDK_INT >= 31) {
                mediaFormat.setInteger("color-transfer-request", 3);
            }
            return mediaFormat;
        }

        @Override
        public void handleMessage(int i, @Nullable Object obj) throws ExoPlaybackException {
            if (i == 17) {
                return;
            }
            super.handleMessage(i, obj);
        }

        @Override
        public void onDisabled() {
            super.onDisabled();
            deactivateBufferingVideoSink();
        }

        @Override
        public void onEnabled(boolean z, boolean z2) throws ExoPlaybackException {
            if (z2) {
                activateBufferingVideoSink();
            }
            super.onEnabled(z, z2);
        }

        @Override
        public void onStarted() {
            activateBufferingVideoSink();
            super.onStarted();
        }

        @Override
        public void onStreamChanged(Format[] formatArr, long j, long j2, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
            Assertions.checkState(getTimeline().getWindowCount() == 1);
            int indexOfPeriod = getTimeline().getIndexOfPeriod(mediaPeriodId.periodUid);
            this.currentEditedMediaItem = SequenceRenderersFactory.getRepeatedEditedMediaItem(this.sequence, indexOfPeriod);
            this.offsetToCompositionTimeUs = SequenceRenderersFactory.getOffsetToCompositionTimeUs(this.sequence, indexOfPeriod, j2);
            this.pendingEffects = this.sequence.editedMediaItems.get(indexOfPeriod).effects.videoEffects;
            super.onStreamChanged(formatArr, j, j2, mediaPeriodId);
        }

        @Override
        public void renderToEndOfStream() {
            super.renderToEndOfStream();
            if (SequenceRenderersFactory.isLastInSequence(getTimeline(), this.sequence, (EditedMediaItem) Assertions.checkNotNull(this.currentEditedMediaItem))) {
                this.bufferingVideoSink.signalEndOfInput();
            }
        }

        @Override
        public boolean shouldInitCodec(MediaCodecInfo mediaCodecInfo) {
            if (SequenceRenderersFactory.this.isVideoPrewarmingEnabled() && this.bufferingVideoSink.getVideoSink() == null && codecNeedsSetOutputSurfaceWorkaround(mediaCodecInfo.name)) {
                return false;
            }
            return super.shouldInitCodec(mediaCodecInfo);
        }
    }

    private SequenceRenderersFactory(Context context, EditedMediaItemSequence editedMediaItemSequence, PlaybackAudioGraphWrapper playbackAudioGraphWrapper, @Nullable VideoSink videoSink, @Nullable ImageDecoder.Factory factory, int i, boolean z, boolean z2) {
        this.context = context;
        this.sequence = editedMediaItemSequence;
        this.playbackAudioGraphWrapper = playbackAudioGraphWrapper;
        this.videoSink = videoSink;
        this.imageDecoderFactory = factory;
        this.inputIndex = i;
        this.requestToneMapping = z;
        this.videoPrewarmingEnabled = z2;
    }

    public static SequenceRenderersFactory create(Context context, EditedMediaItemSequence editedMediaItemSequence, PlaybackAudioGraphWrapper playbackAudioGraphWrapper, VideoSink videoSink, ImageDecoder.Factory factory, int i, boolean z, boolean z2) {
        return new SequenceRenderersFactory(context, editedMediaItemSequence, playbackAudioGraphWrapper, videoSink, factory, i, z, z2);
    }

    public static long getOffsetToCompositionTimeUs(EditedMediaItemSequence editedMediaItemSequence, int i, long j) {
        long presentationDurationUs = -j;
        if (i == 0) {
            presentationDurationUs -= editedMediaItemSequence.editedMediaItems.get(0).mediaItem.clippingConfiguration.startPositionUs;
        }
        for (int i2 = 0; i2 < i; i2++) {
            presentationDurationUs += getRepeatedEditedMediaItem(editedMediaItemSequence, i2).getPresentationDurationUs();
        }
        return presentationDurationUs;
    }

    public static EditedMediaItem getRepeatedEditedMediaItem(EditedMediaItemSequence editedMediaItemSequence, int i) {
        if (editedMediaItemSequence.isLooping) {
            i %= editedMediaItemSequence.editedMediaItems.size();
        }
        return editedMediaItemSequence.editedMediaItems.get(i);
    }

    public static boolean isLastInSequence(Timeline timeline, EditedMediaItemSequence editedMediaItemSequence, EditedMediaItem editedMediaItem) {
        return editedMediaItem == getRepeatedEditedMediaItem(editedMediaItemSequence, timeline.getPeriodCount() - 1);
    }

    @ChecksSdkIntAtLeast(api = 23)
    public boolean isVideoPrewarmingEnabled() {
        return this.videoPrewarmingEnabled && Util.SDK_INT >= 23;
    }

    @Override
    public Renderer[] createRenderers(Handler handler, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textOutput, MetadataOutput metadataOutput) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SequenceAudioRenderer(this.context, handler, audioRendererEventListener, this.sequence, this.playbackAudioGraphWrapper.createInput(this.inputIndex), this.playbackAudioGraphWrapper));
        if (this.videoSink != null) {
            Context context = this.context;
            arrayList.add(new SequenceVideoRenderer(context, handler, videoRendererEventListener, this.sequence, new BufferingVideoSink(context), this.requestToneMapping));
            arrayList.add(new SequenceImageRenderer(this.sequence, (ImageDecoder.Factory) Assertions.checkStateNotNull(this.imageDecoderFactory), this.videoSink));
        }
        return (Renderer[]) arrayList.toArray(new Renderer[0]);
    }

    @Override
    @Nullable
    public Renderer createSecondaryRenderer(Renderer renderer, Handler handler, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textOutput, MetadataOutput metadataOutput) {
        if (!isVideoPrewarmingEnabled() || !(renderer instanceof SequenceVideoRenderer)) {
            return null;
        }
        Context context = this.context;
        return new SequenceVideoRenderer(context, handler, videoRendererEventListener, this.sequence, new BufferingVideoSink(context), this.requestToneMapping);
    }
}
