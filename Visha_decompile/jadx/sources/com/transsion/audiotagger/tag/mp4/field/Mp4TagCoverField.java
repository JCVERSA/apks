package com.transsion.audiotagger.tag.mp4.field;

import com.transsion.audiotagger.audio.mp4.atom.Mp4BoxHeader;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.id3.valuepair.ImageFormats;
import com.transsion.audiotagger.tag.mp4.Mp4FieldKey;
import com.transsion.audiotagger.tag.mp4.Mp4TagField;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public class Mp4TagCoverField extends Mp4TagBinaryField {
    private int dataAndHeaderSize;
    private Mp4FieldType imageType;

    public Mp4TagCoverField() {
        super(Mp4FieldKey.ARTWORK.getFieldName());
    }

    public static String getMimeTypeForImageType(Mp4FieldType mp4FieldType) {
        if (mp4FieldType == Mp4FieldType.COVERART_PNG) {
            return "image/png";
        }
        if (mp4FieldType == Mp4FieldType.COVERART_JPEG) {
            return "image/jpeg";
        }
        if (mp4FieldType == Mp4FieldType.COVERART_GIF) {
            return ImageFormats.MIME_TYPE_GIF;
        }
        if (mp4FieldType == Mp4FieldType.COVERART_BMP) {
            return "image/bmp";
        }
        return null;
    }

    @Override
    public void build(ByteBuffer byteBuffer) {
        Mp4BoxHeader mp4BoxHeader = new Mp4BoxHeader(byteBuffer);
        this.dataSize = mp4BoxHeader.getDataLength();
        this.dataAndHeaderSize = mp4BoxHeader.getLength();
        byteBuffer.position(byteBuffer.position() + 8);
        byte[] bArr = new byte[this.dataSize - 8];
        this.dataBytes = bArr;
        byteBuffer.get(bArr, 0, bArr.length);
        int iPosition = byteBuffer.position();
        if (byteBuffer.position() + 8 <= byteBuffer.limit()) {
            Mp4BoxHeader mp4BoxHeader2 = new Mp4BoxHeader(byteBuffer);
            if (!mp4BoxHeader2.getId().equals("name")) {
                byteBuffer.position(iPosition);
            } else {
                this.dataSize += mp4BoxHeader2.getDataLength();
                this.dataAndHeaderSize += mp4BoxHeader2.getLength();
            }
        }
    }

    public int getDataAndHeaderSize() {
        return this.dataAndHeaderSize;
    }

    @Override
    public Mp4FieldType getFieldType() {
        return this.imageType;
    }

    @Override
    public boolean isBinary() {
        return true;
    }

    @Override
    public String toString() {
        return this.imageType + StringUtils.PROCESS_POSTFIX_DELIMITER + this.dataBytes.length + "bytes";
    }

    public Mp4TagCoverField(ByteBuffer byteBuffer, Mp4FieldType mp4FieldType) throws UnsupportedEncodingException {
        super(Mp4FieldKey.ARTWORK.getFieldName(), byteBuffer);
        this.imageType = mp4FieldType;
        if (Mp4FieldType.isCoverArtType(mp4FieldType)) {
            return;
        }
        Mp4TagField.logger.warning(ErrorMessage.MP4_IMAGE_FORMAT_IS_NOT_TO_EXPECTED_TYPE.getMsg(mp4FieldType));
    }

    public Mp4TagCoverField(byte[] bArr) {
        super(Mp4FieldKey.ARTWORK.getFieldName(), bArr);
        if (ImageFormats.binaryDataIsPngFormat(bArr)) {
            this.imageType = Mp4FieldType.COVERART_PNG;
            return;
        }
        if (ImageFormats.binaryDataIsJpgFormat(bArr)) {
            this.imageType = Mp4FieldType.COVERART_JPEG;
            return;
        }
        if (ImageFormats.binaryDataIsGifFormat(bArr)) {
            this.imageType = Mp4FieldType.COVERART_GIF;
        } else if (ImageFormats.binaryDataIsBmpFormat(bArr)) {
            this.imageType = Mp4FieldType.COVERART_BMP;
        } else {
            Mp4TagField.logger.warning(ErrorMessage.GENERAL_UNIDENITIFED_IMAGE_FORMAT.getMsg());
            this.imageType = Mp4FieldType.COVERART_PNG;
        }
    }
}
