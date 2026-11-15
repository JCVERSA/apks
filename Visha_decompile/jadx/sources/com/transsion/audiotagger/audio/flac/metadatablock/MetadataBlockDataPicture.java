package com.transsion.audiotagger.audio.flac.metadatablock;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.InvalidFrameException;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.reference.PictureTypes;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.logging.Logger;

public class MetadataBlockDataPicture implements MetadataBlockData, TagField {
    public static final String IMAGE_IS_URL = "-->";
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.flac.MetadataBlockDataPicture");
    private int colourDepth;
    private String description;
    private int height;
    private byte[] imageData;
    private int indexedColouredCount;
    private int lengthOfPictureInBytes;
    private String mimeType;
    private int pictureType;
    private int width;

    public MetadataBlockDataPicture(ByteBuffer byteBuffer) throws InvalidFrameException, IOException {
        this.mimeType = "";
        initFromByteBuffer(byteBuffer);
    }

    private String getString(ByteBuffer byteBuffer, int i, String str) throws IOException {
        byte[] bArr = new byte[i];
        byteBuffer.get(bArr);
        return new String(bArr, str);
    }

    private void initFromByteBuffer(ByteBuffer byteBuffer) throws InvalidFrameException, IOException {
        int i = byteBuffer.getInt();
        this.pictureType = i;
        if (i >= PictureTypes.getInstanceOf().getSize()) {
            StringBuilder sb = new StringBuilder();
            sb.append("PictureType was:");
            sb.append(this.pictureType);
            sb.append("but the maximum allowed is ");
            sb.append(PictureTypes.getInstanceOf().getSize() - 1);
            throw new InvalidFrameException(sb.toString());
        }
        this.mimeType = getString(byteBuffer, byteBuffer.getInt(), StandardCharsets.ISO_8859_1.name());
        this.description = getString(byteBuffer, byteBuffer.getInt(), StandardCharsets.UTF_8.name());
        this.width = byteBuffer.getInt();
        this.height = byteBuffer.getInt();
        this.colourDepth = byteBuffer.getInt();
        this.indexedColouredCount = byteBuffer.getInt();
        int i2 = byteBuffer.getInt();
        this.lengthOfPictureInBytes = i2;
        byte[] bArr = new byte[i2];
        this.imageData = bArr;
        byteBuffer.get(bArr);
        logger.config("Read image:" + toString());
    }

    @Override
    public void copyContent(TagField tagField) {
        throw new UnsupportedOperationException();
    }

    @Override
    public ByteBuffer getBytes() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(Utils.getSizeBEInt32(this.pictureType));
            byteArrayOutputStream.write(Utils.getSizeBEInt32(this.mimeType.length()));
            byteArrayOutputStream.write(this.mimeType.getBytes(StandardCharsets.ISO_8859_1));
            byteArrayOutputStream.write(Utils.getSizeBEInt32(this.description.length()));
            byteArrayOutputStream.write(this.description.getBytes(StandardCharsets.UTF_8));
            byteArrayOutputStream.write(Utils.getSizeBEInt32(this.width));
            byteArrayOutputStream.write(Utils.getSizeBEInt32(this.height));
            byteArrayOutputStream.write(Utils.getSizeBEInt32(this.colourDepth));
            byteArrayOutputStream.write(Utils.getSizeBEInt32(this.indexedColouredCount));
            byteArrayOutputStream.write(Utils.getSizeBEInt32(this.imageData.length));
            byteArrayOutputStream.write(this.imageData);
            return ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public int getColourDepth() {
        return this.colourDepth;
    }

    public String getDescription() {
        return this.description;
    }

    public int getHeight() {
        return this.height;
    }

    @Override
    public String getId() {
        return FieldKey.COVER_ART.name();
    }

    public byte[] getImageData() {
        return this.imageData;
    }

    public String getImageUrl() {
        return isImageUrl() ? new String(getImageData(), 0, getImageData().length, StandardCharsets.ISO_8859_1) : "";
    }

    public int getIndexedColourCount() {
        return this.indexedColouredCount;
    }

    @Override
    public int getLength() {
        return getBytes().limit();
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public int getPictureType() {
        return this.pictureType;
    }

    @Override
    public byte[] getRawContent() throws UnsupportedEncodingException {
        return getBytes().array();
    }

    public int getWidth() {
        return this.width;
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
        return false;
    }

    public boolean isImageUrl() {
        return getMimeType().equals("-->");
    }

    @Override
    public String toString() {
        return PictureTypes.getInstanceOf().getValueForId(this.pictureType) + StringUtils.PROCESS_POSTFIX_DELIMITER + this.mimeType + StringUtils.PROCESS_POSTFIX_DELIMITER + this.description + ":width:" + this.width + ":height:" + this.height + ":colourdepth:" + this.colourDepth + ":indexedColourCount:" + this.indexedColouredCount + ":image size in bytes:" + this.lengthOfPictureInBytes + "/" + this.imageData.length;
    }

    @Override
    public boolean isBinary() {
        return true;
    }

    public MetadataBlockDataPicture(MetadataBlockHeader metadataBlockHeader, FileChannel fileChannel) throws InvalidFrameException, IOException {
        this.mimeType = "";
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(metadataBlockHeader.getDataLength());
        int i = fileChannel.read(byteBufferAllocate);
        if (i >= metadataBlockHeader.getDataLength()) {
            byteBufferAllocate.rewind();
            initFromByteBuffer(byteBufferAllocate);
            return;
        }
        throw new IOException("Unable to read required number of databytes read:" + i + ":required:" + metadataBlockHeader.getDataLength());
    }

    public MetadataBlockDataPicture(byte[] bArr, int i, String str, String str2, int i2, int i3, int i4, int i5) {
        this.mimeType = "";
        this.pictureType = i;
        if (str != null) {
            this.mimeType = str;
        }
        this.description = str2;
        this.width = i2;
        this.height = i3;
        this.colourDepth = i4;
        this.indexedColouredCount = i5;
        this.imageData = bArr;
    }
}
