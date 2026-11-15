package com.transsion.audiotagger.tag.asf;

import com.transsion.audiotagger.audio.asf.data.ContainerType;
import com.transsion.audiotagger.audio.asf.data.MetadataDescriptor;

public class AsfTagBannerField extends AbstractAsfTagImageField {
    static final boolean $assertionsDisabled = false;

    public AsfTagBannerField() {
        super(AsfFieldKey.BANNER_IMAGE);
    }

    @Override
    public int getImageDataSize() {
        return this.toWrap.getRawDataSize();
    }

    @Override
    public byte[] getRawImageData() {
        return getRawContent();
    }

    public AsfTagBannerField(MetadataDescriptor metadataDescriptor) {
        super(metadataDescriptor);
    }

    public AsfTagBannerField(byte[] bArr) {
        super(new MetadataDescriptor(ContainerType.CONTENT_BRANDING, AsfFieldKey.BANNER_IMAGE.getFieldName(), 1));
        this.toWrap.setBinaryValue(bArr);
    }
}
