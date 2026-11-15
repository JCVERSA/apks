package androidx.media3.transformer;

import android.graphics.Bitmap;
import android.os.Looper;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.OnInputFrameProcessedListener;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.TimestampIterator;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.effect.DebugTraceUtil;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

final class SequenceAssetLoader implements AssetLoader, AssetLoader.Listener {
    private static final Format FORCE_AUDIO_TRACK_FORMAT = new Format.Builder().setSampleMimeType("audio/mp4a-latm").setSampleRate(44100).setChannelCount(2).build();
    private final AssetLoader.Factory assetLoaderFactory;
    private final AssetLoader.CompositionSettings compositionSettings;
    private volatile long currentAssetDurationAfterEffectsAppliedUs;
    private volatile long currentAssetDurationUs;
    private AssetLoader currentAssetLoader;
    private Format currentAudioInputFormat;
    private int currentMediaItemIndex;
    private Format currentVideoInputFormat;
    private boolean decodeAudio;
    private boolean decodeVideo;
    private final List<EditedMediaItem> editedMediaItems;
    private final boolean forceAudioTrack;
    private final HandlerWrapper handler;
    private boolean isCurrentAssetFirstAsset;
    private final boolean isLooping;
    private volatile boolean isMaxSequenceDurationUsFinal;
    private boolean isTrackCountReported;
    private volatile long maxSequenceDurationUs;
    private final Map<Integer, OnMediaItemChangedListener> mediaItemChangedListenersByTrackType;
    private final AtomicInteger nonEndedTrackCount;
    private final ImmutableList.a processedInputsBuilder;
    private int processedInputsSize;
    private volatile boolean released;
    private final AtomicInteger reportedTrackCount;
    private final Map<Integer, SampleConsumerWrapper> sampleConsumersByTrackType;
    private final AssetLoader.Listener sequenceAssetLoaderListener;
    private int sequenceLoopCount;

    public static final class ClippingIterator implements TimestampIterator {
        private final long clippingValue;
        private boolean hasReachedClippingValue;
        private final TimestampIterator iterator;

        public ClippingIterator(TimestampIterator timestampIterator, long j) {
            this.iterator = timestampIterator;
            this.clippingValue = j;
        }

        @Override
        public TimestampIterator copyOf() {
            return new ClippingIterator(this.iterator.copyOf(), this.clippingValue);
        }

        @Override
        public boolean hasNext() {
            return !this.hasReachedClippingValue && this.iterator.hasNext();
        }

        @Override
        public long next() {
            Assertions.checkState(hasNext());
            long next = this.iterator.next();
            if (this.clippingValue <= next) {
                this.hasReachedClippingValue = true;
            }
            return next;
        }
    }

    public final class GapInterceptingAssetLoaderFactory implements AssetLoader.Factory {
        private final AssetLoader.Factory factory;

        public GapInterceptingAssetLoaderFactory(AssetLoader.Factory factory) {
            this.factory = factory;
        }

        @Override
        public AssetLoader createAssetLoader(EditedMediaItem editedMediaItem, Looper looper, AssetLoader.Listener listener, AssetLoader.CompositionSettings compositionSettings) {
            return editedMediaItem.isGap() ? new GapSignalingAssetLoader(editedMediaItem.durationUs) : this.factory.createAssetLoader(editedMediaItem, looper, listener, compositionSettings);
        }
    }

    public final class GapSignalingAssetLoader implements AssetLoader {
        private static final int OUTPUT_FORMAT_RETRY_DELAY_MS = 10;
        private final Format decodedFormat;
        private final long durationUs;
        private boolean outputtedFormat;
        private final Format trackFormat;

