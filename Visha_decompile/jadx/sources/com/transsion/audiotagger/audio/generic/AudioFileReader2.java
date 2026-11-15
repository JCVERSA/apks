package com.transsion.audiotagger.audio.generic;

import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.exceptions.InvalidAudioFrameException;
import com.transsion.audiotagger.audio.exceptions.NoReadPermissionsException;
import com.transsion.audiotagger.audio.exceptions.ReadOnlyFileException;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagException;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.logging.Level;

public abstract class AudioFileReader2 extends AudioFileReader {
    public abstract GenericAudioHeader getEncodingInfo(File file) throws CannotReadException, IOException;

    @Override
    public GenericAudioHeader getEncodingInfo(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        throw new UnsupportedOperationException("Old method not used in version 2");
    }

    public abstract Tag getTag(File file) throws CannotReadException, IOException;

    @Override
    public Tag getTag(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        throw new UnsupportedOperationException("Old method not used in version 2");
    }

    @Override
    public AudioFile read(File file) throws InvalidAudioFrameException, CannotReadException, IOException, TagException, ReadOnlyFileException {
        if (AudioFileReader.logger.isLoggable(Level.CONFIG)) {
            AudioFileReader.logger.config(ErrorMessage.GENERAL_READ.getMsg(file.getPath()));
        }
        if (!file.canRead()) {
            throw new NoReadPermissionsException(ErrorMessage.GENERAL_READ_FAILED_DO_NOT_HAVE_PERMISSION_TO_READ_FILE.getMsg(file.getPath()));
        }
        if (file.length() > 100) {
            return new AudioFile(file, getEncodingInfo(file), getTag(file));
        }
        throw new CannotReadException(ErrorMessage.GENERAL_READ_FAILED_FILE_TOO_SMALL.getMsg(file.getPath()));
    }
}
