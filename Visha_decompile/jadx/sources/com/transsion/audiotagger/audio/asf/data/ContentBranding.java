package com.transsion.audiotagger.audio.asf.data;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.asf.util.Utils;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.Set;

public final class ContentBranding extends MetadataContainer {
    static final boolean $assertionsDisabled = false;
    public static final Set<String> ALLOWED;
    public static final String KEY_BANNER_IMAGE = "BANNER_IMAGE";
    public static final String KEY_BANNER_TYPE = "BANNER_IMAGE_TYPE";
    public static final String KEY_BANNER_URL = "BANNER_IMAGE_URL";
    public static final String KEY_COPYRIGHT_URL = "COPYRIGHT_URL";

    static {
        HashSet hashSet = new HashSet();
        ALLOWED = hashSet;
        hashSet.add(KEY_BANNER_IMAGE);
        hashSet.add(KEY_BANNER_TYPE);
        hashSet.add(KEY_BANNER_URL);
        hashSet.add(KEY_COPYRIGHT_URL);
    }

    public ContentBranding() {
        this(0L, BigInteger.ZERO);
    }

    public String getBannerImageURL() {
        return getValueFor(KEY_BANNER_URL);
    }

    public String getCopyRightURL() {
        return getValueFor(KEY_COPYRIGHT_URL);
    }

    @Override
    public long getCurrentAsfChunkSize() {
        return ((long) assertDescriptor(KEY_BANNER_IMAGE, 1).getRawDataSize()) + 40 + ((long) getBannerImageURL().length()) + ((long) getCopyRightURL().length());
    }

    public byte[] getImageData() {
        return assertDescriptor(KEY_BANNER_IMAGE, 1).getRawData();
    }

    public long getImageType() {
        if (!hasDescriptor(KEY_BANNER_TYPE)) {
            MetadataDescriptor metadataDescriptor = new MetadataDescriptor(ContainerType.CONTENT_BRANDING, KEY_BANNER_TYPE, 3);
            metadataDescriptor.setDWordValue(0L);
            addDescriptor(metadataDescriptor);
        }
        return assertDescriptor(KEY_BANNER_TYPE).getNumber();
    }

    @Override
    public boolean isAddSupported(MetadataDescriptor metadataDescriptor) {
        return ALLOWED.contains(metadataDescriptor.getName()) && super.isAddSupported(metadataDescriptor);
    }

    public void setBannerImageURL(String str) {
        if (Utils.isBlank(str)) {
            removeDescriptorsByName(KEY_BANNER_URL);
        } else {
            assertDescriptor(KEY_BANNER_URL).setStringValue(str);
        }
    }

    public void setCopyRightURL(String str) {
        if (Utils.isBlank(str)) {
            removeDescriptorsByName(KEY_COPYRIGHT_URL);
        } else {
            assertDescriptor(KEY_COPYRIGHT_URL).setStringValue(str);
        }
    }

    public void setImage(long j, byte[] bArr) {
        assertDescriptor(KEY_BANNER_TYPE, 3).setDWordValue(j);
        assertDescriptor(KEY_BANNER_IMAGE, 1).setBinaryValue(bArr);
    }

    @Override
    public long writeInto(OutputStream outputStream) throws IOException {
        long currentAsfChunkSize = getCurrentAsfChunkSize();
        outputStream.write(getGuid().getBytes());
        Utils.writeUINT64(currentAsfChunkSize, outputStream);
        Utils.writeUINT32(getImageType(), outputStream);
        byte[] imageData = getImageData();
        Utils.writeUINT32(imageData.length, outputStream);
        outputStream.write(imageData);
        Utils.writeUINT32(getBannerImageURL().length(), outputStream);
        String bannerImageURL = getBannerImageURL();
        Charset charset = StandardCharsets.US_ASCII;
        outputStream.write(bannerImageURL.getBytes(charset));
        Utils.writeUINT32(getCopyRightURL().length(), outputStream);
        outputStream.write(getCopyRightURL().getBytes(charset));
        return currentAsfChunkSize;
    }

    public ContentBranding(long j, BigInteger bigInteger) {
        super(ContainerType.CONTENT_BRANDING, j, bigInteger);
    }
}
