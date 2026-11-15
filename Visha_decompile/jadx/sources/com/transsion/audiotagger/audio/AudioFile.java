package com.transsion.audiotagger.audio;

import com.alibaba.android.arouter.utils.Consts;
import com.transsion.audiotagger.audio.dsf.Dsf;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.exceptions.CannotWriteException;
import com.transsion.audiotagger.audio.exceptions.NoReadPermissionsException;
import com.transsion.audiotagger.audio.exceptions.ReadOnlyFileException;
import com.transsion.audiotagger.audio.real.RealTag;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.aiff.AiffTag;
import com.transsion.audiotagger.tag.asf.AsfTag;
import com.transsion.audiotagger.tag.flac.FlacTag;
import com.transsion.audiotagger.tag.id3.AbstractID3v2Tag;
import com.transsion.audiotagger.tag.id3.ID3v22Tag;
import com.transsion.audiotagger.tag.id3.ID3v23Tag;
import com.transsion.audiotagger.tag.id3.ID3v24Tag;
import com.transsion.audiotagger.tag.mp4.Mp4Tag;
import com.transsion.audiotagger.tag.reference.ID3V2Version;
import com.transsion.audiotagger.tag.vorbiscomment.VorbisCommentTag;
import com.transsion.audiotagger.tag.wav.WavTag;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.logging.Logger;

public class AudioFile {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio");
    protected AudioHeader audioHeader;
    protected String extension;
    protected File file;
    protected Tag tag;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$transsion$audiotagger$tag$reference$ID3V2Version;

