package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.datatype.AbstractString;
import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberHashMap;
import com.transsion.audiotagger.tag.datatype.StringNullTerminated;
import com.transsion.audiotagger.tag.datatype.TextEncodedStringNullTerminated;
import com.transsion.audiotagger.tag.id3.valuepair.ImageFormats;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;

public class FrameBodyAPIC extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    public static final String IMAGE_IS_URL = "-->";

    public FrameBodyAPIC() {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, (byte) 0);
    }

    public String getDescription() {
        return (String) getObjectValue(DataTypes.OBJ_DESCRIPTION);
    }

    @Override
    public String getIdentifier() {
        return "APIC";
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

    @Override
    public String getUserFriendlyValue() {
        if (getImageData() == null) {
            return getMimeType() + StringUtils.PROCESS_POSTFIX_DELIMITER + getDescription() + ":0";
        }
        return getMimeType() + StringUtils.PROCESS_POSTFIX_DELIMITER + getDescription() + StringUtils.PROCESS_POSTFIX_DELIMITER + getImageData().length;
    }

    public boolean isImageUrl() {
        return getMimeType() != null && getMimeType().equals("-->");
    }

    public void setDescription(String str) {
        setObjectValue(DataTypes.OBJ_DESCRIPTION, str);
    }

    public void setImageData(byte[] bArr) {
        setObjectValue(DataTypes.OBJ_PICTURE_DATA, bArr);
    }

    public void setMimeType(String str) {
        setObjectValue(DataTypes.OBJ_MIME_TYPE, str);
    }

    public void setPictureType(byte b) {
        setObjectValue(DataTypes.OBJ_PICTURE_TYPE, Byte.valueOf(b));
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new NumberHashMap(DataTypes.OBJ_TEXT_ENCODING, this, 1));
        this.objectList.add(new StringNullTerminated(DataTypes.OBJ_MIME_TYPE, this));
        this.objectList.add(new NumberHashMap(DataTypes.OBJ_PICTURE_TYPE, this, 1));
        this.objectList.add(new TextEncodedStringNullTerminated(DataTypes.OBJ_DESCRIPTION, this));
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_PICTURE_DATA, this));
    }

    @Override
    public void write(ByteArrayOutputStream byteArrayOutputStream) {
        if (TagOptionSingleton.getInstance().isAPICDescriptionITunesCompatible()) {
            setTextEncoding((byte) 0);
            if (!((AbstractString) getObject(DataTypes.OBJ_DESCRIPTION)).canBeEncoded()) {
                setDescription("");
            }
        } else if (!((AbstractString) getObject(DataTypes.OBJ_DESCRIPTION)).canBeEncoded()) {
            setTextEncoding((byte) 1);
        }
        super.write(byteArrayOutputStream);
    }

    public FrameBodyAPIC(FrameBodyAPIC frameBodyAPIC) {
        super(frameBodyAPIC);
    }

    public FrameBodyAPIC(FrameBodyPIC frameBodyPIC) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(frameBodyPIC.getTextEncoding()));
        setObjectValue(DataTypes.OBJ_MIME_TYPE, ImageFormats.getMimeTypeForFormat((String) frameBodyPIC.getObjectValue(DataTypes.OBJ_IMAGE_FORMAT)));
        setObjectValue(DataTypes.OBJ_PICTURE_TYPE, frameBodyPIC.getObjectValue(DataTypes.OBJ_PICTURE_TYPE));
        setObjectValue(DataTypes.OBJ_DESCRIPTION, frameBodyPIC.getDescription());
        setObjectValue(DataTypes.OBJ_PICTURE_DATA, frameBodyPIC.getObjectValue(DataTypes.OBJ_PICTURE_DATA));
    }

    public FrameBodyAPIC(byte b, String str, byte b2, String str2, byte[] bArr) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(b));
        setMimeType(str);
        setPictureType(b2);
        setDescription(str2);
        setImageData(bArr);
    }

    public FrameBodyAPIC(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
