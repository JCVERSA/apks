package com.transsion.audiotagger.audio.mp3;

import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.exceptions.CannotWriteException;
import com.transsion.audiotagger.audio.generic.AudioFileWriter;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.id3.AbstractID3v2Tag;
import com.transsion.audiotagger.tag.id3.ID3v1Tag;
import java.io.IOException;
import java.io.RandomAccessFile;

public class MP3FileWriter extends AudioFileWriter {
    @Override
    public synchronized void delete(AudioFile audioFile) throws CannotReadException, CannotWriteException {
        ((MP3File) audioFile).setID3v1Tag((ID3v1Tag) null);
        ((MP3File) audioFile).setID3v2Tag((AbstractID3v2Tag) null);
        audioFile.commit();
    }

    public void deleteTag(AudioFile audioFile) throws CannotWriteException {
        audioFile.commit();
    }

    public void writeFile(AudioFile audioFile) throws CannotWriteException {
        audioFile.commit();
    }

    @Override
    public void writeTag(AudioFile audioFile, Tag tag, RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) throws CannotWriteException, IOException {
        throw new RuntimeException("MP3FileReaderwriteTag should not be called");
    }

    @Override
    public void deleteTag(Tag tag, RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) throws CannotWriteException, IOException {
        throw new RuntimeException("MP3FileReader.getEncodingInfo should be called");
    }
}
