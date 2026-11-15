package com.transsion.audiotagger.audio.generic;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.FieldDataInvalidException;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.KeyNotFoundException;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.TagTextField;
import com.transsion.audiotagger.tag.images.Artwork;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;

public abstract class GenericTag extends AbstractTag {
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    protected static EnumSet<FieldKey> supportedKeys = EnumSet.of(FieldKey.ALBUM, FieldKey.ARTIST, FieldKey.TITLE, FieldKey.TRACK, FieldKey.GENRE, FieldKey.COMMENT, FieldKey.YEAR);

    public class GenericTagTextField implements TagTextField {
        private String content;
        private final String id;

        public GenericTagTextField(String str, String str2) {
            this.id = str;
            this.content = str2;
        }

        @Override
        public void copyContent(TagField tagField) {
            if (tagField instanceof TagTextField) {
                this.content = ((TagTextField) tagField).getContent();
            }
        }

        @Override
        public String getContent() {
            return this.content;
        }

        @Override
        public Charset getEncoding() {
            return StandardCharsets.ISO_8859_1;
        }

        @Override
        public String getId() {
            return this.id;
        }

        @Override
        public byte[] getRawContent() {
            String str = this.content;
            return str == null ? GenericTag.EMPTY_BYTE_ARRAY : str.getBytes(getEncoding());
        }

        @Override
        public void isBinary(boolean z) {
        }

        @Override
        public boolean isCommon() {
            return true;
        }

        @Override
        public boolean isEmpty() {
            return "".equals(this.content);
        }

        @Override
        public void setContent(String str) {
            this.content = str;
        }

        @Override
        public void setEncoding(Charset charset) {
        }

        @Override
        public String toString() {
            return getContent();
        }

        @Override
        public boolean isBinary() {
            return false;
        }
    }

    public static EnumSet<FieldKey> getSupportedKeys() {
        return supportedKeys;
    }

    @Override
    public TagField createField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        if (!supportedKeys.contains(fieldKey)) {
            throw new UnsupportedOperationException(ErrorMessage.OPERATION_NOT_SUPPORTED_FOR_FIELD.getMsg(fieldKey));
        }
        if (strArr == null || strArr[0] == null) {
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        return new GenericTagTextField(fieldKey.name(), strArr[0]);
    }

    @Override
    public void deleteField(FieldKey fieldKey) throws KeyNotFoundException {
        if (!supportedKeys.contains(fieldKey)) {
            throw new UnsupportedOperationException(ErrorMessage.OPERATION_NOT_SUPPORTED_FOR_FIELD.getMsg(fieldKey));
        }
        deleteField(fieldKey.name());
    }

    @Override
    public List<String> getAll(FieldKey fieldKey) throws KeyNotFoundException {
        return super.getAll(fieldKey.name());
    }

    @Override
    public List<Artwork> getArtworkList() {
        return Collections.emptyList();
    }

    @Override
    public List<TagField> getFields(FieldKey fieldKey) throws KeyNotFoundException {
        List<TagField> list = this.fields.get(fieldKey.name());
        return list == null ? new ArrayList() : list;
    }

    @Override
    public String getFirst(FieldKey fieldKey) throws KeyNotFoundException {
        return getValue(fieldKey, 0);
    }

    @Override
    public TagField getFirstField(FieldKey fieldKey) throws KeyNotFoundException {
        if (supportedKeys.contains(fieldKey)) {
            return getFirstField(fieldKey.name());
        }
        throw new UnsupportedOperationException(ErrorMessage.OPERATION_NOT_SUPPORTED_FOR_FIELD.getMsg(fieldKey));
    }

    @Override
    public String getValue(FieldKey fieldKey, int i) throws KeyNotFoundException {
        if (supportedKeys.contains(fieldKey)) {
            return getItem(fieldKey.name(), i);
        }
        throw new UnsupportedOperationException(ErrorMessage.OPERATION_NOT_SUPPORTED_FOR_FIELD.getMsg(fieldKey));
    }

    @Override
    public boolean isAllowedEncoding(Charset charset) {
        return true;
    }

    @Override
    public TagField createField(Artwork artwork) throws FieldDataInvalidException {
        throw new UnsupportedOperationException(ErrorMessage.GENERIC_NOT_SUPPORTED.getMsg());
    }
}
