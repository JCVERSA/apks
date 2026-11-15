package com.transsion.audiotagger.tag.mp4;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.transsion.audiotagger.audio.asf.data.ContentDescription;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyCOMM;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTXXX;
import com.transsion.audiotagger.tag.mp4.field.Mp4FieldType;
import com.transsion.audiotagger.tag.reference.Tagger;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.mozilla.classfile.ByteCode;

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
public final class Mp4FieldKey {
    private static final Mp4FieldKey[] $VALUES;
    public static final Mp4FieldKey ACOUSTID_FINGERPRINT;
    public static final Mp4FieldKey ACOUSTID_FINGERPRINT_OLD;
    public static final Mp4FieldKey ACOUSTID_ID;
    public static final Mp4FieldKey AK_ID;
    public static final Mp4FieldKey ALBUM;
    public static final Mp4FieldKey ALBUM_ARTIST;
    public static final Mp4FieldKey ALBUM_ARTISTS;
    public static final Mp4FieldKey ALBUM_ARTISTS_SORT;
    public static final Mp4FieldKey ALBUM_ARTIST_SORT;
    public static final Mp4FieldKey ALBUM_SORT;
    public static final Mp4FieldKey AP_ID;
    public static final Mp4FieldKey ARRANGER;
    public static final Mp4FieldKey ARRANGER_SORT;
    public static final Mp4FieldKey ARTIST;
    public static final Mp4FieldKey ARTISTS;
    public static final Mp4FieldKey ARTISTS_SORT;
    public static final Mp4FieldKey ARTIST_SORT;
    public static final Mp4FieldKey ARTWORK;
    public static final Mp4FieldKey ASIN;
    public static final Mp4FieldKey AT_ID;
    public static final Mp4FieldKey BARCODE;
    public static final Mp4FieldKey BPM;
    public static final Mp4FieldKey CATALOGNO;
    public static final Mp4FieldKey CATEGORY;
    public static final Mp4FieldKey CDDB_1;
    public static final Mp4FieldKey CDDB_IDS;
    public static final Mp4FieldKey CDDB_TRACKNUMBER;
    public static final Mp4FieldKey CHOIR;
    public static final Mp4FieldKey CHOIR_SORT;
    public static final Mp4FieldKey CLASSICAL_CATALOG;
    public static final Mp4FieldKey CLASSICAL_NICKNAME;
    public static final Mp4FieldKey CN_ID;
    public static final Mp4FieldKey COMMENT;
    public static final Mp4FieldKey COMPILATION;
    public static final Mp4FieldKey COMPOSER;
    public static final Mp4FieldKey COMPOSER_SORT;
    public static final Mp4FieldKey CONDUCTOR;
    public static final Mp4FieldKey CONDUCTOR_MM3BETA;
    public static final Mp4FieldKey CONDUCTOR_SORT;
    public static final Mp4FieldKey CONTENT_TYPE;
    public static final Mp4FieldKey COPYRIGHT;
    public static final Mp4FieldKey COUNTRY;
    public static final Mp4FieldKey CUSTOM_1;
    public static final Mp4FieldKey CUSTOM_2;
    public static final Mp4FieldKey CUSTOM_3;
    public static final Mp4FieldKey CUSTOM_4;
    public static final Mp4FieldKey CUSTOM_5;
    public static final Mp4FieldKey DAY;
    public static final Mp4FieldKey DESCRIPTION;
    public static final Mp4FieldKey DISCNUMBER;
    public static final Mp4FieldKey DISC_SUBTITLE;
    public static final Mp4FieldKey DJMIXER;
    public static final Mp4FieldKey ENCODER;
    public static final Mp4FieldKey ENGINEER;
    public static final Mp4FieldKey ENSEMBLE;
    public static final Mp4FieldKey ENSEMBLE_SORT;
    public static final Mp4FieldKey EPISODE_GLOBAL_ID;
    public static final Mp4FieldKey FBPM;
    public static final Mp4FieldKey GENRE;
    public static final Mp4FieldKey GENRE_CUSTOM;
    public static final Mp4FieldKey GE_ID;
    public static final Mp4FieldKey GROUP;
    public static final Mp4FieldKey GROUPING;
    public static final Mp4FieldKey INSTRUMENT;
    public static final Mp4FieldKey INVOLVED_PEOPLE;
    public static final Mp4FieldKey ISRC;
    public static final Mp4FieldKey ISRC_MMBETA;
    public static final Mp4FieldKey IS_CLASSICAL;
    public static final Mp4FieldKey IS_SOUNDTRACK;
    public static final Mp4FieldKey ITUNES_NORM;
    public static final Mp4FieldKey ITUNES_SMPB;
    public static final Mp4FieldKey KEY;
    public static final Mp4FieldKey KEYS;
    public static final Mp4FieldKey KEYWORD;
    public static final Mp4FieldKey KEY_OLD;
    public static final Mp4FieldKey LABEL;
    public static final Mp4FieldKey LANGUAGE;
    public static final Mp4FieldKey LYRICIST;
    public static final Mp4FieldKey LYRICIST_MM3BETA;
    public static final Mp4FieldKey LYRICS;
    public static final Mp4FieldKey MEDIA;
    public static final Mp4FieldKey MIXER;
    public static final Mp4FieldKey MM_CUSTOM_1;
    public static final Mp4FieldKey MM_CUSTOM_2;
    public static final Mp4FieldKey MM_CUSTOM_3;
    public static final Mp4FieldKey MM_CUSTOM_4;
    public static final Mp4FieldKey MM_CUSTOM_5;
    public static final Mp4FieldKey MM_INVOLVED_PEOPLE;
    public static final Mp4FieldKey MM_OCCASION;
    public static final Mp4FieldKey MM_ORIGINAL_ALBUM_TITLE;
    public static final Mp4FieldKey MM_ORIGINAL_ARTIST;
    public static final Mp4FieldKey MM_ORIGINAL_LYRICIST;
    public static final Mp4FieldKey MM_ORIGINAL_YEAR;
    public static final Mp4FieldKey MM_PUBLISHER;
    public static final Mp4FieldKey MM_QUALITY;
    public static final Mp4FieldKey MM_TEMPO;
    public static final Mp4FieldKey MOOD;
    public static final Mp4FieldKey MOOD_ACOUSTIC;
    public static final Mp4FieldKey MOOD_AGGRESSIVE;
    public static final Mp4FieldKey MOOD_AROUSAL;
    public static final Mp4FieldKey MOOD_DANCEABILITY;
    public static final Mp4FieldKey MOOD_ELECTRONIC;
    public static final Mp4FieldKey MOOD_HAPPY;
    public static final Mp4FieldKey MOOD_INSTRUMENTAL;
    public static final Mp4FieldKey MOOD_MM3BETA;
    public static final Mp4FieldKey MOOD_PARTY;
    public static final Mp4FieldKey MOOD_RELAXED;
    public static final Mp4FieldKey MOOD_SAD;
    public static final Mp4FieldKey MOOD_VALENCE;
    public static final Mp4FieldKey MOVEMENT;
    public static final Mp4FieldKey MOVEMENT_NO;
    public static final Mp4FieldKey MOVEMENT_TOTAL;
    public static final Mp4FieldKey MUSICBRAINZ_ALBUMARTISTID;
    public static final Mp4FieldKey MUSICBRAINZ_ALBUMID;
    public static final Mp4FieldKey MUSICBRAINZ_ALBUM_STATUS;
    public static final Mp4FieldKey MUSICBRAINZ_ALBUM_TYPE;
    public static final Mp4FieldKey MUSICBRAINZ_ARTISTID;
    public static final Mp4FieldKey MUSICBRAINZ_DISCID;
    public static final Mp4FieldKey MUSICBRAINZ_ORIGINALALBUMID;
    public static final Mp4FieldKey MUSICBRAINZ_RELEASE_GROUPID;
    public static final Mp4FieldKey MUSICBRAINZ_RELEASE_TRACKID;
    public static final Mp4FieldKey MUSICBRAINZ_TRACKID;
    public static final Mp4FieldKey MUSICBRAINZ_WORK;
    public static final Mp4FieldKey MUSICBRAINZ_WORKID;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_COMPOSITION;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_COMPOSITION_ID;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_PART_LEVEL1;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_PART_LEVEL1_ID;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_PART_LEVEL1_TYPE;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_PART_LEVEL2;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_PART_LEVEL2_ID;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_PART_LEVEL2_TYPE;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_PART_LEVEL3;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_PART_LEVEL3_ID;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_PART_LEVEL3_TYPE;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_PART_LEVEL4;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_PART_LEVEL4_ID;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_PART_LEVEL4_TYPE;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_PART_LEVEL5;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_PART_LEVEL5_ID;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_PART_LEVEL5_TYPE;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_PART_LEVEL6;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_PART_LEVEL6_ID;
    public static final Mp4FieldKey MUSICBRAINZ_WORK_PART_LEVEL6_TYPE;
    public static final Mp4FieldKey MUSICIP_PUID;
    public static final Mp4FieldKey OCCASION;
    public static final Mp4FieldKey OPUS;
    public static final Mp4FieldKey ORCHESTRA;
    public static final Mp4FieldKey ORCHESTRA_SORT;
    public static final Mp4FieldKey ORIGINAL_ALBUM_TITLE;
    public static final Mp4FieldKey ORIGINAL_ARTIST;
    public static final Mp4FieldKey ORIGINAL_LYRICIST;
    public static final Mp4FieldKey PART;
    public static final Mp4FieldKey PART_NUMBER;
    public static final Mp4FieldKey PART_OF_GAPLESS_ALBUM;
    public static final Mp4FieldKey PART_TYPE;
    public static final Mp4FieldKey PERFORMER;
    public static final Mp4FieldKey PERFORMER_NAME;
    public static final Mp4FieldKey PERFORMER_NAME_SORT;
    public static final Mp4FieldKey PERIOD;
    public static final Mp4FieldKey PL_ID;
    public static final Mp4FieldKey PODCAST_KEYWORD;
    public static final Mp4FieldKey PODCAST_URL;
    public static final Mp4FieldKey PRODUCER;
    public static final Mp4FieldKey PURCHASE_DATE;
    public static final Mp4FieldKey QUALITY;
    public static final Mp4FieldKey RANKING;
    public static final Mp4FieldKey RATING;
    public static final Mp4FieldKey RELEASECOUNTRY;
    public static final Mp4FieldKey REMIXER;
    public static final Mp4FieldKey SCORE;
    public static final Mp4FieldKey SCRIPT;
    public static final Mp4FieldKey SF_ID;
    public static final Mp4FieldKey SHOW;
    public static final Mp4FieldKey SHOW_SORT;
    public static final Mp4FieldKey SINGLE_DISC_TRACK_NO;
    public static final Mp4FieldKey SUBTITLE;
    public static final Mp4FieldKey TAGS;
    public static final Mp4FieldKey TEMPO;
    public static final Mp4FieldKey TIMBRE;
    public static final Mp4FieldKey TITLE;
    public static final Mp4FieldKey TITLE_MOVEMENT;
    public static final Mp4FieldKey TITLE_SORT;
    public static final Mp4FieldKey TONALITY;
    public static final Mp4FieldKey TOOL;
    public static final Mp4FieldKey TRACK;
    public static final Mp4FieldKey TV_EPISODE;
    public static final Mp4FieldKey TV_EPISODE_NUMBER;
    public static final Mp4FieldKey TV_NETWORK;
    public static final Mp4FieldKey TV_SEASON;
    public static final Mp4FieldKey URL_DISCOGS_ARTIST_SITE;
    public static final Mp4FieldKey URL_DISCOGS_RELEASE_SITE;
    public static final Mp4FieldKey URL_LYRICS_SITE;
    public static final Mp4FieldKey URL_OFFICIAL_ARTIST_SITE;
    public static final Mp4FieldKey URL_OFFICIAL_RELEASE_SITE;
    public static final Mp4FieldKey URL_WIKIPEDIA_ARTIST_SITE;
    public static final Mp4FieldKey URL_WIKIPEDIA_RELEASE_SITE;
    public static final Mp4FieldKey WINAMP_PUBLISHER;
    public static final Mp4FieldKey WORK;
    public static final Mp4FieldKey WORK_TYPE;
    private int fieldLength;
    private String fieldName;
    private Mp4FieldType fieldType;
    private String identifier;
    private String issuer;
    private Mp4TagFieldSubType subclassType;
    private Tagger tagger;

