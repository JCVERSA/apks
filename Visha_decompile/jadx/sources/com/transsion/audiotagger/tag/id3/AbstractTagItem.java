package com.transsion.audiotagger.tag.id3;

import com.transsion.audiotagger.tag.TagException;
import java.nio.ByteBuffer;
import java.util.logging.Logger;

public abstract class AbstractTagItem {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.tag.id3");

    public AbstractTagItem() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj instanceof AbstractTagItem;
    }

    public abstract String getIdentifier();

    public abstract int getSize();

    public boolean isSubsetOf(Object obj) {
        return obj instanceof AbstractTagItem;
    }

    public abstract void read(ByteBuffer byteBuffer) throws TagException;

    public AbstractTagItem(AbstractTagItem abstractTagItem) {
    }
}
