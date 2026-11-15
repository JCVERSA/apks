package com.transsion.audiotagger.audio.ogg;

import com.transsion.audiotagger.audio.ogg.util.VorbisHeader;
import com.transsion.audiotagger.audio.ogg.util.VorbisPacketType;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.vorbiscomment.VorbisCommentCreator;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.logging.Logger;

public class OggVorbisCommentTagCreator {
    public static final int FIELD_FRAMING_BIT_LENGTH = 1;
    public static final byte FRAMING_BIT_VALID_VALUE = 1;
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.ogg");
    private VorbisCommentCreator creator = new VorbisCommentCreator();

    public ByteBuffer convert(Tag tag) throws UnsupportedEncodingException {
        ByteBuffer byteBufferConvert = this.creator.convert(tag);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBufferConvert.capacity() + 8);
        byteBufferAllocate.put((byte) VorbisPacketType.COMMENT_HEADER.getType());
        byteBufferAllocate.put(VorbisHeader.CAPTURE_PATTERN_AS_BYTES);
        byteBufferAllocate.put(byteBufferConvert);
        byteBufferAllocate.put((byte) 1);
        byteBufferAllocate.rewind();
        return byteBufferAllocate;
    }
}
