package com.transsion.audiotagger.audio.mp3;

import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.exceptions.InvalidAudioFrameException;
import com.transsion.audiotagger.audio.exceptions.ReadOnlyFileException;
import com.transsion.audiotagger.audio.generic.AudioFileReader;
import com.transsion.audiotagger.audio.generic.GenericAudioHeader;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagException;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

public class MP3FileReader extends AudioFileReader {
    @Override
    public GenericAudioHeader getEncodingInfo(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        throw new RuntimeException("MP3FileReader.getEncodingInfo should be called");
    }

    @Override
    public Tag getTag(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        throw new RuntimeException("MP3FileReader.getEncodingInfo should be called");
    }

    @Override
    public AudioFile read(File file) throws InvalidAudioFrameException, CannotReadException, IOException, TagException, ReadOnlyFileException {
        return new MP3File(file, 6, true);
    }

    public AudioFile readMustBeWritable(File file) throws InvalidAudioFrameException, CannotReadException, IOException, TagException, ReadOnlyFileException {
        return new MP3File(file, 6, false);
    }
}
