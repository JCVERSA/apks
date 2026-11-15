package com.transsion.audiotagger.audio.aiff;

import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.generic.AudioFileReader2;
import com.transsion.audiotagger.audio.generic.GenericAudioHeader;
import com.transsion.audiotagger.tag.Tag;
import java.io.File;
import java.io.IOException;

public class AiffFileReader extends AudioFileReader2 {
    private AiffInfoReader ir = new AiffInfoReader();
    private AiffTagReader im = new AiffTagReader();

    @Override
    public GenericAudioHeader getEncodingInfo(File file) throws CannotReadException, IOException {
        return this.ir.read(file);
    }

    @Override
    public Tag getTag(File file) throws CannotReadException, IOException {
        return this.im.read(file);
    }
}
