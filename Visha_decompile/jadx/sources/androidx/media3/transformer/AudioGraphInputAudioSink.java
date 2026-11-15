package androidx.media3.transformer;

import androidx.annotation.Nullable;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.audio.AudioSink;
import java.nio.ByteBuffer;
import java.util.Objects;

final class AudioGraphInputAudioSink implements AudioSink {
    private final Controller controller;

    @Nullable
    private EditedMediaItemInfo currentEditedMediaItemInfo;

    @Nullable
    private Format currentInputFormat;
    private long inputPositionUs;
    private boolean inputStreamEnded;
    private long offsetToCompositionTimeUs;

    @Nullable
    private AudioGraphInput outputGraphInput;
    private boolean signalledEndOfStream;

    public interface Controller {
        @Nullable
        AudioGraphInput getAudioGraphInput(EditedMediaItem editedMediaItem, Format format) throws ExportException;

        long getCurrentPositionUs(boolean z);
    }

    public static final class EditedMediaItemInfo {
        public final EditedMediaItem editedMediaItem;
        public final boolean isLastInSequence;

        public EditedMediaItemInfo(EditedMediaItem editedMediaItem, boolean z) {
            this.editedMediaItem = editedMediaItem;
            this.isLastInSequence = z;
        }
    }

    public AudioGraphInputAudioSink(Controller controller) {
        this.controller = controller;
    }

    private long getCompositionPlayerPositionUs() {
        long currentPositionUs = this.controller.getCurrentPositionUs(this.inputStreamEnded);
        return currentPositionUs != Long.MIN_VALUE ? currentPositionUs - this.offsetToCompositionTimeUs : currentPositionUs;
    }

    private boolean handleBufferInternal(ByteBuffer byteBuffer, long j, int i) {
        Assertions.checkStateNotNull(this.currentInputFormat);
        Assertions.checkState(!this.signalledEndOfStream);
        AudioGraphInput audioGraphInput = (AudioGraphInput) Assertions.checkNotNull(this.outputGraphInput);
        DecoderInputBuffer inputBuffer = audioGraphInput.getInputBuffer();
        if (inputBuffer == null) {
            return false;
        }
        int iRemaining = byteBuffer.remaining();
        inputBuffer.ensureSpaceForWrite(iRemaining);
        ((ByteBuffer) Assertions.checkNotNull(inputBuffer.data)).put(byteBuffer).flip();
        inputBuffer.timeUs = j != Long.MIN_VALUE ? this.offsetToCompositionTimeUs + j : Long.MIN_VALUE;
        inputBuffer.setFlags(i);
        boolean zQueueInputBuffer = audioGraphInput.queueInputBuffer();
        if (zQueueInputBuffer) {
            Format format = (Format) Assertions.checkNotNull(this.currentInputFormat);
            this.inputPositionUs = j + Util.sampleCountToDurationUs(iRemaining / Util.getPcmFrameSize(format.pcmEncoding, format.channelCount), format.sampleRate);
        }
        return zQueueInputBuffer;
    }

    @Override
    public void configure(Format format, int i, @Nullable int[] iArr) throws AudioSink.ConfigurationException {
        Assertions.checkArgument(supportsFormat(format));
        EditedMediaItem editedMediaItem = ((EditedMediaItemInfo) Assertions.checkStateNotNull(this.currentEditedMediaItemInfo)).editedMediaItem;
        Assertions.checkArgument(iArr == null);
        this.currentInputFormat = format;
        AudioGraphInput audioGraphInput = this.outputGraphInput;
        if (audioGraphInput != null) {
            audioGraphInput.onMediaItemChanged(editedMediaItem, C.TIME_UNSET, format, false);
        }
    }

    @Override
    public void disableTunneling() {
    }

    @Override
    public void enableTunnelingV21() {
    }

    @Override
    public void flush() {
        this.inputStreamEnded = false;
        this.signalledEndOfStream = false;
    }

    @Override
    @Nullable
    public AudioAttributes getAudioAttributes() {
        return null;
    }

    @Override
    public long getAudioTrackBufferSizeUs() {
        return C.TIME_UNSET;
    }

    @Override
    public long getCurrentPositionUs(boolean z) {
        return isEnded() ? this.inputPositionUs : getCompositionPlayerPositionUs();
    }

    @Override
    public int getFormatSupport(Format format) {
        return (Objects.equals(format.sampleMimeType, "audio/raw") && format.pcmEncoding == 2) ? 2 : 0;
    }

    @Override
    public PlaybackParameters getPlaybackParameters() {
        return PlaybackParameters.DEFAULT;
    }

    @Override
    public boolean getSkipSilenceEnabled() {
        return false;
    }

    @Override
    public boolean handleBuffer(ByteBuffer byteBuffer, long j, int i) throws AudioSink.InitializationException {
        Assertions.checkState(!this.inputStreamEnded);
        EditedMediaItem editedMediaItem = ((EditedMediaItemInfo) Assertions.checkStateNotNull(this.currentEditedMediaItemInfo)).editedMediaItem;
        if (this.outputGraphInput == null) {
            try {
                AudioGraphInput audioGraphInput = this.controller.getAudioGraphInput(editedMediaItem, (Format) Assertions.checkStateNotNull(this.currentInputFormat));
                if (audioGraphInput == null) {
                    return false;
                }
                this.outputGraphInput = audioGraphInput;
                audioGraphInput.onMediaItemChanged(editedMediaItem, C.TIME_UNSET, this.currentInputFormat, false);
            } catch (ExportException e) {
                throw new AudioSink.InitializationException("Error creating AudioGraphInput", 0, this.currentInputFormat, false, e);
            }
        }
        return handleBufferInternal(byteBuffer, j, 0);
    }

    @Override
    public void handleDiscontinuity() {
    }

    @Override
    public boolean hasPendingData() {
        return false;
    }

    @Override
    public boolean isEnded() {
        if (this.currentInputFormat == null) {
            return this.inputStreamEnded;
        }
        return this.inputStreamEnded && getCompositionPlayerPositionUs() >= this.inputPositionUs;
    }

    public void onMediaItemChanged(EditedMediaItem editedMediaItem, long j, boolean z) {
        this.currentEditedMediaItemInfo = new EditedMediaItemInfo(editedMediaItem, z);
        this.offsetToCompositionTimeUs = j;
    }

    @Override
    public void pause() {
    }

    @Override
    public void play() {
    }

    @Override
    public void playToEndOfStream() {
        this.inputStreamEnded = true;
        if (this.currentInputFormat == null || this.signalledEndOfStream || !((EditedMediaItemInfo) Assertions.checkStateNotNull(this.currentEditedMediaItemInfo)).isLastInSequence) {
            return;
        }
        this.signalledEndOfStream = handleBufferInternal(AudioProcessor.EMPTY_BUFFER, Long.MIN_VALUE, 4);
    }

    @Override
    public void reset() {
        flush();
        this.currentInputFormat = null;
        this.currentEditedMediaItemInfo = null;
    }

    @Override
    public void setAudioAttributes(AudioAttributes audioAttributes) {
    }

    @Override
    public void setAudioSessionId(int i) {
    }

    @Override
    public void setAuxEffectInfo(AuxEffectInfo auxEffectInfo) {
    }

    @Override
    public void setListener(AudioSink.Listener listener) {
    }

    @Override
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
    }

    @Override
    public void setSkipSilenceEnabled(boolean z) {
    }

    @Override
    public void setVolume(float f) {
    }

    @Override
    public boolean supportsFormat(Format format) {
        return getFormatSupport(format) == 2;
    }
}