    private static Mp4FieldKey[] $values() {
        return new Mp4FieldKey[]{ACOUSTID_FINGERPRINT, ACOUSTID_FINGERPRINT_OLD, ACOUSTID_ID, AK_ID, ALBUM, ALBUM_ARTIST, ALBUM_ARTIST_SORT, ALBUM_SORT, AP_ID, ARRANGER, ARRANGER_SORT, ARTIST, ARTISTS, ARTISTS_SORT, ALBUM_ARTISTS, ALBUM_ARTISTS_SORT, ARTIST_SORT, ARTWORK, ASIN, AT_ID, BARCODE, BPM, CATALOGNO, CATEGORY, CDDB_1, CDDB_IDS, CDDB_TRACKNUMBER, CN_ID, CHOIR, CHOIR_SORT, CLASSICAL_CATALOG, CLASSICAL_NICKNAME, COMMENT, COMPILATION, COMPOSER, COMPOSER_SORT, CONDUCTOR, CONDUCTOR_MM3BETA, CONDUCTOR_SORT, CONTENT_TYPE, COPYRIGHT, COUNTRY, CUSTOM_1, CUSTOM_2, CUSTOM_3, CUSTOM_4, CUSTOM_5, DAY, DESCRIPTION, DISCNUMBER, DISC_SUBTITLE, DJMIXER, ENCODER, ENGINEER, ENSEMBLE, ENSEMBLE_SORT, EPISODE_GLOBAL_ID, FBPM, GENRE, GENRE_CUSTOM, GE_ID, GROUP, GROUPING, INSTRUMENT, INVOLVED_PEOPLE, ISRC, ISRC_MMBETA, IS_CLASSICAL, IS_SOUNDTRACK, ITUNES_NORM, ITUNES_SMPB, KEY, KEYS, KEYWORD, KEY_OLD, LABEL, LANGUAGE, LYRICIST, LYRICIST_MM3BETA, LYRICS, MEDIA, MIXER, MM_CUSTOM_1, MM_CUSTOM_2, MM_CUSTOM_3, MM_CUSTOM_4, MM_CUSTOM_5, MM_INVOLVED_PEOPLE, MM_OCCASION, MM_ORIGINAL_ALBUM_TITLE, MM_ORIGINAL_ARTIST, MM_ORIGINAL_LYRICIST, MM_ORIGINAL_YEAR, MM_PUBLISHER, MM_QUALITY, MM_TEMPO, MOOD, MOOD_ACOUSTIC, MOOD_AGGRESSIVE, MOOD_AROUSAL, MOOD_DANCEABILITY, MOOD_ELECTRONIC, MOOD_HAPPY, MOOD_INSTRUMENTAL, MOOD_MM3BETA, MOOD_PARTY, MOOD_RELAXED, MOOD_SAD, MOOD_VALENCE, MOVEMENT, MOVEMENT_NO, MOVEMENT_TOTAL, MUSICBRAINZ_ALBUMARTISTID, MUSICBRAINZ_ALBUMID, MUSICBRAINZ_ALBUM_STATUS, MUSICBRAINZ_ALBUM_TYPE, MUSICBRAINZ_ARTISTID, MUSICBRAINZ_DISCID, MUSICBRAINZ_ORIGINALALBUMID, MUSICBRAINZ_RELEASE_GROUPID, MUSICBRAINZ_RELEASE_TRACKID, MUSICBRAINZ_TRACKID, MUSICBRAINZ_WORK, MUSICBRAINZ_WORKID, MUSICBRAINZ_WORK_COMPOSITION, MUSICBRAINZ_WORK_COMPOSITION_ID, MUSICBRAINZ_WORK_PART_LEVEL1, MUSICBRAINZ_WORK_PART_LEVEL1_ID, MUSICBRAINZ_WORK_PART_LEVEL1_TYPE, MUSICBRAINZ_WORK_PART_LEVEL2, MUSICBRAINZ_WORK_PART_LEVEL2_ID, MUSICBRAINZ_WORK_PART_LEVEL2_TYPE, MUSICBRAINZ_WORK_PART_LEVEL3, MUSICBRAINZ_WORK_PART_LEVEL3_ID, MUSICBRAINZ_WORK_PART_LEVEL3_TYPE, MUSICBRAINZ_WORK_PART_LEVEL4, MUSICBRAINZ_WORK_PART_LEVEL4_ID, MUSICBRAINZ_WORK_PART_LEVEL4_TYPE, MUSICBRAINZ_WORK_PART_LEVEL5, MUSICBRAINZ_WORK_PART_LEVEL5_ID, MUSICBRAINZ_WORK_PART_LEVEL5_TYPE, MUSICBRAINZ_WORK_PART_LEVEL6, MUSICBRAINZ_WORK_PART_LEVEL6_ID, MUSICBRAINZ_WORK_PART_LEVEL6_TYPE, MUSICIP_PUID, OCCASION, OPUS, ORCHESTRA, ORCHESTRA_SORT, ORIGINAL_ALBUM_TITLE, ORIGINAL_ARTIST, ORIGINAL_LYRICIST, PART, PART_NUMBER, PART_OF_GAPLESS_ALBUM, PART_TYPE, PERFORMER, PERFORMER_NAME, PERFORMER_NAME_SORT, PERIOD, PL_ID, PODCAST_KEYWORD, PODCAST_URL, PRODUCER, PURCHASE_DATE, QUALITY, RANKING, RATING, RELEASECOUNTRY, REMIXER, SCORE, SCRIPT, SF_ID, SHOW, SHOW_SORT, SINGLE_DISC_TRACK_NO, SUBTITLE, TAGS, TEMPO, TIMBRE, TITLE, TITLE_MOVEMENT, TITLE_SORT, TONALITY, TOOL, TRACK, TV_EPISODE, TV_EPISODE_NUMBER, TV_NETWORK, TV_SEASON, URL_DISCOGS_ARTIST_SITE, URL_DISCOGS_RELEASE_SITE, URL_LYRICS_SITE, URL_OFFICIAL_ARTIST_SITE, URL_OFFICIAL_RELEASE_SITE, URL_WIKIPEDIA_ARTIST_SITE, URL_WIKIPEDIA_RELEASE_SITE, WINAMP_PUBLISHER, WORK, WORK_TYPE};
    }

