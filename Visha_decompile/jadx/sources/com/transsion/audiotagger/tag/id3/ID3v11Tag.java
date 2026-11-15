package com.transsion.audiotagger.tag.id3;

import com.lzy.okgo.model.Progress;
import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.mp3.MP3File;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.TagException;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.TagNotFoundException;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyCOMM;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTALB;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTCON;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTDRC;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTIT2;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTPE1;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTRCK;
import com.transsion.audiotagger.tag.reference.GenreTypes;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.regex.Matcher;

public class ID3v11Tag extends ID3v1Tag {
    protected static final int FIELD_COMMENT_LENGTH = 28;
    protected static final int FIELD_COMMENT_POS = 97;
    protected static final int FIELD_TRACK_INDICATOR_LENGTH = 1;
    protected static final int FIELD_TRACK_INDICATOR_POS = 125;
    protected static final int FIELD_TRACK_LENGTH = 1;
    protected static final int FIELD_TRACK_POS = 126;
    private static final byte MAJOR_VERSION = 1;
    private static final byte RELEASE = 1;
    private static final byte REVISION = 0;
    protected static final int TRACK_MAX_VALUE = 255;
    protected static final int TRACK_MIN_VALUE = 1;
    protected static final int TRACK_UNDEFINED = 0;
    protected static final String TYPE_TRACK = "track";
    protected byte track;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$transsion$audiotagger$tag$FieldKey;

