package com.transsion.audiotagger.audio.generic;

import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.exceptions.CannotWriteException;
import com.transsion.audiotagger.tag.Tag;
import java.io.IOException;
import java.io.RandomAccessFile;

public interface TagWriter {
    void delete(Tag tag, RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) throws CannotWriteException, IOException;

    void write(AudioFile audioFile, Tag tag, RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) throws CannotWriteException, IOException;
}
