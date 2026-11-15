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
public final class ID3v23FieldKey {
    private static final ID3v23FieldKey[] $VALUES;
    public static final ID3v23FieldKey ACOUSTID_FINGERPRINT;
    public static final ID3v23FieldKey ACOUSTID_ID;
    public static final ID3v23FieldKey ALBUM;
    public static final ID3v23FieldKey ALBUM_ARTIST;
    public static final ID3v23FieldKey ALBUM_ARTISTS;
    public static final ID3v23FieldKey ALBUM_ARTISTS_SORT;
    public static final ID3v23FieldKey ALBUM_ARTIST_SORT;
    public static final ID3v23FieldKey ALBUM_SORT;
    public static final ID3v23FieldKey AMAZON_ID;
    public static final ID3v23FieldKey ARRANGER;
    public static final ID3v23FieldKey ARRANGER_SORT;
    public static final ID3v23FieldKey ARTIST;
    public static final ID3v23FieldKey ARTISTS;
    public static final ID3v23FieldKey ARTISTS_SORT;
    public static final ID3v23FieldKey ARTIST_SORT;
    public static final ID3v23FieldKey BARCODE;
    public static final ID3v23FieldKey BPM;
    public static final ID3v23FieldKey CATALOG_NO;
    public static final ID3v23FieldKey CHOIR;
    public static final ID3v23FieldKey CHOIR_SORT;
    public static final ID3v23FieldKey CLASSICAL_CATALOG;
    public static final ID3v23FieldKey CLASSICAL_NICKNAME;
    public static final ID3v23FieldKey COMMENT;
    public static final ID3v23FieldKey COMPOSER;
    public static final ID3v23FieldKey COMPOSER_SORT;
    public static final ID3v23FieldKey CONDUCTOR;
    public static final ID3v23FieldKey CONDUCTOR_SORT;
    public static final ID3v23FieldKey COPYRIGHT;
    public static final ID3v23FieldKey COUNTRY;
    public static final ID3v23FieldKey COVER_ART;
    public static final ID3v23FieldKey CUSTOM1;
    public static final ID3v23FieldKey CUSTOM2;
    public static final ID3v23FieldKey CUSTOM3;
    public static final ID3v23FieldKey CUSTOM4;
    public static final ID3v23FieldKey CUSTOM5;
    public static final ID3v23FieldKey DISC_NO;
    public static final ID3v23FieldKey DISC_SUBTITLE;
    public static final ID3v23FieldKey DISC_TOTAL;
    public static final ID3v23FieldKey DJMIXER;
    public static final ID3v23FieldKey ENCODER;
    public static final ID3v23FieldKey ENGINEER;
    public static final ID3v23FieldKey ENSEMBLE;
    public static final ID3v23FieldKey ENSEMBLE_SORT;
    public static final ID3v23FieldKey FBPM;
    public static final ID3v23FieldKey GENRE;
    public static final ID3v23FieldKey GROUP;
    public static final ID3v23FieldKey GROUPING;
    public static final ID3v23FieldKey INSTRUMENT;
    public static final ID3v23FieldKey INVOLVED_PERSON;
    public static final ID3v23FieldKey ISRC;
    public static final ID3v23FieldKey IS_CLASSICAL;
    public static final ID3v23FieldKey IS_COMPILATION;
    public static final ID3v23FieldKey IS_SOUNDTRACK;
    public static final ID3v23FieldKey ITUNES_GROUPING;
    public static final ID3v23FieldKey KEY;
    public static final ID3v23FieldKey LANGUAGE;
    public static final ID3v23FieldKey LYRICIST;
    public static final ID3v23FieldKey LYRICS;
    public static final ID3v23FieldKey MEDIA;
    public static final ID3v23FieldKey MIXER;
    public static final ID3v23FieldKey MOOD;
    public static final ID3v23FieldKey MOOD_ACOUSTIC;
    public static final ID3v23FieldKey MOOD_AGGRESSIVE;
    public static final ID3v23FieldKey MOOD_AROUSAL;
    public static final ID3v23FieldKey MOOD_DANCEABILITY;
    public static final ID3v23FieldKey MOOD_ELECTRONIC;
    public static final ID3v23FieldKey MOOD_HAPPY;
    public static final ID3v23FieldKey MOOD_INSTRUMENTAL;
    public static final ID3v23FieldKey MOOD_PARTY;
    public static final ID3v23FieldKey MOOD_RELAXED;
    public static final ID3v23FieldKey MOOD_SAD;
    public static final ID3v23FieldKey MOOD_VALENCE;
    public static final ID3v23FieldKey MOVEMENT;
    public static final ID3v23FieldKey MOVEMENT_NO;
    public static final ID3v23FieldKey MOVEMENT_TOTAL;
    public static final ID3v23FieldKey MUSICBRAINZ_ARTISTID;
    public static final ID3v23FieldKey MUSICBRAINZ_DISC_ID;
    public static final ID3v23FieldKey MUSICBRAINZ_ORIGINAL_RELEASEID;
    public static final ID3v23FieldKey MUSICBRAINZ_RELEASEARTISTID;
    public static final ID3v23FieldKey MUSICBRAINZ_RELEASEID;
    public static final ID3v23FieldKey MUSICBRAINZ_RELEASE_COUNTRY;
    public static final ID3v23FieldKey MUSICBRAINZ_RELEASE_GROUP_ID;
    public static final ID3v23FieldKey MUSICBRAINZ_RELEASE_STATUS;
    public static final ID3v23FieldKey MUSICBRAINZ_RELEASE_TRACK_ID;
    public static final ID3v23FieldKey MUSICBRAINZ_RELEASE_TYPE;
    public static final ID3v23FieldKey MUSICBRAINZ_TRACK_ID;
    public static final ID3v23FieldKey MUSICBRAINZ_WORK;
    public static final ID3v23FieldKey MUSICBRAINZ_WORK_COMPOSITION;
    public static final ID3v23FieldKey MUSICBRAINZ_WORK_COMPOSITION_ID;
    public static final ID3v23FieldKey MUSICBRAINZ_WORK_ID;
    public static final ID3v23FieldKey MUSICBRAINZ_WORK_PART_LEVEL1_ID;
    public static final ID3v23FieldKey MUSICBRAINZ_WORK_PART_LEVEL2_ID;
    public static final ID3v23FieldKey MUSICBRAINZ_WORK_PART_LEVEL3_ID;
    public static final ID3v23FieldKey MUSICBRAINZ_WORK_PART_LEVEL4_ID;
    public static final ID3v23FieldKey MUSICBRAINZ_WORK_PART_LEVEL5_ID;
    public static final ID3v23FieldKey MUSICBRAINZ_WORK_PART_LEVEL6_ID;
    public static final ID3v23FieldKey MUSICIP_ID;
    public static final ID3v23FieldKey OCCASION;
    public static final ID3v23FieldKey OPUS;
    public static final ID3v23FieldKey ORCHESTRA;
    public static final ID3v23FieldKey ORCHESTRA_SORT;
    public static final ID3v23FieldKey ORIGINAL_ALBUM;
    public static final ID3v23FieldKey ORIGINAL_ARTIST;
    public static final ID3v23FieldKey ORIGINAL_LYRICIST;
    public static final ID3v23FieldKey ORIGINAL_YEAR;
    public static final ID3v23FieldKey PART;
    public static final ID3v23FieldKey PART_NUMBER;
    public static final ID3v23FieldKey PART_TYPE;
    public static final ID3v23FieldKey PERFORMER;
    public static final ID3v23FieldKey PERFORMER_NAME;
    public static final ID3v23FieldKey PERFORMER_NAME_SORT;
    public static final ID3v23FieldKey PERIOD;
    public static final ID3v23FieldKey PRODUCER;
    public static final ID3v23FieldKey QUALITY;
    public static final ID3v23FieldKey RANKING;
    public static final ID3v23FieldKey RATING;
    public static final ID3v23FieldKey RECORD_LABEL;
    public static final ID3v23FieldKey REMIXER;
    public static final ID3v23FieldKey SCRIPT;
    public static final ID3v23FieldKey SINGLE_DISC_TRACK_NO;
    public static final ID3v23FieldKey SUBTITLE;
    public static final ID3v23FieldKey TAGS;
    public static final ID3v23FieldKey TEMPO;
    public static final ID3v23FieldKey TIMBRE;
    public static final ID3v23FieldKey TITLE;
    public static final ID3v23FieldKey TITLE_MOVEMENT;
    public static final ID3v23FieldKey TITLE_SORT;
    public static final ID3v23FieldKey TONALITY;
    public static final ID3v23FieldKey TRACK;
    public static final ID3v23FieldKey TRACK_TOTAL;
    public static final ID3v23FieldKey URL_DISCOGS_ARTIST_SITE;
    public static final ID3v23FieldKey URL_DISCOGS_RELEASE_SITE;
    public static final ID3v23FieldKey URL_LYRICS_SITE;
    public static final ID3v23FieldKey URL_OFFICIAL_ARTIST_SITE;
    public static final ID3v23FieldKey URL_OFFICIAL_RELEASE_SITE;
    public static final ID3v23FieldKey URL_WIKIPEDIA_ARTIST_SITE;
    public static final ID3v23FieldKey URL_WIKIPEDIA_RELEASE_SITE;
    public static final ID3v23FieldKey WORK;
    public static final ID3v23FieldKey WORK_PART_LEVEL1;
    public static final ID3v23FieldKey WORK_PART_LEVEL1_TYPE;
    public static final ID3v23FieldKey WORK_PART_LEVEL2;
    public static final ID3v23FieldKey WORK_PART_LEVEL2_TYPE;
    public static final ID3v23FieldKey WORK_PART_LEVEL3;
    public static final ID3v23FieldKey WORK_PART_LEVEL3_TYPE;
    public static final ID3v23FieldKey WORK_PART_LEVEL4;
    public static final ID3v23FieldKey WORK_PART_LEVEL4_TYPE;
    public static final ID3v23FieldKey WORK_PART_LEVEL5;
    public static final ID3v23FieldKey WORK_PART_LEVEL5_TYPE;
    public static final ID3v23FieldKey WORK_PART_LEVEL6;
    public static final ID3v23FieldKey WORK_PART_LEVEL6_TYPE;
    public static final ID3v23FieldKey WORK_TYPE;
    public static final ID3v23FieldKey YEAR;
    private String fieldName;
    private Id3FieldType fieldType;
    private String frameId;
    private String subId;