        static {
            int[] iArr = new int[FieldKey.values().length];
            $SwitchMap$com$transsion$audiotagger$tag$FieldKey = iArr;
            try {
                iArr[FieldKey.ARTIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$FieldKey[FieldKey.ALBUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$FieldKey[FieldKey.TITLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$FieldKey[FieldKey.GENRE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$FieldKey[FieldKey.YEAR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$FieldKey[FieldKey.TRACK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$FieldKey[FieldKey.COMMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public ID3v11Tag() {
        this.track = (byte) 0;
    }

    public void addTrack(String str) {
        setTrack(str);
    }

    @Override
    public void createStructure() {
        MP3File.getStructureFormatter().openHeadingElement(Progress.TAG, getIdentifier());
        MP3File.getStructureFormatter().addElement("title", this.title);
        MP3File.getStructureFormatter().addElement("artist", this.artist);
        MP3File.getStructureFormatter().addElement("album", this.album);
        MP3File.getStructureFormatter().addElement("year", this.year);
        MP3File.getStructureFormatter().addElement("comment", this.comment);
        MP3File.getStructureFormatter().addElement(TYPE_TRACK, this.track);
        MP3File.getStructureFormatter().addElement("genre", this.genre);
        MP3File.getStructureFormatter().closeHeadingElement(Progress.TAG);
    }

    @Override
    public void deleteField(FieldKey fieldKey) {
        if (fieldKey == FieldKey.TRACK) {
            this.track = (byte) 0;
        } else {
            super.deleteField(fieldKey);
        }
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof ID3v11Tag) && this.track == ((ID3v11Tag) obj).track && super.equals(obj);
    }

    @Override
    public int getFieldCount() {
        return 7;
    }

    @Override
    public List<TagField> getFields(FieldKey fieldKey) {
        return fieldKey == FieldKey.TRACK ? getTrack() : super.getFields(fieldKey);
    }

    @Override
    public String getFirst(FieldKey fieldKey) {
        switch (AnonymousClass1.$SwitchMap$com$transsion$audiotagger$tag$FieldKey[fieldKey.ordinal()]) {
            case 1:
                return getFirstArtist();
            case 2:
                return getFirstAlbum();
            case 3:
                return getFirstTitle();
            case 4:
                return getFirstGenre();
            case 5:
                return getFirstYear();
            case 6:
                return getFirstTrack();
            case 7:
                return getFirstComment();
            default:
                return "";
        }
    }

    @Override
    public String getFirstComment() {
        return this.comment;
    }

    @Override
    public TagField getFirstField(String str) {
        if (!FieldKey.TRACK.name().equals(str)) {
            return super.getFirstField(str);
        }
        List<TagField> track = getTrack();
        if (track == null || track.size() <= 0) {
            return null;
        }
        return track.get(0);
    }

    @Override
    public String getFirstTrack() {
        return String.valueOf(this.track & 255);
    }

    @Override
    public byte getMajorVersion() {
        return (byte) 1;
    }

    @Override
    public byte getRelease() {
        return (byte) 1;
    }

    @Override
    public byte getRevision() {
        return (byte) 0;
    }

    @Override
    public List<TagField> getTrack() {
        FieldKey fieldKey = FieldKey.TRACK;
        return getFirst(fieldKey).length() > 0 ? returnFieldToList(new ID3v1TagField(ID3v1FieldKey.TRACK.name(), getFirst(fieldKey))) : new ArrayList();
    }

    @Override
    public boolean isEmpty() {
        return this.track <= 0 && super.isEmpty();
    }

    @Override
    public void read(ByteBuffer byteBuffer) throws TagNotFoundException {
        if (!seek(byteBuffer)) {
            throw new TagNotFoundException("ID3v1 tag not found");
        }
        AbstractID3v1Tag.logger.finer("Reading v1.1 tag");
        byte[] bArr = new byte[128];
        byteBuffer.position(0);
        byteBuffer.get(bArr, 0, 128);
        Charset charset = StandardCharsets.ISO_8859_1;
        String strTrim = new String(bArr, 3, 30, charset).trim();
        this.title = strTrim;
        Matcher matcher = AbstractID3v1Tag.endofStringPattern.matcher(strTrim);
        if (matcher.find()) {
            this.title = this.title.substring(0, matcher.start());
        }
        String strTrim2 = new String(bArr, 33, 30, charset).trim();
        this.artist = strTrim2;
        Matcher matcher2 = AbstractID3v1Tag.endofStringPattern.matcher(strTrim2);
        if (matcher2.find()) {
            this.artist = this.artist.substring(0, matcher2.start());
        }
        String strTrim3 = new String(bArr, 63, 30, charset).trim();
        this.album = strTrim3;
        Matcher matcher3 = AbstractID3v1Tag.endofStringPattern.matcher(strTrim3);
        if (matcher3.find()) {
            this.album = this.album.substring(0, matcher3.start());
        }
        String strTrim4 = new String(bArr, 93, 4, charset).trim();
        this.year = strTrim4;
        Matcher matcher4 = AbstractID3v1Tag.endofStringPattern.matcher(strTrim4);
        if (matcher4.find()) {
            this.year = this.year.substring(0, matcher4.start());
        }
        String strTrim5 = new String(bArr, 97, 28, charset).trim();
        this.comment = strTrim5;
        Matcher matcher5 = AbstractID3v1Tag.endofStringPattern.matcher(strTrim5);
        if (matcher5.find()) {
            this.comment = this.comment.substring(0, matcher5.start());
        }
        this.track = bArr[126];
        this.genre = bArr[127];
    }

    @Override
    public boolean seek(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[3];
        byteBuffer.get(bArr, 0, 3);
        if (!Arrays.equals(bArr, AbstractID3v1Tag.TAG_ID)) {
            return false;
        }
        byteBuffer.position(125);
        return byteBuffer.get() == 0 && byteBuffer.get() != 0;
    }

    @Override
    public void setComment(String str) {
        if (str == null) {
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        this.comment = ID3Tags.truncate(str, 28);
    }

    @Override
    public void setField(TagField tagField) {
        if (FieldKey.valueOf(tagField.getId()) == FieldKey.TRACK) {
            setTrack(tagField.toString());
        } else {
            super.setField(tagField);
        }
    }

    public void setTrack(String str) {
        int i;
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            i = 0;
        }
        if (i > 255 || i < 1) {
            this.track = (byte) 0;
        } else {
            this.track = (byte) Integer.parseInt(str);
        }
    }

    @Override
    public void write(RandomAccessFile randomAccessFile) throws IOException {
        AbstractID3v1Tag.logger.config("Saving ID3v11 tag to file");
        byte[] bArr = new byte[128];
        delete(randomAccessFile);
        randomAccessFile.seek(randomAccessFile.length());
        byte[] bArr2 = AbstractID3v1Tag.TAG_ID;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        if (TagOptionSingleton.getInstance().isId3v1SaveTitle()) {
            String strTruncate = ID3Tags.truncate(this.title, 30);
            for (int i = 0; i < strTruncate.length(); i++) {
                bArr[i + 3] = (byte) strTruncate.charAt(i);
            }
        }
        if (TagOptionSingleton.getInstance().isId3v1SaveArtist()) {
            String strTruncate2 = ID3Tags.truncate(this.artist, 30);
            for (int i2 = 0; i2 < strTruncate2.length(); i2++) {
                bArr[i2 + 33] = (byte) strTruncate2.charAt(i2);
            }
        }
        if (TagOptionSingleton.getInstance().isId3v1SaveAlbum()) {
            String strTruncate3 = ID3Tags.truncate(this.album, 30);
            for (int i3 = 0; i3 < strTruncate3.length(); i3++) {
                bArr[i3 + 63] = (byte) strTruncate3.charAt(i3);
            }
        }
        if (TagOptionSingleton.getInstance().isId3v1SaveYear()) {
            String strTruncate4 = ID3Tags.truncate(this.year, 4);
            for (int i4 = 0; i4 < strTruncate4.length(); i4++) {
                bArr[i4 + 93] = (byte) strTruncate4.charAt(i4);
            }
        }
        if (TagOptionSingleton.getInstance().isId3v1SaveComment()) {
            String strTruncate5 = ID3Tags.truncate(this.comment, 28);
            for (int i5 = 0; i5 < strTruncate5.length(); i5++) {
                bArr[i5 + 97] = (byte) strTruncate5.charAt(i5);
            }
        }
        bArr[126] = this.track;
        if (TagOptionSingleton.getInstance().isId3v1SaveGenre()) {
            bArr[127] = this.genre;
        }
        randomAccessFile.write(bArr);
        AbstractID3v1Tag.logger.config("Saved ID3v11 tag to file");
    }

    public ID3v11Tag(ID3v11Tag iD3v11Tag) {
        super((ID3v1Tag) iD3v11Tag);
        this.track = (byte) 0;
        this.track = iD3v11Tag.track;
    }

    public ID3v11Tag(AbstractTag abstractTag) {
        ID3v24Tag iD3v24Tag;
        this.track = (byte) 0;
        if (abstractTag != null) {
            if (abstractTag instanceof ID3v1Tag) {
                if (!(abstractTag instanceof ID3v11Tag)) {
                    ID3v1Tag iD3v1Tag = (ID3v1Tag) abstractTag;
                    this.title = iD3v1Tag.title;
                    this.artist = iD3v1Tag.artist;
                    this.album = iD3v1Tag.album;
                    this.comment = iD3v1Tag.comment;
                    this.year = iD3v1Tag.year;
                    this.genre = iD3v1Tag.genre;
                    return;
                }
                throw new UnsupportedOperationException("Copy Constructor not called. Please type cast the argument");
            }
            if (!(abstractTag instanceof ID3v24Tag)) {
                iD3v24Tag = new ID3v24Tag(abstractTag);
            } else {
                iD3v24Tag = (ID3v24Tag) abstractTag;
            }
            if (iD3v24Tag.hasFrame("TIT2")) {
                this.title = ID3Tags.truncate(((FrameBodyTIT2) ((ID3v24Frame) iD3v24Tag.getFrame("TIT2")).getBody()).getText(), 30);
            }
            if (iD3v24Tag.hasFrame("TPE1")) {
                this.artist = ID3Tags.truncate(((FrameBodyTPE1) ((ID3v24Frame) iD3v24Tag.getFrame("TPE1")).getBody()).getText(), 30);
            }
            if (iD3v24Tag.hasFrame("TALB")) {
                this.album = ID3Tags.truncate(((FrameBodyTALB) ((ID3v24Frame) iD3v24Tag.getFrame("TALB")).getBody()).getText(), 30);
            }
            if (iD3v24Tag.hasFrame(ID3v24Frames.FRAME_ID_YEAR)) {
                this.year = ID3Tags.truncate(((FrameBodyTDRC) ((ID3v24Frame) iD3v24Tag.getFrame(ID3v24Frames.FRAME_ID_YEAR)).getBody()).getText(), 4);
            }
            if (iD3v24Tag.hasFrame("COMM")) {
                Iterator frameOfType = iD3v24Tag.getFrameOfType("COMM");
                String str = "";
                while (frameOfType.hasNext()) {
                    str = str + ((FrameBodyCOMM) ((ID3v24Frame) frameOfType.next()).getBody()).getText() + " ";
                }
                this.comment = ID3Tags.truncate(str, 28);
            }
            if (iD3v24Tag.hasFrame("TCON")) {
                String text = ((FrameBodyTCON) ((ID3v24Frame) iD3v24Tag.getFrame("TCON")).getBody()).getText();
                try {
                    this.genre = (byte) ID3Tags.findNumber(text);
                } catch (TagException e) {
                    Integer idForValue = GenreTypes.getInstanceOf().getIdForValue(text);
                    if (idForValue != null) {
                        this.genre = idForValue.byteValue();
                    } else {
                        AbstractID3v1Tag.logger.log(Level.WARNING, getLoggingFilename() + ":Unable to convert TCON frame to format suitable for v11 tag", (Throwable) e);
                        this.genre = (byte) -1;
                    }
                }
            }
            if (iD3v24Tag.hasFrame("TRCK")) {
                this.track = (byte) ((FrameBodyTRCK) ((ID3v24Frame) iD3v24Tag.getFrame("TRCK")).getBody()).getTrackNo().intValue();
            }
        }
    }

    public ID3v11Tag(RandomAccessFile randomAccessFile, String str) throws TagNotFoundException, IOException {
        this.track = (byte) 0;
        setLoggingFilename(str);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(128);
        FileChannel channel = randomAccessFile.getChannel();
        channel.position(randomAccessFile.length() - 128);
        channel.read(byteBufferAllocate);
        byteBufferAllocate.flip();
        read(byteBufferAllocate);
    }

    public ID3v11Tag(RandomAccessFile randomAccessFile) throws TagNotFoundException, IOException {
        this(randomAccessFile, "");
    }
}
