package com.transsion.audiotagger.tag.mp4;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.generic.AbstractTagCreator;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.mp4.Mp4AtomIdentifier;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.KeyNotFoundException;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.mp4.field.Mp4TagCoverField;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Iterator;

public class Mp4TagCreator extends AbstractTagCreator {
    @Override
    public ByteBuffer convert(Tag tag, int i) throws UnsupportedEncodingException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Iterator<TagField> fields = tag.getFields();
            boolean z = false;
            while (fields.hasNext()) {
                TagField next = fields.next();
                if (!(next instanceof Mp4TagCoverField)) {
                    byteArrayOutputStream.write(next.getRawContent());
                } else if (!z) {
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    try {
                        Iterator<TagField> it = tag.getFields(FieldKey.COVER_ART).iterator();
                        while (it.hasNext()) {
                            byteArrayOutputStream2.write(((Mp4TagField) it.next()).getRawContentDataOnly());
                        }
                        byte[] byteArray = byteArrayOutputStream2.toByteArray();
                        byteArrayOutputStream.write(Utils.getSizeBEInt32(byteArray.length + 8));
                        byteArrayOutputStream.write(Mp4FieldKey.ARTWORK.getFieldName().getBytes(StandardCharsets.ISO_8859_1));
                        byteArrayOutputStream.write(byteArray);
                        z = true;
                    } catch (KeyNotFoundException unused) {
                        throw new RuntimeException("Unable to find COVERART Key");
                    }
                }
            }
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            byteArrayOutputStream3.write(Utils.getSizeBEInt32(byteArrayOutputStream.size() + 8));
            byteArrayOutputStream3.write(Mp4AtomIdentifier.ILST.getFieldName().getBytes(StandardCharsets.ISO_8859_1));
            byteArrayOutputStream3.write(byteArrayOutputStream.toByteArray());
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(byteArrayOutputStream3.toByteArray());
            byteBufferWrap.rewind();
            return byteBufferWrap;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