    private static ID3v23FieldKey[] $values() {
        return new ID3v23FieldKey[]{ACOUSTID_FINGERPRINT, ACOUSTID_ID, ALBUM, ALBUM_ARTIST, ALBUM_ARTIST_SORT, ALBUM_ARTISTS, ALBUM_ARTISTS_SORT, ALBUM_SORT, AMAZON_ID, ARRANGER, ARRANGER_SORT, ARTIST, ARTISTS, ARTISTS_SORT, ARTIST_SORT, BARCODE, BPM, CATALOG_NO, CHOIR, CHOIR_SORT, CLASSICAL_CATALOG, CLASSICAL_NICKNAME, COMMENT, COMPOSER, COMPOSER_SORT, CONDUCTOR, CONDUCTOR_SORT, COPYRIGHT, COUNTRY, COVER_ART, CUSTOM1, CUSTOM2, CUSTOM3, CUSTOM4, CUSTOM5, DISC_NO, DISC_SUBTITLE, DISC_TOTAL, DJMIXER, ENCODER, ENGINEER, ENSEMBLE, ENSEMBLE_SORT, FBPM, GENRE, GROUP, GROUPING, INVOLVED_PERSON, INSTRUMENT, ISRC, IS_CLASSICAL, IS_COMPILATION, IS_SOUNDTRACK, ITUNES_GROUPING, KEY, LANGUAGE, LYRICIST, LYRICS, MEDIA, MIXER, MOOD, MOOD_ACOUSTIC, MOOD_AGGRESSIVE, MOOD_AROUSAL, MOOD_DANCEABILITY, MOOD_ELECTRONIC, MOOD_HAPPY, MOOD_INSTRUMENTAL, MOOD_PARTY, MOOD_RELAXED, MOOD_SAD, MOOD_VALENCE, MOVEMENT, MOVEMENT_NO, MOVEMENT_TOTAL, MUSICBRAINZ_ARTISTID, MUSICBRAINZ_DISC_ID, MUSICBRAINZ_ORIGINAL_RELEASEID, MUSICBRAINZ_RELEASEARTISTID, MUSICBRAINZ_RELEASEID, MUSICBRAINZ_RELEASE_COUNTRY, MUSICBRAINZ_RELEASE_GROUP_ID, MUSICBRAINZ_RELEASE_STATUS, MUSICBRAINZ_RELEASE_TRACK_ID, MUSICBRAINZ_RELEASE_TYPE, MUSICBRAINZ_TRACK_ID, MUSICBRAINZ_WORK_COMPOSITION, MUSICBRAINZ_WORK_COMPOSITION_ID, MUSICBRAINZ_WORK_ID, MUSICBRAINZ_WORK_PART_LEVEL1_ID, MUSICBRAINZ_WORK_PART_LEVEL2_ID, MUSICBRAINZ_WORK_PART_LEVEL3_ID, MUSICBRAINZ_WORK_PART_LEVEL4_ID, MUSICBRAINZ_WORK_PART_LEVEL5_ID, MUSICBRAINZ_WORK_PART_LEVEL6_ID, MUSICIP_ID, OCCASION, OPUS, ORCHESTRA, ORCHESTRA_SORT, ORIGINAL_ALBUM, ORIGINAL_ARTIST, ORIGINAL_LYRICIST, ORIGINAL_YEAR, PART, PART_NUMBER, PART_TYPE, PERFORMER, PERFORMER_NAME, PERFORMER_NAME_SORT, PERIOD, PRODUCER, QUALITY, RANKING, RATING, RECORD_LABEL, REMIXER, SCRIPT, SINGLE_DISC_TRACK_NO, SUBTITLE, TAGS, TEMPO, TIMBRE, TITLE, TITLE_MOVEMENT, MUSICBRAINZ_WORK, TITLE_SORT, TONALITY, TRACK, TRACK_TOTAL, URL_DISCOGS_ARTIST_SITE, URL_DISCOGS_RELEASE_SITE, URL_LYRICS_SITE, URL_OFFICIAL_ARTIST_SITE, URL_OFFICIAL_RELEASE_SITE, URL_WIKIPEDIA_ARTIST_SITE, URL_WIKIPEDIA_RELEASE_SITE, WORK, WORK_PART_LEVEL1, WORK_PART_LEVEL1_TYPE, WORK_PART_LEVEL2, WORK_PART_LEVEL2_TYPE, WORK_PART_LEVEL3, WORK_PART_LEVEL3_TYPE, WORK_PART_LEVEL4, WORK_PART_LEVEL4_TYPE, WORK_PART_LEVEL5, WORK_PART_LEVEL5_TYPE, WORK_PART_LEVEL6, WORK_PART_LEVEL6_TYPE, WORK_TYPE, YEAR};
    }

