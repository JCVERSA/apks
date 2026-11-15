package com.transsion.audiotagger.audio.generic;

import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.exceptions.CannotWriteException;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

public abstract class AudioFileWriter2 extends AudioFileWriter {
    @Override
    public void delete(AudioFile audioFile) throws CannotWriteException, CannotReadException {
        File file = audioFile.getFile();
        if (TagOptionSingleton.getInstance().isCheckIsWritable() && !file.canWrite()) {
            throw new CannotWriteException(ErrorMessage.GENERAL_DELETE_FAILED.getMsg(file));
        }
        if (audioFile.getFile().length() <= 100) {
            throw new CannotWriteException(ErrorMessage.GENERAL_DELETE_FAILED_BECAUSE_FILE_IS_TOO_SMALL.getMsg(file));
        }
        deleteTag(audioFile.getTag(), file);
    }

    public abstract void deleteTag(Tag tag, File file) throws CannotReadException, CannotWriteException;

    @Override
    public void deleteTag(Tag tag, RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) throws CannotReadException, CannotWriteException, IOException {
        throw new UnsupportedOperationException("Old method not used in version 2");
    }

    @Override
    public void write(AudioFile audioFile) throws CannotWriteException {
        File file = audioFile.getFile();
        if (TagOptionSingleton.getInstance().isCheckIsWritable() && !file.canWrite()) {
            AudioFileWriter.logger.severe(ErrorMessage.GENERAL_WRITE_FAILED.getMsg(audioFile.getFile().getPath()));
            throw new CannotWriteException(ErrorMessage.GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING.getMsg(file));
        }
        if (audioFile.getFile().length() <= 100) {
            throw new CannotWriteException(ErrorMessage.GENERAL_WRITE_FAILED_BECAUSE_FILE_IS_TOO_SMALL.getMsg(file));
        }
        writeTag(audioFile.getTag(), file);
    }

    @Override
    public void writeTag(AudioFile audioFile, Tag tag, RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) throws CannotReadException, CannotWriteException, IOException {
        throw new UnsupportedOperationException("Old method not used in version 2");
    }

    public abstract void writeTag(Tag tag, File file) throws CannotWriteException;
}
