package com.transsion.audiotagger.audio.generic;

import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.exceptions.CannotWriteException;
import com.transsion.audiotagger.audio.exceptions.ModifyVetoException;
import com.transsion.audiotagger.audio.mp3.MP3File;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class AudioFileWriter {
    private static final String FILE_NAME_TOO_LONG = "File name too long";
    private static final String FILE_NAME_TOO_LONG2 = "The filename, directory name, or volume label syntax is incorrect";
    private static final int FILE_NAME_TOO_LONG_SAFE_LIMIT = 50;
    protected static final int MINIMUM_FILESIZE = 100;
    private static final String TEMP_FILENAME_SUFFIX = ".tmp";
    private static final String WRITE_MODE = "rw";
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.generic");
    private AudioFileModificationListener modificationListener = null;

    private void precheckWrite(AudioFile audioFile) throws CannotWriteException {
        try {
            if (audioFile.getTag().isEmpty()) {
                delete(audioFile);
                return;
            }
            File file = audioFile.getFile();
            if (TagOptionSingleton.getInstance().isCheckIsWritable() && !file.canWrite()) {
                logger.severe(ErrorMessage.GENERAL_WRITE_FAILED.getMsg(audioFile.getFile().getPath()));
                throw new CannotWriteException(ErrorMessage.GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING.getMsg(file.getPath()));
            }
            if (audioFile.getFile().length() > 100) {
                return;
            }
            Logger logger2 = logger;
            ErrorMessage errorMessage = ErrorMessage.GENERAL_WRITE_FAILED_BECAUSE_FILE_IS_TOO_SMALL;
            logger2.severe(errorMessage.getMsg(file.getPath()));
            throw new CannotWriteException(errorMessage.getMsg(file.getPath()));
        } catch (CannotReadException unused) {
            throw new CannotWriteException(ErrorMessage.GENERAL_WRITE_FAILED.getMsg(audioFile.getFile().getPath()));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void transferNewFileContentToOriginalFile(File file, File file2) throws Throwable {
        FileLock fileLockTryLock = null;
        try {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file2, WRITE_MODE);
                try {
                    FileChannel channel = randomAccessFile.getChannel();
                    try {
                        try {
                            fileLockTryLock = channel.tryLock();
                            if (fileLockTryLock != null) {
                                transferNewFileContentToOriginalFile(file, file2, randomAccessFile, channel);
                                fileLockTryLock.release();
                                AudioFileIO.closeQuietly(randomAccessFile);
                            } else {
                                Logger logger2 = logger;
                                ErrorMessage errorMessage = ErrorMessage.GENERAL_WRITE_FAILED_FILE_LOCKED;
                                logger2.warning(errorMessage.getMsg(file2.getPath()));
                                throw new CannotWriteException(errorMessage.getMsg(file2.getPath()));
                            }
                        } catch (Throwable th) {
                            if (0 != 0) {
                                fileLockTryLock.release();
                            }
                            throw th;
                        }
                    } catch (IOException e) {
                        Logger logger3 = logger;
                        ErrorMessage errorMessage2 = ErrorMessage.GENERAL_WRITE_FAILED_FILE_LOCKED;
                        logger3.warning(errorMessage2.getMsg(file2.getPath()));
                        if (!"Operation not supported".equals(e.getMessage())) {
                            throw new CannotWriteException(errorMessage2.getMsg(file2.getPath()), e);
                        }
                        transferNewFileContentToOriginalFile(file, file2, randomAccessFile, channel);
                        if (0 != 0) {
                        }
                        AudioFileIO.closeQuietly(randomAccessFile);
                    } catch (Exception e2) {
                        Logger logger4 = logger;
                        ErrorMessage errorMessage3 = ErrorMessage.GENERAL_WRITE_FAILED_FILE_LOCKED;
                        logger4.warning(errorMessage3.getMsg(file2.getPath()));
                        throw new CannotWriteException(errorMessage3.getMsg(file2.getPath()), e2);
                    }
                } catch (FileNotFoundException e3) {
                    e = e3;
                    Logger logger5 = logger;
                    ErrorMessage errorMessage4 = ErrorMessage.GENERAL_WRITE_FAILED_BECAUSE_FILE_NOT_FOUND;
                    logger5.warning(errorMessage4.getMsg(file2.getAbsolutePath()));
                    throw new CannotWriteException(errorMessage4.getMsg(file2.getPath()), e);
                } catch (Exception e4) {
                    e = e4;
                    Logger logger6 = logger;
                    ErrorMessage errorMessage5 = ErrorMessage.GENERAL_WRITE_FAILED;
                    logger6.warning(errorMessage5.getMsg(file2.getAbsolutePath()));
                    throw new CannotWriteException(errorMessage5.getMsg(file2.getPath()), e);
                } catch (Throwable th2) {
                    th = th2;
                    fileLockTryLock = randomAccessFile;
                    AudioFileIO.closeQuietly(fileLockTryLock);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (FileNotFoundException e5) {
            e = e5;
        } catch (Exception e6) {
            e = e6;
        }
    }

    private void transferNewFileToNewOriginalFile(File file, File file2) throws CannotWriteException {
        File file3 = new File(file2.getAbsoluteFile().getParentFile().getPath(), AudioFile.getBaseFilename(file2) + ".old");
        int i = 1;
        while (file3.exists()) {
            file3 = new File(file2.getAbsoluteFile().getParentFile().getPath(), AudioFile.getBaseFilename(file2) + ".old" + i);
            i++;
        }
        if (!Utils.rename(file2, file3)) {
            Logger logger2 = logger;
            Level level = Level.SEVERE;
            ErrorMessage errorMessage = ErrorMessage.GENERAL_WRITE_FAILED_TO_RENAME_ORIGINAL_FILE_TO_BACKUP;
            logger2.log(level, errorMessage.getMsg(file2.getAbsolutePath(), file3.getName()));
            if (file != null) {
                file.delete();
            }
            throw new CannotWriteException(errorMessage.getMsg(file2.getPath(), file3.getName()));
        }
        if (Utils.rename(file, file2)) {
            if (!file3.delete()) {
                logger.warning(ErrorMessage.GENERAL_WRITE_WARNING_UNABLE_TO_DELETE_BACKUP_FILE.getMsg(file3.getAbsolutePath()));
            }
            if (!file.exists() || file.delete()) {
                return;
            }
            logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE.getMsg(file.getPath()));
            return;
        }
        if (!file.exists()) {
            logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_NEW_FILE_DOESNT_EXIST.getMsg(file.getAbsolutePath()));
        }
        if (!file3.renameTo(file2)) {
            logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_TO_RENAME_ORIGINAL_BACKUP_TO_ORIGINAL.getMsg(file3.getAbsolutePath(), file2.getName()));
        }
        Logger logger3 = logger;
        ErrorMessage errorMessage2 = ErrorMessage.GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE;
        logger3.warning(errorMessage2.getMsg(file2.getAbsolutePath(), file.getName()));
        throw new CannotWriteException(errorMessage2.getMsg(file2.getAbsolutePath(), file.getName()));
    }

    private void transferNewFileToOriginalFile(File file, File file2, boolean z) throws Throwable {
        if (z) {
            transferNewFileContentToOriginalFile(file, file2);
        } else {
            transferNewFileToNewOriginalFile(file, file2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0233 A[Catch: Exception -> 0x01e5, TRY_ENTER, TryCatch #8 {Exception -> 0x01e5, blocks: (B:79:0x01b5, B:82:0x01bf, B:84:0x01c9, B:87:0x01e7, B:89:0x01f1, B:100:0x0233, B:102:0x0239), top: B:121:0x01b5 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x0239 A[Catch: Exception -> 0x01e5, TRY_LEAVE, TryCatch #8 {Exception -> 0x01e5, blocks: (B:79:0x01b5, B:82:0x01bf, B:84:0x01c9, B:87:0x01e7, B:89:0x01f1, B:100:0x0233, B:102:0x0239), top: B:121:0x01b5 }] */
    /* JADX WARN: Code duplicated, block: B:107:0x027d  */
    /* JADX WARN: Code duplicated, block: B:129:? A[SYNTHETIC] */
    public void delete(AudioFile audioFile) throws CannotReadException, CannotWriteException {
        File file;
        AudioFileModificationListener audioFileModificationListener;
        File file2 = audioFile.getFile();
        if (TagOptionSingleton.getInstance().isCheckIsWritable() && !file2.canWrite()) {
            throw new CannotWriteException(ErrorMessage.GENERAL_DELETE_FAILED.getMsg(file2.getPath()));
        }
        if (audioFile.getFile().length() <= 100) {
            throw new CannotWriteException(ErrorMessage.GENERAL_DELETE_FAILED_BECAUSE_FILE_IS_TOO_SMALL.getMsg(file2.getPath()));
        }
        boolean z = true;
        File file3 = null;
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(audioFile.getFile(), WRITE_MODE);
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(audioFile.getFile(), WRITE_MODE);
                try {
                    File fileCreateTempFile = File.createTempFile(audioFile.getFile().getName().replace('.', '_'), TEMP_FILENAME_SUFFIX, audioFile.getFile().getParentFile());
                    randomAccessFile.seek(0L);
                    randomAccessFile2.seek(0L);
                    try {
                        AudioFileModificationListener audioFileModificationListener2 = this.modificationListener;
                        if (audioFileModificationListener2 != null) {
                            audioFileModificationListener2.fileWillBeModified(audioFile, true);
                        }
                        deleteTag(audioFile.getTag(), randomAccessFile, randomAccessFile2);
                        AudioFileModificationListener audioFileModificationListener3 = this.modificationListener;
                        if (audioFileModificationListener3 != null) {
                            audioFileModificationListener3.fileModified(audioFile, fileCreateTempFile);
                        }
                        randomAccessFile2.close();
                        randomAccessFile.close();
                        File file4 = audioFile.getFile();
                        try {
                            if (fileCreateTempFile.length() > 0) {
                                if (audioFile.getFile().delete()) {
                                    if (fileCreateTempFile.renameTo(audioFile.getFile())) {
                                        try {
                                            if (fileCreateTempFile.exists() && !fileCreateTempFile.delete()) {
                                                logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE.getMsg(fileCreateTempFile.getPath()));
                                            }
                                        } catch (Exception e) {
                                            e = e;
                                            file4 = fileCreateTempFile;
                                            logger.severe("AudioFileWriter exception cleaning up delete:" + audioFile.getFile().getPath() + " or" + fileCreateTempFile.getAbsolutePath() + StringUtils.PROCESS_POSTFIX_DELIMITER + e);
                                        }
                                    } else {
                                        logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE.getMsg(audioFile.getFile().getPath(), fileCreateTempFile.getPath()));
                                    }
                                    file4 = fileCreateTempFile;
                                } else {
                                    logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_TO_DELETE_ORIGINAL_FILE.getMsg(audioFile.getFile().getPath(), fileCreateTempFile.getPath()));
                                }
                                fileCreateTempFile = file4;
                                file4 = fileCreateTempFile;
                            } else if (!fileCreateTempFile.delete()) {
                                logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE.getMsg(fileCreateTempFile.getPath()));
                            }
                        } catch (Exception e2) {
                            e = e2;
                        }
                        AudioFileModificationListener audioFileModificationListener4 = this.modificationListener;
                        if (audioFileModificationListener4 != null) {
                            audioFileModificationListener4.fileOperationFinished(file4);
                        }
                    } catch (ModifyVetoException e3) {
                        throw new CannotWriteException(e3);
                    }
                } catch (Throwable th) {
                    try {
                        randomAccessFile2.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (Exception e4) {
            try {
                throw new CannotWriteException("\"" + audioFile.getFile().getAbsolutePath() + "\" :" + e4, e4);
            } catch (Throwable th5) {
                th = th5;
                file = audioFile.getFile();
                try {
                    if (file3.length() <= 0 && !z) {
                        if (audioFile.getFile().delete()) {
                            if (file3.renameTo(audioFile.getFile())) {
                                try {
                                    if (file3.exists() && !file3.delete()) {
                                        logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE.getMsg(file3.getPath()));
                                    }
                                } catch (Exception e5) {
                                    e = e5;
                                    file = null;
                                    logger.severe("AudioFileWriter exception cleaning up delete:" + audioFile.getFile().getPath() + " or" + file3.getAbsolutePath() + StringUtils.PROCESS_POSTFIX_DELIMITER + e);
                                    audioFileModificationListener = this.modificationListener;
                                    if (audioFileModificationListener == null) {
                                        throw th;
                                    }
                                    audioFileModificationListener.fileOperationFinished(file);
                                    throw th;
                                }
                            } else {
                                logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE.getMsg(audioFile.getFile().getPath(), file3.getPath()));
                            }
                            file = file3;
                        } else {
                            logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_TO_DELETE_ORIGINAL_FILE.getMsg(audioFile.getFile().getPath(), file3.getPath()));
                        }
                        file3 = file;
                        file = file3;
                    } else if (!file3.delete()) {
                        logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE.getMsg(file3.getPath()));
                    }
                } catch (Exception e6) {
                    e = e6;
                }
                audioFileModificationListener = this.modificationListener;
                if (audioFileModificationListener == null) {
                    throw th;
                }
                audioFileModificationListener.fileOperationFinished(file);
                throw th;
            }
        } catch (Throwable th6) {
            th = th6;
            z = false;
            file = audioFile.getFile();
            if (file3.length() <= 0) {
                if (!file3.delete()) {
                    logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE.getMsg(file3.getPath()));
                }
            } else if (!file3.delete()) {
                logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE.getMsg(file3.getPath()));
            }
            audioFileModificationListener = this.modificationListener;
            if (audioFileModificationListener == null) {
                throw th;
            }
            audioFileModificationListener.fileOperationFinished(file);
            throw th;
        }
    }

    public abstract void deleteTag(Tag tag, RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) throws CannotReadException, CannotWriteException, IOException;

    public void setAudioFileModificationListener(AudioFileModificationListener audioFileModificationListener) {
        this.modificationListener = audioFileModificationListener;
    }

    public void write(AudioFile audioFile) throws CannotWriteException {
        File fileCreateTempFile;
        logger.config("Started writing tag data for file:" + audioFile.getFile().getName());
        precheckWrite(audioFile);
        if (audioFile instanceof MP3File) {
            audioFile.commit();
            return;
        }
        try {
            fileCreateTempFile = File.createTempFile(audioFile.getFile().getName().replace('.', '_'), TEMP_FILENAME_SUFFIX, audioFile.getFile().getParentFile());
        } catch (IOException e) {
            if (!e.getMessage().equals(FILE_NAME_TOO_LONG) || audioFile.getFile().getName().length() <= 50) {
                Logger logger2 = logger;
                Level level = Level.SEVERE;
                ErrorMessage errorMessage = ErrorMessage.GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER;
                logger2.log(level, errorMessage.getMsg(audioFile.getFile().getName(), audioFile.getFile().getParentFile().getAbsolutePath()), (Throwable) e);
                throw new CannotWriteException(errorMessage.getMsg(audioFile.getFile().getName(), audioFile.getFile().getParentFile().getAbsolutePath()));
            }
            try {
                fileCreateTempFile = File.createTempFile(audioFile.getFile().getName().substring(0, 50).replace('.', '_'), TEMP_FILENAME_SUFFIX, audioFile.getFile().getParentFile());
            } catch (IOException e2) {
                Logger logger3 = logger;
                Level level2 = Level.SEVERE;
                ErrorMessage errorMessage2 = ErrorMessage.GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER;
                logger3.log(level2, errorMessage2.getMsg(audioFile.getFile().getName(), audioFile.getFile().getParentFile().getAbsolutePath()), (Throwable) e2);
                throw new CannotWriteException(errorMessage2.getMsg(audioFile.getFile().getName(), audioFile.getFile().getParentFile().getAbsolutePath()));
            }
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(fileCreateTempFile, WRITE_MODE);
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(audioFile.getFile(), WRITE_MODE);
                try {
                    try {
                        randomAccessFile2.seek(0L);
                        randomAccessFile.seek(0L);
                        try {
                            AudioFileModificationListener audioFileModificationListener = this.modificationListener;
                            if (audioFileModificationListener != null) {
                                audioFileModificationListener.fileWillBeModified(audioFile, false);
                            }
                            writeTag(audioFile, audioFile.getTag(), randomAccessFile2, randomAccessFile);
                            AudioFileModificationListener audioFileModificationListener2 = this.modificationListener;
                            if (audioFileModificationListener2 != null) {
                                audioFileModificationListener2.fileModified(audioFile, fileCreateTempFile);
                            }
                            randomAccessFile2.close();
                            randomAccessFile.close();
                            File file = audioFile.getFile();
                            if (fileCreateTempFile.length() > 0) {
                                transferNewFileToOriginalFile(fileCreateTempFile, audioFile.getFile(), TagOptionSingleton.getInstance().isPreserveFileIdentity());
                            } else if (!fileCreateTempFile.delete()) {
                                logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE.getMsg(fileCreateTempFile.getPath()));
                            }
                            AudioFileModificationListener audioFileModificationListener3 = this.modificationListener;
                            if (audioFileModificationListener3 != null) {
                                audioFileModificationListener3.fileOperationFinished(file);
                            }
                        } catch (ModifyVetoException e3) {
                            throw new CannotWriteException(e3);
                        }
                    } catch (Throwable th) {
                        try {
                            randomAccessFile2.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Exception e4) {
                    Logger logger4 = logger;
                    Level level3 = Level.SEVERE;
                    ErrorMessage errorMessage3 = ErrorMessage.GENERAL_WRITE_FAILED_BECAUSE;
                    logger4.log(level3, errorMessage3.getMsg(audioFile.getFile(), e4.getMessage()), (Throwable) e4);
                    if (!fileCreateTempFile.delete()) {
                        logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE.getMsg(fileCreateTempFile.getAbsolutePath()));
                    }
                    throw new CannotWriteException(errorMessage3.getMsg(audioFile.getFile(), e4.getMessage()));
                }
            } catch (Throwable th3) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (IOException e5) {
            Logger logger5 = logger;
            Level level4 = Level.SEVERE;
            ErrorMessage errorMessage4 = ErrorMessage.GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING;
            logger5.log(level4, errorMessage4.getMsg(audioFile.getFile().getAbsolutePath()), (Throwable) e5);
            if (!fileCreateTempFile.delete()) {
                logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE.getMsg(fileCreateTempFile.getAbsolutePath()));
            }
            throw new CannotWriteException(errorMessage4.getMsg(audioFile.getFile().getAbsolutePath()));
        }
    }

    public abstract void writeTag(AudioFile audioFile, Tag tag, RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) throws CannotReadException, CannotWriteException, IOException;

    private void transferNewFileContentToOriginalFile(File file, File file2, RandomAccessFile randomAccessFile, FileChannel fileChannel) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            try {
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(file);
                    try {
                        FileChannel channel = fileInputStream2.getChannel();
                        long size = channel.size();
                        long jTransferTo = 0;
                        while (jTransferTo < size) {
                            jTransferTo += channel.transferTo(jTransferTo, 1048576L, fileChannel);
                        }
                        randomAccessFile.setLength(size);
                        AudioFileIO.closeQuietly(fileInputStream2);
                        if (!file.exists() || file.delete()) {
                            return;
                        }
                        logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE.getMsg(file.getPath()));
                    } catch (FileNotFoundException e) {
                        e = e;
                        Logger logger2 = logger;
                        ErrorMessage errorMessage = ErrorMessage.GENERAL_WRITE_FAILED_NEW_FILE_DOESNT_EXIST;
                        logger2.warning(errorMessage.getMsg(file.getAbsolutePath()));
                        throw new CannotWriteException(errorMessage.getMsg(file.getName()), e);
                    } catch (IOException e2) {
                        e = e2;
                        Logger logger3 = logger;
                        ErrorMessage errorMessage2 = ErrorMessage.GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE;
                        logger3.warning(errorMessage2.getMsg(file2.getAbsolutePath(), file.getName()));
                        throw new CannotWriteException(errorMessage2.getMsg(file2.getAbsolutePath(), file.getName()), e);
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        AudioFileIO.closeQuietly(fileInputStream);
                        throw th;
                    }
                } catch (FileNotFoundException e3) {
                    e = e3;
                } catch (IOException e4) {
                    e = e4;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e5) {
            e = e5;
        } catch (IOException e6) {
            e = e6;
        }
    }

    public void delete(Tag tag, RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) throws CannotReadException, CannotWriteException, IOException {
        randomAccessFile.seek(0L);
        randomAccessFile2.seek(0L);
        deleteTag(tag, randomAccessFile, randomAccessFile2);
    }
}
