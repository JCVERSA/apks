package com.transsion.audiotagger.audio.ogg;

import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.exceptions.CannotWriteException;
import com.transsion.audiotagger.audio.generic.AudioFileWriter;
import com.transsion.audiotagger.tag.Tag;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.logging.Logger;

public class OggFileWriter extends AudioFileWriter {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.ogg");
    private OggVorbisTagWriter vtw = new OggVorbisTagWriter();

    @Override
    public void deleteTag(Tag tag, RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) throws CannotReadException, CannotWriteException, IOException {
        this.vtw.delete(randomAccessFile, randomAccessFile2);
    }

    @Override
    public void writeTag(AudioFile audioFile, Tag tag, RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) throws CannotReadException, CannotWriteException, IOException {
        this.vtw.write(tag, randomAccessFile, randomAccessFile2);
    }
}
