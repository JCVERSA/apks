package com.transsion.audiotagger.tag.asf;

import com.transsion.audiotagger.audio.asf.data.AsfHeader;
import com.transsion.audiotagger.audio.generic.AbstractTag;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.FieldDataInvalidException;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.KeyNotFoundException;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.TagTextField;
import com.transsion.audiotagger.tag.images.Artwork;
import com.transsion.audiotagger.tag.images.ArtworkFactory;
import com.transsion.audiotagger.tag.reference.PictureTypes;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class AsfTag extends AbstractTag {
    public static final Set<AsfFieldKey> COMMON_FIELDS;
    private static final EnumMap<FieldKey, AsfFieldKey> tagFieldToAsfField;
    private final boolean copyFields;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$transsion$audiotagger$tag$asf$AsfFieldKey;

        static {
            int[] iArr = new int[AsfFieldKey.values().length];
            $SwitchMap$com$transsion$audiotagger$tag$asf$AsfFieldKey = iArr;
            try {
                iArr[AsfFieldKey.COVER_ART.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$asf$AsfFieldKey[AsfFieldKey.BANNER_IMAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class AsfFieldIterator implements Iterator<AsfTagField> {
        static final boolean $assertionsDisabled = false;
        private final Iterator<TagField> fieldIterator;

        public AsfFieldIterator(Iterator<TagField> it) {
            this.fieldIterator = it;
        }

        @Override
        public boolean hasNext() {
            return this.fieldIterator.hasNext();
        }

        @Override
        public void remove() {
            this.fieldIterator.remove();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public AsfTagField next() {
            return (AsfTagField) this.fieldIterator.next();
        }
    }

    static {
        EnumMap<FieldKey, AsfFieldKey> enumMap = new EnumMap<>(FieldKey.class);
        tagFieldToAsfField = enumMap;
        enumMap.put(FieldKey.ACOUSTID_FINGERPRINT, AsfFieldKey.ACOUSTID_FINGERPRINT);
        enumMap.put(FieldKey.ACOUSTID_ID, AsfFieldKey.ACOUSTID_ID);
        FieldKey fieldKey = FieldKey.ALBUM;
        AsfFieldKey asfFieldKey = AsfFieldKey.ALBUM;
        enumMap.put(fieldKey, asfFieldKey);
        enumMap.put(FieldKey.ALBUM_ARTIST, AsfFieldKey.ALBUM_ARTIST);
        enumMap.put(FieldKey.ALBUM_ARTIST_SORT, AsfFieldKey.ALBUM_ARTIST_SORT);
        enumMap.put(FieldKey.ALBUM_ARTISTS, AsfFieldKey.ALBUM_ARTISTS);
        enumMap.put(FieldKey.ALBUM_ARTISTS_SORT, AsfFieldKey.ALBUM_ARTISTS_SORT);
        enumMap.put(FieldKey.ALBUM_SORT, AsfFieldKey.ALBUM_SORT);
        enumMap.put(FieldKey.AMAZON_ID, AsfFieldKey.AMAZON_ID);
        enumMap.put(FieldKey.ARRANGER, AsfFieldKey.ARRANGER);
        enumMap.put(FieldKey.ARRANGER_SORT, AsfFieldKey.ARRANGER_SORT);
        FieldKey fieldKey2 = FieldKey.ARTIST;
        AsfFieldKey asfFieldKey2 = AsfFieldKey.AUTHOR;
        enumMap.put(fieldKey2, asfFieldKey2);
        enumMap.put(FieldKey.ARTISTS, AsfFieldKey.ARTISTS);
        enumMap.put(FieldKey.ARTISTS_SORT, AsfFieldKey.ARTISTS_SORT);
        enumMap.put(FieldKey.ARTIST_SORT, AsfFieldKey.ARTIST_SORT);
        enumMap.put(FieldKey.BARCODE, AsfFieldKey.BARCODE);
        enumMap.put(FieldKey.BPM, AsfFieldKey.BPM);
        enumMap.put(FieldKey.CATALOG_NO, AsfFieldKey.CATALOG_NO);
        enumMap.put(FieldKey.CHOIR, AsfFieldKey.CHOIR);
        enumMap.put(FieldKey.CHOIR_SORT, AsfFieldKey.CHOIR_SORT);
        enumMap.put(FieldKey.CLASSICAL_CATALOG, AsfFieldKey.CLASSICAL_CATALOG);
        enumMap.put(FieldKey.CLASSICAL_NICKNAME, AsfFieldKey.CLASSICAL_NICKNAME);
        FieldKey fieldKey3 = FieldKey.COMMENT;
        AsfFieldKey asfFieldKey3 = AsfFieldKey.DESCRIPTION;
        enumMap.put(fieldKey3, asfFieldKey3);
        enumMap.put(FieldKey.COMPOSER, AsfFieldKey.COMPOSER);
        enumMap.put(FieldKey.COMPOSER_SORT, AsfFieldKey.COMPOSER_SORT);
        enumMap.put(FieldKey.CONDUCTOR, AsfFieldKey.CONDUCTOR);
        enumMap.put(FieldKey.CONDUCTOR_SORT, AsfFieldKey.CONDUCTOR_SORT);
        enumMap.put(FieldKey.COPYRIGHT, AsfFieldKey.COPYRIGHT);
        enumMap.put(FieldKey.COUNTRY, AsfFieldKey.COUNTRY);
        enumMap.put(FieldKey.COVER_ART, AsfFieldKey.COVER_ART);
        enumMap.put(FieldKey.CUSTOM1, AsfFieldKey.CUSTOM1);
        enumMap.put(FieldKey.CUSTOM2, AsfFieldKey.CUSTOM2);
        enumMap.put(FieldKey.CUSTOM3, AsfFieldKey.CUSTOM3);
        enumMap.put(FieldKey.CUSTOM4, AsfFieldKey.CUSTOM4);
        enumMap.put(FieldKey.CUSTOM5, AsfFieldKey.CUSTOM5);
        enumMap.put(FieldKey.DISC_NO, AsfFieldKey.DISC_NO);
        enumMap.put(FieldKey.DISC_SUBTITLE, AsfFieldKey.DISC_SUBTITLE);
        enumMap.put(FieldKey.DISC_TOTAL, AsfFieldKey.DISC_TOTAL);
        enumMap.put(FieldKey.DJMIXER, AsfFieldKey.DJMIXER);
        enumMap.put(FieldKey.MOOD_ELECTRONIC, AsfFieldKey.MOOD_ELECTRONIC);
        enumMap.put(FieldKey.ENCODER, AsfFieldKey.ENCODER);
        enumMap.put(FieldKey.ENGINEER, AsfFieldKey.ENGINEER);
        enumMap.put(FieldKey.ENSEMBLE, AsfFieldKey.ENSEMBLE);
        enumMap.put(FieldKey.ENSEMBLE_SORT, AsfFieldKey.ENSEMBLE_SORT);
        enumMap.put(FieldKey.FBPM, AsfFieldKey.FBPM);
        FieldKey fieldKey4 = FieldKey.GENRE;
        AsfFieldKey asfFieldKey4 = AsfFieldKey.GENRE;
        enumMap.put(fieldKey4, asfFieldKey4);
        enumMap.put(FieldKey.GROUP, AsfFieldKey.GROUP);
        enumMap.put(FieldKey.GROUPING, AsfFieldKey.GROUPING);
        enumMap.put(FieldKey.INSTRUMENT, AsfFieldKey.INSTRUMENT);
        enumMap.put(FieldKey.INVOLVED_PERSON, AsfFieldKey.INVOLVED_PERSON);
        enumMap.put(FieldKey.ISRC, AsfFieldKey.ISRC);
        enumMap.put(FieldKey.IS_CLASSICAL, AsfFieldKey.IS_CLASSICAL);
        enumMap.put(FieldKey.IS_COMPILATION, AsfFieldKey.IS_COMPILATION);
        enumMap.put(FieldKey.IS_SOUNDTRACK, AsfFieldKey.IS_SOUNDTRACK);
        enumMap.put(FieldKey.KEY, AsfFieldKey.INITIAL_KEY);
        enumMap.put(FieldKey.LANGUAGE, AsfFieldKey.LANGUAGE);
        enumMap.put(FieldKey.LYRICIST, AsfFieldKey.LYRICIST);
        enumMap.put(FieldKey.LYRICS, AsfFieldKey.LYRICS);
        enumMap.put(FieldKey.MEDIA, AsfFieldKey.MEDIA);
        enumMap.put(FieldKey.MIXER, AsfFieldKey.MIXER);
        enumMap.put(FieldKey.MOOD, AsfFieldKey.MOOD);
        enumMap.put(FieldKey.MOOD_ACOUSTIC, AsfFieldKey.MOOD_ACOUSTIC);
        enumMap.put(FieldKey.MOOD_AGGRESSIVE, AsfFieldKey.MOOD_AGGRESSIVE);
        enumMap.put(FieldKey.MOOD_AROUSAL, AsfFieldKey.MOOD_AROUSAL);
        enumMap.put(FieldKey.MOOD_DANCEABILITY, AsfFieldKey.MOOD_DANCEABILITY);
        enumMap.put(FieldKey.MOOD_HAPPY, AsfFieldKey.MOOD_HAPPY);
        enumMap.put(FieldKey.MOOD_INSTRUMENTAL, AsfFieldKey.MOOD_INSTRUMENTAL);
        enumMap.put(FieldKey.MOOD_PARTY, AsfFieldKey.MOOD_PARTY);
        enumMap.put(FieldKey.MOOD_RELAXED, AsfFieldKey.MOOD_RELAXED);
        enumMap.put(FieldKey.MOOD_SAD, AsfFieldKey.MOOD_SAD);
        enumMap.put(FieldKey.MOOD_VALENCE, AsfFieldKey.MOOD_VALENCE);
        enumMap.put(FieldKey.MOVEMENT, AsfFieldKey.MOVEMENT);
        enumMap.put(FieldKey.MOVEMENT_NO, AsfFieldKey.MOVEMENT_NO);
        enumMap.put(FieldKey.MOVEMENT_TOTAL, AsfFieldKey.MOVEMENT_TOTAL);
        enumMap.put(FieldKey.MUSICBRAINZ_ARTISTID, AsfFieldKey.MUSICBRAINZ_ARTISTID);
        enumMap.put(FieldKey.MUSICBRAINZ_DISC_ID, AsfFieldKey.MUSICBRAINZ_DISC_ID);
        enumMap.put(FieldKey.MUSICBRAINZ_ORIGINAL_RELEASE_ID, AsfFieldKey.MUSICBRAINZ_ORIGINAL_RELEASEID);
        enumMap.put(FieldKey.MUSICBRAINZ_RELEASEARTISTID, AsfFieldKey.MUSICBRAINZ_RELEASEARTISTID);
        enumMap.put(FieldKey.MUSICBRAINZ_RELEASEID, AsfFieldKey.MUSICBRAINZ_RELEASEID);
        enumMap.put(FieldKey.MUSICBRAINZ_RELEASE_COUNTRY, AsfFieldKey.MUSICBRAINZ_RELEASE_COUNTRY);
        enumMap.put(FieldKey.MUSICBRAINZ_RELEASE_GROUP_ID, AsfFieldKey.MUSICBRAINZ_RELEASEGROUPID);
        enumMap.put(FieldKey.MUSICBRAINZ_RELEASE_STATUS, AsfFieldKey.MUSICBRAINZ_RELEASE_STATUS);
        enumMap.put(FieldKey.MUSICBRAINZ_RELEASE_TRACK_ID, AsfFieldKey.MUSICBRAINZ_RELEASETRACKID);
        enumMap.put(FieldKey.MUSICBRAINZ_RELEASE_TYPE, AsfFieldKey.MUSICBRAINZ_RELEASE_TYPE);
        enumMap.put(FieldKey.MUSICBRAINZ_TRACK_ID, AsfFieldKey.MUSICBRAINZ_TRACK_ID);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK, AsfFieldKey.MUSICBRAINZ_WORK);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_ID, AsfFieldKey.MUSICBRAINZ_WORKID);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_COMPOSITION, AsfFieldKey.MUSICBRAINZ_WORK_COMPOSITION);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_COMPOSITION_ID, AsfFieldKey.MUSICBRAINZ_WORK_COMPOSITION_ID);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL1, AsfFieldKey.MUSICBRAINZ_WORK_PART_LEVEL1);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL1_ID, AsfFieldKey.MUSICBRAINZ_WORK_PART_LEVEL1_ID);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL1_TYPE, AsfFieldKey.MUSICBRAINZ_WORK_PART_LEVEL1_TYPE);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL2, AsfFieldKey.MUSICBRAINZ_WORK_PART_LEVEL2);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL2_ID, AsfFieldKey.MUSICBRAINZ_WORK_PART_LEVEL2_ID);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL2_TYPE, AsfFieldKey.MUSICBRAINZ_WORK_PART_LEVEL2_TYPE);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL3, AsfFieldKey.MUSICBRAINZ_WORK_PART_LEVEL3);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL3_ID, AsfFieldKey.MUSICBRAINZ_WORK_PART_LEVEL3_ID);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL3_TYPE, AsfFieldKey.MUSICBRAINZ_WORK_PART_LEVEL3_TYPE);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL4, AsfFieldKey.MUSICBRAINZ_WORK_PART_LEVEL4);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL4_ID, AsfFieldKey.MUSICBRAINZ_WORK_PART_LEVEL4_ID);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL4_TYPE, AsfFieldKey.MUSICBRAINZ_WORK_PART_LEVEL4_TYPE);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL5, AsfFieldKey.MUSICBRAINZ_WORK_PART_LEVEL5);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL5_ID, AsfFieldKey.MUSICBRAINZ_WORK_PART_LEVEL5_ID);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL5_TYPE, AsfFieldKey.MUSICBRAINZ_WORK_PART_LEVEL5_TYPE);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL6, AsfFieldKey.MUSICBRAINZ_WORK_PART_LEVEL6);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL6_ID, AsfFieldKey.MUSICBRAINZ_WORK_PART_LEVEL6_ID);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL6_TYPE, AsfFieldKey.MUSICBRAINZ_WORK_PART_LEVEL6_TYPE);
        enumMap.put(FieldKey.MUSICIP_ID, AsfFieldKey.MUSICIP_ID);
        enumMap.put(FieldKey.OCCASION, AsfFieldKey.OCCASION);
        enumMap.put(FieldKey.OPUS, AsfFieldKey.OPUS);
        enumMap.put(FieldKey.ORCHESTRA, AsfFieldKey.ORCHESTRA);
        enumMap.put(FieldKey.ORCHESTRA_SORT, AsfFieldKey.ORCHESTRA_SORT);
        enumMap.put(FieldKey.ORIGINAL_ALBUM, AsfFieldKey.ORIGINAL_ALBUM);
        enumMap.put(FieldKey.ORIGINAL_ARTIST, AsfFieldKey.ORIGINAL_ARTIST);
        enumMap.put(FieldKey.ORIGINAL_LYRICIST, AsfFieldKey.ORIGINAL_LYRICIST);
        enumMap.put(FieldKey.ORIGINAL_YEAR, AsfFieldKey.ORIGINAL_YEAR);
        enumMap.put(FieldKey.PART, AsfFieldKey.PART);
        enumMap.put(FieldKey.PART_NUMBER, AsfFieldKey.PART_NUMBER);
        enumMap.put(FieldKey.PART_TYPE, AsfFieldKey.PART_TYPE);
        enumMap.put(FieldKey.PERFORMER, AsfFieldKey.PERFORMER);
        enumMap.put(FieldKey.PERFORMER_NAME, AsfFieldKey.PERFORMER_NAME);
        enumMap.put(FieldKey.PERFORMER_NAME_SORT, AsfFieldKey.PERFORMER_NAME_SORT);
        enumMap.put(FieldKey.PERIOD, AsfFieldKey.PERIOD);
        enumMap.put(FieldKey.PRODUCER, AsfFieldKey.PRODUCER);
        enumMap.put(FieldKey.QUALITY, AsfFieldKey.QUALITY);
        enumMap.put(FieldKey.RANKING, AsfFieldKey.RANKING);
        enumMap.put(FieldKey.RATING, AsfFieldKey.USER_RATING);
        enumMap.put(FieldKey.RECORD_LABEL, AsfFieldKey.RECORD_LABEL);
        enumMap.put(FieldKey.REMIXER, AsfFieldKey.REMIXER);
        enumMap.put(FieldKey.SCRIPT, AsfFieldKey.SCRIPT);
        enumMap.put(FieldKey.SINGLE_DISC_TRACK_NO, AsfFieldKey.SINGLE_DISC_TRACK_NO);
        enumMap.put(FieldKey.SUBTITLE, AsfFieldKey.SUBTITLE);
        enumMap.put(FieldKey.TAGS, AsfFieldKey.TAGS);
        enumMap.put(FieldKey.TEMPO, AsfFieldKey.TEMPO);
        enumMap.put(FieldKey.TIMBRE, AsfFieldKey.TIMBRE);
        FieldKey fieldKey5 = FieldKey.TITLE;
        AsfFieldKey asfFieldKey5 = AsfFieldKey.TITLE;
        enumMap.put(fieldKey5, asfFieldKey5);
        enumMap.put(FieldKey.TITLE_MOVEMENT, AsfFieldKey.TITLE_MOVEMENT);
        enumMap.put(FieldKey.TITLE_SORT, AsfFieldKey.TITLE_SORT);
        enumMap.put(FieldKey.TONALITY, AsfFieldKey.TONALITY);
        FieldKey fieldKey6 = FieldKey.TRACK;
        AsfFieldKey asfFieldKey6 = AsfFieldKey.TRACK;
        enumMap.put(fieldKey6, asfFieldKey6);
        enumMap.put(FieldKey.TRACK_TOTAL, AsfFieldKey.TRACK_TOTAL);
        enumMap.put(FieldKey.URL_DISCOGS_ARTIST_SITE, AsfFieldKey.URL_DISCOGS_ARTIST_SITE);
        enumMap.put(FieldKey.URL_DISCOGS_RELEASE_SITE, AsfFieldKey.URL_DISCOGS_RELEASE_SITE);
        enumMap.put(FieldKey.URL_LYRICS_SITE, AsfFieldKey.URL_LYRICS_SITE);
        enumMap.put(FieldKey.URL_OFFICIAL_ARTIST_SITE, AsfFieldKey.URL_OFFICIAL_ARTIST_SITE);
        enumMap.put(FieldKey.URL_OFFICIAL_RELEASE_SITE, AsfFieldKey.URL_OFFICIAL_RELEASE_SITE);
        enumMap.put(FieldKey.URL_WIKIPEDIA_ARTIST_SITE, AsfFieldKey.URL_WIKIPEDIA_ARTIST_SITE);
        enumMap.put(FieldKey.URL_WIKIPEDIA_RELEASE_SITE, AsfFieldKey.URL_WIKIPEDIA_RELEASE_SITE);
        enumMap.put(FieldKey.WORK, AsfFieldKey.WORK);
        enumMap.put(FieldKey.WORK_TYPE, AsfFieldKey.WORK_TYPE);
        FieldKey fieldKey7 = FieldKey.YEAR;
        AsfFieldKey asfFieldKey7 = AsfFieldKey.YEAR;
        enumMap.put(fieldKey7, asfFieldKey7);
        HashSet hashSet = new HashSet();
        COMMON_FIELDS = hashSet;
        hashSet.add(asfFieldKey);
        hashSet.add(asfFieldKey2);
        hashSet.add(asfFieldKey3);
        hashSet.add(asfFieldKey4);
        hashSet.add(asfFieldKey5);
        hashSet.add(asfFieldKey6);
        hashSet.add(asfFieldKey7);
    }

    public AsfTag() {
        this(false);
    }

    private void copyFrom(Tag tag) {
        Iterator<TagField> fields = tag.getFields();
        while (fields.hasNext()) {
            TagField tagFieldCopyFrom = copyFrom(fields.next());
            if (tagFieldCopyFrom != null) {
                super.addField(tagFieldCopyFrom);
            }
        }
    }

    private boolean isValidField(TagField tagField) {
        if (tagField != null && (tagField instanceof AsfTagField)) {
            return !tagField.isEmpty();
        }
        return false;
    }

    public void addCopyright(String str) {
        addField(createCopyrightField(str));
    }

    @Override
    public void addField(TagField tagField) {
        if (isValidField(tagField)) {
            if (AsfFieldKey.isMultiValued(tagField.getId())) {
                super.addField(copyFrom(tagField));
            } else {
                super.setField(copyFrom(tagField));
            }
        }
    }

    public void addRating(String str) {
        addField(createRatingField(str));
    }

    public AsfTagCoverField createArtworkField(byte[] bArr) {
        return new AsfTagCoverField(bArr, PictureTypes.DEFAULT_ID.intValue(), null, null);
    }

    @Override
    public TagField createCompilationField(boolean z) throws FieldDataInvalidException, KeyNotFoundException {
        return createField(FieldKey.IS_COMPILATION, String.valueOf(z));
    }

    public AsfTagTextField createCopyrightField(String str) {
        return new AsfTagTextField(AsfFieldKey.COPYRIGHT, str);
    }

    public AsfTagTextField createRatingField(String str) {
        return new AsfTagTextField(AsfFieldKey.RATING, str);
    }

    public void deleteField(AsfFieldKey asfFieldKey) {
        super.deleteField(asfFieldKey.getFieldName());
    }

    @Override
    public List<String> getAll(FieldKey fieldKey) throws KeyNotFoundException {
        AsfFieldKey asfFieldKey = tagFieldToAsfField.get(fieldKey);
        if (asfFieldKey != null) {
            return super.getAll(asfFieldKey.getFieldName());
        }
        throw new KeyNotFoundException();
    }

    @Override
    public List<Artwork> getArtworkList() {
        List<TagField> fields = getFields(FieldKey.COVER_ART);
        ArrayList arrayList = new ArrayList(fields.size());
        Iterator<TagField> it = fields.iterator();
        while (it.hasNext()) {
            AsfTagCoverField asfTagCoverField = (AsfTagCoverField) it.next();
            Artwork artwork = ArtworkFactory.getNew();
            artwork.setBinaryData(asfTagCoverField.getRawImageData());
            artwork.setMimeType(asfTagCoverField.getMimeType());
            artwork.setDescription(asfTagCoverField.getDescription());
            artwork.setPictureType(asfTagCoverField.getPictureType());
            arrayList.add(artwork);
        }
        return arrayList;
    }

    public Iterator<AsfTagField> getAsfFields() {
        if (isCopyingFields()) {
            return new AsfFieldIterator(getFields());
        }
        throw new IllegalStateException("Since the field conversion is not enabled, this method cannot be executed");
    }

    public List<TagField> getCopyright() {
        return getFields(AsfFieldKey.COPYRIGHT.getFieldName());
    }

    @Override
    public List<TagField> getFields(FieldKey fieldKey) throws KeyNotFoundException {
        if (fieldKey != null) {
            return super.getFields(tagFieldToAsfField.get(fieldKey).getFieldName());
        }
        throw new KeyNotFoundException();
    }

    @Override
    public String getFirst(FieldKey fieldKey) throws KeyNotFoundException {
        return getValue(fieldKey, 0);
    }

    public String getFirstCopyright() {
        return getFirst(AsfFieldKey.COPYRIGHT.getFieldName());
    }

    public String getFirstRating() {
        return getFirst(AsfFieldKey.RATING.getFieldName());
    }

    public List<TagField> getRating() {
        return getFields(AsfFieldKey.RATING.getFieldName());
    }

    @Override
    public String getValue(FieldKey fieldKey, int i) throws KeyNotFoundException {
        if (fieldKey != null) {
            return super.getItem(tagFieldToAsfField.get(fieldKey).getFieldName(), i);
        }
        throw new KeyNotFoundException();
    }

    @Override
    public boolean hasField(FieldKey fieldKey) {
        return getFields(tagFieldToAsfField.get(fieldKey).getFieldName()).size() != 0;
    }

    @Override
    public boolean isAllowedEncoding(Charset charset) {
        return AsfHeader.ASF_CHARSET.name().equals(charset);
    }

    public boolean isCopyingFields() {
        return this.copyFields;
    }

    public void setCopyright(String str) {
        setField(createCopyrightField(str));
    }

    @Override
    public void setField(TagField tagField) {
        if (isValidField(tagField)) {
            super.setField(copyFrom(tagField));
        }
    }

    public void setRating(String str) {
        setField(createRatingField(str));
    }

    public AsfTag(boolean z) {
        this.copyFields = z;
    }

    @Override
    public void deleteField(FieldKey fieldKey) throws KeyNotFoundException {
        if (fieldKey == null) {
            throw new KeyNotFoundException();
        }
        super.deleteField(tagFieldToAsfField.get(fieldKey).getFieldName());
    }

    public String getFirst(AsfFieldKey asfFieldKey) throws KeyNotFoundException {
        if (asfFieldKey != null) {
            return super.getFirst(asfFieldKey.getFieldName());
        }
        throw new KeyNotFoundException();
    }

    @Override
    public AsfTagField getFirstField(FieldKey fieldKey) throws KeyNotFoundException {
        if (fieldKey != null) {
            return (AsfTagField) super.getFirstField(tagFieldToAsfField.get(fieldKey).getFieldName());
        }
        throw new KeyNotFoundException();
    }

    @Override
    public AsfTagCoverField createField(Artwork artwork) {
        return new AsfTagCoverField(artwork.getBinaryData(), artwork.getPictureType(), artwork.getDescription(), artwork.getMimeType());
    }

    public boolean hasField(AsfFieldKey asfFieldKey) {
        return getFields(asfFieldKey.getFieldName()).size() != 0;
    }

    public AsfTag(Tag tag, boolean z) throws UnsupportedEncodingException {
        this(z);
        copyFrom(tag);
    }

    public AsfTagTextField createField(AsfFieldKey asfFieldKey, String str) {
        if (str == null) {
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        if (asfFieldKey != null) {
            int i = AnonymousClass1.$SwitchMap$com$transsion$audiotagger$tag$asf$AsfFieldKey[asfFieldKey.ordinal()];
            if (i == 1) {
                throw new UnsupportedOperationException("Cover Art cannot be created using this method");
            }
            if (i != 2) {
                return new AsfTagTextField(asfFieldKey.getFieldName(), str);
            }
            throw new UnsupportedOperationException("Banner Image cannot be created using this method");
        }
        throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
    }

    private TagField copyFrom(TagField tagField) {
        TagField asfTagField;
        if (!isCopyingFields()) {
            return tagField;
        }
        if (tagField instanceof AsfTagField) {
            try {
                asfTagField = (TagField) ((AsfTagField) tagField).clone();
            } catch (CloneNotSupportedException unused) {
                asfTagField = new AsfTagField(((AsfTagField) tagField).getDescriptor());
            }
            return asfTagField;
        }
        if (tagField instanceof TagTextField) {
            return new AsfTagTextField(tagField.getId(), ((TagTextField) tagField).getContent());
        }
        throw new RuntimeException("Unknown Asf Tag Field class:" + tagField.getClass());
    }

    @Override
    public AsfTagTextField createField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        if (strArr == null || strArr[0] == null) {
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        if (fieldKey != null) {
            AsfFieldKey asfFieldKey = tagFieldToAsfField.get(fieldKey);
            if (asfFieldKey != null) {
                return createField(asfFieldKey, strArr[0]);
            }
            throw new KeyNotFoundException(fieldKey.toString());
        }
        throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
    }
}
