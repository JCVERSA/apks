package com.transsion.audiotagger.tag.mp4;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.generic.AbstractTag;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.FieldDataInvalidException;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.KeyNotFoundException;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.images.Artwork;
import com.transsion.audiotagger.tag.images.ArtworkFactory;
import com.transsion.audiotagger.tag.mp4.field.Mp4DiscNoField;
import com.transsion.audiotagger.tag.mp4.field.Mp4GenreField;
import com.transsion.audiotagger.tag.mp4.field.Mp4TagByteField;
import com.transsion.audiotagger.tag.mp4.field.Mp4TagCoverField;
import com.transsion.audiotagger.tag.mp4.field.Mp4TagReverseDnsField;
import com.transsion.audiotagger.tag.mp4.field.Mp4TagTextField;
import com.transsion.audiotagger.tag.mp4.field.Mp4TagTextNumberField;
import com.transsion.audiotagger.tag.mp4.field.Mp4TrackField;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.BooleanUtils;

public class Mp4Tag extends AbstractTag {
    private static final EnumMap<FieldKey, Mp4FieldKey> tagFieldToMp4Field;

    static {
        EnumMap<FieldKey, Mp4FieldKey> enumMap = new EnumMap<>(FieldKey.class);
        tagFieldToMp4Field = enumMap;
        enumMap.put(FieldKey.ACOUSTID_FINGERPRINT, Mp4FieldKey.ACOUSTID_FINGERPRINT);
        enumMap.put(FieldKey.ACOUSTID_ID, Mp4FieldKey.ACOUSTID_ID);
        enumMap.put(FieldKey.ALBUM, Mp4FieldKey.ALBUM);
        enumMap.put(FieldKey.ALBUM_ARTIST, Mp4FieldKey.ALBUM_ARTIST);
        enumMap.put(FieldKey.ALBUM_ARTIST_SORT, Mp4FieldKey.ALBUM_ARTIST_SORT);
        enumMap.put(FieldKey.ALBUM_ARTISTS, Mp4FieldKey.ALBUM_ARTISTS);
        enumMap.put(FieldKey.ALBUM_ARTISTS_SORT, Mp4FieldKey.ALBUM_ARTISTS_SORT);
        enumMap.put(FieldKey.ALBUM_SORT, Mp4FieldKey.ALBUM_SORT);
        enumMap.put(FieldKey.AMAZON_ID, Mp4FieldKey.ASIN);
        enumMap.put(FieldKey.ARRANGER, Mp4FieldKey.ARRANGER);
        enumMap.put(FieldKey.ARRANGER_SORT, Mp4FieldKey.ARRANGER_SORT);
        enumMap.put(FieldKey.ARTIST, Mp4FieldKey.ARTIST);
        enumMap.put(FieldKey.ARTISTS, Mp4FieldKey.ARTISTS);
        enumMap.put(FieldKey.ARTIST_SORT, Mp4FieldKey.ARTIST_SORT);
        enumMap.put(FieldKey.ARTISTS_SORT, Mp4FieldKey.ARTISTS_SORT);
        enumMap.put(FieldKey.BARCODE, Mp4FieldKey.BARCODE);
        enumMap.put(FieldKey.BPM, Mp4FieldKey.BPM);
        enumMap.put(FieldKey.CATALOG_NO, Mp4FieldKey.CATALOGNO);
        enumMap.put(FieldKey.CHOIR, Mp4FieldKey.CHOIR);
        enumMap.put(FieldKey.CHOIR_SORT, Mp4FieldKey.CHOIR_SORT);
        enumMap.put(FieldKey.CLASSICAL_CATALOG, Mp4FieldKey.CLASSICAL_CATALOG);
        enumMap.put(FieldKey.CLASSICAL_NICKNAME, Mp4FieldKey.CLASSICAL_NICKNAME);
        enumMap.put(FieldKey.COMMENT, Mp4FieldKey.COMMENT);
        enumMap.put(FieldKey.COMPOSER, Mp4FieldKey.COMPOSER);
        enumMap.put(FieldKey.COMPOSER_SORT, Mp4FieldKey.COMPOSER_SORT);
        enumMap.put(FieldKey.CONDUCTOR, Mp4FieldKey.CONDUCTOR);
        enumMap.put(FieldKey.COUNTRY, Mp4FieldKey.COUNTRY);
        enumMap.put(FieldKey.CONDUCTOR_SORT, Mp4FieldKey.CONDUCTOR_SORT);
        enumMap.put(FieldKey.COPYRIGHT, Mp4FieldKey.COPYRIGHT);
        enumMap.put(FieldKey.COVER_ART, Mp4FieldKey.ARTWORK);
        enumMap.put(FieldKey.CUSTOM1, Mp4FieldKey.MM_CUSTOM_1);
        enumMap.put(FieldKey.CUSTOM2, Mp4FieldKey.MM_CUSTOM_2);
        enumMap.put(FieldKey.CUSTOM3, Mp4FieldKey.MM_CUSTOM_3);
        enumMap.put(FieldKey.CUSTOM4, Mp4FieldKey.MM_CUSTOM_4);
        enumMap.put(FieldKey.CUSTOM5, Mp4FieldKey.MM_CUSTOM_5);
        FieldKey fieldKey = FieldKey.DISC_NO;
        Mp4FieldKey mp4FieldKey = Mp4FieldKey.DISCNUMBER;
        enumMap.put(fieldKey, mp4FieldKey);
        enumMap.put(FieldKey.DISC_SUBTITLE, Mp4FieldKey.DISC_SUBTITLE);
        enumMap.put(FieldKey.DISC_TOTAL, mp4FieldKey);
        enumMap.put(FieldKey.DJMIXER, Mp4FieldKey.DJMIXER);
        enumMap.put(FieldKey.MOOD_ELECTRONIC, Mp4FieldKey.MOOD_ELECTRONIC);
        enumMap.put(FieldKey.ENCODER, Mp4FieldKey.ENCODER);
        enumMap.put(FieldKey.ENGINEER, Mp4FieldKey.ENGINEER);
        enumMap.put(FieldKey.ENSEMBLE, Mp4FieldKey.ENSEMBLE);
        enumMap.put(FieldKey.ENSEMBLE_SORT, Mp4FieldKey.ENSEMBLE_SORT);
        enumMap.put(FieldKey.FBPM, Mp4FieldKey.FBPM);
        enumMap.put(FieldKey.GENRE, Mp4FieldKey.GENRE);
        enumMap.put(FieldKey.GROUP, Mp4FieldKey.GROUP);
        enumMap.put(FieldKey.GROUPING, Mp4FieldKey.GROUPING);
        enumMap.put(FieldKey.INSTRUMENT, Mp4FieldKey.INSTRUMENT);
        enumMap.put(FieldKey.INVOLVED_PERSON, Mp4FieldKey.INVOLVED_PEOPLE);
        enumMap.put(FieldKey.ISRC, Mp4FieldKey.ISRC);
        enumMap.put(FieldKey.IS_COMPILATION, Mp4FieldKey.COMPILATION);
        enumMap.put(FieldKey.IS_CLASSICAL, Mp4FieldKey.IS_CLASSICAL);
        enumMap.put(FieldKey.IS_SOUNDTRACK, Mp4FieldKey.IS_SOUNDTRACK);
        enumMap.put(FieldKey.KEY, Mp4FieldKey.KEY);
        enumMap.put(FieldKey.LANGUAGE, Mp4FieldKey.LANGUAGE);
        enumMap.put(FieldKey.LYRICIST, Mp4FieldKey.LYRICIST);
        enumMap.put(FieldKey.LYRICS, Mp4FieldKey.LYRICS);
        enumMap.put(FieldKey.MEDIA, Mp4FieldKey.MEDIA);
        enumMap.put(FieldKey.MIXER, Mp4FieldKey.MIXER);
        enumMap.put(FieldKey.MOOD, Mp4FieldKey.MOOD);
        enumMap.put(FieldKey.MOOD_ACOUSTIC, Mp4FieldKey.MOOD_ACOUSTIC);
        enumMap.put(FieldKey.MOOD_AGGRESSIVE, Mp4FieldKey.MOOD_AGGRESSIVE);
        enumMap.put(FieldKey.MOOD_AROUSAL, Mp4FieldKey.MOOD_AROUSAL);
        enumMap.put(FieldKey.MOOD_DANCEABILITY, Mp4FieldKey.MOOD_DANCEABILITY);
        enumMap.put(FieldKey.MOOD_HAPPY, Mp4FieldKey.MOOD_HAPPY);
        enumMap.put(FieldKey.MOOD_INSTRUMENTAL, Mp4FieldKey.MOOD_INSTRUMENTAL);
        enumMap.put(FieldKey.MOOD_PARTY, Mp4FieldKey.MOOD_PARTY);
        enumMap.put(FieldKey.MOOD_RELAXED, Mp4FieldKey.MOOD_RELAXED);
        enumMap.put(FieldKey.MOOD_SAD, Mp4FieldKey.MOOD_SAD);
        enumMap.put(FieldKey.MOOD_VALENCE, Mp4FieldKey.MOOD_VALENCE);
        enumMap.put(FieldKey.MOVEMENT, Mp4FieldKey.MOVEMENT);
        enumMap.put(FieldKey.MOVEMENT_NO, Mp4FieldKey.MOVEMENT_NO);
        enumMap.put(FieldKey.MOVEMENT_TOTAL, Mp4FieldKey.MOVEMENT_TOTAL);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK, Mp4FieldKey.MUSICBRAINZ_WORK);
        enumMap.put(FieldKey.MUSICBRAINZ_ARTISTID, Mp4FieldKey.MUSICBRAINZ_ARTISTID);
        enumMap.put(FieldKey.MUSICBRAINZ_DISC_ID, Mp4FieldKey.MUSICBRAINZ_DISCID);
        enumMap.put(FieldKey.MUSICBRAINZ_ORIGINAL_RELEASE_ID, Mp4FieldKey.MUSICBRAINZ_ORIGINALALBUMID);
        enumMap.put(FieldKey.MUSICBRAINZ_RELEASEARTISTID, Mp4FieldKey.MUSICBRAINZ_ALBUMARTISTID);
        enumMap.put(FieldKey.MUSICBRAINZ_RELEASEID, Mp4FieldKey.MUSICBRAINZ_ALBUMID);
        enumMap.put(FieldKey.MUSICBRAINZ_RELEASE_COUNTRY, Mp4FieldKey.RELEASECOUNTRY);
        enumMap.put(FieldKey.MUSICBRAINZ_RELEASE_GROUP_ID, Mp4FieldKey.MUSICBRAINZ_RELEASE_GROUPID);
        enumMap.put(FieldKey.MUSICBRAINZ_RELEASE_STATUS, Mp4FieldKey.MUSICBRAINZ_ALBUM_STATUS);
        enumMap.put(FieldKey.MUSICBRAINZ_RELEASE_TRACK_ID, Mp4FieldKey.MUSICBRAINZ_RELEASE_TRACKID);
        enumMap.put(FieldKey.MUSICBRAINZ_RELEASE_TYPE, Mp4FieldKey.MUSICBRAINZ_ALBUM_TYPE);
        enumMap.put(FieldKey.MUSICBRAINZ_TRACK_ID, Mp4FieldKey.MUSICBRAINZ_TRACKID);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_ID, Mp4FieldKey.MUSICBRAINZ_WORKID);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_COMPOSITION_ID, Mp4FieldKey.MUSICBRAINZ_WORK_COMPOSITION_ID);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL1_ID, Mp4FieldKey.MUSICBRAINZ_WORK_PART_LEVEL1_ID);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_COMPOSITION, Mp4FieldKey.MUSICBRAINZ_WORK_COMPOSITION);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL1, Mp4FieldKey.MUSICBRAINZ_WORK_PART_LEVEL1);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL1_TYPE, Mp4FieldKey.MUSICBRAINZ_WORK_PART_LEVEL1_TYPE);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL2_ID, Mp4FieldKey.MUSICBRAINZ_WORK_PART_LEVEL2_ID);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL2, Mp4FieldKey.MUSICBRAINZ_WORK_PART_LEVEL2);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL2_TYPE, Mp4FieldKey.MUSICBRAINZ_WORK_PART_LEVEL2_TYPE);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL3_ID, Mp4FieldKey.MUSICBRAINZ_WORK_PART_LEVEL3_ID);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL3, Mp4FieldKey.MUSICBRAINZ_WORK_PART_LEVEL3);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL3_TYPE, Mp4FieldKey.MUSICBRAINZ_WORK_PART_LEVEL3_TYPE);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL4_ID, Mp4FieldKey.MUSICBRAINZ_WORK_PART_LEVEL4_ID);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL4, Mp4FieldKey.MUSICBRAINZ_WORK_PART_LEVEL4);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL4_TYPE, Mp4FieldKey.MUSICBRAINZ_WORK_PART_LEVEL4_TYPE);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL5_ID, Mp4FieldKey.MUSICBRAINZ_WORK_PART_LEVEL5_ID);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL5, Mp4FieldKey.MUSICBRAINZ_WORK_PART_LEVEL5);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL5_TYPE, Mp4FieldKey.MUSICBRAINZ_WORK_PART_LEVEL5_TYPE);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL6_ID, Mp4FieldKey.MUSICBRAINZ_WORK_PART_LEVEL6_ID);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL6, Mp4FieldKey.MUSICBRAINZ_WORK_PART_LEVEL6);
        enumMap.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL6_TYPE, Mp4FieldKey.MUSICBRAINZ_WORK_PART_LEVEL6_TYPE);
        enumMap.put(FieldKey.MUSICIP_ID, Mp4FieldKey.MUSICIP_PUID);
        enumMap.put(FieldKey.OCCASION, Mp4FieldKey.MM_OCCASION);
        enumMap.put(FieldKey.OPUS, Mp4FieldKey.OPUS);
        enumMap.put(FieldKey.ORCHESTRA, Mp4FieldKey.ORCHESTRA);
        enumMap.put(FieldKey.ORCHESTRA_SORT, Mp4FieldKey.ORCHESTRA_SORT);
        enumMap.put(FieldKey.ORIGINAL_ALBUM, Mp4FieldKey.MM_ORIGINAL_ALBUM_TITLE);
        enumMap.put(FieldKey.ORIGINAL_ARTIST, Mp4FieldKey.MM_ORIGINAL_ARTIST);
        enumMap.put(FieldKey.ORIGINAL_LYRICIST, Mp4FieldKey.MM_ORIGINAL_LYRICIST);
        enumMap.put(FieldKey.ORIGINAL_YEAR, Mp4FieldKey.MM_ORIGINAL_YEAR);
        enumMap.put(FieldKey.PART, Mp4FieldKey.PART);
        enumMap.put(FieldKey.PART_NUMBER, Mp4FieldKey.PART_NUMBER);
        enumMap.put(FieldKey.PART_TYPE, Mp4FieldKey.PART_TYPE);
        enumMap.put(FieldKey.PERFORMER, Mp4FieldKey.PERFORMER);
        enumMap.put(FieldKey.PERFORMER_NAME, Mp4FieldKey.PERFORMER_NAME);
        enumMap.put(FieldKey.PERFORMER_NAME_SORT, Mp4FieldKey.PERFORMER_NAME_SORT);
        enumMap.put(FieldKey.PERIOD, Mp4FieldKey.PERIOD);
        enumMap.put(FieldKey.PRODUCER, Mp4FieldKey.PRODUCER);
        enumMap.put(FieldKey.QUALITY, Mp4FieldKey.MM_QUALITY);
        enumMap.put(FieldKey.RANKING, Mp4FieldKey.RANKING);
        enumMap.put(FieldKey.RATING, Mp4FieldKey.SCORE);
        enumMap.put(FieldKey.RECORD_LABEL, Mp4FieldKey.LABEL);
        enumMap.put(FieldKey.REMIXER, Mp4FieldKey.REMIXER);
        enumMap.put(FieldKey.SCRIPT, Mp4FieldKey.SCRIPT);
        enumMap.put(FieldKey.SINGLE_DISC_TRACK_NO, Mp4FieldKey.SINGLE_DISC_TRACK_NO);
        enumMap.put(FieldKey.SUBTITLE, Mp4FieldKey.SUBTITLE);
        enumMap.put(FieldKey.TAGS, Mp4FieldKey.TAGS);
        enumMap.put(FieldKey.TEMPO, Mp4FieldKey.TEMPO);
        enumMap.put(FieldKey.TIMBRE, Mp4FieldKey.TIMBRE);
        enumMap.put(FieldKey.TITLE, Mp4FieldKey.TITLE);
        enumMap.put(FieldKey.TITLE_MOVEMENT, Mp4FieldKey.TITLE_MOVEMENT);
        enumMap.put(FieldKey.TITLE_SORT, Mp4FieldKey.TITLE_SORT);
        enumMap.put(FieldKey.TONALITY, Mp4FieldKey.TONALITY);
        FieldKey fieldKey2 = FieldKey.TRACK;
        Mp4FieldKey mp4FieldKey2 = Mp4FieldKey.TRACK;
        enumMap.put(fieldKey2, mp4FieldKey2);
        enumMap.put(FieldKey.TRACK_TOTAL, mp4FieldKey2);
        enumMap.put(FieldKey.URL_DISCOGS_ARTIST_SITE, Mp4FieldKey.URL_DISCOGS_ARTIST_SITE);
        enumMap.put(FieldKey.URL_DISCOGS_RELEASE_SITE, Mp4FieldKey.URL_DISCOGS_RELEASE_SITE);
        enumMap.put(FieldKey.URL_LYRICS_SITE, Mp4FieldKey.URL_LYRICS_SITE);
        enumMap.put(FieldKey.URL_OFFICIAL_ARTIST_SITE, Mp4FieldKey.URL_OFFICIAL_ARTIST_SITE);
        enumMap.put(FieldKey.URL_OFFICIAL_RELEASE_SITE, Mp4FieldKey.URL_OFFICIAL_RELEASE_SITE);
        enumMap.put(FieldKey.URL_WIKIPEDIA_ARTIST_SITE, Mp4FieldKey.URL_WIKIPEDIA_ARTIST_SITE);
        enumMap.put(FieldKey.URL_WIKIPEDIA_RELEASE_SITE, Mp4FieldKey.URL_WIKIPEDIA_RELEASE_SITE);
        enumMap.put(FieldKey.WORK, Mp4FieldKey.WORK);
        enumMap.put(FieldKey.YEAR, Mp4FieldKey.DAY);
        enumMap.put(FieldKey.WORK_TYPE, Mp4FieldKey.WORK_TYPE);
    }

    private TagField createGenreField(String str) {
        if (str == null) {
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        if (!TagOptionSingleton.getInstance().isWriteMp4GenresAsText() && Mp4GenreField.isValidGenre(str)) {
            return new Mp4GenreField(str);
        }
        return new Mp4TagTextField(Mp4FieldKey.GENRE_CUSTOM.getFieldName(), str);
    }

    @Override
    public void addField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        if (fieldKey == FieldKey.TRACK || fieldKey == FieldKey.TRACK_TOTAL || fieldKey == FieldKey.DISC_NO || fieldKey == FieldKey.DISC_TOTAL) {
            setField(fieldKey, strArr);
        } else {
            addField(createField(fieldKey, strArr));
        }
    }

    public TagField createArtworkField(byte[] bArr) {
        return new Mp4TagCoverField(bArr);
    }

    @Override
    public TagField createCompilationField(boolean z) throws FieldDataInvalidException, KeyNotFoundException {
        if (z) {
            String str = Mp4TagByteField.TRUE_VALUE;
            Mp4FieldKey mp4FieldKey = Mp4FieldKey.COMPILATION;
            return new Mp4TagByteField(mp4FieldKey, str, mp4FieldKey.getFieldLength());
        }
        String str2 = Mp4TagByteField.FALSE_VALUE;
        Mp4FieldKey mp4FieldKey2 = Mp4FieldKey.COMPILATION;
        return new Mp4TagByteField(mp4FieldKey2, str2, mp4FieldKey2.getFieldLength());
    }

    @Override
    public TagField createField(Artwork artwork) throws FieldDataInvalidException {
        return new Mp4TagCoverField(artwork.getBinaryData());
    }

    @Override
    public void deleteField(FieldKey fieldKey) throws KeyNotFoundException {
        if (fieldKey == null) {
            throw new KeyNotFoundException();
        }
        String fieldName = tagFieldToMp4Field.get(fieldKey).getFieldName();
        if (fieldKey == FieldKey.KEY) {
            deleteField(Mp4FieldKey.KEY_OLD);
            deleteField(fieldName);
            return;
        }
        FieldKey fieldKey2 = FieldKey.TRACK;
        if (fieldKey == fieldKey2) {
            FieldKey fieldKey3 = FieldKey.TRACK_TOTAL;
            if (getFirst(fieldKey3).length() == 0) {
                super.deleteField(fieldName);
                return;
            } else {
                ((Mp4TrackField) getFirstField(fieldKey3)).setTrackNo(0);
                return;
            }
        }
        if (fieldKey == FieldKey.TRACK_TOTAL) {
            if (getFirst(fieldKey2).length() == 0) {
                super.deleteField(fieldName);
                return;
            } else {
                ((Mp4TrackField) getFirstField(fieldKey2)).setTrackTotal(0);
                return;
            }
        }
        FieldKey fieldKey4 = FieldKey.DISC_NO;
        if (fieldKey == fieldKey4) {
            FieldKey fieldKey5 = FieldKey.DISC_TOTAL;
            if (getFirst(fieldKey5).length() == 0) {
                super.deleteField(fieldName);
                return;
            } else {
                ((Mp4DiscNoField) getFirstField(fieldKey5)).setDiscNo(0);
                return;
            }
        }
        if (fieldKey == FieldKey.DISC_TOTAL) {
            if (getFirst(fieldKey4).length() == 0) {
                super.deleteField(fieldName);
                return;
            } else {
                ((Mp4DiscNoField) getFirstField(fieldKey4)).setDiscTotal(0);
                return;
            }
        }
        if (fieldKey != FieldKey.GENRE) {
            super.deleteField(fieldName);
        } else {
            super.deleteField(Mp4FieldKey.GENRE.getFieldName());
            super.deleteField(Mp4FieldKey.GENRE_CUSTOM.getFieldName());
        }
    }

    public List<TagField> get(Mp4FieldKey mp4FieldKey) throws KeyNotFoundException {
        if (mp4FieldKey != null) {
            return super.getFields(mp4FieldKey.getFieldName());
        }
        throw new KeyNotFoundException();
    }

    @Override
    public List<String> getAll(FieldKey fieldKey) throws KeyNotFoundException {
        ArrayList arrayList = new ArrayList();
        for (TagField tagField : getFields(fieldKey)) {
            if (fieldKey == FieldKey.TRACK) {
                arrayList.add(((Mp4TrackField) tagField).getTrackNo().toString());
            } else if (fieldKey == FieldKey.TRACK_TOTAL) {
                arrayList.add(((Mp4TrackField) tagField).getTrackTotal().toString());
            } else if (fieldKey == FieldKey.DISC_NO) {
                arrayList.add(((Mp4DiscNoField) tagField).getDiscNo().toString());
            } else if (fieldKey == FieldKey.DISC_TOTAL) {
                arrayList.add(((Mp4DiscNoField) tagField).getDiscTotal().toString());
            } else {
                arrayList.add(tagField.toString());
            }
        }
        return arrayList;
    }

    @Override
    public List<Artwork> getArtworkList() {
        List<TagField> list = get(Mp4FieldKey.ARTWORK);
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<TagField> it = list.iterator();
        while (it.hasNext()) {
            Mp4TagCoverField mp4TagCoverField = (Mp4TagCoverField) it.next();
            Artwork artwork = ArtworkFactory.getNew();
            artwork.setBinaryData(mp4TagCoverField.getData());
            artwork.setMimeType(Mp4TagCoverField.getMimeTypeForImageType(mp4TagCoverField.getFieldType()));
            arrayList.add(artwork);
        }
        return arrayList;
    }

    @Override
    public List<TagField> getFields(FieldKey fieldKey) throws KeyNotFoundException {
        if (fieldKey == null) {
            throw new KeyNotFoundException();
        }
        List<TagField> fields = getFields(tagFieldToMp4Field.get(fieldKey).getFieldName());
        ArrayList arrayList = new ArrayList();
        if (fieldKey == FieldKey.KEY) {
            return fields.size() == 0 ? getFields(Mp4FieldKey.KEY_OLD.getFieldName()) : fields;
        }
        if (fieldKey == FieldKey.GENRE) {
            return fields.size() == 0 ? getFields(Mp4FieldKey.GENRE_CUSTOM.getFieldName()) : fields;
        }
        if (fieldKey == FieldKey.TRACK) {
            for (TagField tagField : fields) {
                if (((Mp4TrackField) tagField).getTrackNo().shortValue() > 0) {
                    arrayList.add(tagField);
                }
            }
            return arrayList;
        }
        if (fieldKey == FieldKey.TRACK_TOTAL) {
            for (TagField tagField2 : fields) {
                if (((Mp4TrackField) tagField2).getTrackTotal().shortValue() > 0) {
                    arrayList.add(tagField2);
                }
            }
            return arrayList;
        }
        if (fieldKey == FieldKey.DISC_NO) {
            for (TagField tagField3 : fields) {
                if (((Mp4DiscNoField) tagField3).getDiscNo().shortValue() > 0) {
                    arrayList.add(tagField3);
                }
            }
            return arrayList;
        }
        if (fieldKey != FieldKey.DISC_TOTAL) {
            return fields;
        }
        for (TagField tagField4 : fields) {
            if (((Mp4DiscNoField) tagField4).getDiscTotal().shortValue() > 0) {
                arrayList.add(tagField4);
            }
        }
        return arrayList;
    }

    public String getFirst(Mp4FieldKey mp4FieldKey) throws KeyNotFoundException {
        if (mp4FieldKey != null) {
            return super.getFirst(mp4FieldKey.getFieldName());
        }
        throw new KeyNotFoundException();
    }

    @Override
    public String getValue(FieldKey fieldKey, int i) throws KeyNotFoundException {
        List<TagField> fields = getFields(fieldKey);
        if (fields.size() <= i) {
            return "";
        }
        TagField tagField = fields.get(i);
        if (fieldKey == FieldKey.TRACK) {
            return ((Mp4TrackField) tagField).getTrackNo().toString();
        }
        if (fieldKey == FieldKey.DISC_NO) {
            return ((Mp4DiscNoField) tagField).getDiscNo().toString();
        }
        if (fieldKey == FieldKey.TRACK_TOTAL) {
            return ((Mp4TrackField) tagField).getTrackTotal().toString();
        }
        return fieldKey == FieldKey.DISC_TOTAL ? ((Mp4DiscNoField) tagField).getDiscTotal().toString() : tagField.toString();
    }

    @Override
    public boolean hasField(FieldKey fieldKey) {
        return getFields(fieldKey).size() != 0;
    }

    @Override
    public boolean isAllowedEncoding(Charset charset) {
        return StandardCharsets.UTF_8.equals(charset);
    }

    @Override
    public void setField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        TagField tagFieldCreateField = createField(fieldKey, strArr);
        if (fieldKey == FieldKey.GENRE) {
            String id = tagFieldCreateField.getId();
            Mp4FieldKey mp4FieldKey = Mp4FieldKey.GENRE;
            if (id.equals(mp4FieldKey.getFieldName())) {
                deleteField(Mp4FieldKey.GENRE_CUSTOM);
            } else if (tagFieldCreateField.getId().equals(Mp4FieldKey.GENRE_CUSTOM.getFieldName())) {
                deleteField(mp4FieldKey);
            }
        }
        setField(tagFieldCreateField);
    }

    @Override
    public String toString() {
        return "Mpeg4 " + super.toString();
    }

    @Override
    public TagField createField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        if (strArr == null) {
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        if (fieldKey == null) {
            throw new KeyNotFoundException();
        }
        String str = strArr[0];
        FieldKey fieldKey2 = FieldKey.TRACK;
        if (fieldKey == fieldKey2 || fieldKey == FieldKey.TRACK_TOTAL || fieldKey == FieldKey.DISC_NO || fieldKey == FieldKey.DISC_TOTAL) {
            try {
                int i = Integer.parseInt(str);
                if (fieldKey == fieldKey2) {
                    return new Mp4TrackField(i);
                }
                if (fieldKey == FieldKey.TRACK_TOTAL) {
                    return new Mp4TrackField(0, i);
                }
                if (fieldKey == FieldKey.DISC_NO) {
                    return new Mp4DiscNoField(i);
                }
                if (fieldKey == FieldKey.DISC_TOTAL) {
                    return new Mp4DiscNoField(0, i);
                }
            } catch (NumberFormatException e) {
                throw new FieldDataInvalidException("Value " + str + " is not a number as required", e);
            }
        } else if (fieldKey == FieldKey.GENRE) {
            if (TagOptionSingleton.getInstance().isWriteMp4GenresAsText()) {
                return new Mp4TagTextField(Mp4FieldKey.GENRE_CUSTOM.getFieldName(), str);
            }
            return Mp4GenreField.isValidGenre(str) ? new Mp4GenreField(str) : new Mp4TagTextField(Mp4FieldKey.GENRE_CUSTOM.getFieldName(), str);
        }
        return createField(tagFieldToMp4Field.get(fieldKey), str);
    }

    @Override
    public Mp4TagField getFirstField(FieldKey fieldKey) throws KeyNotFoundException {
        List<TagField> fields = getFields(fieldKey);
        if (fields.size() == 0) {
            return null;
        }
        return (Mp4TagField) fields.get(0);
    }

    public boolean hasField(Mp4FieldKey mp4FieldKey) {
        return getFields(mp4FieldKey.getFieldName()).size() != 0;
    }

    public Mp4TagField getFirstField(Mp4FieldKey mp4FieldKey) throws KeyNotFoundException {
        if (mp4FieldKey != null) {
            return (Mp4TagField) super.getFirstField(mp4FieldKey.getFieldName());
        }
        throw new KeyNotFoundException();
    }

    public void setField(Mp4FieldKey mp4FieldKey, String str) throws FieldDataInvalidException, KeyNotFoundException {
        setField(createField(mp4FieldKey, str));
    }

    @Override
    public void setField(TagField tagField) {
        if (tagField == null) {
            return;
        }
        if (tagField.getId().equals(Mp4FieldKey.TRACK.getFieldName())) {
            List<TagField> list = this.fields.get(tagField.getId());
            if (list != null && list.size() != 0) {
                Mp4TrackField mp4TrackField = (Mp4TrackField) list.get(0);
                Mp4TrackField mp4TrackField2 = (Mp4TrackField) tagField;
                Short trackNo = mp4TrackField.getTrackNo();
                Short trackTotal = mp4TrackField.getTrackTotal();
                if (mp4TrackField2.getTrackNo().shortValue() > 0) {
                    trackNo = mp4TrackField2.getTrackNo();
                }
                if (mp4TrackField2.getTrackTotal().shortValue() > 0) {
                    trackTotal = mp4TrackField2.getTrackTotal();
                }
                super.setField(new Mp4TrackField(trackNo.shortValue(), trackTotal.shortValue()));
                return;
            }
            super.setField(tagField);
            return;
        }
        if (tagField.getId().equals(Mp4FieldKey.DISCNUMBER.getFieldName())) {
            List<TagField> list2 = this.fields.get(tagField.getId());
            if (list2 != null && list2.size() != 0) {
                Mp4DiscNoField mp4DiscNoField = (Mp4DiscNoField) list2.get(0);
                Mp4DiscNoField mp4DiscNoField2 = (Mp4DiscNoField) tagField;
                Short discNo = mp4DiscNoField.getDiscNo();
                Short discTotal = mp4DiscNoField.getDiscTotal();
                if (mp4DiscNoField2.getDiscNo().shortValue() > 0) {
                    discNo = mp4DiscNoField2.getDiscNo();
                }
                if (mp4DiscNoField2.getDiscTotal().shortValue() > 0) {
                    discTotal = mp4DiscNoField2.getDiscTotal();
                }
                super.setField(new Mp4DiscNoField(discNo.shortValue(), discTotal.shortValue()));
                return;
            }
            super.setField(tagField);
            return;
        }
        super.setField(tagField);
    }

    public TagField createField(Mp4FieldKey mp4FieldKey, String str) throws FieldDataInvalidException, KeyNotFoundException {
        if (str == null) {
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        if (mp4FieldKey != null) {
            if (mp4FieldKey == Mp4FieldKey.COMPILATION) {
                if (!str.equalsIgnoreCase(BooleanUtils.TRUE) && !str.equals("1")) {
                    return createCompilationField(false);
                }
                return createCompilationField(true);
            }
            if (mp4FieldKey == Mp4FieldKey.GENRE) {
                if (Mp4GenreField.isValidGenre(str)) {
                    return new Mp4GenreField(str);
                }
                throw new IllegalArgumentException(ErrorMessage.NOT_STANDARD_MP_GENRE.getMsg());
            }
            Mp4FieldKey mp4FieldKey2 = Mp4FieldKey.GENRE_CUSTOM;
            if (mp4FieldKey == mp4FieldKey2) {
                return new Mp4TagTextField(mp4FieldKey2.getFieldName(), str);
            }
            if (mp4FieldKey.getSubClassFieldType() == Mp4TagFieldSubType.DISC_NO) {
                return new Mp4DiscNoField(str);
            }
            if (mp4FieldKey.getSubClassFieldType() == Mp4TagFieldSubType.TRACK_NO) {
                return new Mp4TrackField(str);
            }
            if (mp4FieldKey.getSubClassFieldType() == Mp4TagFieldSubType.BYTE) {
                return new Mp4TagByteField(mp4FieldKey, str, mp4FieldKey.getFieldLength());
            }
            if (mp4FieldKey.getSubClassFieldType() == Mp4TagFieldSubType.NUMBER) {
                return new Mp4TagTextNumberField(mp4FieldKey.getFieldName(), str);
            }
            if (mp4FieldKey.getSubClassFieldType() == Mp4TagFieldSubType.REVERSE_DNS) {
                return new Mp4TagReverseDnsField(mp4FieldKey, str);
            }
            if (mp4FieldKey.getSubClassFieldType() != Mp4TagFieldSubType.ARTWORK) {
                if (mp4FieldKey.getSubClassFieldType() == Mp4TagFieldSubType.TEXT) {
                    return new Mp4TagTextField(mp4FieldKey.getFieldName(), str);
                }
                if (mp4FieldKey.getSubClassFieldType() == Mp4TagFieldSubType.UNKNOWN) {
                    throw new UnsupportedOperationException(ErrorMessage.DO_NOT_KNOW_HOW_TO_CREATE_THIS_ATOM_TYPE.getMsg(mp4FieldKey.getFieldName()));
                }
                throw new UnsupportedOperationException(ErrorMessage.DO_NOT_KNOW_HOW_TO_CREATE_THIS_ATOM_TYPE.getMsg(mp4FieldKey.getFieldName()));
            }
            throw new UnsupportedOperationException(ErrorMessage.ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD.getMsg());
        }
        throw new KeyNotFoundException();
    }

    public void deleteField(Mp4FieldKey mp4FieldKey) throws KeyNotFoundException {
        if (mp4FieldKey != null) {
            super.deleteField(mp4FieldKey.getFieldName());
            return;
        }
        throw new KeyNotFoundException();
    }
}
