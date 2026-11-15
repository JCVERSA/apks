package com.transsion.audiotagger.audio.generic;

import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.exceptions.InvalidAudioFrameException;
import com.transsion.audiotagger.audio.exceptions.NoReadPermissionsException;
import com.transsion.audiotagger.audio.exceptions.ReadOnlyFileException;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagException;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class AudioFileReader {
    protected static final int MINIMUM_SIZE_FOR_VALID_AUDIO_FILE = 100;
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.generic");

    public abstract GenericAudioHeader getEncodingInfo(RandomAccessFile randomAccessFile) throws CannotReadException, IOException;

    public abstract Tag getTag(RandomAccessFile randomAccessFile) throws CannotReadException, IOException;

    public AudioFile read(File file) throws InvalidAudioFrameException, CannotReadException, IOException, TagException, ReadOnlyFileException {
        if (logger.isLoggable(Level.CONFIG)) {
            logger.config(ErrorMessage.GENERAL_READ.getMsg(file.getAbsolutePath()));
        }
        if (!file.canRead()) {
            throw new NoReadPermissionsException(ErrorMessage.GENERAL_READ_FAILED_DO_NOT_HAVE_PERMISSION_TO_READ_FILE.getMsg(file.getPath()));
        }
        if (file.length() <= 100) {
            throw new CannotReadException(ErrorMessage.GENERAL_READ_FAILED_FILE_TOO_SMALL.getMsg(file.getAbsolutePath()));
        }
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
                try {
                    randomAccessFile2.seek(0L);
                    GenericAudioHeader encodingInfo = getEncodingInfo(randomAccessFile2);
                    randomAccessFile2.seek(0L);
                    AudioFile audioFile = new AudioFile(file, encodingInfo, getTag(randomAccessFile2));
                    try {
                        randomAccessFile2.close();
                    } catch (Exception unused) {
                        logger.log(Level.WARNING, ErrorMessage.GENERAL_READ_FAILED_UNABLE_TO_CLOSE_RANDOM_ACCESS_FILE.getMsg(file.getAbsolutePath()));
                    }
                    return audioFile;
                } catch (CannotReadException e) {
                    throw e;
                } catch (Exception e2) {
                    e = e2;
                    logger.log(Level.SEVERE, ErrorMessage.GENERAL_READ.getMsg(file.getAbsolutePath()), (Throwable) e);
                    throw new CannotReadException(file.getAbsolutePath() + StringUtils.PROCESS_POSTFIX_DELIMITER + e.getMessage(), e);
                } catch (Throwable th) {
                    th = th;
                    randomAccessFile = randomAccessFile2;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (Exception unused2) {
                            logger.log(Level.WARNING, ErrorMessage.GENERAL_READ_FAILED_UNABLE_TO_CLOSE_RANDOM_ACCESS_FILE.getMsg(file.getAbsolutePath()));
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (CannotReadException e3) {
            throw e3;
        } catch (Exception e4) {
            e = e4;
        }
    }
}
