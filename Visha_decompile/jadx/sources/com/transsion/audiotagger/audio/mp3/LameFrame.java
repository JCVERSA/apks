package com.transsion.audiotagger.audio.mp3;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.generic.Utils;
import java.nio.ByteBuffer;

public class LameFrame {
    public static final int ENCODER_SIZE = 9;
    public static final int LAME_HEADER_BUFFER_SIZE = 36;
    public static final String LAME_ID = "LAME";
    public static final int LAME_ID_SIZE = 4;
    private String encoder;

    private LameFrame(ByteBuffer byteBuffer) {
        this.encoder = Utils.getString(byteBuffer, 0, 9, StandardCharsets.ISO_8859_1);
    }

    public static LameFrame parseLameFrame(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        String string = Utils.getString(byteBufferSlice, 0, 4, StandardCharsets.ISO_8859_1);
        byteBufferSlice.rewind();
        if (string.equals(LAME_ID)) {
            return new LameFrame(byteBufferSlice);
        }
        return null;
    }

    public String getEncoder() {
        return this.encoder;
    }
}
