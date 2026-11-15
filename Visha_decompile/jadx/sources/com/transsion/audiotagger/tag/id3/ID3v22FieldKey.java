package com.transsion.audiotagger.tag.id3;

import com.transsion.audiotagger.audio.asf.data.ContentDescription;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyCOMM;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTXXX;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyUFID;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyWXXX;
import com.transsion.audiotagger.tag.id3.valuepair.StandardIPLSKey;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'ACOUSTID_FINGERPRINT' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class ID3v22FieldKey {
    private static final ID3v22FieldKey[] $VALUES;
    public static final ID3v22FieldKey ACOUSTID_FINGERPRINT;
    public static final ID3v22FieldKey ACOUSTID_ID;
    public static final ID3v22FieldKey ALBUM;
    public static final ID3v22FieldKey ALBUM_ARTIST;
    public static final ID3v22FieldKey ALBUM_ARTISTS;
    public static final ID3v22FieldKey ALBUM_ARTISTS_SORT;
    public static final ID3v22FieldKey ALBUM_ARTIST_SORT;
    public static final ID3v22FieldKey ALBUM_SORT;
    public static final ID3v22FieldKey AMAZON_ID;
    public static final ID3v22FieldKey ARRANGER;
    public static final ID3v22FieldKey ARRANGER_SORT;
    public static final ID3v22FieldKey ARTIST;
    public static final ID3v22FieldKey ARTISTS;
    public static final ID3v22FieldKey ARTISTS_SORT;
    public static final ID3v22FieldKey ARTIST_SORT;
    public static final ID3v22FieldKey BARCODE;
    public static final ID3v22FieldKey BPM;
    public static final ID3v22FieldKey CATALOG_NO;
    public static final ID3v22FieldKey CHOIR;
    public static final ID3v22FieldKey CHOIR_SORT;
    public static final ID3v22FieldKey CLASSICAL_CATALOG;
    public static final ID3v22FieldKey CLASSICAL_NICKNAME;
    public static final ID3v22FieldKey COMMENT;
    public static final ID3v22FieldKey COMPOSER;
    public static final ID3v22FieldKey COMPOSER_SORT;
    public static final ID3v22FieldKey CONDUCTOR;
    public static final ID3v22FieldKey CONDUCTOR_SORT;
    public static final ID3v22FieldKey COPYRIGHT;
    public static final ID3v22FieldKey COUNTRY;
    public static final ID3v22FieldKey COVER_ART;
    public static final ID3v22FieldKey CUSTOM1;
    public static final ID3v22FieldKey CUSTOM2;
    public static final ID3v22FieldKey CUSTOM3;
    public static final ID3v22FieldKey CUSTOM4;
    public static final ID3v22FieldKey CUSTOM5;
    public static final ID3v22FieldKey DISC_NO;
    public static final ID3v22FieldKey DISC_SUBTITLE;
    public static final ID3v22FieldKey DISC_TOTAL;
    public static final ID3v22FieldKey DJMIXER;
    public static final ID3v22FieldKey ENCODER;
    public static final ID3v22FieldKey ENGINEER;
    public static final ID3v22FieldKey ENSEMBLE;
    public static final ID3v22FieldKey ENSEMBLE_SORT;
    public static final ID3v22FieldKey FBPM;
    public static final ID3v22FieldKey GENRE;
    public static final ID3v22FieldKey GROUP;
    public static final ID3v22FieldKey GROUPING;
    public static final ID3v22FieldKey INSTRUMENT;
    public static final ID3v22FieldKey INVOLVED_PERSON;
    public static final ID3v22FieldKey ISRC;
    public static final ID3v22FieldKey IS_CLASSICAL;
    public static final ID3v22FieldKey IS_COMPILATION;
    public static final ID3v22FieldKey IS_SOUNDTRACK;
    public static final ID3v22FieldKey ITUNES_GROUPING;
    public static final ID3v22FieldKey KEY;
    public static final ID3v22FieldKey LANGUAGE;
    public static final ID3v22FieldKey LYRICIST;
    public static final ID3v22FieldKey LYRICS;
    public static final ID3v22FieldKey MEDIA;
    public static final ID3v22FieldKey MIXER;
    public static final ID3v22FieldKey MOOD;
    public static final ID3v22FieldKey MOOD_ACOUSTIC;
    public static final ID3v22FieldKey MOOD_AGGRESSIVE;
    public static final ID3v22FieldKey MOOD_AROUSAL;
    public static final ID3v22FieldKey MOOD_DANCEABILITY;
    public static final ID3v22FieldKey MOOD_ELECTRONIC;
    public static final ID3v22FieldKey MOOD_HAPPY;
    public static final ID3v22FieldKey MOOD_INSTRUMENTAL;
    public static final ID3v22FieldKey MOOD_PARTY;
    public static final ID3v22FieldKey MOOD_RELAXED;
    public static final ID3v22FieldKey MOOD_SAD;
    public static final ID3v22FieldKey MOOD_VALENCE;
    public static final ID3v22FieldKey MOVEMENT;
    public static final ID3v22FieldKey MOVEMENT_NO;
    public static final ID3v22FieldKey MOVEMENT_TOTAL;
    public static final ID3v22FieldKey MUSICBRAINZ_ARTISTID;
    public static final ID3v22FieldKey MUSICBRAINZ_DISC_ID;
    public static final ID3v22FieldKey MUSICBRAINZ_ORIGINAL_RELEASEID;
    public static final ID3v22FieldKey MUSICBRAINZ_RELEASEARTISTID;
    public static final ID3v22FieldKey MUSICBRAINZ_RELEASEID;
    public static final ID3v22FieldKey MUSICBRAINZ_RELEASE_COUNTRY;
    public static final ID3v22FieldKey MUSICBRAINZ_RELEASE_GROUP_ID;
    public static final ID3v22FieldKey MUSICBRAINZ_RELEASE_STATUS;
    public static final ID3v22FieldKey MUSICBRAINZ_RELEASE_TRACK_ID;
    public static final ID3v22FieldKey MUSICBRAINZ_RELEASE_TYPE;
    public static final ID3v22FieldKey MUSICBRAINZ_TRACK_ID;
    public static final ID3v22FieldKey MUSICBRAINZ_WORK;
    public static final ID3v22FieldKey MUSICBRAINZ_WORK_COMPOSITION;
    public static final ID3v22FieldKey MUSICBRAINZ_WORK_COMPOSITION_ID;
    public static final ID3v22FieldKey MUSICBRAINZ_WORK_ID;
    public static final ID3v22FieldKey MUSICBRAINZ_WORK_PART_LEVEL1_ID;
    public static final ID3v22FieldKey MUSICBRAINZ_WORK_PART_LEVEL2_ID;
    public static final ID3v22FieldKey MUSICBRAINZ_WORK_PART_LEVEL3_ID;
    public static final ID3v22FieldKey MUSICBRAINZ_WORK_PART_LEVEL4_ID;
    public static final ID3v22FieldKey MUSICBRAINZ_WORK_PART_LEVEL5_ID;
    public static final ID3v22FieldKey MUSICBRAINZ_WORK_PART_LEVEL6_ID;
    public static final ID3v22FieldKey MUSICIP_ID;
    public static final ID3v22FieldKey OCCASION;
    public static final ID3v22FieldKey OPUS;
    public static final ID3v22FieldKey ORCHESTRA;
    public static final ID3v22FieldKey ORCHESTRA_SORT;
    public static final ID3v22FieldKey ORIGINAL_ALBUM;
    public static final ID3v22FieldKey ORIGINAL_ARTIST;
    public static final ID3v22FieldKey ORIGINAL_LYRICIST;
    public static final ID3v22FieldKey ORIGINAL_YEAR;
    public static final ID3v22FieldKey PART;
    public static final ID3v22FieldKey PART_NUMBER;
    public static final ID3v22FieldKey PART_TYPE;
    public static final ID3v22FieldKey PERFORMER;
    public static final ID3v22FieldKey PERFORMER_NAME;
    public static final ID3v22FieldKey PERFORMER_NAME_SORT;
    public static final ID3v22FieldKey PERIOD;
    public static final ID3v22FieldKey PRODUCER;
    public static final ID3v22FieldKey QUALITY;
    public static final ID3v22FieldKey RANKING;
    public static final ID3v22FieldKey RATING;
    public static final ID3v22FieldKey RECORD_LABEL;
    public static final ID3v22FieldKey REMIXER;
    public static final ID3v22FieldKey SCRIPT;
    public static final ID3v22FieldKey SINGLE_DISC_TRACK_NO;
    public static final ID3v22FieldKey SUBTITLE;
    public static final ID3v22FieldKey TAGS;
    public static final ID3v22FieldKey TEMPO;
    public static final ID3v22FieldKey TIMBRE;
    public static final ID3v22FieldKey TITLE;
    public static final ID3v22FieldKey TITLE_MOVEMENT;
    public static final ID3v22FieldKey TITLE_SORT;
    public static final ID3v22FieldKey TONALITY;
    public static final ID3v22FieldKey TRACK;
    public static final ID3v22FieldKey TRACK_TOTAL;
    public static final ID3v22FieldKey URL_DISCOGS_ARTIST_SITE;
    public static final ID3v22FieldKey URL_DISCOGS_RELEASE_SITE;
    public static final ID3v22FieldKey URL_LYRICS_SITE;
    public static final ID3v22FieldKey URL_OFFICIAL_ARTIST_SITE;
    public static final ID3v22FieldKey URL_OFFICIAL_RELEASE_SITE;
    public static final ID3v22FieldKey URL_WIKIPEDIA_ARTIST_SITE;
    public static final ID3v22FieldKey URL_WIKIPEDIA_RELEASE_SITE;
    public static final ID3v22FieldKey WORK;
    public static final ID3v22FieldKey WORK_PART_LEVEL1;
    public static final ID3v22FieldKey WORK_PART_LEVEL1_TYPE;
    public static final ID3v22FieldKey WORK_PART_LEVEL2;
    public static final ID3v22FieldKey WORK_PART_LEVEL2_TYPE;
    public static final ID3v22FieldKey WORK_PART_LEVEL3;
    public static final ID3v22FieldKey WORK_PART_LEVEL3_TYPE;
    public static final ID3v22FieldKey WORK_PART_LEVEL4;
    public static final ID3v22FieldKey WORK_PART_LEVEL4_TYPE;
    public static final ID3v22FieldKey WORK_PART_LEVEL5;
    public static final ID3v22FieldKey WORK_PART_LEVEL5_TYPE;
    public static final ID3v22FieldKey WORK_PART_LEVEL6;
    public static final ID3v22FieldKey WORK_PART_LEVEL6_TYPE;
    public static final ID3v22FieldKey WORK_TYPE;
    public static final ID3v22FieldKey YEAR;
    private String fieldName;
    private Id3FieldType fieldType;
    private String frameId;
    private String subId;

    private static ID3v22FieldKey[] $values() {
        return new ID3v22FieldKey[]{ACOUSTID_FINGERPRINT, ACOUSTID_ID, ALBUM, ALBUM_ARTIST, ALBUM_ARTIST_SORT, ALBUM_ARTISTS, ALBUM_ARTISTS_SORT, ALBUM_SORT, AMAZON_ID, ARRANGER, ARRANGER_SORT, ARTIST, ARTISTS, ARTISTS_SORT, ARTIST_SORT, BARCODE, BPM, CATALOG_NO, CHOIR, CHOIR_SORT, CLASSICAL_CATALOG, CLASSICAL_NICKNAME, COMMENT, COMPOSER, COMPOSER_SORT, CONDUCTOR, CONDUCTOR_SORT, COPYRIGHT, COUNTRY, COVER_ART, CUSTOM1, CUSTOM2, CUSTOM3, CUSTOM4, CUSTOM5, DISC_NO, DISC_SUBTITLE, DISC_TOTAL, DJMIXER, ENCODER, ENGINEER, ENSEMBLE, ENSEMBLE_SORT, FBPM, GENRE, GROUP, GROUPING, MOOD_INSTRUMENTAL, INVOLVED_PERSON, INSTRUMENT, ISRC, IS_CLASSICAL, IS_COMPILATION, IS_SOUNDTRACK, ITUNES_GROUPING, KEY, LANGUAGE, LYRICIST, LYRICS, MEDIA, MIXER, MOOD, MOOD_ACOUSTIC, MOOD_AGGRESSIVE, MOOD_AROUSAL, MOOD_DANCEABILITY, MOOD_ELECTRONIC, MOOD_HAPPY, MOOD_PARTY, MOOD_RELAXED, MOOD_SAD, MOOD_VALENCE, MOVEMENT, MOVEMENT_NO, MOVEMENT_TOTAL, MUSICBRAINZ_ARTISTID, MUSICBRAINZ_DISC_ID, MUSICBRAINZ_ORIGINAL_RELEASEID, MUSICBRAINZ_RELEASEARTISTID, MUSICBRAINZ_RELEASEID, MUSICBRAINZ_RELEASE_COUNTRY, MUSICBRAINZ_RELEASE_GROUP_ID, MUSICBRAINZ_RELEASE_STATUS, MUSICBRAINZ_RELEASE_TRACK_ID, MUSICBRAINZ_RELEASE_TYPE, MUSICBRAINZ_TRACK_ID, MUSICBRAINZ_WORK_COMPOSITION, MUSICBRAINZ_WORK_COMPOSITION_ID, MUSICBRAINZ_WORK_ID, MUSICBRAINZ_WORK_PART_LEVEL1_ID, MUSICBRAINZ_WORK_PART_LEVEL2_ID, MUSICBRAINZ_WORK_PART_LEVEL3_ID, MUSICBRAINZ_WORK_PART_LEVEL4_ID, MUSICBRAINZ_WORK_PART_LEVEL5_ID, MUSICBRAINZ_WORK_PART_LEVEL6_ID, MUSICIP_ID, OCCASION, OPUS, ORCHESTRA, ORCHESTRA_SORT, ORIGINAL_ALBUM, ORIGINAL_ARTIST, ORIGINAL_LYRICIST, ORIGINAL_YEAR, PART, PART_NUMBER, PART_TYPE, PERFORMER, PERFORMER_NAME, PERFORMER_NAME_SORT, PERIOD, PRODUCER, QUALITY, RANKING, RATING, RECORD_LABEL, REMIXER, SCRIPT, SINGLE_DISC_TRACK_NO, SUBTITLE, TAGS, TEMPO, TIMBRE, TITLE, TITLE_MOVEMENT, MUSICBRAINZ_WORK, TITLE_SORT, TONALITY, TRACK, TRACK_TOTAL, URL_DISCOGS_ARTIST_SITE, URL_DISCOGS_RELEASE_SITE, URL_LYRICS_SITE, URL_OFFICIAL_ARTIST_SITE, URL_OFFICIAL_RELEASE_SITE, URL_WIKIPEDIA_ARTIST_SITE, URL_WIKIPEDIA_RELEASE_SITE, WORK, WORK_PART_LEVEL1, WORK_PART_LEVEL1_TYPE, WORK_PART_LEVEL2, WORK_PART_LEVEL2_TYPE, WORK_PART_LEVEL3, WORK_PART_LEVEL3_TYPE, WORK_PART_LEVEL4, WORK_PART_LEVEL4_TYPE, WORK_PART_LEVEL5, WORK_PART_LEVEL5_TYPE, WORK_PART_LEVEL6, WORK_PART_LEVEL6_TYPE, WORK_TYPE, YEAR};
    }

    static {
        Id3FieldType id3FieldType = Id3FieldType.TEXT;
        ACOUSTID_FINGERPRINT = new ID3v22FieldKey("ACOUSTID_FINGERPRINT", 0, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.ACOUSTID_FINGERPRINT, id3FieldType);
        ACOUSTID_ID = new ID3v22FieldKey("ACOUSTID_ID", 1, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.ACOUSTID_ID, id3FieldType);
        ALBUM = new ID3v22FieldKey("ALBUM", 2, ID3v22Frames.FRAME_ID_V2_ALBUM, id3FieldType);
        ALBUM_ARTIST = new ID3v22FieldKey("ALBUM_ARTIST", 3, ID3v22Frames.FRAME_ID_V2_ACCOMPANIMENT, id3FieldType);
        ALBUM_ARTIST_SORT = new ID3v22FieldKey("ALBUM_ARTIST_SORT", 4, ID3v22Frames.FRAME_ID_V2_ALBUM_ARTIST_SORT_ORDER_ITUNES, id3FieldType);
        ALBUM_ARTISTS = new ID3v22FieldKey(FrameBodyTXXX.ALBUM_ARTISTS, 5, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.ALBUM_ARTISTS, id3FieldType);
        ALBUM_ARTISTS_SORT = new ID3v22FieldKey(FrameBodyTXXX.ALBUM_ARTISTS_SORT, 6, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.ALBUM_ARTISTS_SORT, id3FieldType);
        ALBUM_SORT = new ID3v22FieldKey("ALBUM_SORT", 7, ID3v22Frames.FRAME_ID_V2_ALBUM_SORT_ORDER_ITUNES, id3FieldType);
        AMAZON_ID = new ID3v22FieldKey("AMAZON_ID", 8, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.AMAZON_ASIN, id3FieldType);
        ARRANGER = new ID3v22FieldKey("ARRANGER", 9, ID3v22Frames.FRAME_ID_V2_IPLS, StandardIPLSKey.ARRANGER.getKey(), id3FieldType);
        ARRANGER_SORT = new ID3v22FieldKey(FrameBodyTXXX.ARRANGER_SORT, 10, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.ARRANGER_SORT, id3FieldType);
        ARTIST = new ID3v22FieldKey("ARTIST", 11, ID3v22Frames.FRAME_ID_V2_ARTIST, id3FieldType);
        ARTISTS = new ID3v22FieldKey(FrameBodyTXXX.ARTISTS, 12, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.ARTISTS, id3FieldType);
        ARTISTS_SORT = new ID3v22FieldKey(FrameBodyTXXX.ARTISTS_SORT, 13, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.ARTISTS_SORT, id3FieldType);
        ARTIST_SORT = new ID3v22FieldKey("ARTIST_SORT", 14, ID3v22Frames.FRAME_ID_V2_ARTIST_SORT_ORDER_ITUNES, id3FieldType);
        BARCODE = new ID3v22FieldKey(FrameBodyTXXX.BARCODE, 15, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.BARCODE, id3FieldType);
        BPM = new ID3v22FieldKey("BPM", 16, ID3v22Frames.FRAME_ID_V2_BPM, id3FieldType);
        CATALOG_NO = new ID3v22FieldKey("CATALOG_NO", 17, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.CATALOG_NO, id3FieldType);
        CHOIR = new ID3v22FieldKey(FrameBodyTXXX.CHOIR, 18, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.CHOIR, id3FieldType);
        CHOIR_SORT = new ID3v22FieldKey(FrameBodyTXXX.CHOIR_SORT, 19, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.CHOIR_SORT, id3FieldType);
        CLASSICAL_CATALOG = new ID3v22FieldKey(FrameBodyTXXX.CLASSICAL_CATALOG, 20, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.CLASSICAL_CATALOG, id3FieldType);
        CLASSICAL_NICKNAME = new ID3v22FieldKey(FrameBodyTXXX.CLASSICAL_NICKNAME, 21, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.CLASSICAL_NICKNAME, id3FieldType);
        COMMENT = new ID3v22FieldKey("COMMENT", 22, ID3v22Frames.FRAME_ID_V2_COMMENT, id3FieldType);
        COMPOSER = new ID3v22FieldKey("COMPOSER", 23, ID3v22Frames.FRAME_ID_V2_COMPOSER, id3FieldType);
        COMPOSER_SORT = new ID3v22FieldKey("COMPOSER_SORT", 24, ID3v22Frames.FRAME_ID_V2_COMPOSER_SORT_ORDER_ITUNES, id3FieldType);
        CONDUCTOR = new ID3v22FieldKey("CONDUCTOR", 25, ID3v22Frames.FRAME_ID_V2_CONDUCTOR, id3FieldType);
        CONDUCTOR_SORT = new ID3v22FieldKey(FrameBodyTXXX.CONDUCTOR_SORT, 26, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.CONDUCTOR_SORT, id3FieldType);
        COPYRIGHT = new ID3v22FieldKey(ContentDescription.KEY_COPYRIGHT, 27, ID3v22Frames.FRAME_ID_V2_COPYRIGHTINFO, id3FieldType);
        COUNTRY = new ID3v22FieldKey("COUNTRY", 28, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.COUNTRY, id3FieldType);
        COVER_ART = new ID3v22FieldKey("COVER_ART", 29, "PIC", Id3FieldType.BINARY);
        CUSTOM1 = new ID3v22FieldKey("CUSTOM1", 30, ID3v22Frames.FRAME_ID_V2_COMMENT, FrameBodyCOMM.MM_CUSTOM1, id3FieldType);
        CUSTOM2 = new ID3v22FieldKey("CUSTOM2", 31, ID3v22Frames.FRAME_ID_V2_COMMENT, FrameBodyCOMM.MM_CUSTOM2, id3FieldType);
        CUSTOM3 = new ID3v22FieldKey("CUSTOM3", 32, ID3v22Frames.FRAME_ID_V2_COMMENT, FrameBodyCOMM.MM_CUSTOM3, id3FieldType);
        CUSTOM4 = new ID3v22FieldKey("CUSTOM4", 33, ID3v22Frames.FRAME_ID_V2_COMMENT, FrameBodyCOMM.MM_CUSTOM4, id3FieldType);
        CUSTOM5 = new ID3v22FieldKey("CUSTOM5", 34, ID3v22Frames.FRAME_ID_V2_COMMENT, FrameBodyCOMM.MM_CUSTOM5, id3FieldType);
        DISC_NO = new ID3v22FieldKey("DISC_NO", 35, ID3v22Frames.FRAME_ID_V2_SET, id3FieldType);
        DISC_SUBTITLE = new ID3v22FieldKey("DISC_SUBTITLE", 36, ID3v22Frames.FRAME_ID_V2_SET_SUBTITLE, id3FieldType);
        DISC_TOTAL = new ID3v22FieldKey("DISC_TOTAL", 37, ID3v22Frames.FRAME_ID_V2_SET, id3FieldType);
        DJMIXER = new ID3v22FieldKey("DJMIXER", 38, ID3v22Frames.FRAME_ID_V2_IPLS, StandardIPLSKey.DJMIXER.getKey(), id3FieldType);
        ENCODER = new ID3v22FieldKey("ENCODER", 39, ID3v22Frames.FRAME_ID_V2_ENCODEDBY, id3FieldType);
        ENGINEER = new ID3v22FieldKey("ENGINEER", 40, ID3v22Frames.FRAME_ID_V2_IPLS, StandardIPLSKey.ENGINEER.getKey(), id3FieldType);
        ENSEMBLE = new ID3v22FieldKey(FrameBodyTXXX.ENSEMBLE, 41, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.ENSEMBLE, id3FieldType);
        ENSEMBLE_SORT = new ID3v22FieldKey(FrameBodyTXXX.ENSEMBLE_SORT, 42, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.ENSEMBLE_SORT, id3FieldType);
        FBPM = new ID3v22FieldKey(FrameBodyTXXX.FBPM, 43, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.FBPM, id3FieldType);
        GENRE = new ID3v22FieldKey("GENRE", 44, ID3v22Frames.FRAME_ID_V2_GENRE, id3FieldType);
        GROUP = new ID3v22FieldKey(FrameBodyTXXX.GROUP, 45, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.GROUP, id3FieldType);
        GROUPING = new ID3v22FieldKey("GROUPING", 46, ID3v22Frames.FRAME_ID_V2_CONTENT_GROUP_DESC, id3FieldType);
        MOOD_INSTRUMENTAL = new ID3v22FieldKey(FrameBodyTXXX.MOOD_INSTRUMENTAL, 47, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MOOD_INSTRUMENTAL, id3FieldType);
        INVOLVED_PERSON = new ID3v22FieldKey("INVOLVED_PERSON", 48, ID3v22Frames.FRAME_ID_V2_IPLS, id3FieldType);
        INSTRUMENT = new ID3v22FieldKey(FrameBodyTXXX.INSTRUMENT, 49, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.INSTRUMENT, id3FieldType);
        ISRC = new ID3v22FieldKey("ISRC", 50, ID3v22Frames.FRAME_ID_V2_ISRC, id3FieldType);
        IS_CLASSICAL = new ID3v22FieldKey(FrameBodyTXXX.IS_CLASSICAL, 51, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.IS_CLASSICAL, id3FieldType);
        IS_COMPILATION = new ID3v22FieldKey("IS_COMPILATION", 52, ID3v22Frames.FRAME_ID_V2_IS_COMPILATION, id3FieldType);
        IS_SOUNDTRACK = new ID3v22FieldKey(FrameBodyTXXX.IS_SOUNDTRACK, 53, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.IS_SOUNDTRACK, id3FieldType);
        ITUNES_GROUPING = new ID3v22FieldKey("ITUNES_GROUPING", 54, ID3v22Frames.FRAME_ID_V2_ITUNES_GROUPING, id3FieldType);
        KEY = new ID3v22FieldKey("KEY", 55, ID3v22Frames.FRAME_ID_V2_INITIAL_KEY, id3FieldType);
        LANGUAGE = new ID3v22FieldKey("LANGUAGE", 56, ID3v22Frames.FRAME_ID_V2_LANGUAGE, id3FieldType);
        LYRICIST = new ID3v22FieldKey("LYRICIST", 57, ID3v22Frames.FRAME_ID_V2_LYRICIST, id3FieldType);
        LYRICS = new ID3v22FieldKey("LYRICS", 58, ID3v22Frames.FRAME_ID_V2_UNSYNC_LYRICS, id3FieldType);
        MEDIA = new ID3v22FieldKey("MEDIA", 59, ID3v22Frames.FRAME_ID_V2_MEDIA_TYPE, id3FieldType);
        MIXER = new ID3v22FieldKey("MIXER", 60, ID3v22Frames.FRAME_ID_V2_IPLS, StandardIPLSKey.MIXER.getKey(), id3FieldType);
        MOOD = new ID3v22FieldKey(FrameBodyTXXX.MOOD, 61, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MOOD, id3FieldType);
        MOOD_ACOUSTIC = new ID3v22FieldKey(FrameBodyTXXX.MOOD_ACOUSTIC, 62, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MOOD_ACOUSTIC, id3FieldType);
        MOOD_AGGRESSIVE = new ID3v22FieldKey(FrameBodyTXXX.MOOD_AGGRESSIVE, 63, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MOOD_AGGRESSIVE, id3FieldType);
        MOOD_AROUSAL = new ID3v22FieldKey(FrameBodyTXXX.MOOD_AROUSAL, 64, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MOOD_AROUSAL, id3FieldType);
        MOOD_DANCEABILITY = new ID3v22FieldKey(FrameBodyTXXX.MOOD_DANCEABILITY, 65, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MOOD_DANCEABILITY, id3FieldType);
        MOOD_ELECTRONIC = new ID3v22FieldKey(FrameBodyTXXX.MOOD_ELECTRONIC, 66, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MOOD_ELECTRONIC, id3FieldType);
        MOOD_HAPPY = new ID3v22FieldKey(FrameBodyTXXX.MOOD_HAPPY, 67, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MOOD_HAPPY, id3FieldType);
        MOOD_PARTY = new ID3v22FieldKey(FrameBodyTXXX.MOOD_PARTY, 68, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MOOD_PARTY, id3FieldType);
        MOOD_RELAXED = new ID3v22FieldKey(FrameBodyTXXX.MOOD_RELAXED, 69, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MOOD_RELAXED, id3FieldType);
        MOOD_SAD = new ID3v22FieldKey(FrameBodyTXXX.MOOD_SAD, 70, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MOOD_SAD, id3FieldType);
        MOOD_VALENCE = new ID3v22FieldKey(FrameBodyTXXX.MOOD_VALENCE, 71, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MOOD_VALENCE, id3FieldType);
        MOVEMENT = new ID3v22FieldKey("MOVEMENT", 72, ID3v22Frames.FRAME_ID_V2_MOVEMENT, id3FieldType);
        MOVEMENT_NO = new ID3v22FieldKey("MOVEMENT_NO", 73, ID3v22Frames.FRAME_ID_V2_MOVEMENT_NO, id3FieldType);
        MOVEMENT_TOTAL = new ID3v22FieldKey("MOVEMENT_TOTAL", 74, ID3v22Frames.FRAME_ID_V2_MOVEMENT_NO, id3FieldType);
        MUSICBRAINZ_ARTISTID = new ID3v22FieldKey("MUSICBRAINZ_ARTISTID", 75, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_ARTISTID, id3FieldType);
        MUSICBRAINZ_DISC_ID = new ID3v22FieldKey("MUSICBRAINZ_DISC_ID", 76, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_DISCID, id3FieldType);
        MUSICBRAINZ_ORIGINAL_RELEASEID = new ID3v22FieldKey("MUSICBRAINZ_ORIGINAL_RELEASEID", 77, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_ORIGINAL_ALBUMID, id3FieldType);
        MUSICBRAINZ_RELEASEARTISTID = new ID3v22FieldKey("MUSICBRAINZ_RELEASEARTISTID", 78, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_ALBUM_ARTISTID, id3FieldType);
        MUSICBRAINZ_RELEASEID = new ID3v22FieldKey("MUSICBRAINZ_RELEASEID", 79, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_ALBUMID, id3FieldType);
        MUSICBRAINZ_RELEASE_COUNTRY = new ID3v22FieldKey("MUSICBRAINZ_RELEASE_COUNTRY", 80, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_ALBUM_COUNTRY, id3FieldType);
        MUSICBRAINZ_RELEASE_GROUP_ID = new ID3v22FieldKey("MUSICBRAINZ_RELEASE_GROUP_ID", 81, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_RELEASE_GROUPID, id3FieldType);
        MUSICBRAINZ_RELEASE_STATUS = new ID3v22FieldKey("MUSICBRAINZ_RELEASE_STATUS", 82, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_ALBUM_STATUS, id3FieldType);
        MUSICBRAINZ_RELEASE_TRACK_ID = new ID3v22FieldKey("MUSICBRAINZ_RELEASE_TRACK_ID", 83, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_RELEASE_TRACKID, id3FieldType);
        MUSICBRAINZ_RELEASE_TYPE = new ID3v22FieldKey("MUSICBRAINZ_RELEASE_TYPE", 84, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_ALBUM_TYPE, id3FieldType);
        MUSICBRAINZ_TRACK_ID = new ID3v22FieldKey("MUSICBRAINZ_TRACK_ID", 85, ID3v22Frames.FRAME_ID_V2_UNIQUE_FILE_ID, FrameBodyUFID.UFID_MUSICBRAINZ, id3FieldType);
        MUSICBRAINZ_WORK_COMPOSITION = new ID3v22FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION, 86, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION, id3FieldType);
        MUSICBRAINZ_WORK_COMPOSITION_ID = new ID3v22FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION_ID, 87, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION_ID, id3FieldType);
        MUSICBRAINZ_WORK_ID = new ID3v22FieldKey("MUSICBRAINZ_WORK_ID", 88, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORKID, id3FieldType);
        MUSICBRAINZ_WORK_PART_LEVEL1_ID = new ID3v22FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1_ID, 89, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1_ID, id3FieldType);
        MUSICBRAINZ_WORK_PART_LEVEL2_ID = new ID3v22FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2_ID, 90, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2_ID, id3FieldType);
        MUSICBRAINZ_WORK_PART_LEVEL3_ID = new ID3v22FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3_ID, 91, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3_ID, id3FieldType);
        MUSICBRAINZ_WORK_PART_LEVEL4_ID = new ID3v22FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4_ID, 92, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4_ID, id3FieldType);
        MUSICBRAINZ_WORK_PART_LEVEL5_ID = new ID3v22FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5_ID, 93, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5_ID, id3FieldType);
        MUSICBRAINZ_WORK_PART_LEVEL6_ID = new ID3v22FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6_ID, 94, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6_ID, id3FieldType);
        MUSICIP_ID = new ID3v22FieldKey("MUSICIP_ID", 95, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICIP_ID, id3FieldType);
        OCCASION = new ID3v22FieldKey("OCCASION", 96, ID3v22Frames.FRAME_ID_V2_COMMENT, FrameBodyCOMM.MM_OCCASION, id3FieldType);
        OPUS = new ID3v22FieldKey("OPUS", 97, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, "OPUS", id3FieldType);
        ORCHESTRA = new ID3v22FieldKey(FrameBodyTXXX.ORCHESTRA, 98, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.ORCHESTRA, id3FieldType);
        ORCHESTRA_SORT = new ID3v22FieldKey(FrameBodyTXXX.ORCHESTRA_SORT, 99, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.ORCHESTRA_SORT, id3FieldType);
        ORIGINAL_ALBUM = new ID3v22FieldKey("ORIGINAL_ALBUM", 100, ID3v22Frames.FRAME_ID_V2_ORIG_TITLE, id3FieldType);
        ORIGINAL_ARTIST = new ID3v22FieldKey("ORIGINAL_ARTIST", 101, ID3v22Frames.FRAME_ID_V2_ORIGARTIST, id3FieldType);
        ORIGINAL_LYRICIST = new ID3v22FieldKey("ORIGINAL_LYRICIST", 102, ID3v22Frames.FRAME_ID_V2_ORIG_LYRICIST, id3FieldType);
        ORIGINAL_YEAR = new ID3v22FieldKey("ORIGINAL_YEAR", 103, ID3v22Frames.FRAME_ID_V2_TORY, id3FieldType);
        PART = new ID3v22FieldKey(FrameBodyTXXX.PART, 104, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.PART, id3FieldType);
        PART_NUMBER = new ID3v22FieldKey("PART_NUMBER", 105, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.PART_NUMBER, id3FieldType);
        PART_TYPE = new ID3v22FieldKey(FrameBodyTXXX.PART_TYPE, 106, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.PART_TYPE, id3FieldType);
        PERFORMER = new ID3v22FieldKey("PERFORMER", 107, ID3v22Frames.FRAME_ID_V2_IPLS, id3FieldType);
        PERFORMER_NAME = new ID3v22FieldKey(FrameBodyTXXX.PERFORMER_NAME, 108, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.PERFORMER_NAME, id3FieldType);
        PERFORMER_NAME_SORT = new ID3v22FieldKey(FrameBodyTXXX.PERFORMER_NAME_SORT, 109, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.PERFORMER_NAME_SORT, id3FieldType);
        PERIOD = new ID3v22FieldKey(FrameBodyTXXX.PERIOD, 110, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.PERIOD, id3FieldType);
        PRODUCER = new ID3v22FieldKey("PRODUCER", 111, ID3v22Frames.FRAME_ID_V2_IPLS, StandardIPLSKey.PRODUCER.getKey(), id3FieldType);
        QUALITY = new ID3v22FieldKey("QUALITY", 112, ID3v22Frames.FRAME_ID_V2_COMMENT, FrameBodyCOMM.MM_QUALITY, id3FieldType);
        RANKING = new ID3v22FieldKey(FrameBodyTXXX.RANKING, 113, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.RANKING, id3FieldType);
        RATING = new ID3v22FieldKey(ContentDescription.KEY_RATING, 114, ID3v22Frames.FRAME_ID_V2_POPULARIMETER, id3FieldType);
        RECORD_LABEL = new ID3v22FieldKey("RECORD_LABEL", 115, ID3v22Frames.FRAME_ID_V2_PUBLISHER, id3FieldType);
        REMIXER = new ID3v22FieldKey("REMIXER", 116, ID3v22Frames.FRAME_ID_V2_REMIXED, id3FieldType);
        SCRIPT = new ID3v22FieldKey("SCRIPT", 117, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.SCRIPT, id3FieldType);
        SINGLE_DISC_TRACK_NO = new ID3v22FieldKey(FrameBodyTXXX.SINGLE_DISC_TRACK_NO, 118, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.SINGLE_DISC_TRACK_NO, id3FieldType);
        SUBTITLE = new ID3v22FieldKey("SUBTITLE", 119, ID3v22Frames.FRAME_ID_V2_TITLE_REFINEMENT, id3FieldType);
        TAGS = new ID3v22FieldKey(FrameBodyTXXX.TAGS, 120, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.TAGS, id3FieldType);
        TEMPO = new ID3v22FieldKey("TEMPO", 121, ID3v22Frames.FRAME_ID_V2_COMMENT, FrameBodyCOMM.MM_TEMPO, id3FieldType);
        TIMBRE = new ID3v22FieldKey("TIMBRE", 122, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.TIMBRE, id3FieldType);
        TITLE = new ID3v22FieldKey(ContentDescription.KEY_TITLE, 123, ID3v22Frames.FRAME_ID_V2_TITLE, id3FieldType);
        TITLE_MOVEMENT = new ID3v22FieldKey(FrameBodyTXXX.TITLE_MOVEMENT, 124, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.TITLE_MOVEMENT, id3FieldType);
        MUSICBRAINZ_WORK = new ID3v22FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK, 125, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK, id3FieldType);
        TITLE_SORT = new ID3v22FieldKey("TITLE_SORT", 126, ID3v22Frames.FRAME_ID_V2_TITLE_SORT_ORDER_ITUNES, id3FieldType);
        TONALITY = new ID3v22FieldKey(FrameBodyTXXX.TONALITY, 127, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.TONALITY, id3FieldType);
        TRACK = new ID3v22FieldKey("TRACK", 128, ID3v22Frames.FRAME_ID_V2_TRACK, id3FieldType);
        TRACK_TOTAL = new ID3v22FieldKey("TRACK_TOTAL", 129, ID3v22Frames.FRAME_ID_V2_TRACK, id3FieldType);
        URL_DISCOGS_ARTIST_SITE = new ID3v22FieldKey("URL_DISCOGS_ARTIST_SITE", 130, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_URL, FrameBodyWXXX.URL_DISCOGS_ARTIST_SITE, id3FieldType);
        URL_DISCOGS_RELEASE_SITE = new ID3v22FieldKey("URL_DISCOGS_RELEASE_SITE", 131, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_URL, FrameBodyWXXX.URL_DISCOGS_RELEASE_SITE, id3FieldType);
        URL_LYRICS_SITE = new ID3v22FieldKey("URL_LYRICS_SITE", 132, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_URL, FrameBodyWXXX.URL_LYRICS_SITE, id3FieldType);
        URL_OFFICIAL_ARTIST_SITE = new ID3v22FieldKey("URL_OFFICIAL_ARTIST_SITE", 133, ID3v22Frames.FRAME_ID_V2_URL_ARTIST_WEB, id3FieldType);
        URL_OFFICIAL_RELEASE_SITE = new ID3v22FieldKey("URL_OFFICIAL_RELEASE_SITE", 134, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_URL, FrameBodyWXXX.URL_OFFICIAL_RELEASE_SITE, id3FieldType);
        URL_WIKIPEDIA_ARTIST_SITE = new ID3v22FieldKey("URL_WIKIPEDIA_ARTIST_SITE", 135, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_URL, FrameBodyWXXX.URL_WIKIPEDIA_ARTIST_SITE, id3FieldType);
        URL_WIKIPEDIA_RELEASE_SITE = new ID3v22FieldKey("URL_WIKIPEDIA_RELEASE_SITE", 136, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_URL, FrameBodyWXXX.URL_WIKIPEDIA_RELEASE_SITE, id3FieldType);
        WORK = new ID3v22FieldKey(FrameBodyTXXX.WORK, 137, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.WORK, id3FieldType);
        WORK_PART_LEVEL1 = new ID3v22FieldKey("WORK_PART_LEVEL1", 138, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1, id3FieldType);
        WORK_PART_LEVEL1_TYPE = new ID3v22FieldKey("WORK_PART_LEVEL1_TYPE", 139, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1_TYPE, id3FieldType);
        WORK_PART_LEVEL2 = new ID3v22FieldKey("WORK_PART_LEVEL2", 140, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2, id3FieldType);
        WORK_PART_LEVEL2_TYPE = new ID3v22FieldKey("WORK_PART_LEVEL2_TYPE", 141, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2_TYPE, id3FieldType);
        WORK_PART_LEVEL3 = new ID3v22FieldKey("WORK_PART_LEVEL3", 142, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3, id3FieldType);
        WORK_PART_LEVEL3_TYPE = new ID3v22FieldKey("WORK_PART_LEVEL3_TYPE", 143, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3_TYPE, id3FieldType);
        WORK_PART_LEVEL4 = new ID3v22FieldKey("WORK_PART_LEVEL4", 144, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4, id3FieldType);
        WORK_PART_LEVEL4_TYPE = new ID3v22FieldKey("WORK_PART_LEVEL4_TYPE", 145, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4_TYPE, id3FieldType);
        WORK_PART_LEVEL5 = new ID3v22FieldKey("WORK_PART_LEVEL5", 146, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5, id3FieldType);
        WORK_PART_LEVEL5_TYPE = new ID3v22FieldKey("WORK_PART_LEVEL5_TYPE", 147, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5_TYPE, id3FieldType);
        WORK_PART_LEVEL6 = new ID3v22FieldKey("WORK_PART_LEVEL6", 148, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6, id3FieldType);
        WORK_PART_LEVEL6_TYPE = new ID3v22FieldKey("WORK_PART_LEVEL6_TYPE", 149, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6_TYPE, id3FieldType);
        WORK_TYPE = new ID3v22FieldKey(FrameBodyTXXX.WORK_TYPE, 150, ID3v22Frames.FRAME_ID_V2_USER_DEFINED_INFO, FrameBodyTXXX.WORK_TYPE, id3FieldType);
        YEAR = new ID3v22FieldKey("YEAR", 151, ID3v22Frames.FRAME_ID_V2_TYER, id3FieldType);
        $VALUES = $values();
    }

    private ID3v22FieldKey(String str, int i, String str2, Id3FieldType id3FieldType) {
        super(str, i);
        this.frameId = str2;
        this.fieldType = id3FieldType;
        this.fieldName = str2;
    }

    public static ID3v22FieldKey valueOf(String str) {
        return (ID3v22FieldKey) Enum.valueOf(ID3v22FieldKey.class, str);
    }

    public static ID3v22FieldKey[] values() {
        return (ID3v22FieldKey[]) $VALUES.clone();
    }

    public String getFieldName() {
        return this.fieldName;
    }

    public Id3FieldType getFieldType() {
        return this.fieldType;
    }

    public String getFrameId() {
        return this.frameId;
    }

    public String getSubId() {
        return this.subId;
    }

    private ID3v22FieldKey(String str, int i, String str2, String str3, Id3FieldType id3FieldType) {
        super(str, i);
        this.frameId = str2;
        this.subId = str3;
        this.fieldType = id3FieldType;
        this.fieldName = str2 + StringUtils.PROCESS_POSTFIX_DELIMITER + str3;
    }
}
