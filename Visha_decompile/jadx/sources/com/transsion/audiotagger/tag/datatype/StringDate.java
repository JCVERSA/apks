package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import com.transsion.audiotagger.tag.id3.ID3Tags;

public class StringDate extends StringFixedLength {
    public StringDate(String str, AbstractTagFrameBody abstractTagFrameBody) {
        super(str, abstractTagFrameBody, 8);
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof StringDate) && super.equals(obj);
    }

    @Override
    public Object getValue() {
        Object obj = this.value;
        if (obj != null) {
            return ID3Tags.stripChar(obj.toString(), '-');
        }
        return null;
    }

    @Override
    public void setValue(Object obj) {
        if (obj != null) {
            this.value = ID3Tags.stripChar(obj.toString(), '-');
        }
    }

    public StringDate(StringDate stringDate) {
        super(stringDate);
    }
}
