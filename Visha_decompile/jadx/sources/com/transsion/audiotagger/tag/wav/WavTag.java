package com.transsion.audiotagger.tag.wav;

import com.transsion.audiotagger.audio.generic.GenericTag;
import com.transsion.audiotagger.audio.iff.ChunkSummary;
import com.transsion.audiotagger.audio.wav.WavOptions;
import com.transsion.audiotagger.logging.Hex;
import com.transsion.audiotagger.tag.FieldDataInvalidException;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.KeyNotFoundException;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.id3.AbstractID3v2Tag;
import com.transsion.audiotagger.tag.id3.ID3v22Tag;
import com.transsion.audiotagger.tag.id3.ID3v23Tag;
import com.transsion.audiotagger.tag.id3.ID3v24Tag;
import com.transsion.audiotagger.tag.id3.Id3SupportingTag;
import com.transsion.audiotagger.tag.images.Artwork;
import com.transsion.audiotagger.tag.reference.ID3V2Version;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class WavTag implements Tag, Id3SupportingTag {
    private static final String NULL = "\u0000";
    private static final Logger logger = Logger.getLogger(WavTag.class.getName());
    private AbstractID3v2Tag id3Tag;
    private WavInfoTag infoTag;
    private WavOptions wavOptions;
    private List<ChunkSummary> chunkSummaryList = new ArrayList();
    private boolean isIncorrectlyAlignedTag = false;
    private boolean isExistingId3Tag = false;
    private boolean isExistingInfoTag = false;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions;

        static {
            int[] iArr = new int[WavOptions.values().length];
            $SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions = iArr;
            try {
                iArr[WavOptions.READ_ID3_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions[WavOptions.READ_ID3_ONLY_AND_SYNC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions[WavOptions.READ_INFO_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions[WavOptions.READ_INFO_ONLY_AND_SYNC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions[WavOptions.READ_ID3_UNLESS_ONLY_INFO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions[WavOptions.READ_ID3_UNLESS_ONLY_INFO_AND_SYNC.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions[WavOptions.READ_INFO_UNLESS_ONLY_ID3.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions[WavOptions.READ_INFO_UNLESS_ONLY_ID3_AND_SYNC.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public WavTag(WavOptions wavOptions) {
        this.wavOptions = wavOptions;
    }

    private String addNullTerminatorIfNone(String str) {
        if (str.endsWith(NULL)) {
            return str;
        }
        return str + NULL;
    }

    public static AbstractID3v2Tag createDefaultID3Tag() {
        if (TagOptionSingleton.getInstance().getID3V2Version() == ID3V2Version.ID3_V24) {
            return new ID3v24Tag();
        }
        if (TagOptionSingleton.getInstance().getID3V2Version() != ID3V2Version.ID3_V23 && TagOptionSingleton.getInstance().getID3V2Version() == ID3V2Version.ID3_V22) {
            return new ID3v22Tag();
        }
        return new ID3v23Tag();
    }

    private String stripNullTerminator(String str) {
        return str.endsWith(NULL) ? str.substring(0, str.length() - 1) : str;
    }

    public void addChunkSummary(ChunkSummary chunkSummary) {
        this.chunkSummaryList.add(chunkSummary);
    }

    @Override
    public void addField(TagField tagField) throws FieldDataInvalidException {
        getActiveTag().addField(tagField);
    }

    @Override
    public TagField createCompilationField(boolean z) throws FieldDataInvalidException, KeyNotFoundException {
        return createField(FieldKey.IS_COMPILATION, String.valueOf(z));
    }

    @Override
    public TagField createField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        return getActiveTag().createField(fieldKey, strArr);
    }

    @Override
    public void deleteArtworkField() throws KeyNotFoundException {
        getActiveTag().deleteArtworkField();
    }

    @Override
    public void deleteField(FieldKey fieldKey) throws KeyNotFoundException {
        getActiveTag().deleteField(fieldKey);
    }

    public boolean equals(Object obj) {
        return getActiveTag().equals(obj);
    }

    public Tag getActiveTag() {
        switch (AnonymousClass1.$SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions[this.wavOptions.ordinal()]) {
            case 1:
            case 2:
                return this.id3Tag;
            case 3:
            case 4:
                return this.infoTag;
            case 5:
            case 6:
                return (isExistingId3Tag() || !isExistingInfoTag()) ? this.id3Tag : this.infoTag;
            case 7:
            case 8:
                return (isExistingInfoTag() || !isExistingId3Tag()) ? this.infoTag : this.id3Tag;
            default:
                return this.id3Tag;
        }
    }

    @Override
    public List<String> getAll(FieldKey fieldKey) throws KeyNotFoundException {
        return getActiveTag().getAll(fieldKey);
    }

    @Override
    public List<Artwork> getArtworkList() {
        return getActiveTag().getArtworkList();
    }

    public List<ChunkSummary> getChunkSummaryList() {
        return this.chunkSummaryList;
    }

    public long getEndLocationInFileOfId3Chunk() {
        if (isExistingId3Tag()) {
            return this.id3Tag.getEndLocationInFile().longValue();
        }
        return 0L;
    }

    @Override
    public int getFieldCount() {
        return getActiveTag().getFieldCount();
    }

    @Override
    public int getFieldCountIncludingSubValues() {
        return getFieldCount();
    }

    @Override
    public List<TagField> getFields(String str) {
        return getActiveTag().getFields(str);
    }

    @Override
    public String getFirst(String str) {
        return getActiveTag().getFirst(str);
    }

    @Override
    public Artwork getFirstArtwork() {
        return getActiveTag().getFirstArtwork();
    }

    @Override
    public TagField getFirstField(String str) {
        return getActiveTag().getFirstField(str);
    }

    @Override
    public AbstractID3v2Tag getID3Tag() {
        return this.id3Tag;
    }

    public WavInfoTag getInfoTag() {
        return this.infoTag;
    }

    public long getSizeOfID3TagIncludingChunkHeader() {
        if (isExistingId3Tag()) {
            return getSizeOfID3TagOnly() + 8;
        }
        return 0L;
    }

    public long getSizeOfID3TagOnly() {
        if (isExistingId3Tag()) {
            return this.id3Tag.getEndLocationInFile().longValue() - this.id3Tag.getStartLocationInFile().longValue();
        }
        return 0L;
    }

    public long getStartLocationInFileOfId3Chunk() {
        if (isExistingId3Tag()) {
            return this.id3Tag.getStartLocationInFile().longValue() - 8;
        }
        return 0L;
    }

    @Override
    public String getValue(FieldKey fieldKey, int i) throws KeyNotFoundException {
        return getActiveTag().getValue(fieldKey, i);
    }

    @Override
    public boolean hasCommonFields() {
        return getActiveTag().hasCommonFields();
    }

    @Override
    public boolean hasField(FieldKey fieldKey) {
        return getActiveTag().hasField(fieldKey);
    }

    @Override
    public boolean isEmpty() {
        return getActiveTag() == null || getActiveTag().isEmpty();
    }

    public boolean isExistingId3Tag() {
        return this.isExistingId3Tag;
    }

    public boolean isExistingInfoTag() {
        return this.isExistingInfoTag;
    }

    public boolean isID3Tag() {
        return this.id3Tag != null;
    }

    public boolean isIncorrectlyAlignedTag() {
        return this.isIncorrectlyAlignedTag;
    }

    public boolean isInfoTag() {
        return this.infoTag != null;
    }

    @Override
    public boolean setEncoding(Charset charset) throws FieldDataInvalidException {
        return getActiveTag().setEncoding(charset);
    }

    public void setExistingId3Tag(boolean z) {
        this.isExistingId3Tag = z;
    }

    public void setExistingInfoTag(boolean z) {
        this.isExistingInfoTag = z;
    }

    @Override
    public void setField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        setField(createField(fieldKey, strArr));
    }

    @Override
    public void setID3Tag(AbstractID3v2Tag abstractID3v2Tag) {
        this.id3Tag = abstractID3v2Tag;
    }

    public void setIncorrectlyAlignedTag(boolean z) {
        this.isIncorrectlyAlignedTag = z;
    }

    public void setInfoTag(WavInfoTag wavInfoTag) {
        this.infoTag = wavInfoTag;
    }

    public void syncTagBeforeWrite() {
        if (getActiveTag() instanceof WavInfoTag) {
            syncToId3FromInfoOverwrite();
        } else {
            syncToInfoFromId3Overwrite();
        }
    }

    public void syncTagsAfterRead() {
        if (getActiveTag() instanceof WavInfoTag) {
            syncToInfoFromId3IfEmpty();
        } else {
            syncToId3FromInfoIfEmpty();
        }
    }

    public void syncToId3FromInfoIfEmpty() {
        try {
            for (FieldKey fieldKey : GenericTag.getSupportedKeys()) {
                if (this.id3Tag.getFirst(fieldKey).isEmpty()) {
                    String first = this.infoTag.getFirst(fieldKey);
                    if (first.isEmpty()) {
                        continue;
                    } else {
                        this.id3Tag.setField(fieldKey, stripNullTerminator(first));
                    }
                }
            }
        } catch (FieldDataInvalidException e) {
            logger.log(Level.INFO, "Couldn't sync to ID3 because the data to sync was invalid", (Throwable) e);
        }
    }

    public void syncToId3FromInfoOverwrite() {
        try {
            for (FieldKey fieldKey : GenericTag.getSupportedKeys()) {
                if (this.infoTag.getFirst(fieldKey).isEmpty()) {
                    this.id3Tag.deleteField(fieldKey);
                } else {
                    this.id3Tag.setField(fieldKey, stripNullTerminator(this.infoTag.getFirst(fieldKey)));
                }
            }
        } catch (FieldDataInvalidException e) {
            logger.log(Level.INFO, "Couldn't sync to ID3 because the data to sync was invalid", (Throwable) e);
        }
    }

    public void syncToInfoFromId3IfEmpty() {
        try {
            for (FieldKey fieldKey : GenericTag.getSupportedKeys()) {
                if (this.infoTag.getFirst(fieldKey).isEmpty() && !this.id3Tag.getFirst(fieldKey).isEmpty()) {
                    this.infoTag.setField(fieldKey, addNullTerminatorIfNone(this.id3Tag.getFirst(fieldKey)));
                }
            }
        } catch (FieldDataInvalidException e) {
            logger.log(Level.INFO, "Couldn't sync to INFO because the data to sync was invalid", (Throwable) e);
        }
    }

    public void syncToInfoFromId3Overwrite() {
        try {
            for (FieldKey fieldKey : GenericTag.getSupportedKeys()) {
                if (this.id3Tag.getFirst(fieldKey).isEmpty()) {
                    this.infoTag.deleteField(fieldKey);
                } else {
                    this.infoTag.setField(fieldKey, addNullTerminatorIfNone(this.id3Tag.getFirst(fieldKey)));
                }
            }
        } catch (FieldDataInvalidException e) {
            logger.log(Level.INFO, "Couldn't sync to INFO because the data to sync was invalid", (Throwable) e);
        }
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<ChunkSummary> it = this.chunkSummaryList.iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString() + "\n");
        }
        if (this.id3Tag != null) {
            sb.append("Wav ID3 Tag:\n");
            if (isExistingId3Tag()) {
                sb.append("\tstartLocation:" + Hex.asDecAndHex(getStartLocationInFileOfId3Chunk()) + "\n");
                sb.append("\tendLocation:" + Hex.asDecAndHex(getEndLocationInFileOfId3Chunk()) + "\n");
            }
            sb.append(this.id3Tag.toString() + "\n");
        }
        if (this.infoTag != null) {
            sb.append(this.infoTag.toString() + "\n");
        }
        return sb.toString();
    }

    @Override
    public void addField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        addField(createField(fieldKey, strArr));
    }

    @Override
    public TagField createField(Artwork artwork) throws FieldDataInvalidException {
        return getActiveTag().createField(artwork);
    }

    @Override
    public void deleteField(String str) throws KeyNotFoundException {
        getActiveTag().deleteField(str);
    }

    @Override
    public Iterator<TagField> getFields() {
        return getActiveTag().getFields();
    }

    @Override
    public String getFirst(FieldKey fieldKey) throws KeyNotFoundException {
        return getValue(fieldKey, 0);
    }

    @Override
    public TagField getFirstField(FieldKey fieldKey) throws KeyNotFoundException {
        if (fieldKey != null) {
            return getActiveTag().getFirstField(fieldKey);
        }
        throw new KeyNotFoundException();
    }

    @Override
    public boolean hasField(String str) {
        return getActiveTag().hasField(str);
    }

    @Override
    public List<TagField> getFields(FieldKey fieldKey) throws KeyNotFoundException {
        return getActiveTag().getFields(fieldKey);
    }

    @Override
    public void setField(TagField tagField) throws FieldDataInvalidException {
        getActiveTag().setField(tagField);
    }

    @Override
    public void addField(Artwork artwork) throws FieldDataInvalidException {
        addField(createField(artwork));
    }

    @Override
    public void setField(Artwork artwork) throws FieldDataInvalidException {
        setField(createField(artwork));
    }
}
