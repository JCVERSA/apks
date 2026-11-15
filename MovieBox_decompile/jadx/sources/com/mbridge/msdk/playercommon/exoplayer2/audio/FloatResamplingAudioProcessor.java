package com.mbridge.msdk.playercommon.exoplayer2.audio;

import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

final class FloatResamplingAudioProcessor implements AudioProcessor {
    private static final int FLOAT_NAN_AS_INT = Float.floatToIntBits(Float.NaN);
    private static final double PCM_32_BIT_INT_TO_PCM_32_BIT_FLOAT_FACTOR = 4.656612875245797E-10d;
    private ByteBuffer buffer;
    private boolean inputEnded;
    private ByteBuffer outputBuffer;
    private int sampleRateHz = -1;
    private int channelCount = -1;
    private int sourceEncoding = 0;

    public FloatResamplingAudioProcessor() {
        ByteBuffer byteBuffer = AudioProcessor.EMPTY_BUFFER;
        this.buffer = byteBuffer;
        this.outputBuffer = byteBuffer;
    }

    private static void writePcm32BitFloat(int i10, ByteBuffer byteBuffer) {
        int iFloatToIntBits = Float.floatToIntBits((float) (((double) i10) * PCM_32_BIT_INT_TO_PCM_32_BIT_FLOAT_FACTOR));
        if (iFloatToIntBits == FLOAT_NAN_AS_INT) {
            iFloatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(iFloatToIntBits);
    }

    @Override
    public boolean configure(int i10, int i11, int i12) throws AudioProcessor.UnhandledFormatException {
        if (!Util.isEncodingHighResolutionIntegerPcm(i12)) {
            throw new AudioProcessor.UnhandledFormatException(i10, i11, i12);
        }
        if (this.sampleRateHz == i10 && this.channelCount == i11 && this.sourceEncoding == i12) {
            return false;
        }
        this.sampleRateHz = i10;
        this.channelCount = i11;
        this.sourceEncoding = i12;
        return true;
    }

    @Override
    public void flush() {
        this.outputBuffer = AudioProcessor.EMPTY_BUFFER;
        this.inputEnded = false;
    }

    @Override
    public ByteBuffer getOutput() {
        ByteBuffer byteBuffer = this.outputBuffer;
        this.outputBuffer = AudioProcessor.EMPTY_BUFFER;
        return byteBuffer;
    }

    @Override
    public int getOutputChannelCount() {
        return this.channelCount;
    }

    @Override
    public int getOutputEncoding() {
        return 4;
    }

    @Override
    public int getOutputSampleRateHz() {
        return this.sampleRateHz;
    }

    @Override
    public boolean isActive() {
        return Util.isEncodingHighResolutionIntegerPcm(this.sourceEncoding);
    }

    @Override
    public boolean isEnded() {
        return this.inputEnded && this.outputBuffer == AudioProcessor.EMPTY_BUFFER;
    }

    @Override
    public void queueEndOfStream() {
        this.inputEnded = true;
    }

    @Override
    public void queueInput(ByteBuffer byteBuffer) {
        boolean z10 = this.sourceEncoding == 1073741824;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i10 = iLimit - iPosition;
        if (!z10) {
            i10 = (i10 / 3) * 4;
        }
        if (this.buffer.capacity() < i10) {
            this.buffer = ByteBuffer.allocateDirect(i10).order(ByteOrder.nativeOrder());
        } else {
            this.buffer.clear();
        }
        if (z10) {
            while (iPosition < iLimit) {
                writePcm32BitFloat((byteBuffer.get(iPosition) & 255) | ((byteBuffer.get(iPosition + 1) & 255) << 8) | ((byteBuffer.get(iPosition + 2) & 255) << 16) | ((byteBuffer.get(iPosition + 3) & 255) << 24), this.buffer);
                iPosition += 4;
            }
        } else {
            while (iPosition < iLimit) {
                writePcm32BitFloat(((byteBuffer.get(iPosition) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition + 2) & 255) << 24), this.buffer);
                iPosition += 3;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        this.buffer.flip();
        this.outputBuffer = this.buffer;
    }

    @Override
    public void reset() {
        flush();
        this.sampleRateHz = -1;
        this.channelCount = -1;
        this.sourceEncoding = 0;
        this.buffer = AudioProcessor.EMPTY_BUFFER;
    }
}
