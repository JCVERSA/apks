package com.transsion.audiotagger.tag.aiff;

import com.transsion.audiotagger.audio.iff.ChunkSummary;
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

public class AiffTag implements Tag, Id3SupportingTag {
    private AbstractID3v2Tag id3Tag;
    private List<ChunkSummary> chunkSummaryList = new ArrayList();
    private boolean isIncorrectlyAlignedTag = false;
    private boolean isExistingId3Tag = false;

    public AiffTag() {
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

    public void addChunkSummary(ChunkSummary chunkSummary) {
        this.chunkSummaryList.add(chunkSummary);
    }

    @Override
    public void addField(TagField tagField) throws FieldDataInvalidException {
        this.id3Tag.addField(tagField);
    }

    @Override
    public TagField createCompilationField(boolean z) throws FieldDataInvalidException, KeyNotFoundException {
        return createField(FieldKey.IS_COMPILATION, String.valueOf(z));
    }

    @Override
    public TagField createField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        return this.id3Tag.createField(fieldKey, strArr);
    }

    @Override
    public void deleteArtworkField() throws KeyNotFoundException {
        this.id3Tag.deleteArtworkField();
    }

    @Override
    public void deleteField(FieldKey fieldKey) throws KeyNotFoundException {
        this.id3Tag.deleteField(fieldKey);
    }

    public boolean equals(Object obj) {
        return this.id3Tag.equals(obj);
    }

    @Override
    public List<String> getAll(FieldKey fieldKey) throws KeyNotFoundException {
        return this.id3Tag.getAll(fieldKey);
    }

    @Override
    public List<Artwork> getArtworkList() {
        return this.id3Tag.getArtworkList();
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
        return this.id3Tag.getFieldCount();
    }

    @Override
    public int getFieldCountIncludingSubValues() {
        return getFieldCount();
    }

    @Override
    public List<TagField> getFields(String str) {
        return this.id3Tag.getFields(str);
    }

    @Override
    public String getFirst(String str) {
        return this.id3Tag.getFirst(str);
    }

    @Override
    public Artwork getFirstArtwork() {
        return this.id3Tag.getFirstArtwork();
    }

    @Override
    public TagField getFirstField(String str) {
        return this.id3Tag.getFirstField(str);
    }

    @Override
    public AbstractID3v2Tag getID3Tag() {
        return this.id3Tag;
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
        return this.id3Tag.getValue(fieldKey, i);
    }

    @Override
    public boolean hasCommonFields() {
        return this.id3Tag.hasCommonFields();
    }

    @Override
    public boolean hasField(FieldKey fieldKey) {
        return this.id3Tag.hasField(fieldKey);
    }

    @Override
    public boolean isEmpty() {
        AbstractID3v2Tag abstractID3v2Tag = this.id3Tag;
        return abstractID3v2Tag == null || abstractID3v2Tag.isEmpty();
    }

    public boolean isExistingId3Tag() {
        return this.isExistingId3Tag;
    }

    public boolean isIncorrectlyAlignedTag() {
        return this.isIncorrectlyAlignedTag;
    }

    @Override
    public boolean setEncoding(Charset charset) throws FieldDataInvalidException {
        return this.id3Tag.setEncoding(charset);
    }

    public void setExistingId3Tag(boolean z) {
        this.isExistingId3Tag = z;
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

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<ChunkSummary> it = this.chunkSummaryList.iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString() + "\n");
        }
        if (this.id3Tag == null) {
            return "tag:empty";
        }
        sb.append("Aiff ID3 Tag:\n");
        if (isExistingId3Tag()) {
            if (this.isIncorrectlyAlignedTag) {
                sb.append("\tincorrectly starts as odd byte\n");
            }
            sb.append("\tstartLocation:" + Hex.asDecAndHex(getStartLocationInFileOfId3Chunk()) + "\n");
            sb.append("\tendLocation:" + Hex.asDecAndHex(getEndLocationInFileOfId3Chunk()) + "\n");
        }
        sb.append(this.id3Tag.toString() + "\n");
        return sb.toString();
    }

    @Override
    public void addField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        addField(createField(fieldKey, strArr));
    }

    @Override
    public TagField createField(Artwork artwork) throws FieldDataInvalidException {
        return this.id3Tag.createField(artwork);
    }

    @Override
    public void deleteField(String str) throws KeyNotFoundException {
        this.id3Tag.deleteField(str);
    }

    @Override
    public Iterator<TagField> getFields() {
        return this.id3Tag.getFields();
    }

    @Override
    public String getFirst(FieldKey fieldKey) throws KeyNotFoundException {
        return getValue(fieldKey, 0);
    }

    @Override
    public TagField getFirstField(FieldKey fieldKey) throws KeyNotFoundException {
        if (fieldKey != null) {
            return this.id3Tag.getFirstField(fieldKey);
        }
        throw new KeyNotFoundException();
    }

    @Override
    public boolean hasField(String str) {
        return this.id3Tag.hasField(str);
    }

    @Override
    public List<TagField> getFields(FieldKey fieldKey) throws KeyNotFoundException {
        return this.id3Tag.getFields(fieldKey);
    }

    @Override
    public void setField(TagField tagField) throws FieldDataInvalidException {
        this.id3Tag.setField(tagField);
    }

    @Override
    public void addField(Artwork artwork) throws FieldDataInvalidException {
        this.id3Tag.addField(artwork);
    }

    @Override
    public void setField(Artwork artwork) throws FieldDataInvalidException {
        this.id3Tag.setField(artwork);
    }

    public AiffTag(AbstractID3v2Tag abstractID3v2Tag) {
        this.id3Tag = abstractID3v2Tag;
    }
}
