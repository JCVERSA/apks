package com.transsion.audiotagger.tag.asf;

import com.transsion.audiotagger.audio.asf.data.MetadataDescriptor;
import com.transsion.audiotagger.tag.TagField;

public class AsfTagField implements TagField, Cloneable {
    static final boolean $assertionsDisabled = false;
    protected MetadataDescriptor toWrap;

    public AsfTagField(AsfFieldKey asfFieldKey) {
        this.toWrap = new MetadataDescriptor(asfFieldKey.getHighestContainer(), asfFieldKey.getFieldName(), 0);
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override
    public void copyContent(TagField tagField) {
        throw new UnsupportedOperationException("Not implemented yet.");
    }

    public MetadataDescriptor getDescriptor() {
        return this.toWrap;
    }

    @Override
    public String getId() {
        return this.toWrap.getName();
    }

    @Override
    public byte[] getRawContent() {
        return this.toWrap.getRawData();
    }

    @Override
    public boolean isBinary() {
        return this.toWrap.getType() == 1;
    }

    @Override
    public boolean isCommon() {
        return AsfTag.COMMON_FIELDS.contains(AsfFieldKey.getAsfFieldKey(getId()));
    }

    @Override
    public boolean isEmpty() {
        return this.toWrap.isEmpty();
    }

    @Override
    public String toString() {
        return this.toWrap.getString();
    }

    @Override
    public void isBinary(boolean z) {
        if (!z && isBinary()) {
            throw new UnsupportedOperationException("No conversion supported.");
        }
        MetadataDescriptor metadataDescriptor = this.toWrap;
        metadataDescriptor.setBinaryValue(metadataDescriptor.getRawData());
    }

    public AsfTagField(MetadataDescriptor metadataDescriptor) {
        this.toWrap = metadataDescriptor.createCopy();
    }

    public AsfTagField(String str) {
        this.toWrap = new MetadataDescriptor(AsfFieldKey.getAsfFieldKey(str).getHighestContainer(), str, 0);
    }
}