        static {
            int[] iArr = new int[ID3V2Version.values().length];
            $SwitchMap$com$transsion$audiotagger$tag$reference$ID3V2Version = iArr;
            try {
                iArr[ID3V2Version.ID3_V22.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$reference$ID3V2Version[ID3V2Version.ID3_V23.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$reference$ID3V2Version[ID3V2Version.ID3_V24.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public AudioFile() {
    }

    public static String getBaseFilename(File file) {
        int iLastIndexOf = file.getName().toLowerCase().lastIndexOf(Consts.DOT);
        return iLastIndexOf > 0 ? file.getName().substring(0, iLastIndexOf) : file.getName();
    }

    public void checkFileExists(File file) throws FileNotFoundException {
        logger.config("Reading file:path" + file.getPath() + ":abs:" + file.getAbsolutePath());
        if (file.exists()) {
            return;
        }
        logger.severe("Unable to find:" + file.getPath());
        throw new FileNotFoundException(ErrorMessage.UNABLE_TO_FIND_FILE.getMsg(file.getPath()));
    }

    public RandomAccessFile checkFilePermissions(File file, boolean z) throws CannotReadException, FileNotFoundException, ReadOnlyFileException {
        checkFileExists(file);
        if (!z) {
            if (!TagOptionSingleton.getInstance().isCheckIsWritable() || file.canWrite()) {
                return new RandomAccessFile(file, "rw");
            }
            throw new ReadOnlyFileException(ErrorMessage.NO_PERMISSIONS_TO_WRITE_TO_FILE.getMsg(file.getPath()));
        }
        if (file.canRead()) {
            return new RandomAccessFile(file, "r");
        }
        logger.severe("Unable to read file:" + file.getPath());
        throw new NoReadPermissionsException(ErrorMessage.GENERAL_READ_FAILED_DO_NOT_HAVE_PERMISSION_TO_READ_FILE.getMsg(file.getPath()));
    }

    public void commit() throws CannotWriteException {
        AudioFileIO.write(this);
    }

    public AbstractID3v2Tag convertID3Tag(AbstractID3v2Tag abstractID3v2Tag, ID3V2Version iD3V2Version) {
        if (abstractID3v2Tag instanceof ID3v24Tag) {
            int i = AnonymousClass1.$SwitchMap$com$transsion$audiotagger$tag$reference$ID3V2Version[iD3V2Version.ordinal()];
            if (i == 1) {
                return new ID3v22Tag((ID3v24Tag) abstractID3v2Tag);
            }
            if (i != 2) {
                return null;
            }
            return new ID3v23Tag((ID3v24Tag) abstractID3v2Tag);
        }
        if (abstractID3v2Tag instanceof ID3v23Tag) {
            int i2 = AnonymousClass1.$SwitchMap$com$transsion$audiotagger$tag$reference$ID3V2Version[iD3V2Version.ordinal()];
            if (i2 == 1) {
                return new ID3v22Tag((ID3v23Tag) abstractID3v2Tag);
            }
            if (i2 != 3) {
                return null;
            }
            return new ID3v24Tag((ID3v23Tag) abstractID3v2Tag);
        }
        if (!(abstractID3v2Tag instanceof ID3v22Tag)) {
            return null;
        }
        int i3 = AnonymousClass1.$SwitchMap$com$transsion$audiotagger$tag$reference$ID3V2Version[iD3V2Version.ordinal()];
        if (i3 == 2) {
            return new ID3v23Tag((ID3v22Tag) abstractID3v2Tag);
        }
        if (i3 != 3) {
            return null;
        }
        return new ID3v24Tag((ID3v22Tag) abstractID3v2Tag);
    }

    public Tag createDefaultTag() {
        String ext = getExt();
        if (ext == null) {
            String name = this.file.getName();
            ext = name.substring(name.lastIndexOf(46) + 1);
            setExt(ext);
        }
        if (SupportedFileFormat.FLAC.getFilesuffix().equals(ext)) {
            return new FlacTag(VorbisCommentTag.createNewTag(), new ArrayList());
        }
        if (SupportedFileFormat.OGG.getFilesuffix().equals(ext)) {
            return VorbisCommentTag.createNewTag();
        }
        if (!SupportedFileFormat.MP4.getFilesuffix().equals(ext) && !SupportedFileFormat.M4A.getFilesuffix().equals(ext) && !SupportedFileFormat.M4P.getFilesuffix().equals(ext)) {
            if (SupportedFileFormat.WMA.getFilesuffix().equals(ext)) {
                return new AsfTag();
            }
            if (SupportedFileFormat.WAV.getFilesuffix().equals(ext)) {
                return new WavTag(TagOptionSingleton.getInstance().getWavOptions());
            }
            if (!SupportedFileFormat.RA.getFilesuffix().equals(ext) && !SupportedFileFormat.RM.getFilesuffix().equals(ext)) {
                if (!SupportedFileFormat.AIF.getFilesuffix().equals(ext) && !SupportedFileFormat.AIFC.getFilesuffix().equals(ext) && !SupportedFileFormat.AIFF.getFilesuffix().equals(ext)) {
                    if (SupportedFileFormat.DSF.getFilesuffix().equals(ext)) {
                        return Dsf.createDefaultTag();
                    }
                    throw new RuntimeException("Unable to create default tag for this file format");
                }
                return new AiffTag();
            }
            return new RealTag();
        }
        return new Mp4Tag();
    }

    public void delete() throws CannotReadException, CannotWriteException {
        AudioFileIO.delete(this);
    }

    public String displayStructureAsPlainText() {
        return "";
    }

    public String displayStructureAsXML() {
        return "";
    }

    public AudioHeader getAudioHeader() {
        return this.audioHeader;
    }

    public String getExt() {
        return this.extension;
    }

    public File getFile() {
        return this.file;
    }

    public Tag getTag() {
        return this.tag;
    }

    public Tag getTagAndConvertOrCreateAndSetDefault() {
        AbstractID3v2Tag abstractID3v2TagConvertID3Tag;
        Tag tagOrCreateDefault = getTagOrCreateDefault();
        if (!(tagOrCreateDefault instanceof AbstractID3v2Tag) || (abstractID3v2TagConvertID3Tag = convertID3Tag((AbstractID3v2Tag) tagOrCreateDefault, TagOptionSingleton.getInstance().getID3V2Version())) == null) {
            setTag(tagOrCreateDefault);
        } else {
            setTag(abstractID3v2TagConvertID3Tag);
        }
        return getTag();
    }

    public Tag getTagOrCreateAndSetDefault() {
        Tag tagOrCreateDefault = getTagOrCreateDefault();
        setTag(tagOrCreateDefault);
        return tagOrCreateDefault;
    }

    public Tag getTagOrCreateDefault() {
        Tag tag = getTag();
        return tag == null ? createDefaultTag() : tag;
    }

    public void setExt(String str) {
        this.extension = str;
    }

    public void setFile(File file) {
        this.file = file;
    }

    public void setTag(Tag tag) {
        this.tag = tag;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AudioFile ");
        sb.append(getFile().getAbsolutePath());
        sb.append("  --------\n");
        sb.append(this.audioHeader.toString());
        sb.append("\n");
        Tag tag = this.tag;
        sb.append(tag == null ? "" : tag.toString());
        sb.append("\n-------------------");
        return sb.toString();
    }

    public AudioFile(File file, AudioHeader audioHeader, Tag tag) {
        this.file = file;
        this.audioHeader = audioHeader;
        this.tag = tag;
    }

    public AudioFile(String str, AudioHeader audioHeader, Tag tag) {
        this.file = new File(str);
        this.audioHeader = audioHeader;
        this.tag = tag;
    }
}
