package com.mbridge.msdk.playercommon.exoplayer2.text;

import com.mbridge.msdk.playercommon.exoplayer2.decoder.SimpleDecoder;
import java.nio.ByteBuffer;

public abstract class SimpleSubtitleDecoder extends SimpleDecoder<SubtitleInputBuffer, SubtitleOutputBuffer, SubtitleDecoderException> implements SubtitleDecoder {
    private final String name;

    protected SimpleSubtitleDecoder(String str) {
        super(new SubtitleInputBuffer[2], new SubtitleOutputBuffer[2]);
        this.name = str;
        setInitialInputBufferSize(1024);
    }

    protected abstract Subtitle decode(byte[] bArr, int i10, boolean z10) throws SubtitleDecoderException;

    @Override
    public final String getName() {
        return this.name;
    }

    @Override
    public void setPositionUs(long j10) {
    }

    @Override
    public final SubtitleInputBuffer createInputBuffer() {
        return new SubtitleInputBuffer();
    }

    @Override
    public final SubtitleOutputBuffer createOutputBuffer() {
        return new SimpleSubtitleOutputBuffer(this);
    }

    @Override
    public final SubtitleDecoderException createUnexpectedDecodeException(Throwable th2) {
        return new SubtitleDecoderException("Unexpected decode error", th2);
    }

    @Override
    public final SubtitleDecoderException decode(SubtitleInputBuffer subtitleInputBuffer, SubtitleOutputBuffer subtitleOutputBuffer, boolean z10) {
        try {
            ByteBuffer byteBuffer = subtitleInputBuffer.data;
            subtitleOutputBuffer.setContent(subtitleInputBuffer.timeUs, decode(byteBuffer.array(), byteBuffer.limit(), z10), subtitleInputBuffer.subsampleOffsetUs);
            subtitleOutputBuffer.clearFlag(Integer.MIN_VALUE);
            return null;
        } catch (SubtitleDecoderException e10) {
            return e10;
        }
    }

    @Override
    public final void releaseOutputBuffer(SubtitleOutputBuffer subtitleOutputBuffer) {
        super.releaseOutputBuffer(subtitleOutputBuffer);
    }
}
