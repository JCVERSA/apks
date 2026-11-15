package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.AbstractString;
import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberHashMap;
import com.transsion.audiotagger.tag.datatype.StringFixedLength;
import com.transsion.audiotagger.tag.datatype.StringNullTerminated;
import com.transsion.audiotagger.tag.id3.valuepair.ImageFormats;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;

public class FrameBodyPIC extends AbstractID3v2FrameBody implements ID3v22FrameBody {
    public static final String IMAGE_IS_URL = "-->";

    public FrameBodyPIC() {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, (byte) 0);
    }

    public String getDescription() {
        return (String) getObjectValue(DataTypes.OBJ_DESCRIPTION);
    }

    public String getFormatType() {
        return (String) getObjectValue(DataTypes.OBJ_IMAGE_FORMAT);
    }

    @Override
    public String getIdentifier() {
        return "PIC";
    }

    public byte[] getImageData() {
        return (byte[]) getObjectValue(DataTypes.OBJ_PICTURE_DATA);
    }

    public String getImageUrl() {
        return isImageUrl() ? new String((byte[]) getObjectValue(DataTypes.OBJ_PICTURE_DATA), 0, ((byte[]) getObjectValue(DataTypes.OBJ_PICTURE_DATA)).length, StandardCharsets.ISO_8859_1) : "";
    }

    public String getMimeType() {
        return (String) getObjectValue(DataTypes.OBJ_MIME_TYPE);
    }

    public int getPictureType() {
        return ((Long) getObjectValue(DataTypes.OBJ_PICTURE_TYPE)).intValue();
    }

    public boolean isImageUrl() {
        return getFormatType() != null && getFormatType().equals("-->");
    }

    public void setDescription(String str) {
        setObjectValue(DataTypes.OBJ_DESCRIPTION, str);
    }

    public void setImageData(byte[] bArr) {
        setObjectValue(DataTypes.OBJ_PICTURE_DATA, bArr);
    }

    public void setPictureType(byte b) {
        setObjectValue(DataTypes.OBJ_PICTURE_TYPE, Byte.valueOf(b));
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new NumberHashMap(DataTypes.OBJ_TEXT_ENCODING, this, 1));
        this.objectList.add(new StringFixedLength(DataTypes.OBJ_IMAGE_FORMAT, this, 3));
        this.objectList.add(new NumberHashMap(DataTypes.OBJ_PICTURE_TYPE, this, 1));
        this.objectList.add(new StringNullTerminated(DataTypes.OBJ_DESCRIPTION, this));
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_PICTURE_DATA, this));
    }

    @Override
    public void write(ByteArrayOutputStream byteArrayOutputStream) {
        if (!((AbstractString) getObject(DataTypes.OBJ_DESCRIPTION)).canBeEncoded()) {
            setTextEncoding((byte) 1);
        }
        super.write(byteArrayOutputStream);
    }

    public FrameBodyPIC(FrameBodyPIC frameBodyPIC) {
        super(frameBodyPIC);
    }

    public FrameBodyPIC(byte b, String str, byte b2, String str2, byte[] bArr) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(b));
        setObjectValue(DataTypes.OBJ_IMAGE_FORMAT, str);
        setPictureType(b2);
        setDescription(str2);
        setImageData(bArr);
    }

    public FrameBodyPIC(FrameBodyAPIC frameBodyAPIC) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(frameBodyAPIC.getTextEncoding()));
        setObjectValue(DataTypes.OBJ_IMAGE_FORMAT, ImageFormats.getFormatForMimeType((String) frameBodyAPIC.getObjectValue(DataTypes.OBJ_MIME_TYPE)));
        setObjectValue(DataTypes.OBJ_PICTURE_DATA, frameBodyAPIC.getObjectValue(DataTypes.OBJ_PICTURE_DATA));
        setDescription(frameBodyAPIC.getDescription());
        setImageData(frameBodyAPIC.getImageData());
    }

    public FrameBodyPIC(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
