package com.transsion.audiotagger.audio.mp4.atom;

import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import java.nio.ByteBuffer;

public class Mp4DrmsBox extends AbstractMp4Box {
    public Mp4DrmsBox(Mp4BoxHeader mp4BoxHeader, ByteBuffer byteBuffer) {
        this.header = mp4BoxHeader;
        this.dataBuffer = byteBuffer;
    }

    public void processData() throws CannotReadException {
        while (this.dataBuffer.hasRemaining()) {
            if (this.dataBuffer.get() == 101) {
                ByteBuffer byteBufferSlice = this.dataBuffer.slice();
                if ((byteBufferSlice.get() == 115) & (byteBufferSlice.get() == 100) & (byteBufferSlice.get() == 115)) {
                    ByteBuffer byteBuffer = this.dataBuffer;
                    byteBuffer.position(byteBuffer.position() - 5);
                    return;
                }
            }
        }
    }
}
