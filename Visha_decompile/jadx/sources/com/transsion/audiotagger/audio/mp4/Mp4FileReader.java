package com.transsion.audiotagger.audio.mp4;

import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.generic.AudioFileReader;
import com.transsion.audiotagger.audio.generic.GenericAudioHeader;
import com.transsion.audiotagger.tag.Tag;
import java.io.IOException;
import java.io.RandomAccessFile;

public class Mp4FileReader extends AudioFileReader {
    private Mp4InfoReader ir = new Mp4InfoReader();
    private Mp4TagReader tr = new Mp4TagReader();

    @Override
    public GenericAudioHeader getEncodingInfo(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        return this.ir.read(randomAccessFile);
    }

    @Override
    public Tag getTag(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        return this.tr.read(randomAccessFile);
    }
}