    static {
        Id3FieldType id3FieldType = Id3FieldType.TEXT;
        ACOUSTID_FINGERPRINT = new ID3v23FieldKey("ACOUSTID_FINGERPRINT", 0, "TXXX", FrameBodyTXXX.ACOUSTID_FINGERPRINT, id3FieldType);
        ACOUSTID_ID = new ID3v23FieldKey("ACOUSTID_ID", 1, "TXXX", FrameBodyTXXX.ACOUSTID_ID, id3FieldType);
        ALBUM = new ID3v23FieldKey("ALBUM", 2, "TALB", id3FieldType);
        ALBUM_ARTIST = new ID3v23FieldKey("ALBUM_ARTIST", 3, "TPE2", id3FieldType);
        ALBUM_ARTIST_SORT = new ID3v23FieldKey("ALBUM_ARTIST_SORT", 4, "TSO2", id3FieldType);
        ALBUM_ARTISTS = new ID3v23FieldKey(FrameBodyTXXX.ALBUM_ARTISTS, 5, "TXXX", FrameBodyTXXX.ALBUM_ARTISTS, id3FieldType);
        ALBUM_ARTISTS_SORT = new ID3v23FieldKey(FrameBodyTXXX.ALBUM_ARTISTS_SORT, 6, "TXXX", FrameBodyTXXX.ALBUM_ARTISTS_SORT, id3FieldType);
        ALBUM_SORT = new ID3v23FieldKey("ALBUM_SORT", 7, "TSOA", id3FieldType);
        AMAZON_ID = new ID3v23FieldKey("AMAZON_ID", 8, "TXXX", FrameBodyTXXX.AMAZON_ASIN, id3FieldType);
        ARRANGER = new ID3v23FieldKey("ARRANGER", 9, ID3v23Frames.FRAME_ID_V3_INVOLVED_PEOPLE, StandardIPLSKey.ARRANGER.getKey(), id3FieldType);
        ARRANGER_SORT = new ID3v23FieldKey(FrameBodyTXXX.ARRANGER_SORT, 10, "TXXX", FrameBodyTXXX.ARRANGER_SORT, id3FieldType);
        ARTIST = new ID3v23FieldKey("ARTIST", 11, "TPE1", id3FieldType);
        ARTISTS = new ID3v23FieldKey(FrameBodyTXXX.ARTISTS, 12, "TXXX", FrameBodyTXXX.ARTISTS, id3FieldType);
        ARTISTS_SORT = new ID3v23FieldKey(FrameBodyTXXX.ARTISTS_SORT, 13, "TXXX", FrameBodyTXXX.ARTISTS_SORT, id3FieldType);
        ARTIST_SORT = new ID3v23FieldKey("ARTIST_SORT", 14, "TSOP", id3FieldType);
        BARCODE = new ID3v23FieldKey(FrameBodyTXXX.BARCODE, 15, "TXXX", FrameBodyTXXX.BARCODE, id3FieldType);
        BPM = new ID3v23FieldKey("BPM", 16, "TBPM", id3FieldType);
        CATALOG_NO = new ID3v23FieldKey("CATALOG_NO", 17, "TXXX", FrameBodyTXXX.CATALOG_NO, id3FieldType);
        CHOIR = new ID3v23FieldKey(FrameBodyTXXX.CHOIR, 18, "TXXX", FrameBodyTXXX.CHOIR, id3FieldType);
        CHOIR_SORT = new ID3v23FieldKey(FrameBodyTXXX.CHOIR_SORT, 19, "TXXX", FrameBodyTXXX.CHOIR_SORT, id3FieldType);
        CLASSICAL_CATALOG = new ID3v23FieldKey(FrameBodyTXXX.CLASSICAL_CATALOG, 20, "TXXX", FrameBodyTXXX.CLASSICAL_CATALOG, id3FieldType);
        CLASSICAL_NICKNAME = new ID3v23FieldKey(FrameBodyTXXX.CLASSICAL_NICKNAME, 21, "TXXX", FrameBodyTXXX.CLASSICAL_NICKNAME, id3FieldType);
        COMMENT = new ID3v23FieldKey("COMMENT", 22, "COMM", id3FieldType);
        COMPOSER = new ID3v23FieldKey("COMPOSER", 23, "TCOM", id3FieldType);
        COMPOSER_SORT = new ID3v23FieldKey("COMPOSER_SORT", 24, "TSOC", id3FieldType);
        CONDUCTOR = new ID3v23FieldKey("CONDUCTOR", 25, "TPE3", id3FieldType);
        CONDUCTOR_SORT = new ID3v23FieldKey(FrameBodyTXXX.CONDUCTOR_SORT, 26, "TXXX", FrameBodyTXXX.CONDUCTOR_SORT, id3FieldType);
        COPYRIGHT = new ID3v23FieldKey(ContentDescription.KEY_COPYRIGHT, 27, "TCOP", id3FieldType);
        COUNTRY = new ID3v23FieldKey("COUNTRY", 28, "TXXX", FrameBodyTXXX.COUNTRY, id3FieldType);
        COVER_ART = new ID3v23FieldKey("COVER_ART", 29, "APIC", Id3FieldType.BINARY);
        CUSTOM1 = new ID3v23FieldKey("CUSTOM1", 30, "COMM", FrameBodyCOMM.MM_CUSTOM1, id3FieldType);
        CUSTOM2 = new ID3v23FieldKey("CUSTOM2", 31, "COMM", FrameBodyCOMM.MM_CUSTOM2, id3FieldType);
        CUSTOM3 = new ID3v23FieldKey("CUSTOM3", 32, "COMM", FrameBodyCOMM.MM_CUSTOM3, id3FieldType);
        CUSTOM4 = new ID3v23FieldKey("CUSTOM4", 33, "COMM", FrameBodyCOMM.MM_CUSTOM4, id3FieldType);
        CUSTOM5 = new ID3v23FieldKey("CUSTOM5", 34, "COMM", FrameBodyCOMM.MM_CUSTOM5, id3FieldType);
        DISC_NO = new ID3v23FieldKey("DISC_NO", 35, "TPOS", id3FieldType);
        DISC_SUBTITLE = new ID3v23FieldKey("DISC_SUBTITLE", 36, "TSST", id3FieldType);
        DISC_TOTAL = new ID3v23FieldKey("DISC_TOTAL", 37, "TPOS", id3FieldType);
        DJMIXER = new ID3v23FieldKey("DJMIXER", 38, ID3v23Frames.FRAME_ID_V3_INVOLVED_PEOPLE, StandardIPLSKey.DJMIXER.getKey(), id3FieldType);
        ENCODER = new ID3v23FieldKey("ENCODER", 39, "TENC", id3FieldType);
        ENGINEER = new ID3v23FieldKey("ENGINEER", 40, ID3v23Frames.FRAME_ID_V3_INVOLVED_PEOPLE, StandardIPLSKey.ENGINEER.getKey(), id3FieldType);
        ENSEMBLE = new ID3v23FieldKey(FrameBodyTXXX.ENSEMBLE, 41, "TXXX", FrameBodyTXXX.ENSEMBLE, id3FieldType);
        ENSEMBLE_SORT = new ID3v23FieldKey(FrameBodyTXXX.ENSEMBLE_SORT, 42, "TXXX", FrameBodyTXXX.ENSEMBLE_SORT, id3FieldType);
        FBPM = new ID3v23FieldKey(FrameBodyTXXX.FBPM, 43, "TXXX", FrameBodyTXXX.FBPM, id3FieldType);
        GENRE = new ID3v23FieldKey("GENRE", 44, "TCON", id3FieldType);
        GROUP = new ID3v23FieldKey(FrameBodyTXXX.GROUP, 45, "TXXX", FrameBodyTXXX.GROUP, id3FieldType);
        GROUPING = new ID3v23FieldKey("GROUPING", 46, "TIT1", id3FieldType);
        INVOLVED_PERSON = new ID3v23FieldKey("INVOLVED_PERSON", 47, ID3v23Frames.FRAME_ID_V3_INVOLVED_PEOPLE, id3FieldType);
        INSTRUMENT = new ID3v23FieldKey(FrameBodyTXXX.INSTRUMENT, 48, "TXXX", FrameBodyTXXX.INSTRUMENT, id3FieldType);
        ISRC = new ID3v23FieldKey("ISRC", 49, "TSRC", id3FieldType);
        IS_CLASSICAL = new ID3v23FieldKey(FrameBodyTXXX.IS_CLASSICAL, 50, "TXXX", FrameBodyTXXX.IS_CLASSICAL, id3FieldType);
        IS_COMPILATION = new ID3v23FieldKey("IS_COMPILATION", 51, "TCMP", id3FieldType);
        IS_SOUNDTRACK = new ID3v23FieldKey(FrameBodyTXXX.IS_SOUNDTRACK, 52, "TXXX", FrameBodyTXXX.IS_SOUNDTRACK, id3FieldType);
        ITUNES_GROUPING = new ID3v23FieldKey("ITUNES_GROUPING", 53, "GRP1", id3FieldType);
        KEY = new ID3v23FieldKey("KEY", 54, "TKEY", id3FieldType);
        LANGUAGE = new ID3v23FieldKey("LANGUAGE", 55, "TLAN", id3FieldType);
        LYRICIST = new ID3v23FieldKey("LYRICIST", 56, "TEXT", id3FieldType);
        LYRICS = new ID3v23FieldKey("LYRICS", 57, "USLT", id3FieldType);
        MEDIA = new ID3v23FieldKey("MEDIA", 58, "TMED", id3FieldType);
        MIXER = new ID3v23FieldKey("MIXER", 59, ID3v23Frames.FRAME_ID_V3_INVOLVED_PEOPLE, StandardIPLSKey.MIXER.getKey(), id3FieldType);
        MOOD = new ID3v23FieldKey(FrameBodyTXXX.MOOD, 60, "TXXX", FrameBodyTXXX.MOOD, id3FieldType);
        MOOD_ACOUSTIC = new ID3v23FieldKey(FrameBodyTXXX.MOOD_ACOUSTIC, 61, "TXXX", FrameBodyTXXX.MOOD_ACOUSTIC, id3FieldType);
        MOOD_AGGRESSIVE = new ID3v23FieldKey(FrameBodyTXXX.MOOD_AGGRESSIVE, 62, "TXXX", FrameBodyTXXX.MOOD_AGGRESSIVE, id3FieldType);
        MOOD_AROUSAL = new ID3v23FieldKey(FrameBodyTXXX.MOOD_AROUSAL, 63, "TXXX", FrameBodyTXXX.MOOD_AROUSAL, id3FieldType);
        MOOD_DANCEABILITY = new ID3v23FieldKey(FrameBodyTXXX.MOOD_DANCEABILITY, 64, "TXXX", FrameBodyTXXX.MOOD_DANCEABILITY, id3FieldType);
        MOOD_ELECTRONIC = new ID3v23FieldKey(FrameBodyTXXX.MOOD_ELECTRONIC, 65, "TXXX", FrameBodyTXXX.MOOD_ELECTRONIC, id3FieldType);
        MOOD_HAPPY = new ID3v23FieldKey(FrameBodyTXXX.MOOD_HAPPY, 66, "TXXX", FrameBodyTXXX.MOOD_HAPPY, id3FieldType);
        MOOD_INSTRUMENTAL = new ID3v23FieldKey(FrameBodyTXXX.MOOD_INSTRUMENTAL, 67, "TXXX", FrameBodyTXXX.MOOD_INSTRUMENTAL, id3FieldType);
        MOOD_PARTY = new ID3v23FieldKey(FrameBodyTXXX.MOOD_PARTY, 68, "TXXX", FrameBodyTXXX.MOOD_PARTY, id3FieldType);
        MOOD_RELAXED = new ID3v23FieldKey(FrameBodyTXXX.MOOD_RELAXED, 69, "TXXX", FrameBodyTXXX.MOOD_RELAXED, id3FieldType);
        MOOD_SAD = new ID3v23FieldKey(FrameBodyTXXX.MOOD_SAD, 70, "TXXX", FrameBodyTXXX.MOOD_SAD, id3FieldType);
        MOOD_VALENCE = new ID3v23FieldKey(FrameBodyTXXX.MOOD_VALENCE, 71, "TXXX", FrameBodyTXXX.MOOD_VALENCE, id3FieldType);
        MOVEMENT = new ID3v23FieldKey("MOVEMENT", 72, "MVNM", id3FieldType);
        MOVEMENT_NO = new ID3v23FieldKey("MOVEMENT_NO", 73, "MVIN", id3FieldType);
        MOVEMENT_TOTAL = new ID3v23FieldKey("MOVEMENT_TOTAL", 74, "MVIN", id3FieldType);
        MUSICBRAINZ_ARTISTID = new ID3v23FieldKey("MUSICBRAINZ_ARTISTID", 75, "TXXX", FrameBodyTXXX.MUSICBRAINZ_ARTISTID, id3FieldType);
        MUSICBRAINZ_DISC_ID = new ID3v23FieldKey("MUSICBRAINZ_DISC_ID", 76, "TXXX", FrameBodyTXXX.MUSICBRAINZ_DISCID, id3FieldType);
        MUSICBRAINZ_ORIGINAL_RELEASEID = new ID3v23FieldKey("MUSICBRAINZ_ORIGINAL_RELEASEID", 77, "TXXX", FrameBodyTXXX.MUSICBRAINZ_ORIGINAL_ALBUMID, id3FieldType);
        MUSICBRAINZ_RELEASEARTISTID = new ID3v23FieldKey("MUSICBRAINZ_RELEASEARTISTID", 78, "TXXX", FrameBodyTXXX.MUSICBRAINZ_ALBUM_ARTISTID, id3FieldType);
        MUSICBRAINZ_RELEASEID = new ID3v23FieldKey("MUSICBRAINZ_RELEASEID", 79, "TXXX", FrameBodyTXXX.MUSICBRAINZ_ALBUMID, id3FieldType);
        MUSICBRAINZ_RELEASE_COUNTRY = new ID3v23FieldKey("MUSICBRAINZ_RELEASE_COUNTRY", 80, "TXXX", FrameBodyTXXX.MUSICBRAINZ_ALBUM_COUNTRY, id3FieldType);
        MUSICBRAINZ_RELEASE_GROUP_ID = new ID3v23FieldKey("MUSICBRAINZ_RELEASE_GROUP_ID", 81, "TXXX", FrameBodyTXXX.MUSICBRAINZ_RELEASE_GROUPID, id3FieldType);
        MUSICBRAINZ_RELEASE_STATUS = new ID3v23FieldKey("MUSICBRAINZ_RELEASE_STATUS", 82, "TXXX", FrameBodyTXXX.MUSICBRAINZ_ALBUM_STATUS, id3FieldType);
        MUSICBRAINZ_RELEASE_TRACK_ID = new ID3v23FieldKey("MUSICBRAINZ_RELEASE_TRACK_ID", 83, "TXXX", FrameBodyTXXX.MUSICBRAINZ_RELEASE_TRACKID, id3FieldType);
        MUSICBRAINZ_RELEASE_TYPE = new ID3v23FieldKey("MUSICBRAINZ_RELEASE_TYPE", 84, "TXXX", FrameBodyTXXX.MUSICBRAINZ_ALBUM_TYPE, id3FieldType);
        MUSICBRAINZ_TRACK_ID = new ID3v23FieldKey("MUSICBRAINZ_TRACK_ID", 85, "UFID", FrameBodyUFID.UFID_MUSICBRAINZ, id3FieldType);
        MUSICBRAINZ_WORK_COMPOSITION = new ID3v23FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION, 86, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION, id3FieldType);
        MUSICBRAINZ_WORK_COMPOSITION_ID = new ID3v23FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION_ID, 87, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION_ID, id3FieldType);
        MUSICBRAINZ_WORK_ID = new ID3v23FieldKey("MUSICBRAINZ_WORK_ID", 88, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORKID, id3FieldType);
        MUSICBRAINZ_WORK_PART_LEVEL1_ID = new ID3v23FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1_ID, 89, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1_ID, id3FieldType);
        MUSICBRAINZ_WORK_PART_LEVEL2_ID = new ID3v23FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2_ID, 90, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2_ID, id3FieldType);
        MUSICBRAINZ_WORK_PART_LEVEL3_ID = new ID3v23FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3_ID, 91, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3_ID, id3FieldType);
        MUSICBRAINZ_WORK_PART_LEVEL4_ID = new ID3v23FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4_ID, 92, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4_ID, id3FieldType);
        MUSICBRAINZ_WORK_PART_LEVEL5_ID = new ID3v23FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5_ID, 93, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5_ID, id3FieldType);
        MUSICBRAINZ_WORK_PART_LEVEL6_ID = new ID3v23FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6_ID, 94, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6_ID, id3FieldType);
        MUSICIP_ID = new ID3v23FieldKey("MUSICIP_ID", 95, "TXXX", FrameBodyTXXX.MUSICIP_ID, id3FieldType);
        OCCASION = new ID3v23FieldKey("OCCASION", 96, "COMM", FrameBodyCOMM.MM_OCCASION, id3FieldType);
        OPUS = new ID3v23FieldKey("OPUS", 97, "TXXX", "OPUS", id3FieldType);
        ORCHESTRA = new ID3v23FieldKey(FrameBodyTXXX.ORCHESTRA, 98, "TXXX", FrameBodyTXXX.ORCHESTRA, id3FieldType);
        ORCHESTRA_SORT = new ID3v23FieldKey(FrameBodyTXXX.ORCHESTRA_SORT, 99, "TXXX", FrameBodyTXXX.ORCHESTRA_SORT, id3FieldType);
        ORIGINAL_ALBUM = new ID3v23FieldKey("ORIGINAL_ALBUM", 100, "TOAL", id3FieldType);
        ORIGINAL_ARTIST = new ID3v23FieldKey("ORIGINAL_ARTIST", 101, "TOPE", id3FieldType);
        ORIGINAL_LYRICIST = new ID3v23FieldKey("ORIGINAL_LYRICIST", 102, "TOLY", id3FieldType);
        ORIGINAL_YEAR = new ID3v23FieldKey("ORIGINAL_YEAR", 103, ID3v23Frames.FRAME_ID_V3_TORY, id3FieldType);
        PART = new ID3v23FieldKey(FrameBodyTXXX.PART, 104, "TXXX", FrameBodyTXXX.PART, id3FieldType);
        PART_NUMBER = new ID3v23FieldKey("PART_NUMBER", 105, "TXXX", FrameBodyTXXX.PART_NUMBER, id3FieldType);
        PART_TYPE = new ID3v23FieldKey(FrameBodyTXXX.PART_TYPE, 106, "TXXX", FrameBodyTXXX.PART_TYPE, id3FieldType);
        PERFORMER = new ID3v23FieldKey("PERFORMER", 107, ID3v23Frames.FRAME_ID_V3_INVOLVED_PEOPLE, id3FieldType);
        PERFORMER_NAME = new ID3v23FieldKey(FrameBodyTXXX.PERFORMER_NAME, 108, "TXXX", FrameBodyTXXX.PERFORMER_NAME, id3FieldType);
        PERFORMER_NAME_SORT = new ID3v23FieldKey(FrameBodyTXXX.PERFORMER_NAME_SORT, 109, "TXXX", FrameBodyTXXX.PERFORMER_NAME_SORT, id3FieldType);
        PERIOD = new ID3v23FieldKey(FrameBodyTXXX.PERIOD, 110, "TXXX", FrameBodyTXXX.PERIOD, id3FieldType);
        PRODUCER = new ID3v23FieldKey("PRODUCER", 111, ID3v23Frames.FRAME_ID_V3_INVOLVED_PEOPLE, StandardIPLSKey.PRODUCER.getKey(), id3FieldType);
        QUALITY = new ID3v23FieldKey("QUALITY", 112, "COMM", FrameBodyCOMM.MM_QUALITY, id3FieldType);
        RANKING = new ID3v23FieldKey(FrameBodyTXXX.RANKING, 113, "TXXX", FrameBodyTXXX.RANKING, id3FieldType);
        RATING = new ID3v23FieldKey(ContentDescription.KEY_RATING, 114, "POPM", id3FieldType);
        RECORD_LABEL = new ID3v23FieldKey("RECORD_LABEL", 115, "TPUB", id3FieldType);
        REMIXER = new ID3v23FieldKey("REMIXER", 116, "TPE4", id3FieldType);
        SCRIPT = new ID3v23FieldKey("SCRIPT", 117, "TXXX", FrameBodyTXXX.SCRIPT, id3FieldType);
        SINGLE_DISC_TRACK_NO = new ID3v23FieldKey(FrameBodyTXXX.SINGLE_DISC_TRACK_NO, 118, "TXXX", FrameBodyTXXX.SINGLE_DISC_TRACK_NO, id3FieldType);
        SUBTITLE = new ID3v23FieldKey("SUBTITLE", 119, "TIT3", id3FieldType);
        TAGS = new ID3v23FieldKey(FrameBodyTXXX.TAGS, 120, "TXXX", FrameBodyTXXX.TAGS, id3FieldType);
        TEMPO = new ID3v23FieldKey("TEMPO", 121, "COMM", FrameBodyCOMM.MM_TEMPO, id3FieldType);
        TIMBRE = new ID3v23FieldKey("TIMBRE", 122, "TXXX", FrameBodyTXXX.TIMBRE, id3FieldType);
        TITLE = new ID3v23FieldKey(ContentDescription.KEY_TITLE, 123, "TIT2", id3FieldType);
        TITLE_MOVEMENT = new ID3v23FieldKey(FrameBodyTXXX.TITLE_MOVEMENT, 124, "TXXX", FrameBodyTXXX.TITLE_MOVEMENT, id3FieldType);
        MUSICBRAINZ_WORK = new ID3v23FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK, 125, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK, id3FieldType);
        TITLE_SORT = new ID3v23FieldKey("TITLE_SORT", 126, "TSOT", id3FieldType);
        TONALITY = new ID3v23FieldKey(FrameBodyTXXX.TONALITY, 127, "TXXX", FrameBodyTXXX.TONALITY, id3FieldType);
        TRACK = new ID3v23FieldKey("TRACK", 128, "TRCK", id3FieldType);
        TRACK_TOTAL = new ID3v23FieldKey("TRACK_TOTAL", 129, "TRCK", id3FieldType);
        URL_DISCOGS_ARTIST_SITE = new ID3v23FieldKey("URL_DISCOGS_ARTIST_SITE", 130, "WXXX", FrameBodyWXXX.URL_DISCOGS_ARTIST_SITE, id3FieldType);
        URL_DISCOGS_RELEASE_SITE = new ID3v23FieldKey("URL_DISCOGS_RELEASE_SITE", 131, "WXXX", FrameBodyWXXX.URL_DISCOGS_RELEASE_SITE, id3FieldType);
        URL_LYRICS_SITE = new ID3v23FieldKey("URL_LYRICS_SITE", 132, "WXXX", FrameBodyWXXX.URL_LYRICS_SITE, id3FieldType);
        URL_OFFICIAL_ARTIST_SITE = new ID3v23FieldKey("URL_OFFICIAL_ARTIST_SITE", 133, "WOAR", id3FieldType);
        URL_OFFICIAL_RELEASE_SITE = new ID3v23FieldKey("URL_OFFICIAL_RELEASE_SITE", 134, "WXXX", FrameBodyWXXX.URL_OFFICIAL_RELEASE_SITE, id3FieldType);
        URL_WIKIPEDIA_ARTIST_SITE = new ID3v23FieldKey("URL_WIKIPEDIA_ARTIST_SITE", 135, "WXXX", FrameBodyWXXX.URL_WIKIPEDIA_ARTIST_SITE, id3FieldType);
        URL_WIKIPEDIA_RELEASE_SITE = new ID3v23FieldKey("URL_WIKIPEDIA_RELEASE_SITE", 136, "WXXX", FrameBodyWXXX.URL_WIKIPEDIA_RELEASE_SITE, id3FieldType);
        WORK = new ID3v23FieldKey(FrameBodyTXXX.WORK, 137, "TXXX", FrameBodyTXXX.WORK, id3FieldType);
        WORK_PART_LEVEL1 = new ID3v23FieldKey("WORK_PART_LEVEL1", 138, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1, id3FieldType);
        WORK_PART_LEVEL1_TYPE = new ID3v23FieldKey("WORK_PART_LEVEL1_TYPE", 139, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1_TYPE, id3FieldType);
        WORK_PART_LEVEL2 = new ID3v23FieldKey("WORK_PART_LEVEL2", 140, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2, id3FieldType);
        WORK_PART_LEVEL2_TYPE = new ID3v23FieldKey("WORK_PART_LEVEL2_TYPE", 141, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2_TYPE, id3FieldType);
        WORK_PART_LEVEL3 = new ID3v23FieldKey("WORK_PART_LEVEL3", 142, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3, id3FieldType);
        WORK_PART_LEVEL3_TYPE = new ID3v23FieldKey("WORK_PART_LEVEL3_TYPE", 143, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3_TYPE, id3FieldType);
        WORK_PART_LEVEL4 = new ID3v23FieldKey("WORK_PART_LEVEL4", 144, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4, id3FieldType);
        WORK_PART_LEVEL4_TYPE = new ID3v23FieldKey("WORK_PART_LEVEL4_TYPE", 145, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4_TYPE, id3FieldType);
        WORK_PART_LEVEL5 = new ID3v23FieldKey("WORK_PART_LEVEL5", 146, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5, id3FieldType);
        WORK_PART_LEVEL5_TYPE = new ID3v23FieldKey("WORK_PART_LEVEL5_TYPE", 147, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5_TYPE, id3FieldType);
        WORK_PART_LEVEL6 = new ID3v23FieldKey("WORK_PART_LEVEL6", 148, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6, id3FieldType);
        WORK_PART_LEVEL6_TYPE = new ID3v23FieldKey("WORK_PART_LEVEL6_TYPE", 149, "TXXX", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6_TYPE, id3FieldType);
        WORK_TYPE = new ID3v23FieldKey(FrameBodyTXXX.WORK_TYPE, 150, "TXXX", FrameBodyTXXX.WORK_TYPE, id3FieldType);
        YEAR = new ID3v23FieldKey("YEAR", 151, ID3v23Frames.FRAME_ID_V3_TYER, id3FieldType);
        $VALUES = $values();
    }

    private ID3v23FieldKey(String str, int i, String str2, Id3FieldType id3FieldType) {
        super(str, i);
        this.frameId = str2;
        this.fieldType = id3FieldType;
        this.fieldName = str2;
    }

    public static ID3v23FieldKey valueOf(String str) {
        return (ID3v23FieldKey) Enum.valueOf(ID3v23FieldKey.class, str);
    }

    public static ID3v23FieldKey[] values() {
        return (ID3v23FieldKey[]) $VALUES.clone();
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

    private ID3v23FieldKey(String str, int i, String str2, String str3, Id3FieldType id3FieldType) {
        super(str, i);
        this.frameId = str2;
        this.subId = str3;
        this.fieldType = id3FieldType;
        this.fieldName = str2 + StringUtils.PROCESS_POSTFIX_DELIMITER + str3;
    }
}
