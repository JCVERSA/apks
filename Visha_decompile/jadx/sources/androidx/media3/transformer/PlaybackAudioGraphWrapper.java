package androidx.media3.transformer;

import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioSink;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.util.Objects;

final class PlaybackAudioGraphWrapper {
    private static final int PRIMARY_SEQUENCE_INDEX = 0;
    private final AudioGraph audioGraph;
    private int audioGraphInputsCreated;
    private final AudioSink finalAudioSink;
    private boolean hasRegisteredPrimaryFormat;
    private int inputAudioSinksCreated;
    private AudioProcessor.AudioFormat outputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
    private long outputFramesWritten;
    private long seekPositionUs;

    public final class SinkController implements AudioGraphInputAudioSink.Controller {
        private final boolean isSequencePrimary;

        public SinkController(int i) {
            this.isSequencePrimary = i == 0;
            PlaybackAudioGraphWrapper.access$008(PlaybackAudioGraphWrapper.this);
        }

        @Override
        @Nullable
        public AudioGraphInput getAudioGraphInput(EditedMediaItem editedMediaItem, Format format) throws ExportException {
            if (!this.isSequencePrimary && !PlaybackAudioGraphWrapper.this.hasRegisteredPrimaryFormat) {
                return null;
            }
            AudioGraphInput audioGraphInputRegisterInput = PlaybackAudioGraphWrapper.this.audioGraph.registerInput(editedMediaItem, format);
            PlaybackAudioGraphWrapper.access$308(PlaybackAudioGraphWrapper.this);
            if (this.isSequencePrimary) {
                PlaybackAudioGraphWrapper.this.hasRegisteredPrimaryFormat = true;
            }
            return audioGraphInputRegisterInput;
        }

        @Override
        public long getCurrentPositionUs(boolean z) {
            return PlaybackAudioGraphWrapper.this.finalAudioSink.getCurrentPositionUs(z);
        }
    }

    public PlaybackAudioGraphWrapper(AudioMixer.Factory factory, ImmutableList<AudioProcessor> immutableList, AudioSink audioSink) {
        this.audioGraph = new AudioGraph(factory, immutableList);
        this.finalAudioSink = audioSink;
    }

    public static int access$008(PlaybackAudioGraphWrapper playbackAudioGraphWrapper) {
        int i = playbackAudioGraphWrapper.inputAudioSinksCreated;
        playbackAudioGraphWrapper.inputAudioSinksCreated = i + 1;
        return i;
    }

    public static int access$308(PlaybackAudioGraphWrapper playbackAudioGraphWrapper) {
        int i = playbackAudioGraphWrapper.audioGraphInputsCreated;
        playbackAudioGraphWrapper.audioGraphInputsCreated = i + 1;
        return i;
    }

    private long getBufferPresentationTimeUs() {
        return this.seekPositionUs + Util.sampleCountToDurationUs(this.outputFramesWritten, this.outputAudioFormat.sampleRate);
    }

    public AudioGraphInputAudioSink createInput(int i) {
        return new AudioGraphInputAudioSink(new SinkController(i));
    }

    public void endSeek() {
        this.audioGraph.unblockInput();
    }

    public boolean processData() throws ExportException, AudioSink.WriteException, AudioSink.InitializationException, AudioSink.ConfigurationException {
        int i = this.inputAudioSinksCreated;
        if (i == 0 || i != this.audioGraphInputsCreated) {
            return false;
        }
        AudioProcessor.AudioFormat audioFormat = this.outputAudioFormat;
        AudioProcessor.AudioFormat audioFormat2 = AudioProcessor.AudioFormat.NOT_SET;
        if (Objects.equals(audioFormat, audioFormat2)) {
            AudioProcessor.AudioFormat outputAudioFormat = this.audioGraph.getOutputAudioFormat();
            if (Objects.equals(outputAudioFormat, audioFormat2)) {
                return false;
            }
            this.finalAudioSink.configure(Util.getPcmFormat(outputAudioFormat), 0, null);
            this.outputAudioFormat = outputAudioFormat;
        }
        if (this.audioGraph.isEnded()) {
            if (this.finalAudioSink.isEnded()) {
                return false;
            }
            this.finalAudioSink.playToEndOfStream();
            return false;
        }
        ByteBuffer output = this.audioGraph.getOutput();
        if (!output.hasRemaining()) {
            return false;
        }
        int iRemaining = output.remaining();
        boolean zHandleBuffer = this.finalAudioSink.handleBuffer(output, getBufferPresentationTimeUs(), 1);
        this.outputFramesWritten += (long) ((iRemaining - output.remaining()) / this.outputAudioFormat.bytesPerFrame);
        return zHandleBuffer;
    }

    public void release() {
        this.audioGraph.reset();
        this.finalAudioSink.reset();
        this.finalAudioSink.release();
        this.audioGraphInputsCreated = 0;
        this.inputAudioSinksCreated = 0;
    }

    public void startSeek(long j) {
        if (j == C.TIME_UNSET) {
            j = 0;
        }
        this.finalAudioSink.pause();
        this.audioGraph.blockInput();
        this.audioGraph.setPendingStartTimeUs(j);
        this.audioGraph.flush();
        this.finalAudioSink.flush();
        this.outputFramesWritten = 0L;
        this.seekPositionUs = j;
    }
}
