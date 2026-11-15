package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;

public class StringDateTime extends StringSizeTerminated {
    public StringDateTime(String str, AbstractTagFrameBody abstractTagFrameBody) {
        super(str, abstractTagFrameBody);
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof StringDateTime) && super.equals(obj);
    }

    @Override
    public Object getValue() {
        Object obj = this.value;
        if (obj != null) {
            return obj.toString().replace(' ', 'T');
        }
        return null;
    }

    @Override
    public void setValue(Object obj) {
        if (obj != null) {
            this.value = obj.toString().replace(' ', 'T');
        }
    }

    public StringDateTime(StringDateTime stringDateTime) {
        super(stringDateTime);
    }
}
