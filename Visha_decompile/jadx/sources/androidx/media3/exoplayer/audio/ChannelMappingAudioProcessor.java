package androidx.media3.exoplayer.audio;

import androidx.annotation.Nullable;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import java.nio.ByteBuffer;
import java.util.Arrays;

final class ChannelMappingAudioProcessor extends androidx.media3.common.audio.BaseAudioProcessor {

    @Nullable
    private int[] outputChannels;

    @Nullable
    private int[] pendingOutputChannels;

    @Override
    public AudioProcessor.AudioFormat onConfigure(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        int[] iArr = this.pendingOutputChannels;
        if (iArr == null) {
            return AudioProcessor.AudioFormat.NOT_SET;
        }
        int i = audioFormat.encoding;
        if (i != 2 && i != 4) {
            throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        boolean z = audioFormat.channelCount != iArr.length;
        int i2 = 0;
        while (i2 < iArr.length) {
            int i3 = iArr[i2];
            if (i3 >= audioFormat.channelCount) {
                throw new AudioProcessor.UnhandledAudioFormatException("Channel map (" + Arrays.toString(iArr) + ") trying to access non-existent input channel.", audioFormat);
            }
            z |= i3 != i2;
            i2++;
        }
        return z ? new AudioProcessor.AudioFormat(audioFormat.sampleRate, iArr.length, audioFormat.encoding) : AudioProcessor.AudioFormat.NOT_SET;
    }

    @Override
    public void onFlush() {
        this.outputChannels = this.pendingOutputChannels;
    }

    @Override
    public void onReset() {
        this.outputChannels = null;
        this.pendingOutputChannels = null;
    }

    @Override
    public void queueInput(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) Assertions.checkNotNull(this.outputChannels);
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferReplaceOutputBuffer = replaceOutputBuffer(((iLimit - iPosition) / this.inputAudioFormat.bytesPerFrame) * this.outputAudioFormat.bytesPerFrame);
        while (iPosition < iLimit) {
            for (int i : iArr) {
                int byteDepth = (Util.getByteDepth(this.inputAudioFormat.encoding) * i) + iPosition;
                int i2 = this.inputAudioFormat.encoding;
                if (i2 == 2) {
                    byteBufferReplaceOutputBuffer.putShort(byteBuffer.getShort(byteDepth));
                } else {
                    if (i2 != 4) {
                        throw new IllegalStateException("Unexpected encoding: " + this.inputAudioFormat.encoding);
                    }
                    byteBufferReplaceOutputBuffer.putFloat(byteBuffer.getFloat(byteDepth));
                }
            }
            iPosition += this.inputAudioFormat.bytesPerFrame;
        }
        byteBuffer.position(iLimit);
        byteBufferReplaceOutputBuffer.flip();
    }

    public void setChannelMap(@Nullable int[] iArr) {
        this.pendingOutputChannels = iArr;
    }
}
