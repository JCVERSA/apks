package com.transsion.audiotagger.tag.vorbiscomment;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.flac.metadatablock.MetadataBlockDataPicture;
import com.transsion.audiotagger.audio.generic.AbstractTag;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.FieldDataInvalidException;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.InvalidFrameException;
import com.transsion.audiotagger.tag.KeyNotFoundException;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.TagTextField;
import com.transsion.audiotagger.tag.images.Artwork;
import com.transsion.audiotagger.tag.images.ArtworkFactory;
import com.transsion.audiotagger.tag.vorbiscomment.util.Base64Coder;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;

public class VorbisCommentTag extends AbstractTag {
    public static final String DEFAULT_VENDOR = "jaudiotagger";
    private static EnumMap<FieldKey, VorbisCommentFieldKey> tagFieldToOggField;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistReadOptions;
        static final int[] $SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions;

        static {
            int[] iArr = new int[VorbisAlbumArtistReadOptions.values().length];
            $SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistReadOptions = iArr;
            try {
                iArr[VorbisAlbumArtistReadOptions.READ_ALBUMARTIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistReadOptions[VorbisAlbumArtistReadOptions.READ_JRIVER_ALBUMARTIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistReadOptions[VorbisAlbumArtistReadOptions.READ_ALBUMARTIST_THEN_JRIVER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistReadOptions[VorbisAlbumArtistReadOptions.READ_JRIVER_THEN_ALBUMARTIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[VorbisAlbumArtistSaveOptions.values().length];
            $SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions = iArr2;
            try {
                iArr2[VorbisAlbumArtistSaveOptions.WRITE_ALBUMARTIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions[VorbisAlbumArtistSaveOptions.WRITE_ALBUMARTIST_AND_DELETE_JRIVER_ALBUMARTIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions[VorbisAlbumArtistSaveOptions.WRITE_JRIVER_ALBUMARTIST.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions[VorbisAlbumArtistSaveOptions.WRITE_JRIVER_ALBUMARTIST_AND_DELETE_ALBUMARTIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions[VorbisAlbumArtistSaveOptions.WRITE_BOTH.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    static {
        EnumMap<FieldKey, VorbisCommentFieldKey> enumMap = new EnumMap<>(FieldKey.class);
        tagFieldToOggField = enumMap;
        enumMap.put(FieldKey.ACOUSTID_FINGERPRINT, VorbisCommentFieldKey.ACOUSTID_FINGERPRINT);
        tagFieldToOggField.put(FieldKey.ACOUSTID_ID, VorbisCommentFieldKey.ACOUSTID_ID);
        tagFieldToOggField.put(FieldKey.ALBUM, VorbisCommentFieldKey.ALBUM);
        tagFieldToOggField.put(FieldKey.ALBUM_ARTIST, VorbisCommentFieldKey.ALBUMARTIST);
        tagFieldToOggField.put(FieldKey.ALBUM_ARTISTS, VorbisCommentFieldKey.ALBUMARTISTS);
        tagFieldToOggField.put(FieldKey.ALBUM_ARTISTS_SORT, VorbisCommentFieldKey.ALBUMARTISTSSORT);
        tagFieldToOggField.put(FieldKey.ALBUM_ARTIST_SORT, VorbisCommentFieldKey.ALBUMARTISTSORT);
        tagFieldToOggField.put(FieldKey.ALBUM_SORT, VorbisCommentFieldKey.ALBUMSORT);
        tagFieldToOggField.put(FieldKey.AMAZON_ID, VorbisCommentFieldKey.ASIN);
        tagFieldToOggField.put(FieldKey.ARRANGER, VorbisCommentFieldKey.ARRANGER);
        tagFieldToOggField.put(FieldKey.ARRANGER_SORT, VorbisCommentFieldKey.ARRANGER_SORT);
        tagFieldToOggField.put(FieldKey.ARTIST, VorbisCommentFieldKey.ARTIST);
        tagFieldToOggField.put(FieldKey.ARTISTS, VorbisCommentFieldKey.ARTISTS);
        tagFieldToOggField.put(FieldKey.ARTISTS_SORT, VorbisCommentFieldKey.ARTISTS_SORT);
        tagFieldToOggField.put(FieldKey.ARTIST_SORT, VorbisCommentFieldKey.ARTISTSORT);
        tagFieldToOggField.put(FieldKey.BARCODE, VorbisCommentFieldKey.BARCODE);
        tagFieldToOggField.put(FieldKey.BPM, VorbisCommentFieldKey.BPM);
        tagFieldToOggField.put(FieldKey.CATALOG_NO, VorbisCommentFieldKey.CATALOGNUMBER);
        tagFieldToOggField.put(FieldKey.CHOIR, VorbisCommentFieldKey.CHOIR);
        tagFieldToOggField.put(FieldKey.CHOIR_SORT, VorbisCommentFieldKey.CHOIR_SORT);
        tagFieldToOggField.put(FieldKey.CLASSICAL_CATALOG, VorbisCommentFieldKey.CLASSICAL_CATALOG);
        tagFieldToOggField.put(FieldKey.CLASSICAL_NICKNAME, VorbisCommentFieldKey.CLASSICAL_NICKNAME);
        tagFieldToOggField.put(FieldKey.COMMENT, VorbisCommentFieldKey.COMMENT);
        tagFieldToOggField.put(FieldKey.COMPOSER, VorbisCommentFieldKey.COMPOSER);
        tagFieldToOggField.put(FieldKey.COMPOSER_SORT, VorbisCommentFieldKey.COMPOSERSORT);
        tagFieldToOggField.put(FieldKey.COPYRIGHT, VorbisCommentFieldKey.COPYRIGHT);
        tagFieldToOggField.put(FieldKey.CONDUCTOR, VorbisCommentFieldKey.CONDUCTOR);
        tagFieldToOggField.put(FieldKey.CONDUCTOR_SORT, VorbisCommentFieldKey.CONDUCTOR_SORT);
        tagFieldToOggField.put(FieldKey.COUNTRY, VorbisCommentFieldKey.COUNTRY);
        tagFieldToOggField.put(FieldKey.COVER_ART, VorbisCommentFieldKey.METADATA_BLOCK_PICTURE);
        tagFieldToOggField.put(FieldKey.CUSTOM1, VorbisCommentFieldKey.CUSTOM1);
        tagFieldToOggField.put(FieldKey.CUSTOM2, VorbisCommentFieldKey.CUSTOM2);
        tagFieldToOggField.put(FieldKey.CUSTOM3, VorbisCommentFieldKey.CUSTOM3);
        tagFieldToOggField.put(FieldKey.CUSTOM4, VorbisCommentFieldKey.CUSTOM4);
        tagFieldToOggField.put(FieldKey.CUSTOM5, VorbisCommentFieldKey.CUSTOM5);
        tagFieldToOggField.put(FieldKey.DISC_NO, VorbisCommentFieldKey.DISCNUMBER);
        tagFieldToOggField.put(FieldKey.DISC_SUBTITLE, VorbisCommentFieldKey.DISCSUBTITLE);
        tagFieldToOggField.put(FieldKey.DISC_TOTAL, VorbisCommentFieldKey.DISCTOTAL);
        tagFieldToOggField.put(FieldKey.DJMIXER, VorbisCommentFieldKey.DJMIXER);
        tagFieldToOggField.put(FieldKey.ENCODER, VorbisCommentFieldKey.VENDOR);
        tagFieldToOggField.put(FieldKey.ENGINEER, VorbisCommentFieldKey.ENGINEER);
        tagFieldToOggField.put(FieldKey.ENSEMBLE, VorbisCommentFieldKey.ENSEMBLE);
        tagFieldToOggField.put(FieldKey.ENSEMBLE_SORT, VorbisCommentFieldKey.ENSEMBLE_SORT);
        tagFieldToOggField.put(FieldKey.FBPM, VorbisCommentFieldKey.FBPM);
        tagFieldToOggField.put(FieldKey.GENRE, VorbisCommentFieldKey.GENRE);
        tagFieldToOggField.put(FieldKey.GROUP, VorbisCommentFieldKey.GROUP);
        tagFieldToOggField.put(FieldKey.GROUPING, VorbisCommentFieldKey.GROUPING);
        tagFieldToOggField.put(FieldKey.INSTRUMENT, VorbisCommentFieldKey.INSTRUMENT);
        tagFieldToOggField.put(FieldKey.INVOLVED_PERSON, VorbisCommentFieldKey.INVOLVED_PERSON);
        tagFieldToOggField.put(FieldKey.ISRC, VorbisCommentFieldKey.ISRC);
        tagFieldToOggField.put(FieldKey.IS_CLASSICAL, VorbisCommentFieldKey.IS_CLASSICAL);
        tagFieldToOggField.put(FieldKey.IS_COMPILATION, VorbisCommentFieldKey.COMPILATION);
        tagFieldToOggField.put(FieldKey.IS_SOUNDTRACK, VorbisCommentFieldKey.IS_SOUNDTRACK);
        tagFieldToOggField.put(FieldKey.KEY, VorbisCommentFieldKey.KEY);
        tagFieldToOggField.put(FieldKey.LANGUAGE, VorbisCommentFieldKey.LANGUAGE);
        tagFieldToOggField.put(FieldKey.LYRICIST, VorbisCommentFieldKey.LYRICIST);
        tagFieldToOggField.put(FieldKey.LYRICS, VorbisCommentFieldKey.LYRICS);
        tagFieldToOggField.put(FieldKey.MEDIA, VorbisCommentFieldKey.MEDIA);
        tagFieldToOggField.put(FieldKey.MIXER, VorbisCommentFieldKey.MIXER);
        tagFieldToOggField.put(FieldKey.MOOD, VorbisCommentFieldKey.MOOD);
        tagFieldToOggField.put(FieldKey.MOOD_ACOUSTIC, VorbisCommentFieldKey.MOOD_ACOUSTIC);
        tagFieldToOggField.put(FieldKey.MOOD_AGGRESSIVE, VorbisCommentFieldKey.MOOD_AGGRESSIVE);
        tagFieldToOggField.put(FieldKey.MOOD_AROUSAL, VorbisCommentFieldKey.MOOD_AROUSAL);
        tagFieldToOggField.put(FieldKey.MOOD_DANCEABILITY, VorbisCommentFieldKey.MOOD_DANCEABILITY);
        tagFieldToOggField.put(FieldKey.MOOD_ELECTRONIC, VorbisCommentFieldKey.MOOD_ELECTRONIC);
        tagFieldToOggField.put(FieldKey.MOOD_HAPPY, VorbisCommentFieldKey.MOOD_HAPPY);
        tagFieldToOggField.put(FieldKey.MOOD_INSTRUMENTAL, VorbisCommentFieldKey.MOOD_INSTRUMENTAL);
        tagFieldToOggField.put(FieldKey.MOOD_PARTY, VorbisCommentFieldKey.MOOD_PARTY);
        tagFieldToOggField.put(FieldKey.MOOD_RELAXED, VorbisCommentFieldKey.MOOD_RELAXED);
        tagFieldToOggField.put(FieldKey.MOOD_SAD, VorbisCommentFieldKey.MOOD_SAD);
        tagFieldToOggField.put(FieldKey.MOOD_VALENCE, VorbisCommentFieldKey.MOOD_VALENCE);
        tagFieldToOggField.put(FieldKey.MOVEMENT, VorbisCommentFieldKey.MOVEMENT);
        tagFieldToOggField.put(FieldKey.MOVEMENT_NO, VorbisCommentFieldKey.MOVEMENT_NO);
        tagFieldToOggField.put(FieldKey.MOVEMENT_TOTAL, VorbisCommentFieldKey.MOVEMENT_TOTAL);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_ARTISTID, VorbisCommentFieldKey.MUSICBRAINZ_ARTISTID);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_DISC_ID, VorbisCommentFieldKey.MUSICBRAINZ_DISCID);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_ORIGINAL_RELEASE_ID, VorbisCommentFieldKey.MUSICBRAINZ_ORIGINAL_ALBUMID);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_RELEASEARTISTID, VorbisCommentFieldKey.MUSICBRAINZ_ALBUMARTISTID);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_RELEASEID, VorbisCommentFieldKey.MUSICBRAINZ_ALBUMID);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_RELEASE_COUNTRY, VorbisCommentFieldKey.RELEASECOUNTRY);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_RELEASE_GROUP_ID, VorbisCommentFieldKey.MUSICBRAINZ_RELEASEGROUPID);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_RELEASE_STATUS, VorbisCommentFieldKey.MUSICBRAINZ_ALBUMSTATUS);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_RELEASE_TRACK_ID, VorbisCommentFieldKey.MUSICBRAINZ_RELEASETRACKID);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_RELEASE_TYPE, VorbisCommentFieldKey.MUSICBRAINZ_ALBUMTYPE);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_TRACK_ID, VorbisCommentFieldKey.MUSICBRAINZ_TRACKID);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK, VorbisCommentFieldKey.MUSICBRAINZ_WORK);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_COMPOSITION, VorbisCommentFieldKey.MUSICBRAINZ_WORK_COMPOSITION);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_COMPOSITION_ID, VorbisCommentFieldKey.MUSICBRAINZ_WORK_COMPOSITION_ID);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_ID, VorbisCommentFieldKey.MUSICBRAINZ_WORKID);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL1, VorbisCommentFieldKey.MUSICBRAINZ_WORK_PART_LEVEL1);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL1_ID, VorbisCommentFieldKey.MUSICBRAINZ_WORK_PART_LEVEL1_ID);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL1_TYPE, VorbisCommentFieldKey.MUSICBRAINZ_WORK_PART_LEVEL1_TYPE);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL2, VorbisCommentFieldKey.MUSICBRAINZ_WORK_PART_LEVEL2);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL2_ID, VorbisCommentFieldKey.MUSICBRAINZ_WORK_PART_LEVEL2_ID);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL2_TYPE, VorbisCommentFieldKey.MUSICBRAINZ_WORK_PART_LEVEL2_TYPE);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL3, VorbisCommentFieldKey.MUSICBRAINZ_WORK_PART_LEVEL3);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL3_ID, VorbisCommentFieldKey.MUSICBRAINZ_WORK_PART_LEVEL3_ID);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL3_TYPE, VorbisCommentFieldKey.MUSICBRAINZ_WORK_PART_LEVEL3_TYPE);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL4, VorbisCommentFieldKey.MUSICBRAINZ_WORK_PART_LEVEL4);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL4_ID, VorbisCommentFieldKey.MUSICBRAINZ_WORK_PART_LEVEL4_ID);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL4_TYPE, VorbisCommentFieldKey.MUSICBRAINZ_WORK_PART_LEVEL4_TYPE);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL5, VorbisCommentFieldKey.MUSICBRAINZ_WORK_PART_LEVEL5);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL5_ID, VorbisCommentFieldKey.MUSICBRAINZ_WORK_PART_LEVEL5_ID);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL5_TYPE, VorbisCommentFieldKey.MUSICBRAINZ_WORK_PART_LEVEL5_TYPE);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL6, VorbisCommentFieldKey.MUSICBRAINZ_WORK_PART_LEVEL6);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL6_ID, VorbisCommentFieldKey.MUSICBRAINZ_WORK_PART_LEVEL6_ID);
        tagFieldToOggField.put(FieldKey.MUSICBRAINZ_WORK_PART_LEVEL6_TYPE, VorbisCommentFieldKey.MUSICBRAINZ_WORK_PART_LEVEL6_TYPE);
        tagFieldToOggField.put(FieldKey.MUSICIP_ID, VorbisCommentFieldKey.MUSICIP_PUID);
        tagFieldToOggField.put(FieldKey.OCCASION, VorbisCommentFieldKey.OCCASION);
        tagFieldToOggField.put(FieldKey.OPUS, VorbisCommentFieldKey.OPUS);
        tagFieldToOggField.put(FieldKey.ORCHESTRA, VorbisCommentFieldKey.ORCHESTRA);
        tagFieldToOggField.put(FieldKey.ORCHESTRA_SORT, VorbisCommentFieldKey.ORCHESTRA_SORT);
        tagFieldToOggField.put(FieldKey.ORIGINAL_ALBUM, VorbisCommentFieldKey.ORIGINAL_ALBUM);
        tagFieldToOggField.put(FieldKey.ORIGINAL_ARTIST, VorbisCommentFieldKey.ORIGINAL_ARTIST);
        tagFieldToOggField.put(FieldKey.ORIGINAL_LYRICIST, VorbisCommentFieldKey.ORIGINAL_LYRICIST);
        tagFieldToOggField.put(FieldKey.ORIGINAL_YEAR, VorbisCommentFieldKey.ORIGINAL_YEAR);
        tagFieldToOggField.put(FieldKey.PART, VorbisCommentFieldKey.PART);
        tagFieldToOggField.put(FieldKey.PART_NUMBER, VorbisCommentFieldKey.PART_NUMBER);
        tagFieldToOggField.put(FieldKey.PART_TYPE, VorbisCommentFieldKey.PART_TYPE);
        tagFieldToOggField.put(FieldKey.PERFORMER, VorbisCommentFieldKey.PERFORMER);
        tagFieldToOggField.put(FieldKey.PERFORMER_NAME, VorbisCommentFieldKey.PERFORMER_NAME);
        tagFieldToOggField.put(FieldKey.PERFORMER_NAME_SORT, VorbisCommentFieldKey.PERFORMER_NAME_SORT);
        tagFieldToOggField.put(FieldKey.PERIOD, VorbisCommentFieldKey.PERIOD);
        tagFieldToOggField.put(FieldKey.PRODUCER, VorbisCommentFieldKey.PRODUCER);
        tagFieldToOggField.put(FieldKey.QUALITY, VorbisCommentFieldKey.QUALITY);
        tagFieldToOggField.put(FieldKey.RANKING, VorbisCommentFieldKey.RANKING);
        tagFieldToOggField.put(FieldKey.RATING, VorbisCommentFieldKey.RATING);
        tagFieldToOggField.put(FieldKey.RECORD_LABEL, VorbisCommentFieldKey.LABEL);
        tagFieldToOggField.put(FieldKey.REMIXER, VorbisCommentFieldKey.REMIXER);
        tagFieldToOggField.put(FieldKey.SCRIPT, VorbisCommentFieldKey.SCRIPT);
        tagFieldToOggField.put(FieldKey.SINGLE_DISC_TRACK_NO, VorbisCommentFieldKey.SINGLE_DISC_TRACK_NO);
        tagFieldToOggField.put(FieldKey.SUBTITLE, VorbisCommentFieldKey.SUBTITLE);
        tagFieldToOggField.put(FieldKey.TAGS, VorbisCommentFieldKey.TAGS);
        tagFieldToOggField.put(FieldKey.TEMPO, VorbisCommentFieldKey.TEMPO);
        tagFieldToOggField.put(FieldKey.TIMBRE, VorbisCommentFieldKey.TIMBRE);
        tagFieldToOggField.put(FieldKey.TITLE, VorbisCommentFieldKey.TITLE);
        tagFieldToOggField.put(FieldKey.TITLE_MOVEMENT, VorbisCommentFieldKey.TITLE_MOVEMENT);
        tagFieldToOggField.put(FieldKey.TITLE_SORT, VorbisCommentFieldKey.TITLESORT);
        tagFieldToOggField.put(FieldKey.TONALITY, VorbisCommentFieldKey.TONALITY);
        tagFieldToOggField.put(FieldKey.TRACK, VorbisCommentFieldKey.TRACKNUMBER);
        tagFieldToOggField.put(FieldKey.TRACK_TOTAL, VorbisCommentFieldKey.TRACKTOTAL);
        tagFieldToOggField.put(FieldKey.URL_DISCOGS_ARTIST_SITE, VorbisCommentFieldKey.URL_DISCOGS_ARTIST_SITE);
        tagFieldToOggField.put(FieldKey.URL_DISCOGS_RELEASE_SITE, VorbisCommentFieldKey.URL_DISCOGS_RELEASE_SITE);
        tagFieldToOggField.put(FieldKey.URL_LYRICS_SITE, VorbisCommentFieldKey.URL_LYRICS_SITE);
        tagFieldToOggField.put(FieldKey.URL_OFFICIAL_ARTIST_SITE, VorbisCommentFieldKey.URL_OFFICIAL_ARTIST_SITE);
        tagFieldToOggField.put(FieldKey.URL_OFFICIAL_RELEASE_SITE, VorbisCommentFieldKey.URL_OFFICIAL_RELEASE_SITE);
        tagFieldToOggField.put(FieldKey.URL_WIKIPEDIA_ARTIST_SITE, VorbisCommentFieldKey.URL_WIKIPEDIA_ARTIST_SITE);
        tagFieldToOggField.put(FieldKey.URL_WIKIPEDIA_RELEASE_SITE, VorbisCommentFieldKey.URL_WIKIPEDIA_RELEASE_SITE);
        tagFieldToOggField.put(FieldKey.WORK, VorbisCommentFieldKey.WORK);
        tagFieldToOggField.put(FieldKey.WORK_TYPE, VorbisCommentFieldKey.WORK_TYPE);
        tagFieldToOggField.put(FieldKey.YEAR, VorbisCommentFieldKey.DATE);
    }

    private MetadataBlockDataPicture createMetadataBlockDataPicture(Artwork artwork) throws FieldDataInvalidException {
        if (artwork.isLinked()) {
            return new MetadataBlockDataPicture(artwork.getImageUrl().getBytes(StandardCharsets.ISO_8859_1), artwork.getPictureType(), "-->", "", 0, 0, 0, 0);
        }
        if (artwork.setImageFromData()) {
            return new MetadataBlockDataPicture(artwork.getBinaryData(), artwork.getPictureType(), artwork.getMimeType(), artwork.getDescription(), artwork.getWidth(), artwork.getHeight(), 0, 0);
        }
        throw new FieldDataInvalidException("Unable to create MetadataBlockDataPicture from buffered");
    }

    public static VorbisCommentTag createNewTag() {
        VorbisCommentTag vorbisCommentTag = new VorbisCommentTag();
        vorbisCommentTag.setVendor(DEFAULT_VENDOR);
        return vorbisCommentTag;
    }

    @Override
    public void addField(TagField tagField) {
        if (tagField.getId().equals(VorbisCommentFieldKey.VENDOR.getFieldName())) {
            super.setField(tagField);
        } else {
            super.addField(tagField);
        }
    }

    @Override
    public TagField createCompilationField(boolean z) throws FieldDataInvalidException, KeyNotFoundException {
        return createField(FieldKey.IS_COMPILATION, String.valueOf(z));
    }

    @Override
    public TagField createField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        if (fieldKey != null) {
            return createField(tagFieldToOggField.get(fieldKey), strArr[0]);
        }
        throw new KeyNotFoundException();
    }

    @Override
    public void deleteArtworkField() throws KeyNotFoundException {
        deleteField(VorbisCommentFieldKey.METADATA_BLOCK_PICTURE);
        deleteField(VorbisCommentFieldKey.COVERART);
        deleteField(VorbisCommentFieldKey.COVERARTMIME);
    }

    @Override
    public void deleteField(FieldKey fieldKey) throws KeyNotFoundException {
        if (fieldKey == null) {
            throw new KeyNotFoundException();
        }
        if (fieldKey != FieldKey.ALBUM_ARTIST) {
            deleteField(tagFieldToOggField.get(fieldKey));
            return;
        }
        int i = AnonymousClass1.$SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions[TagOptionSingleton.getInstance().getVorbisAlbumArtistSaveOptions().ordinal()];
        if (i == 1 || i == 2) {
            deleteField(tagFieldToOggField.get(fieldKey));
            return;
        }
        if (i == 3 || i == 4) {
            deleteField(VorbisCommentFieldKey.ALBUMARTIST_JRIVER);
        } else {
            if (i != 5) {
                return;
            }
            deleteField(tagFieldToOggField.get(fieldKey));
            deleteField(VorbisCommentFieldKey.ALBUMARTIST_JRIVER);
        }
    }

    public List<TagField> get(VorbisCommentFieldKey vorbisCommentFieldKey) throws KeyNotFoundException {
        if (vorbisCommentFieldKey != null) {
            return super.getFields(vorbisCommentFieldKey.getFieldName());
        }
        throw new KeyNotFoundException();
    }

    @Override
    public List<String> getAll(FieldKey fieldKey) throws KeyNotFoundException {
        VorbisCommentFieldKey vorbisCommentFieldKey = tagFieldToOggField.get(fieldKey);
        if (vorbisCommentFieldKey != null) {
            return super.getAll(vorbisCommentFieldKey.getFieldName());
        }
        throw new KeyNotFoundException();
    }

    public byte[] getArtworkBinaryData() {
        return Base64Coder.decode(getFirst(VorbisCommentFieldKey.COVERART).toCharArray());
    }

    @Override
    public List<Artwork> getArtworkList() {
        ArrayList arrayList = new ArrayList(1);
        if ((getArtworkBinaryData().length > 0) & (getArtworkBinaryData() != null)) {
            Artwork artwork = ArtworkFactory.getNew();
            artwork.setMimeType(getArtworkMimeType());
            artwork.setBinaryData(getArtworkBinaryData());
            arrayList.add(artwork);
        }
        Iterator<TagField> it = get(VorbisCommentFieldKey.METADATA_BLOCK_PICTURE).iterator();
        while (it.hasNext()) {
            try {
                arrayList.add(ArtworkFactory.createArtworkFromMetadataBlockDataPicture(new MetadataBlockDataPicture(ByteBuffer.wrap(Base64Coder.decode(((TagTextField) it.next()).getContent())))));
            } catch (InvalidFrameException e) {
                throw new RuntimeException(e);
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
        return arrayList;
    }

    public String getArtworkMimeType() {
        return getFirst(VorbisCommentFieldKey.COVERARTMIME);
    }

    @Override
    public List<TagField> getFields(FieldKey fieldKey) throws KeyNotFoundException {
        VorbisCommentFieldKey vorbisCommentFieldKey = tagFieldToOggField.get(fieldKey);
        if (vorbisCommentFieldKey != null) {
            return super.getFields(vorbisCommentFieldKey.getFieldName());
        }
        throw new KeyNotFoundException();
    }

    public String getFirst(VorbisCommentFieldKey vorbisCommentFieldKey) throws KeyNotFoundException {
        if (vorbisCommentFieldKey != null) {
            return super.getFirst(vorbisCommentFieldKey.getFieldName());
        }
        throw new KeyNotFoundException();
    }

    @Override
    public TagField getFirstField(FieldKey fieldKey) throws KeyNotFoundException {
        if (fieldKey != null) {
            return getFirstField(tagFieldToOggField.get(fieldKey).getFieldName());
        }
        throw new KeyNotFoundException();
    }

    @Override
    public String getValue(FieldKey fieldKey, int i) throws KeyNotFoundException {
        if (fieldKey != FieldKey.ALBUM_ARTIST) {
            VorbisCommentFieldKey vorbisCommentFieldKey = tagFieldToOggField.get(fieldKey);
            if (vorbisCommentFieldKey != null) {
                return super.getItem(vorbisCommentFieldKey.getFieldName(), i);
            }
            throw new KeyNotFoundException();
        }
        int i2 = AnonymousClass1.$SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistReadOptions[TagOptionSingleton.getInstance().getVorbisAlbumArtisReadOptions().ordinal()];
        if (i2 == 1) {
            return super.getItem(VorbisCommentFieldKey.ALBUMARTIST.getFieldName(), i);
        }
        if (i2 == 2) {
            return super.getItem(VorbisCommentFieldKey.ALBUMARTIST_JRIVER.getFieldName(), i);
        }
        if (i2 == 3) {
            String item = super.getItem(VorbisCommentFieldKey.ALBUMARTIST.getFieldName(), i);
            return item.isEmpty() ? super.getItem(VorbisCommentFieldKey.ALBUMARTIST_JRIVER.getFieldName(), i) : item;
        }
        if (i2 == 4) {
            String item2 = super.getItem(VorbisCommentFieldKey.ALBUMARTIST_JRIVER.getFieldName(), i);
            return item2.isEmpty() ? super.getItem(VorbisCommentFieldKey.ALBUMARTIST.getFieldName(), i) : item2;
        }
        VorbisCommentFieldKey vorbisCommentFieldKey2 = tagFieldToOggField.get(fieldKey);
        if (vorbisCommentFieldKey2 != null) {
            return super.getItem(vorbisCommentFieldKey2.getFieldName(), i);
        }
        throw new KeyNotFoundException();
    }

    public String getVendor() {
        return getFirst(VorbisCommentFieldKey.VENDOR.getFieldName());
    }

    @Override
    public boolean hasField(FieldKey fieldKey) {
        return getFields(tagFieldToOggField.get(fieldKey).getFieldName()).size() != 0;
    }

    @Override
    public boolean isAllowedEncoding(Charset charset) {
        return charset.equals("UTF-8");
    }

    @Override
    public boolean isEmpty() {
        return this.fields.size() <= 1;
    }

    @Deprecated
    public void setArtworkField(byte[] bArr, String str) {
        VorbisCommentTagField vorbisCommentTagField = new VorbisCommentTagField(VorbisCommentFieldKey.COVERART.getFieldName(), new String(Base64Coder.encode(bArr)));
        VorbisCommentTagField vorbisCommentTagField2 = new VorbisCommentTagField(VorbisCommentFieldKey.COVERARTMIME.getFieldName(), str);
        setField(vorbisCommentTagField);
        setField(vorbisCommentTagField2);
    }

    @Override
    public void setField(Artwork artwork) throws FieldDataInvalidException {
        setField(createField(artwork));
        VorbisCommentFieldKey vorbisCommentFieldKey = VorbisCommentFieldKey.COVERART;
        if (getFirst(vorbisCommentFieldKey).length() > 0) {
            deleteField(vorbisCommentFieldKey);
            deleteField(VorbisCommentFieldKey.COVERARTMIME);
        }
    }

    public void setVendor(String str) {
        if (str == null) {
            str = DEFAULT_VENDOR;
        }
        super.setField(new VorbisCommentTagField(VorbisCommentFieldKey.VENDOR.getFieldName(), str));
    }

    @Override
    public String toString() {
        return "OGG " + super.toString();
    }

    public TagField createField(VorbisCommentFieldKey vorbisCommentFieldKey, String str) throws FieldDataInvalidException, KeyNotFoundException {
        if (str == null) {
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        if (vorbisCommentFieldKey != null) {
            return new VorbisCommentTagField(vorbisCommentFieldKey.getFieldName(), str);
        }
        throw new KeyNotFoundException();
    }

    public boolean hasField(VorbisCommentFieldKey vorbisCommentFieldKey) {
        return getFields(vorbisCommentFieldKey.getFieldName()).size() != 0;
    }

    @Override
    public void addField(Artwork artwork) throws FieldDataInvalidException {
        addField(createField(artwork));
    }

    public void addField(String str, String str2) throws FieldDataInvalidException, KeyNotFoundException {
        addField(createField(str, str2));
    }

    public void setField(String str, String str2) throws FieldDataInvalidException, KeyNotFoundException {
        setField(createField(str, str2));
    }

    public TagField createField(String str, String str2) {
        if (str2 != null) {
            return new VorbisCommentTagField(str, str2);
        }
        throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
    }

    @Override
    public void addField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        String str;
        if (strArr != null && (str = strArr[0]) != null) {
            if (fieldKey == FieldKey.ALBUM_ARTIST) {
                int i = AnonymousClass1.$SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions[TagOptionSingleton.getInstance().getVorbisAlbumArtistSaveOptions().ordinal()];
                if (i == 1) {
                    addField(createField(fieldKey, str));
                    return;
                }
                if (i == 2) {
                    addField(createField(fieldKey, str));
                    deleteField(VorbisCommentFieldKey.ALBUMARTIST_JRIVER.getFieldName());
                    return;
                }
                if (i == 3) {
                    addField(createField(VorbisCommentFieldKey.ALBUMARTIST_JRIVER, str));
                    return;
                }
                if (i == 4) {
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
            addField(createField(fieldKey, str));
            return;
        }
        throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
    }

    @Override
    public void setField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        String str;
        if (strArr != null && (str = strArr[0]) != null) {
            if (fieldKey == FieldKey.ALBUM_ARTIST) {
                int i = AnonymousClass1.$SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions[TagOptionSingleton.getInstance().getVorbisAlbumArtistSaveOptions().ordinal()];
                if (i == 1) {
                    setField(createField(fieldKey, str));
                    return;
                }
                if (i == 2) {
                    setField(createField(fieldKey, str));
                    deleteField(VorbisCommentFieldKey.ALBUMARTIST_JRIVER.getFieldName());
                    return;
                }
                if (i == 3) {
                    setField(createField(VorbisCommentFieldKey.ALBUMARTIST_JRIVER, str));
                    return;
                }
                if (i == 4) {
                    setField(createField(VorbisCommentFieldKey.ALBUMARTIST_JRIVER, str));
                    deleteField(VorbisCommentFieldKey.ALBUMARTIST.getFieldName());
                    return;
                } else {
                    if (i != 5) {
                        return;
                    }
                    setField(createField(fieldKey, str));
                    setField(createField(VorbisCommentFieldKey.ALBUMARTIST_JRIVER, str));
                    return;
                }
            }
            setField(createField(fieldKey, str));
            return;
        }
        throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
    }

    @Override
    public TagField createField(Artwork artwork) throws FieldDataInvalidException {
        try {
            return createField(VorbisCommentFieldKey.METADATA_BLOCK_PICTURE, new String(Base64Coder.encode(createMetadataBlockDataPicture(artwork).getRawContent())));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public void deleteField(VorbisCommentFieldKey vorbisCommentFieldKey) throws KeyNotFoundException {
        if (vorbisCommentFieldKey != null) {
            super.deleteField(vorbisCommentFieldKey.getFieldName());
            return;
        }
        throw new KeyNotFoundException();
    }
}
