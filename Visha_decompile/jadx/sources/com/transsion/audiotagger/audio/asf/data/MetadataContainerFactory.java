package com.transsion.audiotagger.audio.asf.data;

import java.math.BigInteger;

public final class MetadataContainerFactory {
    static final boolean $assertionsDisabled = false;
    private static final MetadataContainerFactory INSTANCE = new MetadataContainerFactory();

    private MetadataContainerFactory() {
    }

    public static MetadataContainerFactory getInstance() {
        return INSTANCE;
    }

    public MetadataContainer createContainer(ContainerType containerType) {
        return createContainer(containerType, 0L, BigInteger.ZERO);
    }

    public MetadataContainer[] createContainers(ContainerType[] containerTypeArr) {
        int length = containerTypeArr.length;
        MetadataContainer[] metadataContainerArr = new MetadataContainer[length];
        for (int i = 0; i < length; i++) {
            metadataContainerArr[i] = createContainer(containerTypeArr[i]);
        }
        return metadataContainerArr;
    }

    public MetadataContainer createContainer(ContainerType containerType, long j, BigInteger bigInteger) {
        if (containerType == ContainerType.CONTENT_DESCRIPTION) {
            return new ContentDescription(j, bigInteger);
        }
        return containerType == ContainerType.CONTENT_BRANDING ? new ContentBranding(j, bigInteger) : new MetadataContainer(containerType, j, bigInteger);
    }
}
