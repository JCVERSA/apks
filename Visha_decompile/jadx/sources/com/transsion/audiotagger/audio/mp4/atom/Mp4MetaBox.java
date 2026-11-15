package com.transsion.audiotagger.audio.mp4.atom;

import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.mp4.Mp4AtomIdentifier;
import com.transsion.audiotagger.logging.ErrorMessage;
import java.nio.ByteBuffer;

public class Mp4MetaBox extends AbstractMp4Box {
    public static final int FLAGS_LENGTH = 4;

    public Mp4MetaBox(Mp4BoxHeader mp4BoxHeader, ByteBuffer byteBuffer) {
        this.header = mp4BoxHeader;
        this.dataBuffer = byteBuffer;
    }

    public static Mp4MetaBox createiTunesStyleMetaBox(int i) {
        Mp4BoxHeader mp4BoxHeader = new Mp4BoxHeader(Mp4AtomIdentifier.META.getFieldName());
        mp4BoxHeader.setLength(i + 12);
        return new Mp4MetaBox(mp4BoxHeader, ByteBuffer.allocate(4));
    }

    public void processData() throws CannotReadException {
        byte[] bArr = new byte[4];
        this.dataBuffer.get(bArr);
        if (bArr[0] != 0) {
            throw new CannotReadException(ErrorMessage.MP4_FILE_META_ATOM_CHILD_DATA_NOT_NULL.getMsg());
        }
    }
}
