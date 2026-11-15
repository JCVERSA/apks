package com.transsion.audiotagger.tag.mp4.field;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.mp4.atom.Mp4BoxHeader;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.TagTextField;
import com.transsion.audiotagger.tag.mp4.Mp4FieldKey;
import com.transsion.audiotagger.tag.mp4.Mp4TagField;
import com.transsion.audiotagger.tag.mp4.atom.Mp4DataBox;
import com.transsion.audiotagger.tag.mp4.atom.Mp4MeanBox;
import com.transsion.audiotagger.tag.mp4.atom.Mp4NameBox;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

public class Mp4TagReverseDnsField extends Mp4TagField implements TagTextField {
    public static final String IDENTIFIER = "----";
    protected String content;
    protected int dataSize;
    private String descriptor;
    private String issuer;

    public Mp4TagReverseDnsField(Mp4BoxHeader mp4BoxHeader, ByteBuffer byteBuffer) throws UnsupportedEncodingException {
        super(mp4BoxHeader, byteBuffer);
    }

    @Override
    public void build(ByteBuffer byteBuffer) throws UnsupportedEncodingException {
        Mp4BoxHeader mp4BoxHeader = new Mp4BoxHeader(byteBuffer);
        setIssuer(new Mp4MeanBox(mp4BoxHeader, byteBuffer).getIssuer());
        byteBuffer.position(byteBuffer.position() + mp4BoxHeader.getDataLength());
        Mp4BoxHeader mp4BoxHeader2 = new Mp4BoxHeader(byteBuffer);
        setDescriptor(new Mp4NameBox(mp4BoxHeader2, byteBuffer).getName());
        byteBuffer.position(byteBuffer.position() + mp4BoxHeader2.getDataLength());
        if (this.parentHeader.getDataLength() == mp4BoxHeader.getLength() + mp4BoxHeader2.getLength()) {
            this.id = "----:" + this.issuer + StringUtils.PROCESS_POSTFIX_DELIMITER + this.descriptor;
            setContent("");
            Mp4TagField.logger.warning(ErrorMessage.MP4_REVERSE_DNS_FIELD_HAS_NO_DATA.getMsg(this.id));
            return;
        }
        Mp4BoxHeader mp4BoxHeader3 = new Mp4BoxHeader(byteBuffer);
        setContent(new Mp4DataBox(mp4BoxHeader3, byteBuffer).getContent());
        byteBuffer.position(byteBuffer.position() + mp4BoxHeader3.getDataLength());
        this.id = "----:" + this.issuer + StringUtils.PROCESS_POSTFIX_DELIMITER + this.descriptor;
    }

    @Override
    public void copyContent(TagField tagField) {
        if (tagField instanceof Mp4TagReverseDnsField) {
            Mp4TagReverseDnsField mp4TagReverseDnsField = (Mp4TagReverseDnsField) tagField;
            this.issuer = mp4TagReverseDnsField.getIssuer();
            this.descriptor = mp4TagReverseDnsField.getDescriptor();
            this.content = mp4TagReverseDnsField.getContent();
        }
    }

    @Override
    public String getContent() {
        return this.content;
    }

    @Override
    public byte[] getDataBytes() throws UnsupportedEncodingException {
        return this.content.getBytes(getEncoding());
    }

    public String getDescriptor() {
        return this.descriptor;
    }

    @Override
    public Charset getEncoding() {
        return StandardCharsets.UTF_8;
    }

    @Override
    public Mp4FieldType getFieldType() {
        return Mp4FieldType.TEXT;
    }

    public String getIssuer() {
        return this.issuer;
    }

    @Override
    public byte[] getRawContent() throws UnsupportedEncodingException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bytes = this.issuer.getBytes(getEncoding());
            byteArrayOutputStream.write(Utils.getSizeBEInt32(bytes.length + 12));
            Charset charset = StandardCharsets.ISO_8859_1;
            byteArrayOutputStream.write(Mp4MeanBox.IDENTIFIER.getBytes(charset));
            byteArrayOutputStream.write(new byte[]{0, 0, 0, 0});
            byteArrayOutputStream.write(bytes);
            byte[] bytes2 = this.descriptor.getBytes(getEncoding());
            byteArrayOutputStream.write(Utils.getSizeBEInt32(bytes2.length + 12));
            byteArrayOutputStream.write("name".getBytes(charset));
            byteArrayOutputStream.write(new byte[]{0, 0, 0, 0});
            byteArrayOutputStream.write(bytes2);
            if (this.content.length() > 0) {
                byteArrayOutputStream.write(getRawContentDataOnly());
            }
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            byteArrayOutputStream2.write(Utils.getSizeBEInt32(byteArrayOutputStream.size() + 8));
            byteArrayOutputStream2.write("----".getBytes(charset));
            byteArrayOutputStream2.write(byteArrayOutputStream.toByteArray());
            return byteArrayOutputStream2.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public byte[] getRawContentDataOnly() throws UnsupportedEncodingException {
        Mp4TagField.logger.fine("Getting Raw data for:" + getId());
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bytes = this.content.getBytes(getEncoding());
            byteArrayOutputStream.write(Utils.getSizeBEInt32(bytes.length + 16));
            byteArrayOutputStream.write("data".getBytes(StandardCharsets.ISO_8859_1));
            byteArrayOutputStream.write(new byte[]{0});
            byteArrayOutputStream.write(new byte[]{0, 0, (byte) getFieldType().getFileClassId()});
            byteArrayOutputStream.write(new byte[]{0, 0, 0, 0});
            byteArrayOutputStream.write(bytes);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean isBinary() {
        return false;
    }

    @Override
    public boolean isEmpty() {
        return "".equals(this.content.trim());
    }

    @Override
    public void setContent(String str) {
        this.content = str;
    }

    public void setDescriptor(String str) {
        this.descriptor = str;
    }

    @Override
    public void setEncoding(Charset charset) {
    }

    public void setIssuer(String str) {
        this.issuer = str;
    }

    @Override
    public String toString() {
        return this.content;
    }

    public Mp4TagReverseDnsField(Mp4FieldKey mp4FieldKey, String str) {
        super(mp4FieldKey.getFieldName());
        this.issuer = mp4FieldKey.getIssuer();
        this.descriptor = mp4FieldKey.getIdentifier();
        this.content = str;
    }

    public Mp4TagReverseDnsField(String str, String str2, String str3, String str4) {
        super(str);
        this.issuer = str2;
        this.descriptor = str3;
        this.content = str4;
    }
}
