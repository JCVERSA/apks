package com.transsion.audiotagger.tag.flac;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.flac.metadatablock.MetadataBlockDataPicture;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.FieldDataInvalidException;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.KeyNotFoundException;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.images.Artwork;
import com.transsion.audiotagger.tag.images.ArtworkFactory;
import com.transsion.audiotagger.tag.reference.PictureTypes;
import com.transsion.audiotagger.tag.vorbiscomment.VorbisAlbumArtistSaveOptions;
import com.transsion.audiotagger.tag.vorbiscomment.VorbisCommentFieldKey;
import com.transsion.audiotagger.tag.vorbiscomment.VorbisCommentTag;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class FlacTag implements Tag {
    private List<MetadataBlockDataPicture> images;
    private VorbisCommentTag tag;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions;

        static {
            int[] iArr = new int[VorbisAlbumArtistSaveOptions.values().length];
            $SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions = iArr;
            try {
                iArr[VorbisAlbumArtistSaveOptions.WRITE_ALBUMARTIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions[VorbisAlbumArtistSaveOptions.WRITE_JRIVER_ALBUMARTIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions[VorbisAlbumArtistSaveOptions.WRITE_ALBUMARTIST_AND_DELETE_JRIVER_ALBUMARTIST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions[VorbisAlbumArtistSaveOptions.WRITE_JRIVER_ALBUMARTIST_AND_DELETE_ALBUMARTIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions[VorbisAlbumArtistSaveOptions.WRITE_BOTH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public FlacTag() {
        this(VorbisCommentTag.createNewTag(), new ArrayList());
    }

    @Override
    public void addField(TagField tagField) throws FieldDataInvalidException {
        if (tagField instanceof MetadataBlockDataPicture) {
            this.images.add((MetadataBlockDataPicture) tagField);
        } else {
            this.tag.addField(tagField);
        }
    }

    public TagField createArtworkField(byte[] bArr, int i, String str, String str2, int i2, int i3, int i4, int i5) throws FieldDataInvalidException {
        if (bArr != null) {
            return new MetadataBlockDataPicture(bArr, i, str, str2, i2, i3, i4, i5);
        }
        throw new FieldDataInvalidException("ImageData cannot be null");
    }

    @Override
    public TagField createCompilationField(boolean z) throws FieldDataInvalidException, KeyNotFoundException {
        return this.tag.createCompilationField(z);
    }

    @Override
    public TagField createField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        if (fieldKey.equals(FieldKey.COVER_ART)) {
            throw new UnsupportedOperationException(ErrorMessage.ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD.getMsg());
        }
        return this.tag.createField(fieldKey, strArr);
    }

    public TagField createLinkedArtworkField(String str) {
        return new MetadataBlockDataPicture(str.getBytes(StandardCharsets.ISO_8859_1), PictureTypes.DEFAULT_ID.intValue(), "-->", "", 0, 0, 0, 0);
    }

    @Override
    public void deleteArtworkField() throws KeyNotFoundException {
        deleteField(FieldKey.COVER_ART);
    }

    @Override
    public void deleteField(FieldKey fieldKey) throws KeyNotFoundException {
        if (fieldKey.equals(FieldKey.COVER_ART)) {
            this.images.clear();
        } else {
            this.tag.deleteField(fieldKey);
        }
    }

    @Override
    public List<String> getAll(FieldKey fieldKey) throws KeyNotFoundException {
        if (fieldKey != FieldKey.COVER_ART) {
            return this.tag.getAll(fieldKey);
        }
        throw new UnsupportedOperationException(ErrorMessage.ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD.getMsg());
    }

    @Override
    public List<Artwork> getArtworkList() {
        ArrayList arrayList = new ArrayList(this.images.size());
        Iterator<MetadataBlockDataPicture> it = this.images.iterator();
        while (it.hasNext()) {
            arrayList.add(ArtworkFactory.createArtworkFromMetadataBlockDataPicture(it.next()));
        }
        return arrayList;
    }

    @Override
    public int getFieldCount() {
        return this.tag.getFieldCount() + this.images.size();
    }

    @Override
    public int getFieldCountIncludingSubValues() {
        return getFieldCount();
    }

    @Override
    public List<TagField> getFields(String str) {
        if (!str.equals(FieldKey.COVER_ART.name())) {
            return this.tag.getFields(str);
        }
        ArrayList arrayList = new ArrayList();
        Iterator<MetadataBlockDataPicture> it = this.images.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    @Override
    public String getFirst(String str) {
        if (str.equals(FieldKey.COVER_ART.name())) {
            throw new UnsupportedOperationException(ErrorMessage.ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD.getMsg());
        }
        return this.tag.getFirst(str);
    }

    @Override
    public Artwork getFirstArtwork() {
        List<Artwork> artworkList = getArtworkList();
        if (artworkList.size() > 0) {
            return artworkList.get(0);
        }
        return null;
    }

    @Override
    public TagField getFirstField(String str) {
        if (!str.equals(FieldKey.COVER_ART.name())) {
            return this.tag.getFirstField(str);
        }
        if (this.images.size() > 0) {
            return this.images.get(0);
        }
        return null;
    }

    public List<MetadataBlockDataPicture> getImages() {
        return this.images;
    }

    @Override
    public String getValue(FieldKey fieldKey, int i) throws KeyNotFoundException {
        if (fieldKey.equals(FieldKey.COVER_ART)) {
            throw new UnsupportedOperationException(ErrorMessage.ARTWORK_CANNOT_BE_RETRIEVED_WITH_THIS_METHOD.getMsg());
        }
        return this.tag.getValue(fieldKey, i);
    }

    public VorbisCommentTag getVorbisCommentTag() {
        return this.tag;
    }

    @Override
    public boolean hasCommonFields() {
        return this.tag.hasCommonFields();
    }

    @Override
    public boolean hasField(FieldKey fieldKey) {
        if (fieldKey == FieldKey.COVER_ART) {
            return this.images.size() > 0;
        }
        return this.tag.hasField(fieldKey);
    }

    @Override
    public boolean isEmpty() {
        VorbisCommentTag vorbisCommentTag = this.tag;
        return (vorbisCommentTag == null || vorbisCommentTag.isEmpty()) && this.images.size() == 0;
    }

    @Override
    public boolean setEncoding(Charset charset) throws FieldDataInvalidException {
        return this.tag.setEncoding(charset);
    }

    @Override
    public void setField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        String str;
        if (strArr == null || (str = strArr[0]) == null) {
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        if (fieldKey != FieldKey.ALBUM_ARTIST) {
            setField(createField(fieldKey, str));
            return;
        }
        int i = AnonymousClass1.$SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions[TagOptionSingleton.getInstance().getVorbisAlbumArtistSaveOptions().ordinal()];
        if (i == 1) {
            setField(createField(fieldKey, str));
            return;
        }
        if (i == 2) {
            setField(createField(VorbisCommentFieldKey.ALBUMARTIST_JRIVER, str));
            return;
        }
        if (i == 3) {
            setField(createField(fieldKey, str));
            deleteField(VorbisCommentFieldKey.ALBUMARTIST_JRIVER.getFieldName());
        } else if (i == 4) {
            setField(createField(VorbisCommentFieldKey.ALBUMARTIST_JRIVER, str));
            deleteField(VorbisCommentFieldKey.ALBUMARTIST.getFieldName());
        } else {
            if (i != 5) {
                return;
            }
            setField(createField(fieldKey, str));
            setField(createField(VorbisCommentFieldKey.ALBUMARTIST_JRIVER, str));
        }
    }

    @Override
    public String toString() {
        return "FLAC " + getVorbisCommentTag();
    }

    public FlacTag(VorbisCommentTag vorbisCommentTag, List<MetadataBlockDataPicture> list) {
        this.tag = null;
        new ArrayList();
        this.tag = vorbisCommentTag;
        this.images = list;
    }

    @Override
    public void addField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        String str;
        if (strArr != null && (str = strArr[0]) != null) {
            if (fieldKey == FieldKey.ALBUM_ARTIST) {
                int i = AnonymousClass1.$SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions[TagOptionSingleton.getInstance().getVorbisAlbumArtistSaveOptions().ordinal()];
                if (i == 1) {
                    addField(createField(fieldKey, str));
                } else if (i != 2) {
                    if (i == 3) {
                        addField(createField(fieldKey, str));
                        deleteField(VorbisCommentFieldKey.ALBUMARTIST_JRIVER.getFieldName());
                        return;
                    } else if (i == 4) {
                        addField(createField(VorbisCommentFieldKey.ALBUMARTIST_JRIVER, str));
                        deleteField(VorbisCommentFieldKey.ALBUMARTIST.getFieldName());
                        return;
                    } else {
                        if (i != 5) {
                            return;
                        }
                        addField(createField(fieldKey, str));
                        addField(createField(VorbisCommentFieldKey.ALBUMARTIST_JRIVER, str));
                        return;
                    }
                }
                addField(createField(VorbisCommentFieldKey.ALBUMARTIST_JRIVER, str));
                return;
            }
            addField(createField(fieldKey, str));
            return;
        }
        throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
    }

    public TagField createField(VorbisCommentFieldKey vorbisCommentFieldKey, String str) throws FieldDataInvalidException, KeyNotFoundException {
        if (!vorbisCommentFieldKey.equals(VorbisCommentFieldKey.COVERART)) {
            return this.tag.createField(vorbisCommentFieldKey, str);
        }
        throw new UnsupportedOperationException(ErrorMessage.ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD.getMsg());
    }

    @Override
    public void deleteField(String str) throws KeyNotFoundException {
        if (str.equals(FieldKey.COVER_ART.name())) {
            this.images.clear();
        } else {
            this.tag.deleteField(str);
        }
    }

    @Override
    public String getFirst(FieldKey fieldKey) throws KeyNotFoundException {
        return getValue(fieldKey, 0);
    }

    public boolean hasField(VorbisCommentFieldKey vorbisCommentFieldKey) {
        return this.tag.hasField(vorbisCommentFieldKey);
    }

    @Override
    public TagField getFirstField(FieldKey fieldKey) throws KeyNotFoundException {
        if (fieldKey != null) {
            FieldKey fieldKey2 = FieldKey.COVER_ART;
            if (fieldKey == fieldKey2) {
                return getFirstField(fieldKey2.name());
            }
            return this.tag.getFirstField(fieldKey);
        }
        throw new KeyNotFoundException();
    }

    @Override
    public boolean hasField(String str) {
        if (str.equals(FieldKey.COVER_ART.name())) {
            return this.images.size() > 0;
        }
        return this.tag.hasField(str);
    }

    @Override
    public Iterator<TagField> getFields() {
        return this.tag.getFields();
    }

    public TagField createField(String str, String str2) {
        if (!str.equals(VorbisCommentFieldKey.COVERART.getFieldName())) {
            return this.tag.createField(str, str2);
        }
        throw new UnsupportedOperationException(ErrorMessage.ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD.getMsg());
    }

    @Override
    public List<TagField> getFields(FieldKey fieldKey) throws KeyNotFoundException {
        if (fieldKey.equals(FieldKey.COVER_ART)) {
            ArrayList arrayList = new ArrayList();
            Iterator<MetadataBlockDataPicture> it = this.images.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            return arrayList;
        }
        return this.tag.getFields(fieldKey);
    }

    @Override
    public TagField createField(Artwork artwork) throws FieldDataInvalidException {
        if (artwork.isLinked()) {
            return new MetadataBlockDataPicture(artwork.getImageUrl().getBytes(StandardCharsets.ISO_8859_1), artwork.getPictureType(), "-->", "", 0, 0, 0, 0);
        }
        if (artwork.setImageFromData()) {
            return new MetadataBlockDataPicture(artwork.getBinaryData(), artwork.getPictureType(), artwork.getMimeType(), artwork.getDescription(), artwork.getWidth(), artwork.getHeight(), 0, 0);
        }
        throw new FieldDataInvalidException("Unable to createField buffered image from the image");
    }

    public void setField(String str, String str2) throws FieldDataInvalidException, KeyNotFoundException {
        setField(createField(str, str2));
    }

    @Override
    public void setField(TagField tagField) throws FieldDataInvalidException {
        if (tagField instanceof MetadataBlockDataPicture) {
            if (this.images.size() == 0) {
                this.images.add(0, (MetadataBlockDataPicture) tagField);
                return;
            } else {
                this.images.set(0, (MetadataBlockDataPicture) tagField);
                return;
            }
        }
        this.tag.setField(tagField);
    }

    public void addField(String str, String str2) throws FieldDataInvalidException, KeyNotFoundException {
        addField(createField(str, str2));
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
