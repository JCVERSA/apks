package com.transsion.audiotagger.audio.wav;

import com.transsion.audiotagger.audio.generic.AudioFileWriter2;
import com.transsion.audiotagger.tag.Tag;
import java.io.File;

public class WavFileWriter extends AudioFileWriter2 {
    @Override
    public void deleteTag(Tag tag, File file) throws Throwable {
        new WavTagWriter(file.getPath()).delete(tag, file);
    }

    @Override
    public void writeTag(Tag tag, File file) throws Throwable {
        new WavTagWriter(file.getPath()).write(tag, file);
    }
}
