package com.transsion.audiotagger.audio.mp4;

import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.exceptions.CannotWriteException;
import com.transsion.audiotagger.audio.generic.AudioFileWriter;
import com.transsion.audiotagger.tag.Tag;
import java.io.IOException;
import java.io.RandomAccessFile;

public class Mp4FileWriter extends AudioFileWriter {
    private Mp4TagWriter tw = new Mp4TagWriter();

    @Override
    public void deleteTag(Tag tag, RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) throws IOException {
        this.tw.delete(randomAccessFile, randomAccessFile2);
    }

    @Override
    public void writeTag(AudioFile audioFile, Tag tag, RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) throws CannotWriteException, IOException {
        this.tw.write(tag, randomAccessFile, randomAccessFile2);
    }
}
