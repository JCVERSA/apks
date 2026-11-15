package com.transsion.audiotagger.audio.aiff;

import com.transsion.audiotagger.audio.generic.AudioFileWriter2;
import com.transsion.audiotagger.tag.Tag;
import java.io.File;

public class AiffFileWriter extends AudioFileWriter2 {
    private AiffTagWriter tw = new AiffTagWriter();

    @Override
    public void deleteTag(Tag tag, File file) throws Throwable {
        this.tw.delete(tag, file);
    }

    @Override
    public void writeTag(Tag tag, File file) throws Throwable {
        this.tw.write(tag, file);
    }
}