    static {
        Mp4FieldType mp4FieldType = Mp4FieldType.TEXT;
        Tagger tagger = Tagger.PICARD;
        ACOUSTID_FINGERPRINT = new Mp4FieldKey("ACOUSTID_FINGERPRINT", 0, "com.apple.iTunes", FrameBodyTXXX.ACOUSTID_FINGERPRINT, mp4FieldType, tagger);
        ACOUSTID_FINGERPRINT_OLD = new Mp4FieldKey("ACOUSTID_FINGERPRINT_OLD", 1, "com.apple.iTunes", "AcoustId Fingerprint", mp4FieldType, tagger);
        ACOUSTID_ID = new Mp4FieldKey("ACOUSTID_ID", 2, "com.apple.iTunes", FrameBodyTXXX.ACOUSTID_ID, mp4FieldType, tagger);
        Mp4TagFieldSubType mp4TagFieldSubType = Mp4TagFieldSubType.UNKNOWN;
        Mp4FieldType mp4FieldType2 = Mp4FieldType.INTEGER;
        AK_ID = new Mp4FieldKey("AK_ID", 3, "akID", mp4TagFieldSubType, mp4FieldType2, 1);
        Mp4TagFieldSubType mp4TagFieldSubType2 = Mp4TagFieldSubType.TEXT;
        ALBUM = new Mp4FieldKey("ALBUM", 4, "©alb", mp4TagFieldSubType2, mp4FieldType);
        ALBUM_ARTIST = new Mp4FieldKey("ALBUM_ARTIST", 5, "aART", mp4TagFieldSubType2, mp4FieldType);
        ALBUM_ARTIST_SORT = new Mp4FieldKey("ALBUM_ARTIST_SORT", 6, "soaa", mp4TagFieldSubType2, mp4FieldType);
        ALBUM_SORT = new Mp4FieldKey("ALBUM_SORT", 7, "soal", mp4TagFieldSubType2, mp4FieldType);
        AP_ID = new Mp4FieldKey("AP_ID", 8, "apID", mp4TagFieldSubType, mp4FieldType);
        ARRANGER = new Mp4FieldKey("ARRANGER", 9, "com.apple.iTunes", "ARRANGER", mp4FieldType, tagger);
        Tagger tagger2 = Tagger.JAIKOZ;
        ARRANGER_SORT = new Mp4FieldKey(FrameBodyTXXX.ARRANGER_SORT, 10, "com.apple.iTunes", FrameBodyTXXX.ARRANGER_SORT, mp4FieldType, tagger2);
        ARTIST = new Mp4FieldKey("ARTIST", 11, "©ART", mp4TagFieldSubType2, mp4FieldType);
        ARTISTS = new Mp4FieldKey(FrameBodyTXXX.ARTISTS, 12, "com.apple.iTunes", FrameBodyTXXX.ARTISTS, mp4FieldType, tagger2);
        ARTISTS_SORT = new Mp4FieldKey(FrameBodyTXXX.ARTISTS_SORT, 13, "com.apple.iTunes", FrameBodyTXXX.ARTISTS_SORT, mp4FieldType, tagger2);
        ALBUM_ARTISTS = new Mp4FieldKey(FrameBodyTXXX.ALBUM_ARTISTS, 14, "com.apple.iTunes", FrameBodyTXXX.ALBUM_ARTISTS, mp4FieldType, tagger2);
        ALBUM_ARTISTS_SORT = new Mp4FieldKey(FrameBodyTXXX.ALBUM_ARTISTS_SORT, 15, "com.apple.iTunes", FrameBodyTXXX.ALBUM_ARTISTS_SORT, mp4FieldType, tagger2);
        ARTIST_SORT = new Mp4FieldKey("ARTIST_SORT", 16, "soar", mp4TagFieldSubType2, mp4FieldType);
        ARTWORK = new Mp4FieldKey("ARTWORK", 17, "covr", Mp4TagFieldSubType.ARTWORK, Mp4FieldType.COVERART_JPEG);
        ASIN = new Mp4FieldKey(FrameBodyTXXX.AMAZON_ASIN, 18, "com.apple.iTunes", FrameBodyTXXX.AMAZON_ASIN, mp4FieldType, tagger);
        AT_ID = new Mp4FieldKey("AT_ID", 19, "atID", mp4TagFieldSubType, mp4FieldType2, 4);
        BARCODE = new Mp4FieldKey(FrameBodyTXXX.BARCODE, 20, "com.apple.iTunes", FrameBodyTXXX.BARCODE, mp4FieldType, tagger);
        Mp4TagFieldSubType mp4TagFieldSubType3 = Mp4TagFieldSubType.BYTE;
        BPM = new Mp4FieldKey("BPM", 21, "tmpo", mp4TagFieldSubType3, mp4FieldType2, 2);
        CATALOGNO = new Mp4FieldKey("CATALOGNO", 22, "com.apple.iTunes", FrameBodyTXXX.CATALOG_NO, mp4FieldType, tagger);
        CATEGORY = new Mp4FieldKey("CATEGORY", 23, "catg", mp4TagFieldSubType2, mp4FieldType);
        CDDB_1 = new Mp4FieldKey("CDDB_1", 24, "com.apple.iTunes", "iTunes_CDDB_1", mp4FieldType);
        CDDB_IDS = new Mp4FieldKey("CDDB_IDS", 25, "com.apple.iTunes", "iTunes_CDDB_IDs", mp4FieldType);
        CDDB_TRACKNUMBER = new Mp4FieldKey("CDDB_TRACKNUMBER", 26, "com.apple.iTunes", "iTunes_CDDB_TrackNumber", mp4FieldType);
        CN_ID = new Mp4FieldKey("CN_ID", 27, "cnID", mp4TagFieldSubType, mp4FieldType2, 4);
        CHOIR = new Mp4FieldKey(FrameBodyTXXX.CHOIR, 28, "com.apple.iTunes", "CHOR", mp4FieldType, tagger2);
        CHOIR_SORT = new Mp4FieldKey(FrameBodyTXXX.CHOIR_SORT, 29, "com.apple.iTunes", FrameBodyTXXX.CHOIR_SORT, mp4FieldType, tagger2);
        CLASSICAL_CATALOG = new Mp4FieldKey(FrameBodyTXXX.CLASSICAL_CATALOG, 30, "com.apple.iTunes", FrameBodyTXXX.CLASSICAL_CATALOG, mp4FieldType, tagger2);
        CLASSICAL_NICKNAME = new Mp4FieldKey(FrameBodyTXXX.CLASSICAL_NICKNAME, 31, "com.apple.iTunes", FrameBodyTXXX.CLASSICAL_NICKNAME, mp4FieldType, tagger2);
        COMMENT = new Mp4FieldKey("COMMENT", 32, "©cmt", mp4TagFieldSubType2, mp4FieldType);
        COMPILATION = new Mp4FieldKey("COMPILATION", 33, "cpil", mp4TagFieldSubType3, mp4FieldType2, 1);
        COMPOSER = new Mp4FieldKey("COMPOSER", 34, "©wrt", mp4TagFieldSubType2, mp4FieldType);
        COMPOSER_SORT = new Mp4FieldKey("COMPOSER_SORT", 35, "soco", mp4TagFieldSubType2, mp4FieldType);
        CONDUCTOR = new Mp4FieldKey("CONDUCTOR", 36, "com.apple.iTunes", "CONDUCTOR", mp4FieldType, tagger);
        Tagger tagger3 = Tagger.MEDIA_MONKEY;
        CONDUCTOR_MM3BETA = new Mp4FieldKey("CONDUCTOR_MM3BETA", 37, "cond", mp4TagFieldSubType2, mp4FieldType, tagger3);
        CONDUCTOR_SORT = new Mp4FieldKey(FrameBodyTXXX.CONDUCTOR_SORT, 38, "com.apple.iTunes", FrameBodyTXXX.CONDUCTOR_SORT, mp4FieldType, tagger2);
        CONTENT_TYPE = new Mp4FieldKey("CONTENT_TYPE", 39, "stik", mp4TagFieldSubType3, mp4FieldType2, 1);
        COPYRIGHT = new Mp4FieldKey(ContentDescription.KEY_COPYRIGHT, 40, "cprt", mp4TagFieldSubType2, mp4FieldType);
        COUNTRY = new Mp4FieldKey("COUNTRY", 41, "com.apple.iTunes", FrameBodyTXXX.COUNTRY, mp4FieldType, tagger);
        CUSTOM_1 = new Mp4FieldKey("CUSTOM_1", 42, "cus1", mp4TagFieldSubType2, mp4FieldType, tagger3);
        CUSTOM_2 = new Mp4FieldKey("CUSTOM_2", 43, "cus2", mp4TagFieldSubType2, mp4FieldType, tagger3);
        CUSTOM_3 = new Mp4FieldKey("CUSTOM_3", 44, "cus3", mp4TagFieldSubType2, mp4FieldType, tagger3);
        CUSTOM_4 = new Mp4FieldKey("CUSTOM_4", 45, "cus4", mp4TagFieldSubType2, mp4FieldType, tagger3);
        CUSTOM_5 = new Mp4FieldKey("CUSTOM_5", 46, "cus5", mp4TagFieldSubType2, mp4FieldType, tagger3);
        DAY = new Mp4FieldKey("DAY", 47, "©day", mp4TagFieldSubType2, mp4FieldType);
        DESCRIPTION = new Mp4FieldKey(ContentDescription.KEY_DESCRIPTION, 48, "desc", mp4TagFieldSubType2, mp4FieldType);
        Mp4TagFieldSubType mp4TagFieldSubType4 = Mp4TagFieldSubType.DISC_NO;
        Mp4FieldType mp4FieldType3 = Mp4FieldType.IMPLICIT;
        DISCNUMBER = new Mp4FieldKey("DISCNUMBER", 49, "disk", mp4TagFieldSubType4, mp4FieldType3);
        DISC_SUBTITLE = new Mp4FieldKey("DISC_SUBTITLE", 50, "com.apple.iTunes", "DISCSUBTITLE", mp4FieldType, tagger);
        DJMIXER = new Mp4FieldKey("DJMIXER", 51, "com.apple.iTunes", "DJMIXER", mp4FieldType, tagger);
        ENCODER = new Mp4FieldKey("ENCODER", 52, "©too", mp4TagFieldSubType2, mp4FieldType);
        ENGINEER = new Mp4FieldKey("ENGINEER", 53, "com.apple.iTunes", "ENGINEER", mp4FieldType, tagger);
        ENSEMBLE = new Mp4FieldKey(FrameBodyTXXX.ENSEMBLE, 54, "com.apple.iTunes", "Ensemble", mp4FieldType, tagger2);
        ENSEMBLE_SORT = new Mp4FieldKey(FrameBodyTXXX.ENSEMBLE_SORT, 55, "com.apple.iTunes", "Ensemble Sort", mp4FieldType, tagger2);
        Mp4TagFieldSubType mp4TagFieldSubType5 = Mp4TagFieldSubType.NUMBER;
        EPISODE_GLOBAL_ID = new Mp4FieldKey("EPISODE_GLOBAL_ID", 56, "egid", mp4TagFieldSubType5, mp4FieldType3);
        FBPM = new Mp4FieldKey(FrameBodyTXXX.FBPM, 57, "com.apple.iTunes", "fBPM", mp4FieldType, tagger2);
        GENRE = new Mp4FieldKey("GENRE", 58, "gnre", Mp4TagFieldSubType.GENRE, mp4FieldType3);
        GENRE_CUSTOM = new Mp4FieldKey("GENRE_CUSTOM", 59, "©gen", mp4TagFieldSubType2, mp4FieldType);
        GE_ID = new Mp4FieldKey("GE_ID", 60, "geID", mp4TagFieldSubType, mp4FieldType2, 4);
        GROUP = new Mp4FieldKey(FrameBodyTXXX.GROUP, 61, "com.apple.iTunes", FrameBodyTXXX.GROUP, mp4FieldType, tagger2);
        GROUPING = new Mp4FieldKey("GROUPING", 62, "©grp", mp4TagFieldSubType2, mp4FieldType);
        INSTRUMENT = new Mp4FieldKey(FrameBodyTXXX.INSTRUMENT, 63, "com.apple.iTunes", FrameBodyTXXX.INSTRUMENT, mp4FieldType, tagger2);
        INVOLVED_PEOPLE = new Mp4FieldKey("INVOLVED_PEOPLE", 64, "peop", mp4TagFieldSubType2, mp4FieldType, tagger3);
        ISRC = new Mp4FieldKey("ISRC", 65, "com.apple.iTunes", "ISRC", mp4FieldType, tagger);
        ISRC_MMBETA = new Mp4FieldKey("ISRC_MMBETA", 66, "isrc", mp4TagFieldSubType2, mp4FieldType, tagger3);
        IS_CLASSICAL = new Mp4FieldKey(FrameBodyTXXX.IS_CLASSICAL, 67, "com.apple.iTunes", FrameBodyTXXX.IS_CLASSICAL, mp4FieldType, tagger2);
        IS_SOUNDTRACK = new Mp4FieldKey(FrameBodyTXXX.IS_SOUNDTRACK, 68, "com.apple.iTunes", FrameBodyTXXX.IS_SOUNDTRACK, mp4FieldType, tagger2);
        ITUNES_NORM = new Mp4FieldKey("ITUNES_NORM", 69, "com.apple.iTunes", FrameBodyCOMM.ITUNES_NORMALIZATION, mp4FieldType);
        ITUNES_SMPB = new Mp4FieldKey("ITUNES_SMPB", 70, "com.apple.iTunes", "iTunSMPB", mp4FieldType);
        KEY = new Mp4FieldKey("KEY", 71, "com.apple.iTunes", "initialkey", mp4FieldType);
        KEYS = new Mp4FieldKey("KEYS", 72, "keys", mp4TagFieldSubType2, mp4FieldType);
        KEYWORD = new Mp4FieldKey("KEYWORD", 73, "keyw", mp4TagFieldSubType2, mp4FieldType);
        KEY_OLD = new Mp4FieldKey("KEY_OLD", 74, "com.apple.iTunes", "KEY", mp4FieldType, tagger2);
        LABEL = new Mp4FieldKey("LABEL", 75, "com.apple.iTunes", "LABEL", mp4FieldType, tagger);
        LANGUAGE = new Mp4FieldKey("LANGUAGE", 76, "com.apple.iTunes", "LANGUAGE", mp4FieldType, tagger2);
        LYRICIST = new Mp4FieldKey("LYRICIST", 77, "com.apple.iTunes", "LYRICIST", mp4FieldType, tagger);
        LYRICIST_MM3BETA = new Mp4FieldKey("LYRICIST_MM3BETA", 78, "lyrc", mp4TagFieldSubType2, mp4FieldType, tagger3);
        LYRICS = new Mp4FieldKey("LYRICS", 79, "©lyr", mp4TagFieldSubType2, mp4FieldType);
        MEDIA = new Mp4FieldKey("MEDIA", 80, "com.apple.iTunes", "MEDIA", mp4FieldType, tagger);
        MIXER = new Mp4FieldKey("MIXER", 81, "com.apple.iTunes", "MIXER", mp4FieldType, tagger);
        MM_CUSTOM_1 = new Mp4FieldKey("MM_CUSTOM_1", 82, "com.apple.iTunes", "CUSTOM1", mp4FieldType, tagger3);
        MM_CUSTOM_2 = new Mp4FieldKey("MM_CUSTOM_2", 83, "com.apple.iTunes", "CUSTOM2", mp4FieldType, tagger3);
        MM_CUSTOM_3 = new Mp4FieldKey("MM_CUSTOM_3", 84, "com.apple.iTunes", "CUSTOM3", mp4FieldType, tagger3);
        MM_CUSTOM_4 = new Mp4FieldKey("MM_CUSTOM_4", 85, "com.apple.iTunes", "CUSTOM4", mp4FieldType, tagger3);
        MM_CUSTOM_5 = new Mp4FieldKey("MM_CUSTOM_5", 86, "com.apple.iTunes", "CUSTOM5", mp4FieldType, tagger3);
        MM_INVOLVED_PEOPLE = new Mp4FieldKey("MM_INVOLVED_PEOPLE", 87, "com.apple.iTunes", "INVOLVED PEOPLE", mp4FieldType, tagger3);
        MM_OCCASION = new Mp4FieldKey("MM_OCCASION", 88, "com.apple.iTunes", "OCCASION", mp4FieldType, tagger3);
        MM_ORIGINAL_ALBUM_TITLE = new Mp4FieldKey("MM_ORIGINAL_ALBUM_TITLE", 89, "com.apple.iTunes", "ORIGINAL ALBUM", mp4FieldType, tagger3);
        MM_ORIGINAL_ARTIST = new Mp4FieldKey("MM_ORIGINAL_ARTIST", 90, "com.apple.iTunes", "ORIGINAL ARTIST", mp4FieldType, tagger3);
        MM_ORIGINAL_LYRICIST = new Mp4FieldKey("MM_ORIGINAL_LYRICIST", 91, "com.apple.iTunes", "ORIGINAL LYRICIST", mp4FieldType, tagger3);
        MM_ORIGINAL_YEAR = new Mp4FieldKey("MM_ORIGINAL_YEAR", 92, "com.apple.iTunes", "ORIGINAL YEAR", mp4FieldType, tagger3);
        MM_PUBLISHER = new Mp4FieldKey("MM_PUBLISHER", 93, "com.apple.iTunes", "ORGANIZATION", mp4FieldType, tagger3);
        MM_QUALITY = new Mp4FieldKey("MM_QUALITY", 94, "com.apple.iTunes", "QUALITY", mp4FieldType, tagger3);
        MM_TEMPO = new Mp4FieldKey("MM_TEMPO", 95, "com.apple.iTunes", "TEMPO", mp4FieldType, tagger3);
        MOOD = new Mp4FieldKey(FrameBodyTXXX.MOOD, 96, "com.apple.iTunes", FrameBodyTXXX.MOOD, mp4FieldType, tagger);
        MOOD_ACOUSTIC = new Mp4FieldKey(FrameBodyTXXX.MOOD_ACOUSTIC, 97, "com.apple.iTunes", FrameBodyTXXX.MOOD_ACOUSTIC, mp4FieldType, tagger2);
        MOOD_AGGRESSIVE = new Mp4FieldKey(FrameBodyTXXX.MOOD_AGGRESSIVE, 98, "com.apple.iTunes", FrameBodyTXXX.MOOD_AGGRESSIVE, mp4FieldType, tagger2);
        MOOD_AROUSAL = new Mp4FieldKey(FrameBodyTXXX.MOOD_AROUSAL, 99, "com.apple.iTunes", FrameBodyTXXX.MOOD_AROUSAL, mp4FieldType, tagger2);
        MOOD_DANCEABILITY = new Mp4FieldKey(FrameBodyTXXX.MOOD_DANCEABILITY, 100, "com.apple.iTunes", FrameBodyTXXX.MOOD_DANCEABILITY, mp4FieldType, tagger2);
        MOOD_ELECTRONIC = new Mp4FieldKey(FrameBodyTXXX.MOOD_ELECTRONIC, 101, "com.apple.iTunes", FrameBodyTXXX.MOOD_ELECTRONIC, mp4FieldType, tagger2);
        MOOD_HAPPY = new Mp4FieldKey(FrameBodyTXXX.MOOD_HAPPY, 102, "com.apple.iTunes", FrameBodyTXXX.MOOD_HAPPY, mp4FieldType, tagger2);
        MOOD_INSTRUMENTAL = new Mp4FieldKey(FrameBodyTXXX.MOOD_INSTRUMENTAL, 103, "com.apple.iTunes", FrameBodyTXXX.MOOD_INSTRUMENTAL, mp4FieldType, tagger2);
        MOOD_MM3BETA = new Mp4FieldKey("MOOD_MM3BETA", 104, "mood", mp4TagFieldSubType2, mp4FieldType, tagger3);
        MOOD_PARTY = new Mp4FieldKey(FrameBodyTXXX.MOOD_PARTY, 105, "com.apple.iTunes", FrameBodyTXXX.MOOD_PARTY, mp4FieldType, tagger2);
        MOOD_RELAXED = new Mp4FieldKey(FrameBodyTXXX.MOOD_RELAXED, 106, "com.apple.iTunes", FrameBodyTXXX.MOOD_RELAXED, mp4FieldType, tagger2);
        MOOD_SAD = new Mp4FieldKey(FrameBodyTXXX.MOOD_SAD, 107, "com.apple.iTunes", FrameBodyTXXX.MOOD_SAD, mp4FieldType, tagger2);
        MOOD_VALENCE = new Mp4FieldKey(FrameBodyTXXX.MOOD_VALENCE, 108, "com.apple.iTunes", FrameBodyTXXX.MOOD_VALENCE, mp4FieldType, tagger2);
        MOVEMENT = new Mp4FieldKey("MOVEMENT", 109, "©mvn", mp4TagFieldSubType2, mp4FieldType);
        MOVEMENT_NO = new Mp4FieldKey("MOVEMENT_NO", 110, "©mvi", mp4TagFieldSubType3, mp4FieldType2, 1);
        MOVEMENT_TOTAL = new Mp4FieldKey("MOVEMENT_TOTAL", 111, "©mvc", mp4TagFieldSubType3, mp4FieldType2, 1);
        MUSICBRAINZ_ALBUMARTISTID = new Mp4FieldKey("MUSICBRAINZ_ALBUMARTISTID", 112, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_ALBUM_ARTISTID, mp4FieldType, tagger);
        MUSICBRAINZ_ALBUMID = new Mp4FieldKey("MUSICBRAINZ_ALBUMID", 113, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_ALBUMID, mp4FieldType, tagger);
        MUSICBRAINZ_ALBUM_STATUS = new Mp4FieldKey("MUSICBRAINZ_ALBUM_STATUS", 114, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_ALBUM_STATUS, mp4FieldType, tagger);
        MUSICBRAINZ_ALBUM_TYPE = new Mp4FieldKey("MUSICBRAINZ_ALBUM_TYPE", 115, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_ALBUM_TYPE, mp4FieldType, tagger);
        MUSICBRAINZ_ARTISTID = new Mp4FieldKey("MUSICBRAINZ_ARTISTID", 116, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_ARTISTID, mp4FieldType, tagger);
        MUSICBRAINZ_DISCID = new Mp4FieldKey("MUSICBRAINZ_DISCID", 117, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_DISCID, mp4FieldType, tagger);
        MUSICBRAINZ_ORIGINALALBUMID = new Mp4FieldKey("MUSICBRAINZ_ORIGINALALBUMID", 118, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_ORIGINAL_ALBUMID, mp4FieldType, tagger2);
        MUSICBRAINZ_RELEASE_GROUPID = new Mp4FieldKey("MUSICBRAINZ_RELEASE_GROUPID", 119, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_RELEASE_GROUPID, mp4FieldType, tagger);
        MUSICBRAINZ_RELEASE_TRACKID = new Mp4FieldKey("MUSICBRAINZ_RELEASE_TRACKID", 120, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_RELEASE_TRACKID, mp4FieldType, tagger);
        MUSICBRAINZ_TRACKID = new Mp4FieldKey("MUSICBRAINZ_TRACKID", 121, "com.apple.iTunes", "MusicBrainz Track Id", mp4FieldType, tagger);
        MUSICBRAINZ_WORK = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK, 122, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK, mp4FieldType, tagger2);
        MUSICBRAINZ_WORKID = new Mp4FieldKey("MUSICBRAINZ_WORKID", 123, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORKID, mp4FieldType, tagger);
        MUSICBRAINZ_WORK_COMPOSITION = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION, 124, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_COMPOSITION_ID = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION_ID, 125, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION_ID, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_PART_LEVEL1 = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1, 126, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_PART_LEVEL1_ID = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1_ID, 127, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1_ID, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_PART_LEVEL1_TYPE = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1_TYPE, 128, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1_TYPE, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_PART_LEVEL2 = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2, 129, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_PART_LEVEL2_ID = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2_ID, 130, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2_ID, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_PART_LEVEL2_TYPE = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2_TYPE, 131, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2_TYPE, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_PART_LEVEL3 = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3, 132, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_PART_LEVEL3_ID = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3_ID, 133, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3_ID, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_PART_LEVEL3_TYPE = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3_TYPE, 134, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3_TYPE, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_PART_LEVEL4 = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4, 135, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_PART_LEVEL4_ID = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4_ID, 136, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4_ID, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_PART_LEVEL4_TYPE = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4_TYPE, 137, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4_TYPE, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_PART_LEVEL5 = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5, 138, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_PART_LEVEL5_ID = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5_ID, 139, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5_ID, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_PART_LEVEL5_TYPE = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5_TYPE, 140, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5_TYPE, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_PART_LEVEL6 = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6, 141, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_PART_LEVEL6_ID = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6_ID, 142, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6_ID, mp4FieldType, tagger2);
        MUSICBRAINZ_WORK_PART_LEVEL6_TYPE = new Mp4FieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6_TYPE, 143, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6_TYPE, mp4FieldType, tagger2);
        MUSICIP_PUID = new Mp4FieldKey("MUSICIP_PUID", 144, "com.apple.iTunes", FrameBodyTXXX.MUSICIP_ID, mp4FieldType, tagger);
        OCCASION = new Mp4FieldKey("OCCASION", 145, "occa", mp4TagFieldSubType2, mp4FieldType, tagger3);
        OPUS = new Mp4FieldKey("OPUS", 146, "com.apple.iTunes", "OPUS", mp4FieldType, tagger2);
        ORCHESTRA = new Mp4FieldKey(FrameBodyTXXX.ORCHESTRA, 147, "com.apple.iTunes", FrameBodyTXXX.ORCHESTRA, mp4FieldType, tagger);
        ORCHESTRA_SORT = new Mp4FieldKey(FrameBodyTXXX.ORCHESTRA_SORT, 148, "com.apple.iTunes", FrameBodyTXXX.ORCHESTRA_SORT, mp4FieldType, tagger2);
        ORIGINAL_ALBUM_TITLE = new Mp4FieldKey("ORIGINAL_ALBUM_TITLE", 149, "otit", mp4TagFieldSubType2, mp4FieldType, tagger3);
        ORIGINAL_ARTIST = new Mp4FieldKey("ORIGINAL_ARTIST", 150, "oart", mp4TagFieldSubType2, mp4FieldType, tagger3);
        ORIGINAL_LYRICIST = new Mp4FieldKey("ORIGINAL_LYRICIST", 151, "olyr", mp4TagFieldSubType2, mp4FieldType, tagger3);
        PART = new Mp4FieldKey(FrameBodyTXXX.PART, 152, "com.apple.iTunes", FrameBodyTXXX.PART, mp4FieldType, tagger);
        PART_NUMBER = new Mp4FieldKey("PART_NUMBER", 153, "com.apple.iTunes", FrameBodyTXXX.PART_NUMBER, mp4FieldType, tagger2);
        PART_OF_GAPLESS_ALBUM = new Mp4FieldKey("PART_OF_GAPLESS_ALBUM", 154, "pgap", mp4TagFieldSubType3, mp4FieldType2);
        PART_TYPE = new Mp4FieldKey(FrameBodyTXXX.PART_TYPE, 155, "com.apple.iTunes", FrameBodyTXXX.PART_TYPE, mp4FieldType, tagger2);
        PERFORMER = new Mp4FieldKey("PERFORMER", 156, "com.apple.iTunes", "Performer", mp4FieldType, tagger);
        PERFORMER_NAME = new Mp4FieldKey(FrameBodyTXXX.PERFORMER_NAME, 157, "com.apple.iTunes", FrameBodyTXXX.PERFORMER_NAME, mp4FieldType, tagger2);
        PERFORMER_NAME_SORT = new Mp4FieldKey(FrameBodyTXXX.PERFORMER_NAME_SORT, 158, "com.apple.iTunes", FrameBodyTXXX.PERFORMER_NAME_SORT, mp4FieldType, tagger2);
        PERIOD = new Mp4FieldKey(FrameBodyTXXX.PERIOD, 159, "com.apple.iTunes", FrameBodyTXXX.PERIOD, mp4FieldType, tagger2);
        PL_ID = new Mp4FieldKey("PL_ID", 160, "plID", mp4TagFieldSubType, mp4FieldType2, 8);
        PODCAST_KEYWORD = new Mp4FieldKey("PODCAST_KEYWORD", 161, "keyw", mp4TagFieldSubType2, mp4FieldType);
        PODCAST_URL = new Mp4FieldKey("PODCAST_URL", 162, "purl", mp4TagFieldSubType5, mp4FieldType3);
        PRODUCER = new Mp4FieldKey("PRODUCER", 163, "com.apple.iTunes", "PRODUCER", mp4FieldType, tagger);
        PURCHASE_DATE = new Mp4FieldKey("PURCHASE_DATE", 164, "purd", mp4TagFieldSubType2, mp4FieldType);
        QUALITY = new Mp4FieldKey("QUALITY", 165, "qual", mp4TagFieldSubType2, mp4FieldType, tagger3);
        RANKING = new Mp4FieldKey(FrameBodyTXXX.RANKING, 166, "com.apple.iTunes", FrameBodyTXXX.RANKING, mp4FieldType, tagger2);
        RATING = new Mp4FieldKey(ContentDescription.KEY_RATING, 167, "rtng", mp4TagFieldSubType3, mp4FieldType2, 1);
        RELEASECOUNTRY = new Mp4FieldKey("RELEASECOUNTRY", ByteCode.JSR, "com.apple.iTunes", FrameBodyTXXX.MUSICBRAINZ_ALBUM_COUNTRY, mp4FieldType, tagger);
        REMIXER = new Mp4FieldKey("REMIXER", 169, "com.apple.iTunes", "REMIXER", mp4FieldType, tagger);
        SCORE = new Mp4FieldKey("SCORE", 170, "rate", mp4TagFieldSubType2, mp4FieldType, tagger3);
        SCRIPT = new Mp4FieldKey("SCRIPT", ByteCode.LOOKUPSWITCH, "com.apple.iTunes", "SCRIPT", mp4FieldType, tagger2);
        SF_ID = new Mp4FieldKey("SF_ID", 172, "sfID", mp4TagFieldSubType, mp4FieldType2, 4);
        SHOW = new Mp4FieldKey("SHOW", ByteCode.LRETURN, "tvsh", mp4TagFieldSubType2, mp4FieldType);
        SHOW_SORT = new Mp4FieldKey("SHOW_SORT", ByteCode.FRETURN, "sosn", mp4TagFieldSubType2, mp4FieldType);
        SINGLE_DISC_TRACK_NO = new Mp4FieldKey(FrameBodyTXXX.SINGLE_DISC_TRACK_NO, ByteCode.DRETURN, "com.apple.iTunes", FrameBodyTXXX.SINGLE_DISC_TRACK_NO, mp4FieldType, tagger2);
        SUBTITLE = new Mp4FieldKey("SUBTITLE", 176, "com.apple.iTunes", "SUBTITLE", mp4FieldType, tagger);
        TAGS = new Mp4FieldKey(FrameBodyTXXX.TAGS, 177, "com.apple.iTunes", FrameBodyTXXX.TAGS, mp4FieldType, tagger2);
        TEMPO = new Mp4FieldKey("TEMPO", 178, "empo", mp4TagFieldSubType2, mp4FieldType, tagger3);
        TIMBRE = new Mp4FieldKey("TIMBRE", ByteCode.PUTSTATIC, "com.apple.iTunes", FrameBodyTXXX.TIMBRE, mp4FieldType, tagger2);
        TITLE = new Mp4FieldKey(ContentDescription.KEY_TITLE, 180, "©nam", mp4TagFieldSubType2, mp4FieldType);
        TITLE_MOVEMENT = new Mp4FieldKey(FrameBodyTXXX.TITLE_MOVEMENT, 181, "com.apple.iTunes", FrameBodyTXXX.TITLE_MOVEMENT, mp4FieldType, tagger2);
        TITLE_SORT = new Mp4FieldKey("TITLE_SORT", 182, "sonm", mp4TagFieldSubType2, mp4FieldType);
        TONALITY = new Mp4FieldKey(FrameBodyTXXX.TONALITY, 183, "com.apple.iTunes", FrameBodyTXXX.TONALITY, mp4FieldType, tagger2);
        TOOL = new Mp4FieldKey("TOOL", 184, SessionDescription.ATTR_TOOL, mp4TagFieldSubType3, mp4FieldType2, 4);
        TRACK = new Mp4FieldKey("TRACK", 185, "trkn", Mp4TagFieldSubType.TRACK_NO, mp4FieldType3);
        TV_EPISODE = new Mp4FieldKey("TV_EPISODE", ByteCode.INVOKEDYNAMIC, "tves", mp4TagFieldSubType3, mp4FieldType2, 1);
        TV_EPISODE_NUMBER = new Mp4FieldKey("TV_EPISODE_NUMBER", 187, "tven", mp4TagFieldSubType2, mp4FieldType);
        TV_NETWORK = new Mp4FieldKey("TV_NETWORK", 188, "tvnn", mp4TagFieldSubType2, mp4FieldType);
        TV_SEASON = new Mp4FieldKey("TV_SEASON", 189, "tvsn", mp4TagFieldSubType3, mp4FieldType2, 1);
        URL_DISCOGS_ARTIST_SITE = new Mp4FieldKey("URL_DISCOGS_ARTIST_SITE", ByteCode.ARRAYLENGTH, "com.apple.iTunes", "URL_DISCOGS_ARTIST_SITE", mp4FieldType, tagger2);
        URL_DISCOGS_RELEASE_SITE = new Mp4FieldKey("URL_DISCOGS_RELEASE_SITE", ByteCode.ATHROW, "com.apple.iTunes", "URL_DISCOGS_RELEASE_SITE", mp4FieldType, tagger2);
        URL_LYRICS_SITE = new Mp4FieldKey("URL_LYRICS_SITE", 192, "com.apple.iTunes", "URL_LYRICS_SITE", mp4FieldType, tagger2);
        URL_OFFICIAL_ARTIST_SITE = new Mp4FieldKey("URL_OFFICIAL_ARTIST_SITE", 193, "com.apple.iTunes", "URL_OFFICIAL_ARTIST_SITE", mp4FieldType, tagger2);
        URL_OFFICIAL_RELEASE_SITE = new Mp4FieldKey("URL_OFFICIAL_RELEASE_SITE", 194, "com.apple.iTunes", "URL_OFFICIAL_RELEASE_SITE", mp4FieldType, tagger2);
        URL_WIKIPEDIA_ARTIST_SITE = new Mp4FieldKey("URL_WIKIPEDIA_ARTIST_SITE", ByteCode.MONITOREXIT, "com.apple.iTunes", "URL_WIKIPEDIA_ARTIST_SITE", mp4FieldType, tagger2);
        URL_WIKIPEDIA_RELEASE_SITE = new Mp4FieldKey("URL_WIKIPEDIA_RELEASE_SITE", 196, "com.apple.iTunes", "URL_WIKIPEDIA_RELEASE_SITE", mp4FieldType, tagger2);
        WINAMP_PUBLISHER = new Mp4FieldKey("WINAMP_PUBLISHER", ByteCode.MULTIANEWARRAY, "com.nullsoft.winamp", "publisher", mp4FieldType, Tagger.WINAMP);
        WORK = new Mp4FieldKey(FrameBodyTXXX.WORK, 198, "©wrk", mp4TagFieldSubType2, mp4FieldType);
        WORK_TYPE = new Mp4FieldKey(FrameBodyTXXX.WORK_TYPE, 199, "com.apple.iTunes", FrameBodyTXXX.WORK_TYPE, mp4FieldType, tagger2);
        $VALUES = $values();
    }

    private Mp4FieldKey(String str, int i, String str2, Mp4TagFieldSubType mp4TagFieldSubType, Mp4FieldType mp4FieldType) {
        super(str, i);
        this.fieldName = str2;
        this.subclassType = mp4TagFieldSubType;
        this.fieldType = mp4FieldType;
    }

    public static Mp4FieldKey valueOf(String str) {
        return (Mp4FieldKey) Enum.valueOf(Mp4FieldKey.class, str);
    }

    public static Mp4FieldKey[] values() {
        return (Mp4FieldKey[]) $VALUES.clone();
    }

    public int getFieldLength() {
        return this.fieldLength;
    }

    public String getFieldName() {
        return this.fieldName;
    }

    public Mp4FieldType getFieldType() {
        return this.fieldType;
    }

    public String getIdentifier() {
        return this.identifier;
    }

    public String getIssuer() {
        return this.issuer;
    }

    public Mp4TagFieldSubType getSubClassFieldType() {
        return this.subclassType;
    }

    public Tagger getTagger() {
        Tagger tagger = this.tagger;
        return tagger != null ? tagger : Tagger.ITUNES;
    }

    public boolean isReverseDnsType() {
        return this.identifier.startsWith("----");
    }

    private Mp4FieldKey(String str, int i, String str2, Mp4TagFieldSubType mp4TagFieldSubType, Mp4FieldType mp4FieldType, Tagger tagger) {
        super(str, i);
        this.fieldName = str2;
        this.subclassType = mp4TagFieldSubType;
        this.fieldType = mp4FieldType;
        this.tagger = tagger;
    }

    private Mp4FieldKey(String str, int i, String str2, Mp4TagFieldSubType mp4TagFieldSubType, Mp4FieldType mp4FieldType, int i2) {
        super(str, i);
        this.fieldName = str2;
        this.subclassType = mp4TagFieldSubType;
        this.fieldType = mp4FieldType;
        this.fieldLength = i2;
    }

    private Mp4FieldKey(String str, int i, String str2, String str3, Mp4FieldType mp4FieldType) {
        super(str, i);
        this.issuer = str2;
        this.identifier = str3;
        this.fieldName = "----:" + str2 + StringUtils.PROCESS_POSTFIX_DELIMITER + str3;
        this.subclassType = Mp4TagFieldSubType.REVERSE_DNS;
        this.fieldType = mp4FieldType;
    }

    private Mp4FieldKey(String str, int i, String str2, String str3, Mp4FieldType mp4FieldType, Tagger tagger) {
        super(str, i);
        this.issuer = str2;
        this.identifier = str3;
        this.fieldName = "----:" + str2 + StringUtils.PROCESS_POSTFIX_DELIMITER + str3;
        this.subclassType = Mp4TagFieldSubType.REVERSE_DNS;
        this.fieldType = mp4FieldType;
        this.tagger = tagger;
    }
}
