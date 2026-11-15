package com.transsion.audiotagger.tag.asf;

import com.transsion.audiotagger.audio.asf.data.AsfHeader;
import com.transsion.audiotagger.audio.asf.data.MetadataDescriptor;
import com.transsion.audiotagger.audio.asf.util.Utils;
import com.transsion.audiotagger.tag.TagTextField;
import java.nio.charset.Charset;

public class AsfTagTextField extends AsfTagField implements TagTextField {
    public AsfTagTextField(AsfFieldKey asfFieldKey, String str) {
        super(asfFieldKey);
        this.toWrap.setString(str);
    }

    @Override
    public String getContent() {
        return getDescriptor().getString();
    }

    @Override
    public Charset getEncoding() {
        return AsfHeader.ASF_CHARSET;
    }

    @Override
    public boolean isEmpty() {
        return Utils.isBlank(getContent());
    }

    @Override
    public void setContent(String str) {
        getDescriptor().setString(str);
    }

    @Override
    public void setEncoding(Charset charset) {
        if (!AsfHeader.ASF_CHARSET.equals(charset)) {
            throw new IllegalArgumentException("Only UTF-16LE is possible with ASF.");
        }
    }

    public AsfTagTextField(MetadataDescriptor metadataDescriptor) {
        super(metadataDescriptor);
        if (metadataDescriptor.getType() == 1) {
            throw new IllegalArgumentException("Cannot interpret binary as string.");
        }
    }

    public AsfTagTextField(String str, String str2) {
        super(str);
        this.toWrap.setString(str2);
    }
}
