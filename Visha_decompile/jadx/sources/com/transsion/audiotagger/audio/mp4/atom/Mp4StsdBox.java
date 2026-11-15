package com.transsion.audiotagger.audio.mp4.atom;

import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import java.nio.ByteBuffer;

public class Mp4StsdBox extends AbstractMp4Box {
    public static final int NO_OF_DESCRIPTIONS_POS = 4;
    public static final int NO_OF_DESCRIPTIONS_POS_LENGTH = 4;
    public static final int OTHER_FLAG_LENGTH = 3;
    public static final int OTHER_FLAG_POS = 1;
    public static final int VERSION_FLAG_LENGTH = 1;
    public static final int VERSION_FLAG_POS = 0;

    public Mp4StsdBox(Mp4BoxHeader mp4BoxHeader, ByteBuffer byteBuffer) {
        this.header = mp4BoxHeader;
        this.dataBuffer = byteBuffer;
    }

    public void processData() throws CannotReadException {
        ByteBuffer byteBuffer = this.dataBuffer;
        byteBuffer.position(byteBuffer.position() + 8);
    }
}
