package com.transsion.audiotagger.tag.vorbiscomment;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.generic.AbstractTagCreator;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagField;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Iterator;

public class VorbisCommentCreator extends AbstractTagCreator {
    @Override
    public ByteBuffer convert(Tag tag, int i) throws UnsupportedEncodingException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            String vendor = ((VorbisCommentTag) tag).getVendor();
            Charset charset = StandardCharsets.UTF_8;
            byteArrayOutputStream.write(Utils.getSizeLEInt32(vendor.getBytes(charset).length));
            byteArrayOutputStream.write(vendor.getBytes(charset));
            byteArrayOutputStream.write(Utils.getSizeLEInt32(tag.getFieldCount() - 1));
            Iterator<TagField> fields = tag.getFields();
            while (fields.hasNext()) {
                TagField next = fields.next();
                if (!next.getId().equals(VorbisCommentFieldKey.VENDOR.getFieldName())) {
                    byteArrayOutputStream.write(next.getRawContent());
                }
            }
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
            byteBufferWrap.rewind();
            return byteBufferWrap;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
