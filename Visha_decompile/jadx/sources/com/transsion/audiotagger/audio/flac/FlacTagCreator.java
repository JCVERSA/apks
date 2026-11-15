package com.transsion.audiotagger.audio.flac;

import com.transsion.audiotagger.audio.flac.metadatablock.BlockType;
import com.transsion.audiotagger.audio.flac.metadatablock.MetadataBlockDataPadding;
import com.transsion.audiotagger.audio.flac.metadatablock.MetadataBlockDataPicture;
import com.transsion.audiotagger.audio.flac.metadatablock.MetadataBlockHeader;
import com.transsion.audiotagger.audio.generic.AbstractTagCreator;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.flac.FlacTag;
import com.transsion.audiotagger.tag.vorbiscomment.VorbisCommentCreator;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.logging.Logger;

public class FlacTagCreator extends AbstractTagCreator {
    public static final int DEFAULT_PADDING = 4000;
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.flac");
    private static final VorbisCommentCreator creator = new VorbisCommentCreator();

    @Override
    public ByteBuffer convert(Tag tag, int i) throws UnsupportedEncodingException {
        ByteBuffer byteBufferConvert;
        int iLimit;
        logger.config("Convert flac tag:padding:" + i);
        FlacTag flacTag = (FlacTag) tag;
        if (flacTag.getVorbisCommentTag() != null) {
            byteBufferConvert = creator.convert(flacTag.getVorbisCommentTag());
            iLimit = byteBufferConvert.capacity() + 4;
        } else {
            byteBufferConvert = null;
            iLimit = 0;
        }
        Iterator<MetadataBlockDataPicture> it = flacTag.getImages().iterator();
        while (it.hasNext()) {
            iLimit += it.next().getBytes().limit() + 4;
        }
        logger.config("Convert flac tag:taglength:" + iLimit);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(iLimit + i);
        if (flacTag.getVorbisCommentTag() != null) {
            byteBufferAllocate.put(((i > 0 || flacTag.getImages().size() > 0) ? new MetadataBlockHeader(false, BlockType.VORBIS_COMMENT, byteBufferConvert.capacity()) : new MetadataBlockHeader(true, BlockType.VORBIS_COMMENT, byteBufferConvert.capacity())).getBytes());
            byteBufferAllocate.put(byteBufferConvert);
        }
        ListIterator<MetadataBlockDataPicture> listIterator = flacTag.getImages().listIterator();
        while (listIterator.hasNext()) {
            MetadataBlockDataPicture next = listIterator.next();
            byteBufferAllocate.put(((i > 0 || listIterator.hasNext()) ? new MetadataBlockHeader(false, BlockType.PICTURE, next.getLength()) : new MetadataBlockHeader(true, BlockType.PICTURE, next.getLength())).getBytes());
            byteBufferAllocate.put(next.getBytes());
        }
        logger.config("Convert flac tag at" + byteBufferAllocate.position());
        if (i > 0) {
            int i2 = i - 4;
            MetadataBlockHeader metadataBlockHeader = new MetadataBlockHeader(true, BlockType.PADDING, i2);
            MetadataBlockDataPadding metadataBlockDataPadding = new MetadataBlockDataPadding(i2);
            byteBufferAllocate.put(metadataBlockHeader.getBytes());
            byteBufferAllocate.put(metadataBlockDataPadding.getBytes());
        }
        byteBufferAllocate.rewind();
        return byteBufferAllocate;
    }
}
