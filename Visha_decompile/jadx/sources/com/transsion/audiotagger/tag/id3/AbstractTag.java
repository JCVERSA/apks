package com.transsion.audiotagger.tag.id3;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.util.Iterator;

public abstract class AbstractTag extends AbstractTagItem {
    protected static final String TYPE_TAG = "tag";

    public AbstractTag() {
    }

    public abstract void delete(RandomAccessFile randomAccessFile) throws IOException;

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof AbstractTag) && super.equals(obj);
    }

    public abstract Iterator iterator();

    public abstract boolean seek(ByteBuffer byteBuffer);

    public abstract void write(RandomAccessFile randomAccessFile) throws IOException;

    public AbstractTag(AbstractTag abstractTag) {
        super(abstractTag);
    }
}
