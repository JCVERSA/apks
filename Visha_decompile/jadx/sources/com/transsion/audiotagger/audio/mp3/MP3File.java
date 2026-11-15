package com.transsion.audiotagger.audio.mp3;

import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.exceptions.CannotWriteException;
import com.transsion.audiotagger.audio.exceptions.InvalidAudioFrameException;
import com.transsion.audiotagger.audio.exceptions.NoWritePermissionsException;
import com.transsion.audiotagger.audio.exceptions.ReadOnlyFileException;
import com.transsion.audiotagger.audio.exceptions.UnableToModifyFileException;
import com.transsion.audiotagger.logging.AbstractTagDisplayFormatter;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.logging.Hex;
import com.transsion.audiotagger.logging.PlainTextTagDisplayFormatter;
import com.transsion.audiotagger.logging.XMLTagDisplayFormatter;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagException;
import com.transsion.audiotagger.tag.TagNotFoundException;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.id3.AbstractID3v2Tag;
import com.transsion.audiotagger.tag.id3.AbstractTag;
import com.transsion.audiotagger.tag.id3.ID3v11Tag;
import com.transsion.audiotagger.tag.id3.ID3v1Tag;
import com.transsion.audiotagger.tag.id3.ID3v22Tag;
import com.transsion.audiotagger.tag.id3.ID3v23Tag;
import com.transsion.audiotagger.tag.id3.ID3v24Tag;
import com.transsion.audiotagger.tag.lyrics3.AbstractLyrics3;
import com.transsion.audiotagger.tag.reference.ID3V2Version;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MP3File extends AudioFile {
    public static final int LOAD_ALL = 14;
    public static final int LOAD_IDV1TAG = 2;
    public static final int LOAD_IDV2TAG = 4;
    public static final int LOAD_LYRICS3 = 8;
    private static final int MINIMUM_FILESIZE = 150;
    protected static AbstractTagDisplayFormatter tagFormatter;
    private ID3v1Tag id3v1tag;
    private ID3v24Tag id3v2Asv24tag;
    private AbstractID3v2Tag id3v2tag;
    private AbstractLyrics3 lyrics3tag;

    public MP3File() {
        this.id3v2tag = null;
        this.id3v2Asv24tag = null;
        this.lyrics3tag = null;
        this.id3v1tag = null;
    }

    private MP3AudioHeader checkAudioStart(long j, MP3AudioHeader mP3AudioHeader) throws InvalidAudioFrameException, IOException {
        AudioFile.logger.warning(ErrorMessage.MP3_ID3TAG_LENGTH_INCORRECT.getMsg(this.file.getPath(), Hex.asHex(j), Hex.asHex(mP3AudioHeader.getMp3StartByte())));
        MP3AudioHeader mP3AudioHeader2 = new MP3AudioHeader(this.file, 0L);
        AudioFile.logger.config("Checking from start:" + mP3AudioHeader2);
        if (mP3AudioHeader.getMp3StartByte() == mP3AudioHeader2.getMp3StartByte()) {
            AudioFile.logger.config(ErrorMessage.MP3_START_OF_AUDIO_CONFIRMED.getMsg(this.file.getPath(), Hex.asHex(mP3AudioHeader2.getMp3StartByte())));
            return mP3AudioHeader;
        }
        AudioFile.logger.config(ErrorMessage.MP3_RECALCULATED_POSSIBLE_START_OF_MP3_AUDIO.getMsg(this.file.getPath(), Hex.asHex(mP3AudioHeader2.getMp3StartByte())));
        if (mP3AudioHeader.getNumberOfFrames() == mP3AudioHeader2.getNumberOfFrames()) {
            AudioFile.logger.warning(ErrorMessage.MP3_RECALCULATED_START_OF_MP3_AUDIO.getMsg(this.file.getPath(), Hex.asHex(mP3AudioHeader2.getMp3StartByte())));
            return mP3AudioHeader2;
        }
        if (isFilePortionNull((int) j, (int) mP3AudioHeader.getMp3StartByte())) {
            return mP3AudioHeader;
        }
        MP3AudioHeader mP3AudioHeader3 = new MP3AudioHeader(this.file, mP3AudioHeader2.getMp3StartByte() + ((long) mP3AudioHeader2.mp3FrameHeader.getFrameLength()));
        if (mP3AudioHeader3.getMp3StartByte() == mP3AudioHeader.getMp3StartByte()) {
            AudioFile.logger.warning(ErrorMessage.MP3_START_OF_AUDIO_CONFIRMED.getMsg(this.file.getPath(), Hex.asHex(mP3AudioHeader.getMp3StartByte())));
            return mP3AudioHeader;
        }
        if (mP3AudioHeader3.getNumberOfFrames() == mP3AudioHeader2.getNumberOfFrames()) {
            AudioFile.logger.warning(ErrorMessage.MP3_RECALCULATED_START_OF_MP3_AUDIO.getMsg(this.file.getPath(), Hex.asHex(mP3AudioHeader2.getMp3StartByte())));
            return mP3AudioHeader2;
        }
        AudioFile.logger.warning(ErrorMessage.MP3_RECALCULATED_START_OF_MP3_AUDIO.getMsg(this.file.getPath(), Hex.asHex(mP3AudioHeader.getMp3StartByte())));
        return mP3AudioHeader;
    }

    private static void createPlainTextStructureFormatter() {
        tagFormatter = new PlainTextTagDisplayFormatter();
    }

    private static void createXMLStructureFormatter() {
        tagFormatter = new XMLTagDisplayFormatter();
    }

    public static AbstractTagDisplayFormatter getStructureFormatter() {
        return tagFormatter;
    }

    private boolean isFilePortionNull(int i, int i2) throws IOException {
        AudioFile.logger.config("Checking file portion:" + Hex.asHex(i) + StringUtils.PROCESS_POSTFIX_DELIMITER + Hex.asHex(i2));
        FileInputStream fileInputStream = new FileInputStream(this.file);
        try {
            FileChannel channel = fileInputStream.getChannel();
            try {
                channel.position(i);
                ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i2 - i);
                channel.read(byteBufferAllocateDirect);
                while (byteBufferAllocateDirect.hasRemaining()) {
                    if (byteBufferAllocateDirect.get() != 0) {
                        channel.close();
                        fileInputStream.close();
                        return false;
                    }
                }
                channel.close();
                fileInputStream.close();
                return true;
            } catch (Throwable th) {
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                fileInputStream.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    private void readLyrics3Tag(File file, RandomAccessFile randomAccessFile, int i) throws IOException {
    }

    private void readV1Tag(File file, RandomAccessFile randomAccessFile, int i) throws IOException {
        if ((i & 2) != 0) {
            AudioFile.logger.finer("Attempting to read id3v1tags");
            try {
                this.id3v1tag = new ID3v11Tag(randomAccessFile, file.getName());
            } catch (TagNotFoundException unused) {
                AudioFile.logger.config("No ids3v11 tag found");
            }
            try {
                if (this.id3v1tag == null) {
                    this.id3v1tag = new ID3v1Tag(randomAccessFile, file.getName());
                }
            } catch (TagNotFoundException unused2) {
                AudioFile.logger.config("No id3v1 tag found");
            }
        }
    }

    private void readV2Tag(File file, int i, int i2) throws Throwable {
        if (i2 < 10) {
            AudioFile.logger.config("Not enough room for valid id3v2 tag:" + i2);
            return;
        }
        AudioFile.logger.finer("Attempting to read id3v2tags");
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i2);
                fileInputStream2.getChannel().read(byteBufferAllocateDirect, 0L);
                byteBufferAllocateDirect.rewind();
                if ((i & 4) != 0) {
                    AudioFile.logger.config("Attempting to read id3v2tags");
                    try {
                        setID3v2Tag((AbstractID3v2Tag) new ID3v24Tag(byteBufferAllocateDirect, file.getName()));
                    } catch (TagNotFoundException unused) {
                        AudioFile.logger.config("No id3v24 tag found");
                    }
                    try {
                        if (this.id3v2tag == null) {
                            setID3v2Tag((AbstractID3v2Tag) new ID3v23Tag(byteBufferAllocateDirect, file.getName()));
                        }
                    } catch (TagNotFoundException unused2) {
                        AudioFile.logger.config("No id3v23 tag found");
                    }
                    try {
                        if (this.id3v2tag == null) {
                            setID3v2Tag((AbstractID3v2Tag) new ID3v22Tag(byteBufferAllocateDirect, file.getName()));
                        }
                    } catch (TagNotFoundException unused3) {
                        AudioFile.logger.config("No id3v22 tag found");
                    }
                }
                AudioFileIO.closeQuietly(fileInputStream2);
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                AudioFileIO.closeQuietly(fileInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override
    public void commit() throws Throwable {
        try {
            save();
        } catch (UnableToModifyFileException e) {
            throw new NoWritePermissionsException(e);
        } catch (TagException e2) {
            throw new CannotWriteException(e2);
        } catch (IOException e3) {
            throw new CannotWriteException(e3);
        }
    }

    @Override
    public Tag createDefaultTag() {
        if (TagOptionSingleton.getInstance().getID3V2Version() == ID3V2Version.ID3_V24) {
            return new ID3v24Tag();
        }
        if (TagOptionSingleton.getInstance().getID3V2Version() == ID3V2Version.ID3_V23) {
            return new ID3v23Tag();
        }
        return TagOptionSingleton.getInstance().getID3V2Version() == ID3V2Version.ID3_V22 ? new ID3v22Tag() : new ID3v24Tag();
    }

    public void delete(AbstractTag abstractTag) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(this.file, "rw");
        abstractTag.delete(randomAccessFile);
        randomAccessFile.close();
        if (abstractTag instanceof ID3v1Tag) {
            this.id3v1tag = null;
        }
        if (abstractTag instanceof AbstractID3v2Tag) {
            this.id3v2tag = null;
        }
    }

    @Override
    public String displayStructureAsPlainText() {
        createPlainTextStructureFormatter();
        tagFormatter.openHeadingElement("file", getFile().getAbsolutePath());
        if (getID3v1Tag() != null) {
            getID3v1Tag().createStructure();
        }
        if (getID3v2Tag() != null) {
            getID3v2Tag().createStructure();
        }
        tagFormatter.closeHeadingElement("file");
        return tagFormatter.toString();
    }

    @Override
    public String displayStructureAsXML() {
        createXMLStructureFormatter();
        tagFormatter.openHeadingElement("file", getFile().getAbsolutePath());
        if (getID3v1Tag() != null) {
            getID3v1Tag().createStructure();
        }
        if (getID3v2Tag() != null) {
            getID3v2Tag().createStructure();
        }
        tagFormatter.closeHeadingElement("file");
        return tagFormatter.toString();
    }

    public File extractID3v2TagDataIntoFile(File file) throws TagNotFoundException, IOException {
        int mp3StartByte = (int) ((MP3AudioHeader) this.audioHeader).getMp3StartByte();
        if (mp3StartByte < 0) {
            throw new TagNotFoundException("There is no ID3v2Tag data in this file");
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(mp3StartByte);
        try {
            FileInputStream fileInputStream = new FileInputStream(this.file);
            try {
                FileChannel channel = fileInputStream.getChannel();
                try {
                    channel.read(byteBufferAllocate);
                    channel.close();
                    fileInputStream.close();
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            fileOutputStream.write(byteBufferAllocate.array());
                            fileOutputStream.close();
                            return file;
                        } catch (Throwable th) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (IOException e) {
                        AudioFile.logger.severe(e.getMessage());
                        throw e;
                    }
                } catch (Throwable th3) {
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            } catch (Throwable th5) {
                try {
                    fileInputStream.close();
                } catch (Throwable th6) {
                    th5.addSuppressed(th6);
                }
                throw th5;
            }
        } catch (IOException e2) {
            AudioFile.logger.severe(e2.getMessage());
            throw e2;
        }
    }

    public byte[] getHash(String str) throws InvalidAudioFrameException, NoSuchAlgorithmException, IOException {
        return getHash(str, 32768);
    }

    public ID3v1Tag getID3v1Tag() {
        return this.id3v1tag;
    }

    public AbstractID3v2Tag getID3v2Tag() {
        return this.id3v2tag;
    }

    public ID3v24Tag getID3v2TagAsv24() {
        return this.id3v2Asv24tag;
    }

    public MP3AudioHeader getMP3AudioHeader() {
        return (MP3AudioHeader) getAudioHeader();
    }

    public long getMP3StartByte(File file) throws InvalidAudioFrameException, IOException {
        long v2TagSizeIfExists = AbstractID3v2Tag.getV2TagSizeIfExists(file);
        MP3AudioHeader mP3AudioHeader = new MP3AudioHeader(file, v2TagSizeIfExists);
        if (v2TagSizeIfExists != mP3AudioHeader.getMp3StartByte()) {
            AudioFile.logger.config("First header found after tag:" + mP3AudioHeader);
            mP3AudioHeader = checkAudioStart(v2TagSizeIfExists, mP3AudioHeader);
        }
        return mP3AudioHeader.getMp3StartByte();
    }

    @Override
    public Tag getTagAndConvertOrCreateAndSetDefault() {
        Tag tagOrCreateDefault = getTagOrCreateDefault();
        AbstractID3v2Tag abstractID3v2TagConvertID3Tag = convertID3Tag((AbstractID3v2Tag) tagOrCreateDefault, TagOptionSingleton.getInstance().getID3V2Version());
        if (abstractID3v2TagConvertID3Tag != null) {
            setTag(abstractID3v2TagConvertID3Tag);
        } else {
            setTag(tagOrCreateDefault);
        }
        return getTag();
    }

    @Override
    public Tag getTagOrCreateDefault() {
        AbstractID3v2Tag iD3v2Tag = getID3v2Tag();
        return iD3v2Tag == null ? createDefaultTag() : iD3v2Tag;
    }

    public boolean hasID3v1Tag() {
        return this.id3v1tag != null;
    }

    public boolean hasID3v2Tag() {
        return this.id3v2tag != null;
    }

    public void precheck(File file) throws IOException {
        if (!file.exists()) {
            Logger logger = AudioFile.logger;
            ErrorMessage errorMessage = ErrorMessage.GENERAL_WRITE_FAILED_BECAUSE_FILE_NOT_FOUND;
            logger.severe(errorMessage.getMsg(file.getName()));
            throw new IOException(errorMessage.getMsg(file.getName()));
        }
        if (TagOptionSingleton.getInstance().isCheckIsWritable() && !file.canWrite()) {
            Logger logger2 = AudioFile.logger;
            ErrorMessage errorMessage2 = ErrorMessage.GENERAL_WRITE_FAILED;
            logger2.severe(errorMessage2.getMsg(file.getName()));
            throw new IOException(errorMessage2.getMsg(file.getName()));
        }
        if (file.length() > 150) {
            return;
        }
        Logger logger3 = AudioFile.logger;
        ErrorMessage errorMessage3 = ErrorMessage.GENERAL_WRITE_FAILED_BECAUSE_FILE_IS_TOO_SMALL;
        logger3.severe(errorMessage3.getMsg(file.getName()));
        throw new IOException(errorMessage3.getMsg(file.getName()));
    }

    public void save() throws Throwable {
        save(this.file);
    }

    public void setID3v1Tag(ID3v1Tag iD3v1Tag) {
        AudioFile.logger.config("setting tagv1:v1 tag");
        this.id3v1tag = iD3v1Tag;
    }

    public void setID3v2Tag(AbstractTag abstractTag) {
        this.id3v2tag = new ID3v24Tag(abstractTag);
    }

    public void setID3v2TagOnly(AbstractID3v2Tag abstractID3v2Tag) {
        this.id3v2tag = abstractID3v2Tag;
        this.id3v2Asv24tag = null;
    }

    @Override
    public void setTag(Tag tag) {
        this.tag = tag;
        if (tag instanceof ID3v1Tag) {
            setID3v1Tag((ID3v1Tag) tag);
        } else {
            setID3v2Tag((AbstractID3v2Tag) tag);
        }
    }

    public byte[] getHash(int i) throws InvalidAudioFrameException, NoSuchAlgorithmException, IOException {
        return getHash("MD5", i);
    }

    public void save(File file) throws Throwable {
        AbstractLyrics3 abstractLyrics3;
        File absoluteFile = file.getAbsoluteFile();
        AudioFile.logger.config("Saving  : " + absoluteFile.getPath());
        precheck(absoluteFile);
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                if (TagOptionSingleton.getInstance().isId3v2Save()) {
                    if (this.id3v2tag == null) {
                        RandomAccessFile randomAccessFile2 = new RandomAccessFile(absoluteFile, "rw");
                        try {
                            new ID3v24Tag().delete(randomAccessFile2);
                            new ID3v23Tag().delete(randomAccessFile2);
                            new ID3v22Tag().delete(randomAccessFile2);
                            AudioFile.logger.config("Deleting ID3v2 tag:" + absoluteFile.getName());
                            randomAccessFile2.close();
                        } catch (FileNotFoundException e) {
                            e = e;
                            AudioFile.logger.log(Level.SEVERE, ErrorMessage.GENERAL_WRITE_FAILED_BECAUSE_FILE_NOT_FOUND.getMsg(absoluteFile.getName()), (Throwable) e);
                            throw e;
                        } catch (IOException e2) {
                            e = e2;
                            AudioFile.logger.log(Level.SEVERE, ErrorMessage.GENERAL_WRITE_FAILED_BECAUSE.getMsg(absoluteFile.getName(), e.getMessage()), (Throwable) e);
                            throw e;
                        } catch (RuntimeException e3) {
                            e = e3;
                            AudioFile.logger.log(Level.SEVERE, ErrorMessage.GENERAL_WRITE_FAILED_BECAUSE.getMsg(absoluteFile.getName(), e.getMessage()), (Throwable) e);
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            randomAccessFile = randomAccessFile2;
                            if (randomAccessFile != null) {
                                randomAccessFile.close();
                            }
                            throw th;
                        }
                    } else {
                        AudioFile.logger.config("Writing ID3v2 tag:" + absoluteFile.getName());
                        MP3AudioHeader mP3AudioHeader = (MP3AudioHeader) getAudioHeader();
                        long mp3StartByte = mP3AudioHeader.getMp3StartByte();
                        long jWrite = this.id3v2tag.write(absoluteFile, mp3StartByte);
                        if (mp3StartByte != jWrite) {
                            AudioFile.logger.config("New mp3 start byte: " + jWrite);
                            mP3AudioHeader.setMp3StartByte(jWrite);
                        }
                    }
                }
                RandomAccessFile randomAccessFile3 = new RandomAccessFile(absoluteFile, "rw");
                if (TagOptionSingleton.getInstance().isLyrics3Save() && (abstractLyrics3 = this.lyrics3tag) != null) {
                    abstractLyrics3.write(randomAccessFile3);
                }
                if (TagOptionSingleton.getInstance().isId3v1Save()) {
                    AudioFile.logger.config("Processing ID3v1");
                    if (this.id3v1tag == null) {
                        AudioFile.logger.config("Deleting ID3v1");
                        new ID3v1Tag().delete(randomAccessFile3);
                    } else {
                        AudioFile.logger.config("Saving ID3v1");
                        this.id3v1tag.write(randomAccessFile3);
                    }
                }
                randomAccessFile3.close();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e4) {
            e = e4;
        } catch (IOException e5) {
            e = e5;
        } catch (RuntimeException e6) {
            e = e6;
        }
    }

    public void setID3v2Tag(AbstractID3v2Tag abstractID3v2Tag) {
        this.id3v2tag = abstractID3v2Tag;
        if (abstractID3v2Tag instanceof ID3v24Tag) {
            this.id3v2Asv24tag = (ID3v24Tag) abstractID3v2Tag;
        } else {
            this.id3v2Asv24tag = new ID3v24Tag(abstractID3v2Tag);
        }
    }

    public byte[] getHash() throws InvalidAudioFrameException, NoSuchAlgorithmException, IOException {
        return getHash("MD5", 32768);
    }

    public void setID3v1Tag(Tag tag) {
        AudioFile.logger.config("setting tagv1:v1 tag");
        this.id3v1tag = (ID3v1Tag) tag;
    }

    public byte[] getHash(String str, int i) throws InvalidAudioFrameException, NoSuchAlgorithmException, IOException {
        File file = getFile();
        long mP3StartByte = getMP3StartByte(file);
        int size = hasID3v1Tag() ? getID3v1Tag().getSize() : 0;
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[i];
                MessageDigest messageDigest = MessageDigest.getInstance(str);
                fileInputStream.skip(mP3StartByte);
                long length = (file.length() - mP3StartByte) - ((long) size);
                int i2 = i;
                while (i2 <= length) {
                    messageDigest.update(bArr, 0, fileInputStream.read(bArr));
                    i2 += i;
                }
                messageDigest.update(bArr, 0, fileInputStream.read(bArr, 0, (((int) length) - i2) + i));
                byte[] bArrDigest = messageDigest.digest();
                fileInputStream.close();
                return bArrDigest;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            AudioFile.logger.severe(e.getMessage());
            throw new IOException(e);
        }
    }

    public void setID3v1Tag(AbstractTag abstractTag) {
        AudioFile.logger.config("setting tagv1:abstract");
        this.id3v1tag = new ID3v11Tag(abstractTag);
    }

    public MP3File(String str) throws InvalidAudioFrameException, CannotReadException, IOException, TagException, ReadOnlyFileException {
        this(new File(str));
    }

    public MP3File(File file, int i) throws InvalidAudioFrameException, CannotReadException, IOException, TagException, ReadOnlyFileException {
        this(file, i, false);
    }

    public MP3File(File file, int i, boolean z) throws InvalidAudioFrameException, CannotReadException, IOException, TagException, ReadOnlyFileException {
        RandomAccessFile randomAccessFile = null;
        this.id3v2tag = null;
        this.id3v2Asv24tag = null;
        this.lyrics3tag = null;
        this.id3v1tag = null;
        try {
            this.file = file;
            RandomAccessFile randomAccessFileCheckFilePermissions = checkFilePermissions(file, z);
            long v2TagSizeIfExists = AbstractID3v2Tag.getV2TagSizeIfExists(file);
            AudioFile.logger.config("TagHeaderSize:" + Hex.asHex(v2TagSizeIfExists));
            MP3AudioHeader mP3AudioHeader = new MP3AudioHeader(file, v2TagSizeIfExists);
            this.audioHeader = mP3AudioHeader;
            if (v2TagSizeIfExists != mP3AudioHeader.getMp3StartByte()) {
                AudioFile.logger.config("First header found after tag:" + this.audioHeader);
                this.audioHeader = checkAudioStart(v2TagSizeIfExists, (MP3AudioHeader) this.audioHeader);
            }
            readV1Tag(file, randomAccessFileCheckFilePermissions, i);
            readV2Tag(file, i, (int) ((MP3AudioHeader) this.audioHeader).getMp3StartByte());
            if (getID3v2Tag() != null) {
                this.tag = getID3v2Tag();
            } else {
                ID3v1Tag iD3v1Tag = this.id3v1tag;
                if (iD3v1Tag != null) {
                    this.tag = iD3v1Tag;
                }
            }
            if (randomAccessFileCheckFilePermissions != null) {
                randomAccessFileCheckFilePermissions.close();
            }
        } catch (Throwable th) {
            if (0 != 0) {
                randomAccessFile.close();
            }
            throw th;
        }
    }

    public MP3File(File file) throws InvalidAudioFrameException, CannotReadException, IOException, TagException, ReadOnlyFileException {
        this(file, 14);
    }
}