        public void outputFormatToSequenceAssetLoader() {
            try {
                if (this.outputtedFormat) {
                    return;
                }
                SampleConsumerWrapper sampleConsumerWrapperOnOutputFormat = SequenceAssetLoader.this.onOutputFormat(this.decodedFormat);
                if (sampleConsumerWrapperOnOutputFormat != null) {
                    this.outputtedFormat = true;
                    sampleConsumerWrapperOnOutputFormat.onGapSignalled();
                } else {
                    SequenceAssetLoader.this.handler.postDelayed(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.outputFormatToSequenceAssetLoader();
                        }
                    }, 10L);
                }
            } catch (ExportException e) {
                SequenceAssetLoader.this.onError(e);
            } catch (RuntimeException e2) {
                SequenceAssetLoader.this.onError(ExportException.createForAssetLoader(e2, 1000));
            }
        }

        @Override
        public ImmutableMap<Integer, String> getDecoderNames() {
            return ImmutableMap.of();
        }

        @Override
        public int getProgress(ProgressHolder progressHolder) {
            progressHolder.progress = this.outputtedFormat ? 99 : 0;
            return 2;
        }

        @Override
        public void release() {
        }

        @Override
        public void start() {
            SequenceAssetLoader.this.onDurationUs(this.durationUs);
            SequenceAssetLoader.this.onTrackCount(1);
            SequenceAssetLoader.this.onTrackAdded(this.trackFormat, 2);
            outputFormatToSequenceAssetLoader();
        }

        private GapSignalingAssetLoader(long j) {
            this.durationUs = j;
            this.trackFormat = new Format.Builder().setSampleMimeType("audio/raw").build();
            this.decodedFormat = new Format.Builder().setSampleMimeType("audio/raw").setSampleRate(44100).setChannelCount(2).setPcmEncoding(2).build();
        }
    }

    public final class SampleConsumerWrapper implements SampleConsumer {
        private boolean audioLoopingEnded;
        private final SampleConsumer sampleConsumer;
        private long totalDurationUs;
        private final int trackType;
        private boolean videoLoopingEnded;

        public SampleConsumerWrapper(SampleConsumer sampleConsumer, int i) {
            this.sampleConsumer = sampleConsumer;
            this.trackType = i;
        }

        public void lambda$switchAssetLoader$0() {
            try {
                if (SequenceAssetLoader.this.released) {
                    return;
                }
                SequenceAssetLoader.this.addCurrentProcessedInput();
                this.totalDurationUs += SequenceAssetLoader.this.currentAssetDurationAfterEffectsAppliedUs;
                SequenceAssetLoader.this.currentAssetLoader.release();
                SequenceAssetLoader.this.isCurrentAssetFirstAsset = false;
                SequenceAssetLoader.access$1208(SequenceAssetLoader.this);
                if (SequenceAssetLoader.this.currentMediaItemIndex == SequenceAssetLoader.this.editedMediaItems.size()) {
                    SequenceAssetLoader.this.currentMediaItemIndex = 0;
                    SequenceAssetLoader.access$1408(SequenceAssetLoader.this);
                }
                EditedMediaItem editedMediaItem = (EditedMediaItem) SequenceAssetLoader.this.editedMediaItems.get(SequenceAssetLoader.this.currentMediaItemIndex);
                SequenceAssetLoader sequenceAssetLoader = SequenceAssetLoader.this;
                AssetLoader.Factory factory = sequenceAssetLoader.assetLoaderFactory;
                Looper looper = (Looper) Assertions.checkNotNull(Looper.myLooper());
                SequenceAssetLoader sequenceAssetLoader2 = SequenceAssetLoader.this;
                sequenceAssetLoader.currentAssetLoader = factory.createAssetLoader(editedMediaItem, looper, sequenceAssetLoader2, sequenceAssetLoader2.compositionSettings);
                SequenceAssetLoader.this.currentAssetLoader.start();
            } catch (RuntimeException e) {
                SequenceAssetLoader.this.onError(ExportException.createForAssetLoader(e, 1000));
            }
        }

        public void onGapSignalled() {
            SequenceAssetLoader.this.nonEndedTrackCount.decrementAndGet();
            if (SequenceAssetLoader.this.isLastMediaItemInSequence()) {
                return;
            }
            switchAssetLoader();
        }

        private void switchAssetLoader() {
            SequenceAssetLoader.this.handler.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$switchAssetLoader$0();
                }
            });
        }

        @Override
        @Nullable
        public DecoderInputBuffer getInputBuffer() {
            return this.sampleConsumer.getInputBuffer();
        }

        @Override
        public Surface getInputSurface() {
            return this.sampleConsumer.getInputSurface();
        }

        @Override
        public int getPendingVideoFrameCount() {
            return this.sampleConsumer.getPendingVideoFrameCount();
        }

        @Override
        public int queueInputBitmap(Bitmap bitmap, TimestampIterator timestampIterator) {
            if (SequenceAssetLoader.this.isLooping) {
                long j = -9223372036854775807L;
                while (timestampIterator.hasNext()) {
                    long next = timestampIterator.next();
                    if (this.totalDurationUs + next > SequenceAssetLoader.this.maxSequenceDurationUs) {
                        if (!SequenceAssetLoader.this.isMaxSequenceDurationUsFinal) {
                            return 2;
                        }
                        if (j != C.TIME_UNSET) {
                            ClippingIterator clippingIterator = new ClippingIterator(timestampIterator.copyOf(), j);
                            this.videoLoopingEnded = true;
                            timestampIterator = clippingIterator;
                            break;
                        }
                        if (this.videoLoopingEnded) {
                            return 2;
                        }
                        this.videoLoopingEnded = true;
                        signalEndOfVideoInput();
                        return 3;
                    }
                    j = next;
                }
            }
            return this.sampleConsumer.queueInputBitmap(bitmap, timestampIterator.copyOf());
        }

        @Override
        public boolean queueInputBuffer() {
            DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) Assertions.checkStateNotNull(this.sampleConsumer.getInputBuffer());
            long j = this.totalDurationUs + decoderInputBuffer.timeUs;
            if (SequenceAssetLoader.this.isLooping && (j >= SequenceAssetLoader.this.maxSequenceDurationUs || this.audioLoopingEnded)) {
                if (SequenceAssetLoader.this.isMaxSequenceDurationUsFinal && !this.audioLoopingEnded) {
                    ((ByteBuffer) Assertions.checkNotNull(decoderInputBuffer.data)).limit(0);
                    decoderInputBuffer.setFlags(4);
                    Assertions.checkState(this.sampleConsumer.queueInputBuffer());
                    this.audioLoopingEnded = true;
                    SequenceAssetLoader.this.nonEndedTrackCount.decrementAndGet();
                }
                return false;
            }
            if (decoderInputBuffer.isEndOfStream()) {
                SequenceAssetLoader.this.nonEndedTrackCount.decrementAndGet();
                if (!SequenceAssetLoader.this.isLastMediaItemInSequence() || SequenceAssetLoader.this.isLooping) {
                    if (this.trackType == 1 && !SequenceAssetLoader.this.isLooping && SequenceAssetLoader.this.decodeAudio) {
                        Assertions.checkState(this.sampleConsumer.queueInputBuffer());
                    } else {
                        decoderInputBuffer.clear();
                        decoderInputBuffer.timeUs = 0L;
                    }
                    if (SequenceAssetLoader.this.nonEndedTrackCount.get() == 0) {
                        switchAssetLoader();
                    }
                    return true;
                }
            }
            Assertions.checkState(this.sampleConsumer.queueInputBuffer());
            return true;
        }

        @Override
        public int queueInputTexture(int i, long j) {
            long j2 = this.totalDurationUs + j;
            if (!SequenceAssetLoader.this.isLooping || j2 < SequenceAssetLoader.this.maxSequenceDurationUs) {
                return this.sampleConsumer.queueInputTexture(i, j);
            }
            if (!SequenceAssetLoader.this.isMaxSequenceDurationUsFinal || this.videoLoopingEnded) {
                return 2;
            }
            this.videoLoopingEnded = true;
            signalEndOfVideoInput();
            return 3;
        }

        @Override
        public boolean registerVideoFrame(long j) {
            long j2 = this.totalDurationUs + j;
            if (!SequenceAssetLoader.this.isLooping || j2 < SequenceAssetLoader.this.maxSequenceDurationUs) {
                return this.sampleConsumer.registerVideoFrame(j);
            }
            if (!SequenceAssetLoader.this.isMaxSequenceDurationUsFinal || this.videoLoopingEnded) {
                return false;
            }
            this.videoLoopingEnded = true;
            signalEndOfVideoInput();
            return false;
        }

        @Override
        public void setOnInputFrameProcessedListener(OnInputFrameProcessedListener onInputFrameProcessedListener) {
            this.sampleConsumer.setOnInputFrameProcessedListener(onInputFrameProcessedListener);
        }

        @Override
        public void setOnInputSurfaceReadyListener(Runnable runnable) {
            this.sampleConsumer.setOnInputSurfaceReadyListener(runnable);
        }

        @Override
        public void signalEndOfVideoInput() {
            SequenceAssetLoader.this.nonEndedTrackCount.decrementAndGet();
            if (SequenceAssetLoader.this.isLooping ? this.videoLoopingEnded : SequenceAssetLoader.this.isLastMediaItemInSequence()) {
                this.sampleConsumer.signalEndOfVideoInput();
            } else if (SequenceAssetLoader.this.nonEndedTrackCount.get() == 0) {
                switchAssetLoader();
            }
        }
    }

    public SequenceAssetLoader(EditedMediaItemSequence editedMediaItemSequence, boolean z, AssetLoader.Factory factory, AssetLoader.CompositionSettings compositionSettings, AssetLoader.Listener listener, Clock clock, Looper looper) {
        ImmutableList<EditedMediaItem> immutableList = editedMediaItemSequence.editedMediaItems;
        this.editedMediaItems = immutableList;
        this.isLooping = editedMediaItemSequence.isLooping;
        this.forceAudioTrack = z;
        GapInterceptingAssetLoaderFactory gapInterceptingAssetLoaderFactory = new GapInterceptingAssetLoaderFactory(factory);
        this.assetLoaderFactory = gapInterceptingAssetLoaderFactory;
        this.compositionSettings = compositionSettings;
        this.sequenceAssetLoaderListener = listener;
        this.handler = clock.createHandler(looper, null);
        this.sampleConsumersByTrackType = new HashMap();
        this.mediaItemChangedListenersByTrackType = new HashMap();
        this.processedInputsBuilder = new ImmutableList.a();
        this.reportedTrackCount = new AtomicInteger();
        this.nonEndedTrackCount = new AtomicInteger();
        this.isCurrentAssetFirstAsset = true;
        this.currentAssetLoader = gapInterceptingAssetLoaderFactory.createAssetLoader(immutableList.get(0), looper, this, compositionSettings);
    }

    public static int access$1208(SequenceAssetLoader sequenceAssetLoader) {
        int i = sequenceAssetLoader.currentMediaItemIndex;
        sequenceAssetLoader.currentMediaItemIndex = i + 1;
        return i;
    }

    public static int access$1408(SequenceAssetLoader sequenceAssetLoader) {
        int i = sequenceAssetLoader.sequenceLoopCount;
        sequenceAssetLoader.sequenceLoopCount = i + 1;
        return i;
    }

    public void addCurrentProcessedInput() {
        int size = this.sequenceLoopCount * this.editedMediaItems.size();
        int i = this.currentMediaItemIndex;
        if (size + i >= this.processedInputsSize) {
            MediaItem mediaItem = this.editedMediaItems.get(i).mediaItem;
            ImmutableMap<Integer, String> decoderNames = getDecoderNames();
            this.processedInputsBuilder.a(new ExportResult.ProcessedInput(mediaItem, this.currentAssetDurationUs, this.currentAudioInputFormat, this.currentVideoInputFormat, decoderNames.get(1), decoderNames.get(2)));
            this.processedInputsSize++;
        }
    }

    public boolean isLastMediaItemInSequence() {
        return this.currentMediaItemIndex == this.editedMediaItems.size() - 1;
    }

    private void onMediaItemChanged(int i, @Nullable Format format) {
        OnMediaItemChangedListener onMediaItemChangedListener = this.mediaItemChangedListenersByTrackType.get(Integer.valueOf(i));
        if (onMediaItemChangedListener == null) {
            return;
        }
        EditedMediaItem editedMediaItem = this.editedMediaItems.get(this.currentMediaItemIndex);
        long j = (i == 1 && this.isLooping && this.decodeAudio) ? C.TIME_UNSET : this.currentAssetDurationUs;
        if (editedMediaItem.isGap()) {
            format = null;
        }
        onMediaItemChangedListener.onMediaItemChanged(editedMediaItem, j, format, isLastMediaItemInSequence());
    }

    public void addOnMediaItemChangedListener(OnMediaItemChangedListener onMediaItemChangedListener, int i) {
        Assertions.checkArgument(i == 1 || i == 2);
        Assertions.checkArgument(this.mediaItemChangedListenersByTrackType.get(Integer.valueOf(i)) == null);
        this.mediaItemChangedListenersByTrackType.put(Integer.valueOf(i), onMediaItemChangedListener);
    }

    @Override
    public ImmutableMap<Integer, String> getDecoderNames() {
        return this.currentAssetLoader.getDecoderNames();
    }

    public ImmutableList<ExportResult.ProcessedInput> getProcessedInputs() {
        addCurrentProcessedInput();
        return this.processedInputsBuilder.e();
    }

    @Override
    public int getProgress(ProgressHolder progressHolder) {
        if (this.isLooping) {
            return 3;
        }
        int progress = this.currentAssetLoader.getProgress(progressHolder);
        int size = this.editedMediaItems.size();
        if (size == 1 || progress == 0) {
            return progress;
        }
        int i = (this.currentMediaItemIndex * 100) / size;
        if (progress == 2) {
            i += progressHolder.progress / size;
        }
        progressHolder.progress = i;
        return 2;
    }

    @Override
    public void onDurationUs(long j) {
        Assertions.checkArgument(j != C.TIME_UNSET || isLastMediaItemInSequence(), "Could not retrieve required duration for EditedMediaItem " + this.currentMediaItemIndex);
        this.currentAssetDurationAfterEffectsAppliedUs = this.editedMediaItems.get(this.currentMediaItemIndex).getDurationAfterEffectsApplied(j);
        this.currentAssetDurationUs = j;
        if (this.editedMediaItems.size() != 1 || this.isLooping) {
            return;
        }
        this.sequenceAssetLoaderListener.onDurationUs(this.currentAssetDurationAfterEffectsAppliedUs);
    }

    @Override
    public void onError(ExportException exportException) {
        this.sequenceAssetLoaderListener.onError(exportException);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean onTrackAdded(Format format, int i) {
        int i2 = 0;
        i2 = 0;
        i2 = 0;
        Object[] objArr = TransformerUtil.getProcessedTrackType(format.sampleMimeType) == 1;
        DebugTraceUtil.logEvent(DebugTraceUtil.COMPONENT_ASSET_LOADER, DebugTraceUtil.EVENT_INPUT_FORMAT, C.TIME_UNSET, "%s:%s", objArr != false ? "audio" : "video", format);
        if (objArr == true) {
            this.currentAudioInputFormat = format;
        } else {
            this.currentVideoInputFormat = format;
        }
        if (!this.isCurrentAssetFirstAsset) {
            boolean z = objArr != false ? this.decodeAudio : this.decodeVideo;
            if (z) {
                Assertions.checkArgument((i & 2) != 0);
            } else {
                Assertions.checkArgument((i & 1) != 0);
            }
            return z;
        }
        if (this.forceAudioTrack && this.reportedTrackCount.get() == 1 && objArr == false) {
            i2 = 1;
        }
        if (!this.isTrackCountReported) {
            this.sequenceAssetLoaderListener.onTrackCount(this.reportedTrackCount.get() + i2);
            this.isTrackCountReported = true;
        }
        boolean zOnTrackAdded = this.sequenceAssetLoaderListener.onTrackAdded(format, i);
        if (objArr == true) {
            this.decodeAudio = zOnTrackAdded;
        } else {
            this.decodeVideo = zOnTrackAdded;
        }
        if (i2 != 0) {
            this.sequenceAssetLoaderListener.onTrackAdded(FORCE_AUDIO_TRACK_FORMAT, 2);
            this.decodeAudio = true;
        }
        return zOnTrackAdded;
    }

    @Override
    public void onTrackCount(int i) {
        this.reportedTrackCount.set(i);
        this.nonEndedTrackCount.set(i);
    }

    @Override
    public void release() {
        this.currentAssetLoader.release();
        this.released = true;
    }

    public void setMaxSequenceDurationUs(long j, boolean z) {
        this.maxSequenceDurationUs = j;
        this.isMaxSequenceDurationUsFinal = z;
    }

    @Override
    public void start() {
        this.currentAssetLoader.start();
        if (this.editedMediaItems.size() > 1 || this.isLooping) {
            this.sequenceAssetLoaderListener.onDurationUs(C.TIME_UNSET);
        }
    }

    @Override
    @Nullable
    public SampleConsumerWrapper onOutputFormat(Format format) throws ExportException {
        SampleConsumerWrapper sampleConsumerWrapper;
        int processedTrackType = TransformerUtil.getProcessedTrackType(format.sampleMimeType);
        DebugTraceUtil.logEvent(DebugTraceUtil.COMPONENT_ASSET_LOADER, DebugTraceUtil.EVENT_OUTPUT_FORMAT, C.TIME_UNSET, "%s:%s", Util.getTrackTypeString(processedTrackType), format);
        if (this.isCurrentAssetFirstAsset) {
            SampleConsumer sampleConsumerOnOutputFormat = this.sequenceAssetLoaderListener.onOutputFormat(format);
            if (sampleConsumerOnOutputFormat == null) {
                return null;
            }
            sampleConsumerWrapper = new SampleConsumerWrapper(sampleConsumerOnOutputFormat, processedTrackType);
            this.sampleConsumersByTrackType.put(Integer.valueOf(processedTrackType), sampleConsumerWrapper);
            if (this.forceAudioTrack && this.reportedTrackCount.get() == 1 && processedTrackType == 2) {
                this.sampleConsumersByTrackType.put(1, new SampleConsumerWrapper((SampleConsumer) Assertions.checkStateNotNull(this.sequenceAssetLoaderListener.onOutputFormat(FORCE_AUDIO_TRACK_FORMAT.buildUpon().setSampleMimeType("audio/raw").setPcmEncoding(2).build())), 1));
            }
        } else {
            Assertions.checkState(!(this.reportedTrackCount.get() == 1 && processedTrackType == 1 && this.sampleConsumersByTrackType.size() == 2), "Inputs with no video track are not supported when the output contains a video track");
            sampleConsumerWrapper = (SampleConsumerWrapper) Assertions.checkStateNotNull(this.sampleConsumersByTrackType.get(Integer.valueOf(processedTrackType)), Util.formatInvariant("The preceding MediaItem does not contain any track of type %d. If the Composition contains a sequence that starts with items without audio tracks (like images), followed by items with audio tracks, Composition.Builder.experimentalSetForceAudioTrack() needs to be set to true.", Integer.valueOf(processedTrackType)));
        }
        onMediaItemChanged(processedTrackType, format);
        if (this.reportedTrackCount.get() == 1 && this.sampleConsumersByTrackType.size() == 2) {
            Iterator<Map.Entry<Integer, SampleConsumerWrapper>> it = this.sampleConsumersByTrackType.entrySet().iterator();
            while (it.hasNext()) {
                int iIntValue = it.next().getKey().intValue();
                if (processedTrackType != iIntValue) {
                    onMediaItemChanged(iIntValue, null);
                }
            }
        }
        return sampleConsumerWrapper;
    }
}
