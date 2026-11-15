package com.transsion.audiotagger.tag.mp4.field;

import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.mp4.atom.Mp4BoxHeader;
import com.transsion.audiotagger.tag.FieldDataInvalidException;
import com.transsion.audiotagger.tag.mp4.Mp4FieldKey;
import com.transsion.audiotagger.tag.mp4.atom.Mp4DataBox;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public class Mp4TagByteField extends Mp4TagTextField {
    public static String FALSE_VALUE = "0";
    public static String TRUE_VALUE = "1";
    private byte[] bytedata;
    private int realDataLength;

    public Mp4TagByteField(Mp4FieldKey mp4FieldKey, String str) throws FieldDataInvalidException {
        this(mp4FieldKey, str, 1);
    }

    @Override
    public void build(ByteBuffer byteBuffer) throws UnsupportedEncodingException {
        Mp4BoxHeader mp4BoxHeader = new Mp4BoxHeader(byteBuffer);
        Mp4DataBox mp4DataBox = new Mp4DataBox(mp4BoxHeader, byteBuffer);
        int dataLength = mp4BoxHeader.getDataLength();
        this.dataSize = dataLength;
        this.realDataLength = dataLength - 8;
        this.bytedata = mp4DataBox.getByteData();
        this.content = mp4DataBox.getContent();
    }

    @Override
    public byte[] getDataBytes() throws UnsupportedEncodingException {
        byte[] bArr = this.bytedata;
        if (bArr != null) {
            return bArr;
        }
        int i = this.realDataLength;
        if (i == 1) {
            return new byte[]{new Short(this.content).byteValue()};
        }
        if (i == 2) {
            return Utils.getSizeBEInt16(new Short(this.content).shortValue());
        }
        if (i == 4) {
            return Utils.getSizeBEInt32(new Integer(this.content).intValue());
        }
        throw new RuntimeException(this.id + StringUtils.PROCESS_POSTFIX_DELIMITER + this.realDataLength + ":Dont know how to write byte fields of this length");
    }

    @Override
    public Mp4FieldType getFieldType() {
        return Mp4FieldType.INTEGER;
    }

    public Mp4TagByteField(Mp4FieldKey mp4FieldKey, String str, int i) throws FieldDataInvalidException {
        super(mp4FieldKey.getFieldName(), str);
        this.realDataLength = i;
        try {
            Long.parseLong(str);
        } catch (NumberFormatException unused) {
            throw new FieldDataInvalidException("Value of:" + str + " is invalid for field:" + mp4FieldKey);
        }
    }

    public Mp4TagByteField(String str, ByteBuffer byteBuffer) throws UnsupportedEncodingException {
        super(str, byteBuffer);
    }
}
