package com.transsion.audiotagger.tag.lyrics3;

import com.transsion.audiotagger.tag.id3.AbstractTag;
import com.transsion.audiotagger.tag.id3.ID3v1Tag;
import java.io.IOException;
import java.io.RandomAccessFile;

public abstract class AbstractLyrics3 extends AbstractTag {
    public AbstractLyrics3() {
    }

    @Override
    public void delete(RandomAccessFile randomAccessFile) throws IOException {
        new ID3v1Tag();
    }

    public AbstractLyrics3(AbstractLyrics3 abstractLyrics3) {
        super(abstractLyrics3);
    }
}
