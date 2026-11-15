package com.transsion.audiotagger.tag.asf;

import com.transsion.audiotagger.audio.asf.data.MetadataDescriptor;

abstract class AbstractAsfTagImageField extends AsfTagField {
    public AbstractAsfTagImageField(AsfFieldKey asfFieldKey) {
        super(asfFieldKey);
    }

    public abstract int getImageDataSize();

    public abstract byte[] getRawImageData();

    public AbstractAsfTagImageField(MetadataDescriptor metadataDescriptor) {
        super(metadataDescriptor);
    }

    public AbstractAsfTagImageField(String str) {
        super(str);
    }
}
