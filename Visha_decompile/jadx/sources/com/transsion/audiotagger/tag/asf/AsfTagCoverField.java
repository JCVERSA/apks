package com.transsion.audiotagger.tag.asf;

import com.transsion.audiotagger.audio.asf.data.AsfHeader;
import com.transsion.audiotagger.audio.asf.data.MetadataDescriptor;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.id3.valuepair.ImageFormats;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.logging.Logger;
import org.apache.commons.lang3.CharEncoding;

public class AsfTagCoverField extends AbstractAsfTagImageField {
    public static final Logger LOGGER = Logger.getLogger("com.transsion.audiotagger.audio.asf.tag");
    private String description;
    private int endOfName;
    private int imageDataSize;
    private String mimeType;
    private int pictureType;

    public AsfTagCoverField(byte[] bArr, int i, String str, String str2) {
        super(new MetadataDescriptor(AsfFieldKey.COVER_ART.getFieldName(), 1));
        this.endOfName = 0;
        getDescriptor().setBinaryValue(createRawContent(bArr, i, str, str2));
    }

    private byte[] createRawContent(byte[] bArr, int i, String str, String str2) {
        this.description = str;
        this.imageDataSize = bArr.length;
        this.pictureType = i;
        this.mimeType = str2;
        if (str2 == null && (str2 = ImageFormats.getMimeTypeForBinarySignature(bArr)) == null) {
            LOGGER.warning(ErrorMessage.GENERAL_UNIDENITIFED_IMAGE_FORMAT.getMsg());
            str2 = "image/png";
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(i);
        byteArrayOutputStream.write(Utils.getSizeLEInt32(bArr.length), 0, 4);
        try {
            Charset charset = AsfHeader.ASF_CHARSET;
            byte[] bytes = str2.getBytes(charset.name());
            byteArrayOutputStream.write(bytes, 0, bytes.length);
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write(0);
            if (str != null && str.length() > 0) {
                try {
                    byte[] bytes2 = str.getBytes(charset.name());
                    byteArrayOutputStream.write(bytes2, 0, bytes2.length);
                } catch (UnsupportedEncodingException unused) {
                    throw new RuntimeException("Unable to find encoding:" + AsfHeader.ASF_CHARSET.name());
                }
            }
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write(bArr, 0, bArr.length);
            return byteArrayOutputStream.toByteArray();
        } catch (UnsupportedEncodingException unused2) {
            throw new RuntimeException("Unable to find encoding:" + AsfHeader.ASF_CHARSET.name());
        }
    }

    private void processRawContent() throws UnsupportedEncodingException {
        int i = 0;
        this.pictureType = getRawContent()[0];
        this.imageDataSize = Utils.getIntLE(getRawContent(), 1, 2);
        this.mimeType = null;
        this.description = null;
        for (int i2 = 5; i2 < getRawContent().length - 1; i2 += 2) {
            if (getRawContent()[i2] == 0 && getRawContent()[i2 + 1] == 0) {
                if (this.mimeType == null) {
                    this.mimeType = new String(getRawContent(), 5, i2 - 5, CharEncoding.UTF_16LE);
                    i = i2 + 2;
                } else if (this.description == null) {
                    this.description = new String(getRawContent(), i, i2 - i, CharEncoding.UTF_16LE);
                    this.endOfName = i2 + 2;
                    return;
                }
            }
        }
    }

    public String getDescription() {
        return this.description;
    }

    @Override
    public int getImageDataSize() {
        return this.imageDataSize;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public int getPictureType() {
        return this.pictureType;
    }

    @Override
    public byte[] getRawImageData() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(getRawContent(), this.endOfName, this.toWrap.getRawDataSize() - this.endOfName);
        return byteArrayOutputStream.toByteArray();
    }

    public AsfTagCoverField(MetadataDescriptor metadataDescriptor) {
        super(metadataDescriptor);
        this.endOfName = 0;
        if (metadataDescriptor.getName().equals(AsfFieldKey.COVER_ART.getFieldName())) {
            if (metadataDescriptor.getType() == 1) {
                try {
                    processRawContent();
                    return;
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException(e);
                }
            }
            throw new IllegalArgumentException("Descriptor type must be binary");
        }
        throw new IllegalArgumentException("Descriptor description must be WM/Picture");
    }
}
