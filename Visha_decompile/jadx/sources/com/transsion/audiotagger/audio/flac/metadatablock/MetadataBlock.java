package com.transsion.audiotagger.audio.flac.metadatablock;

public class MetadataBlock {
    private MetadataBlockData mbd;
    private MetadataBlockHeader mbh;

    public MetadataBlock(MetadataBlockHeader metadataBlockHeader, MetadataBlockData metadataBlockData) {
        this.mbh = metadataBlockHeader;
        this.mbd = metadataBlockData;
    }

    public MetadataBlockData getData() {
        return this.mbd;
    }

    public MetadataBlockHeader getHeader() {
        return this.mbh;
    }

    public int getLength() {
        return this.mbh.getDataLength() + 4;
    }
}
