package com.transsion.audiotagger.audio.flac;

import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.generic.AudioFileReader2;
import com.transsion.audiotagger.audio.generic.GenericAudioHeader;
import com.transsion.audiotagger.tag.Tag;
import java.io.File;
import java.io.IOException;

public class FlacFileReader extends AudioFileReader2 {
    private FlacInfoReader ir = new FlacInfoReader();
    private FlacTagReader tr = new FlacTagReader();

    @Override
    public GenericAudioHeader getEncodingInfo(File file) throws CannotReadException, IOException {
        return this.ir.read(file);
    }

    @Override
    public Tag getTag(File file) throws CannotReadException, IOException {
        return this.tr.read(file);
    }
}
