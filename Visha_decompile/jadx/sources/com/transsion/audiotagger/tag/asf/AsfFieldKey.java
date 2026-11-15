package com.transsion.audiotagger.tag.asf;

import com.transsion.audiotagger.audio.asf.data.ContainerType;
import com.transsion.audiotagger.audio.asf.data.ContentBranding;
import com.transsion.audiotagger.audio.asf.data.ContentDescription;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTXXX;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'AUTHOR' uses external variables
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
public final class AsfFieldKey {
    private static final AsfFieldKey[] $VALUES;
    static final boolean $assertionsDisabled = false;
    public static final AsfFieldKey ACOUSTID_FINGERPRINT;
    public static final AsfFieldKey ACOUSTID_FINGERPRINT_OLD;
    public static final AsfFieldKey ACOUSTID_ID;
    public static final AsfFieldKey ALBUM;
    public static final AsfFieldKey ALBUM_ARTIST;
    public static final AsfFieldKey ALBUM_ARTISTS;
    public static final AsfFieldKey ALBUM_ARTISTS_SORT;
    public static final AsfFieldKey ALBUM_ARTIST_SORT;
    public static final AsfFieldKey ALBUM_SORT;
    public static final AsfFieldKey AMAZON_ID;
    public static final AsfFieldKey ARRANGER;
    public static final AsfFieldKey ARRANGER_SORT;
    public static final AsfFieldKey ARTISTS;
    public static final AsfFieldKey ARTISTS_SORT;
    public static final AsfFieldKey ARTIST_SORT;
    public static final AsfFieldKey AUTHOR;
    public static final AsfFieldKey BANNER_IMAGE;
    public static final AsfFieldKey BANNER_IMAGE_TYPE;
    public static final AsfFieldKey BANNER_IMAGE_URL;
    public static final AsfFieldKey BARCODE;
    public static final AsfFieldKey BPM;
    public static final AsfFieldKey CATALOG_NO;
    public static final AsfFieldKey CATEGORY;
    public static final AsfFieldKey CHOIR;
    public static final AsfFieldKey CHOIR_SORT;
    public static final AsfFieldKey CLASSICAL_CATALOG;
    public static final AsfFieldKey CLASSICAL_NICKNAME;
    public static final AsfFieldKey COMPOSER;
    public static final AsfFieldKey COMPOSER_SORT;
    public static final AsfFieldKey CONDUCTOR;
    public static final AsfFieldKey CONDUCTOR_SORT;
    public static final AsfFieldKey COPYRIGHT;
    public static final AsfFieldKey COPYRIGHT_URL;
    public static final AsfFieldKey COUNTRY;
    public static final AsfFieldKey COVER_ART;
    public static final AsfFieldKey COVER_ART_URL;
    public static final AsfFieldKey CUSTOM;
    public static final AsfFieldKey CUSTOM1;
    public static final AsfFieldKey CUSTOM2;
    public static final AsfFieldKey CUSTOM3;
    public static final AsfFieldKey CUSTOM4;
    public static final AsfFieldKey CUSTOM5;
    public static final AsfFieldKey DESCRIPTION;
    public static final AsfFieldKey DIRECTOR;
    public static final AsfFieldKey DISC_NO;
    public static final AsfFieldKey DISC_SUBTITLE;
    public static final AsfFieldKey DISC_TOTAL;
    public static final AsfFieldKey DJMIXER;
    public static final AsfFieldKey ENCODED_BY;
    public static final AsfFieldKey ENCODER;
    public static final AsfFieldKey ENGINEER;
    public static final AsfFieldKey ENSEMBLE;
    public static final AsfFieldKey ENSEMBLE_SORT;
    public static final AsfFieldKey FBPM;
    private static final Map<String, AsfFieldKey> FIELD_ID_MAP;
    public static final AsfFieldKey GENRE;
    public static final AsfFieldKey GENRE_ID;
    public static final AsfFieldKey GROUP;
    public static final AsfFieldKey GROUPING;
    public static final AsfFieldKey INITIAL_KEY;
    public static final AsfFieldKey INSTRUMENT;
    public static final AsfFieldKey INVOLVED_PERSON;
    public static final AsfFieldKey ISRC;
    public static final AsfFieldKey ISVBR;
    public static final AsfFieldKey IS_CLASSICAL;
    public static final AsfFieldKey IS_COMPILATION;
    public static final AsfFieldKey IS_SOUNDTRACK;
    public static final AsfFieldKey LANGUAGE;
    public static final AsfFieldKey LYRICIST;
    public static final AsfFieldKey LYRICS;
    public static final AsfFieldKey LYRICS_SYNCHRONISED;
    public static final AsfFieldKey MEDIA;
    public static final AsfFieldKey MIXER;
    public static final AsfFieldKey MM_RATING;
    public static final AsfFieldKey MOOD;
    public static final AsfFieldKey MOOD_ACOUSTIC;
    public static final AsfFieldKey MOOD_AGGRESSIVE;
    public static final AsfFieldKey MOOD_AROUSAL;
    public static final AsfFieldKey MOOD_DANCEABILITY;
    public static final AsfFieldKey MOOD_ELECTRONIC;
    public static final AsfFieldKey MOOD_HAPPY;
    public static final AsfFieldKey MOOD_INSTRUMENTAL;
    public static final AsfFieldKey MOOD_PARTY;
    public static final AsfFieldKey MOOD_RELAXED;
    public static final AsfFieldKey MOOD_SAD;
    public static final AsfFieldKey MOOD_VALENCE;
    public static final AsfFieldKey MOVEMENT;
    public static final AsfFieldKey MOVEMENT_NO;
    public static final AsfFieldKey MOVEMENT_TOTAL;
    public static final AsfFieldKey MUSICBRAINZ_ARTISTID;
    public static final AsfFieldKey MUSICBRAINZ_DISC_ID;
    public static final AsfFieldKey MUSICBRAINZ_ORIGINAL_RELEASEID;
    public static final AsfFieldKey MUSICBRAINZ_RELEASEARTISTID;
    public static final AsfFieldKey MUSICBRAINZ_RELEASEGROUPID;
    public static final AsfFieldKey MUSICBRAINZ_RELEASEID;
    public static final AsfFieldKey MUSICBRAINZ_RELEASETRACKID;
    public static final AsfFieldKey MUSICBRAINZ_RELEASE_COUNTRY;
    public static final AsfFieldKey MUSICBRAINZ_RELEASE_STATUS;
    public static final AsfFieldKey MUSICBRAINZ_RELEASE_TYPE;
    public static final AsfFieldKey MUSICBRAINZ_TRACK_ID;
    public static final AsfFieldKey MUSICBRAINZ_WORK;
    public static final AsfFieldKey MUSICBRAINZ_WORKID;
    public static final AsfFieldKey MUSICBRAINZ_WORK_COMPOSITION;
    public static final AsfFieldKey MUSICBRAINZ_WORK_COMPOSITION_ID;
    public static final AsfFieldKey MUSICBRAINZ_WORK_PART_LEVEL1;
    public static final AsfFieldKey MUSICBRAINZ_WORK_PART_LEVEL1_ID;
    public static final AsfFieldKey MUSICBRAINZ_WORK_PART_LEVEL1_TYPE;
    public static final AsfFieldKey MUSICBRAINZ_WORK_PART_LEVEL2;
    public static final AsfFieldKey MUSICBRAINZ_WORK_PART_LEVEL2_ID;
    public static final AsfFieldKey MUSICBRAINZ_WORK_PART_LEVEL2_TYPE;
    public static final AsfFieldKey MUSICBRAINZ_WORK_PART_LEVEL3;
    public static final AsfFieldKey MUSICBRAINZ_WORK_PART_LEVEL3_ID;
    public static final AsfFieldKey MUSICBRAINZ_WORK_PART_LEVEL3_TYPE;
    public static final AsfFieldKey MUSICBRAINZ_WORK_PART_LEVEL4;
    public static final AsfFieldKey MUSICBRAINZ_WORK_PART_LEVEL4_ID;
    public static final AsfFieldKey MUSICBRAINZ_WORK_PART_LEVEL4_TYPE;
    public static final AsfFieldKey MUSICBRAINZ_WORK_PART_LEVEL5;
    public static final AsfFieldKey MUSICBRAINZ_WORK_PART_LEVEL5_ID;
    public static final AsfFieldKey MUSICBRAINZ_WORK_PART_LEVEL5_TYPE;
    public static final AsfFieldKey MUSICBRAINZ_WORK_PART_LEVEL6;
    public static final AsfFieldKey MUSICBRAINZ_WORK_PART_LEVEL6_ID;
    public static final AsfFieldKey MUSICBRAINZ_WORK_PART_LEVEL6_TYPE;
    public static final AsfFieldKey MUSICIP_ID;
    public static final AsfFieldKey OCCASION;
    public static final AsfFieldKey OPUS;
    public static final AsfFieldKey ORCHESTRA;
    public static final AsfFieldKey ORCHESTRA_SORT;
    public static final AsfFieldKey ORIGINAL_ALBUM;
    public static final AsfFieldKey ORIGINAL_ARTIST;
    public static final AsfFieldKey ORIGINAL_LYRICIST;
    public static final AsfFieldKey ORIGINAL_YEAR;
    public static final AsfFieldKey PART;
    public static final AsfFieldKey PART_NUMBER;
    public static final AsfFieldKey PART_TYPE;
    public static final AsfFieldKey PERFORMER;
    public static final AsfFieldKey PERFORMER_NAME;
    public static final AsfFieldKey PERFORMER_NAME_SORT;
    public static final AsfFieldKey PERIOD;
    public static final AsfFieldKey PRODUCER;
    public static final AsfFieldKey QUALITY;
    public static final AsfFieldKey RANKING;
    public static final AsfFieldKey RATING;
    public static final AsfFieldKey RECORD_LABEL;
    public static final AsfFieldKey REMIXER;
    public static final AsfFieldKey SCRIPT;
    public static final AsfFieldKey SINGLE_DISC_TRACK_NO;
    public static final AsfFieldKey SUBTITLE;
    public static final AsfFieldKey TAGS;
    public static final AsfFieldKey TEMPO;
    public static final AsfFieldKey TIMBRE;
    public static final AsfFieldKey TITLE;
    public static final AsfFieldKey TITLE_MOVEMENT;
    public static final AsfFieldKey TITLE_SORT;
    public static final AsfFieldKey TONALITY;
    public static final AsfFieldKey TRACK;
    public static final AsfFieldKey TRACK_TOTAL;
    public static final AsfFieldKey URL_DISCOGS_ARTIST_SITE;
    public static final AsfFieldKey URL_DISCOGS_RELEASE_SITE;
    public static final AsfFieldKey URL_LYRICS_SITE;
    public static final AsfFieldKey URL_OFFICIAL_ARTIST_SITE;
    public static final AsfFieldKey URL_OFFICIAL_RELEASE_SITE;
    public static final AsfFieldKey URL_PROMOTIONAL_SITE;
    public static final AsfFieldKey URL_WIKIPEDIA_ARTIST_SITE;
    public static final AsfFieldKey URL_WIKIPEDIA_RELEASE_SITE;
    public static final AsfFieldKey USER_RATING;
    public static final AsfFieldKey WORK;
    public static final AsfFieldKey WORK_TYPE;
    public static final AsfFieldKey YEAR;
    private final String fieldName;
    private final ContainerType highestContainer;
    private final ContainerType lowestContainer;
    private final boolean multiValued;

    private static AsfFieldKey[] $values() {
        return new AsfFieldKey[]{AUTHOR, TITLE, RATING, COPYRIGHT, DESCRIPTION, BANNER_IMAGE, BANNER_IMAGE_TYPE, BANNER_IMAGE_URL, COPYRIGHT_URL, ACOUSTID_FINGERPRINT, ACOUSTID_FINGERPRINT_OLD, ACOUSTID_ID, ALBUM, ALBUM_ARTIST, ALBUM_ARTIST_SORT, ALBUM_ARTISTS, ALBUM_ARTISTS_SORT, ALBUM_SORT, AMAZON_ID, ARRANGER, ARRANGER_SORT, ARTISTS, ARTISTS_SORT, ARTIST_SORT, BARCODE, BPM, CATALOG_NO, CATEGORY, CHOIR, CHOIR_SORT, CLASSICAL_CATALOG, CLASSICAL_NICKNAME, COMPOSER, COMPOSER_SORT, CONDUCTOR, CONDUCTOR_SORT, COUNTRY, COVER_ART, COVER_ART_URL, CUSTOM1, CUSTOM2, CUSTOM3, CUSTOM4, CUSTOM5, DIRECTOR, DISC_NO, DISC_SUBTITLE, DISC_TOTAL, DJMIXER, ENCODED_BY, ENCODER, ENGINEER, ENSEMBLE, ENSEMBLE_SORT, FBPM, GENRE, GENRE_ID, GROUP, GROUPING, INITIAL_KEY, INSTRUMENT, INVOLVED_PERSON, ISRC, ISVBR, IS_CLASSICAL, IS_COMPILATION, IS_SOUNDTRACK, LANGUAGE, LYRICIST, LYRICS, LYRICS_SYNCHRONISED, MEDIA, MIXER, MM_RATING, MOOD, MOOD_ACOUSTIC, MOOD_AGGRESSIVE, MOOD_AROUSAL, MOOD_DANCEABILITY, MOOD_ELECTRONIC, MOOD_HAPPY, MOOD_INSTRUMENTAL, MOOD_PARTY, MOOD_RELAXED, MOOD_SAD, MOOD_VALENCE, MOVEMENT, MOVEMENT_NO, MOVEMENT_TOTAL, MUSICBRAINZ_ARTISTID, MUSICBRAINZ_DISC_ID, MUSICBRAINZ_ORIGINAL_RELEASEID, MUSICBRAINZ_RELEASEARTISTID, MUSICBRAINZ_RELEASEGROUPID, MUSICBRAINZ_RELEASEID, MUSICBRAINZ_RELEASETRACKID, MUSICBRAINZ_RELEASE_COUNTRY, MUSICBRAINZ_RELEASE_STATUS, MUSICBRAINZ_RELEASE_TYPE, MUSICBRAINZ_TRACK_ID, MUSICBRAINZ_WORKID, MUSICBRAINZ_WORK_COMPOSITION, MUSICBRAINZ_WORK_COMPOSITION_ID, MUSICBRAINZ_WORK_PART_LEVEL1, MUSICBRAINZ_WORK_PART_LEVEL1_ID, MUSICBRAINZ_WORK_PART_LEVEL1_TYPE, MUSICBRAINZ_WORK_PART_LEVEL2, MUSICBRAINZ_WORK_PART_LEVEL2_ID, MUSICBRAINZ_WORK_PART_LEVEL2_TYPE, MUSICBRAINZ_WORK_PART_LEVEL3, MUSICBRAINZ_WORK_PART_LEVEL3_ID, MUSICBRAINZ_WORK_PART_LEVEL3_TYPE, MUSICBRAINZ_WORK_PART_LEVEL4, MUSICBRAINZ_WORK_PART_LEVEL4_ID, MUSICBRAINZ_WORK_PART_LEVEL4_TYPE, MUSICBRAINZ_WORK_PART_LEVEL5, MUSICBRAINZ_WORK_PART_LEVEL5_ID, MUSICBRAINZ_WORK_PART_LEVEL5_TYPE, MUSICBRAINZ_WORK_PART_LEVEL6_ID, MUSICBRAINZ_WORK_PART_LEVEL6, MUSICBRAINZ_WORK_PART_LEVEL6_TYPE, MUSICIP_ID, OCCASION, OPUS, ORCHESTRA, ORCHESTRA_SORT, ORIGINAL_ALBUM, ORIGINAL_ARTIST, ORIGINAL_LYRICIST, ORIGINAL_YEAR, PART, PART_NUMBER, PART_TYPE, PERFORMER, PERFORMER_NAME, PERFORMER_NAME_SORT, PERIOD, PRODUCER, QUALITY, RANKING, RECORD_LABEL, REMIXER, SCRIPT, SINGLE_DISC_TRACK_NO, SUBTITLE, TAGS, TEMPO, TIMBRE, TITLE_MOVEMENT, MUSICBRAINZ_WORK, TITLE_SORT, TONALITY, TRACK, TRACK_TOTAL, URL_DISCOGS_ARTIST_SITE, URL_DISCOGS_RELEASE_SITE, URL_LYRICS_SITE, URL_OFFICIAL_ARTIST_SITE, URL_OFFICIAL_RELEASE_SITE, URL_PROMOTIONAL_SITE, URL_WIKIPEDIA_ARTIST_SITE, URL_WIKIPEDIA_RELEASE_SITE, USER_RATING, WORK, WORK_TYPE, YEAR, CUSTOM};
    }

    static {
        ContainerType containerType = ContainerType.CONTENT_DESCRIPTION;
        AUTHOR = new AsfFieldKey(ContentDescription.KEY_AUTHOR, 0, ContentDescription.KEY_AUTHOR, false, containerType);
        TITLE = new AsfFieldKey(ContentDescription.KEY_TITLE, 1, ContentDescription.KEY_TITLE, false, containerType);
        RATING = new AsfFieldKey(ContentDescription.KEY_RATING, 2, ContentDescription.KEY_RATING, false, containerType);
        COPYRIGHT = new AsfFieldKey(ContentDescription.KEY_COPYRIGHT, 3, ContentDescription.KEY_COPYRIGHT, false, containerType);
        DESCRIPTION = new AsfFieldKey(ContentDescription.KEY_DESCRIPTION, 4, ContentDescription.KEY_DESCRIPTION, false, containerType);
        ContainerType containerType2 = ContainerType.CONTENT_BRANDING;
        BANNER_IMAGE = new AsfFieldKey(ContentBranding.KEY_BANNER_IMAGE, 5, ContentBranding.KEY_BANNER_IMAGE, false, containerType2);
        BANNER_IMAGE_TYPE = new AsfFieldKey(ContentBranding.KEY_BANNER_TYPE, 6, ContentBranding.KEY_BANNER_TYPE, false, containerType2);
        BANNER_IMAGE_URL = new AsfFieldKey(ContentBranding.KEY_BANNER_URL, 7, ContentBranding.KEY_BANNER_URL, false, containerType2);
        COPYRIGHT_URL = new AsfFieldKey(ContentBranding.KEY_COPYRIGHT_URL, 8, ContentBranding.KEY_COPYRIGHT_URL, false, containerType2);
        ACOUSTID_FINGERPRINT = new AsfFieldKey("ACOUSTID_FINGERPRINT", 9, "Acoustid/Fingerprint", false);
        ACOUSTID_FINGERPRINT_OLD = new AsfFieldKey("ACOUSTID_FINGERPRINT_OLD", 10, "AcoustId/Fingerprint", false);
        ACOUSTID_ID = new AsfFieldKey("ACOUSTID_ID", 11, "Acoustid/Id", false);
        ALBUM = new AsfFieldKey("ALBUM", 12, "WM/AlbumTitle", false);
        ALBUM_ARTIST = new AsfFieldKey("ALBUM_ARTIST", 13, "WM/AlbumArtist", true);
        ALBUM_ARTIST_SORT = new AsfFieldKey("ALBUM_ARTIST_SORT", 14, "WM/AlbumArtistSortOrder", false);
        ALBUM_ARTISTS = new AsfFieldKey(FrameBodyTXXX.ALBUM_ARTISTS, 15, FrameBodyTXXX.ALBUM_ARTISTS, true);
        ALBUM_ARTISTS_SORT = new AsfFieldKey(FrameBodyTXXX.ALBUM_ARTISTS_SORT, 16, FrameBodyTXXX.ALBUM_ARTISTS_SORT, true);
        ALBUM_SORT = new AsfFieldKey("ALBUM_SORT", 17, "WM/AlbumSortOrder", false);
        AMAZON_ID = new AsfFieldKey("AMAZON_ID", 18, FrameBodyTXXX.AMAZON_ASIN, false);
        ARRANGER = new AsfFieldKey("ARRANGER", 19, "WM/Arranger", false);
        ARRANGER_SORT = new AsfFieldKey(FrameBodyTXXX.ARRANGER_SORT, 20, FrameBodyTXXX.ARRANGER_SORT, true);
        ARTISTS = new AsfFieldKey(FrameBodyTXXX.ARTISTS, 21, "WM/ARTISTS", true);
        ARTISTS_SORT = new AsfFieldKey(FrameBodyTXXX.ARTISTS_SORT, 22, "WM/ARTISTS_SORT", true);
        ARTIST_SORT = new AsfFieldKey("ARTIST_SORT", 23, "WM/ArtistSortOrder", false);
        BARCODE = new AsfFieldKey(FrameBodyTXXX.BARCODE, 24, "WM/Barcode", false);
        BPM = new AsfFieldKey("BPM", 25, "WM/BeatsPerMinute", false);
        CATALOG_NO = new AsfFieldKey("CATALOG_NO", 26, "WM/CatalogNo", false);
        CATEGORY = new AsfFieldKey("CATEGORY", 27, "WM/Category", true);
        CHOIR = new AsfFieldKey(FrameBodyTXXX.CHOIR, 28, FrameBodyTXXX.CHOIR, true);
        CHOIR_SORT = new AsfFieldKey(FrameBodyTXXX.CHOIR_SORT, 29, FrameBodyTXXX.CHOIR_SORT, true);
        CLASSICAL_CATALOG = new AsfFieldKey(FrameBodyTXXX.CLASSICAL_CATALOG, 30, FrameBodyTXXX.CLASSICAL_CATALOG, true);
        CLASSICAL_NICKNAME = new AsfFieldKey(FrameBodyTXXX.CLASSICAL_NICKNAME, 31, FrameBodyTXXX.CLASSICAL_NICKNAME, true);
        COMPOSER = new AsfFieldKey("COMPOSER", 32, "WM/Composer", true);
        COMPOSER_SORT = new AsfFieldKey("COMPOSER_SORT", 33, "WM/ComposerSort", false);
        CONDUCTOR = new AsfFieldKey("CONDUCTOR", 34, "WM/Conductor", true);
        CONDUCTOR_SORT = new AsfFieldKey(FrameBodyTXXX.CONDUCTOR_SORT, 35, FrameBodyTXXX.CONDUCTOR_SORT, true);
        COUNTRY = new AsfFieldKey("COUNTRY", 36, "WM/Country", false);
        COVER_ART = new AsfFieldKey("COVER_ART", 37, "WM/Picture", true);
        COVER_ART_URL = new AsfFieldKey("COVER_ART_URL", 38, "WM/AlbumCoverURL", true);
        CUSTOM1 = new AsfFieldKey("CUSTOM1", 39, "CUSTOM1", true);
        CUSTOM2 = new AsfFieldKey("CUSTOM2", 40, "CUSTOM2", true);
        CUSTOM3 = new AsfFieldKey("CUSTOM3", 41, "CUSTOM3", true);
        CUSTOM4 = new AsfFieldKey("CUSTOM4", 42, "CUSTOM4", true);
        CUSTOM5 = new AsfFieldKey("CUSTOM5", 43, "CUSTOM5", true);
        DIRECTOR = new AsfFieldKey("DIRECTOR", 44, "WM/Director", true);
        DISC_NO = new AsfFieldKey("DISC_NO", 45, "WM/PartOfSet", false);
        DISC_SUBTITLE = new AsfFieldKey("DISC_SUBTITLE", 46, "WM/SetSubTitle", false);
        DISC_TOTAL = new AsfFieldKey("DISC_TOTAL", 47, "WM/DiscTotal", false);
        DJMIXER = new AsfFieldKey("DJMIXER", 48, "WM/DJMixer", false);
        ENCODED_BY = new AsfFieldKey("ENCODED_BY", 49, "WM/EncodedBy", false);
        ENCODER = new AsfFieldKey("ENCODER", 50, "WM/ToolName", false);
        ENGINEER = new AsfFieldKey("ENGINEER", 51, "WM/Engineer", false);
        ENSEMBLE = new AsfFieldKey(FrameBodyTXXX.ENSEMBLE, 52, FrameBodyTXXX.ENSEMBLE, true);
        ENSEMBLE_SORT = new AsfFieldKey(FrameBodyTXXX.ENSEMBLE_SORT, 53, FrameBodyTXXX.ENSEMBLE_SORT, true);
        FBPM = new AsfFieldKey(FrameBodyTXXX.FBPM, 54, FrameBodyTXXX.FBPM, true);
        GENRE = new AsfFieldKey("GENRE", 55, "WM/Genre", true);
        GENRE_ID = new AsfFieldKey("GENRE_ID", 56, "WM/GenreID", true);
        GROUP = new AsfFieldKey(FrameBodyTXXX.GROUP, 57, FrameBodyTXXX.GROUP, false);
        GROUPING = new AsfFieldKey("GROUPING", 58, "WM/ContentGroupDescription", false);
        INITIAL_KEY = new AsfFieldKey("INITIAL_KEY", 59, "WM/InitialKey", false);
        INSTRUMENT = new AsfFieldKey(FrameBodyTXXX.INSTRUMENT, 60, FrameBodyTXXX.INSTRUMENT, true);
        INVOLVED_PERSON = new AsfFieldKey("INVOLVED_PERSON", 61, "WM/InvolvedPerson", true);
        ISRC = new AsfFieldKey("ISRC", 62, "WM/ISRC", false);
        ISVBR = new AsfFieldKey("ISVBR", 63, "IsVBR", true);
        IS_CLASSICAL = new AsfFieldKey(FrameBodyTXXX.IS_CLASSICAL, 64, FrameBodyTXXX.IS_CLASSICAL, false);
        IS_COMPILATION = new AsfFieldKey("IS_COMPILATION", 65, "WM/IsCompilation", false);
        IS_SOUNDTRACK = new AsfFieldKey(FrameBodyTXXX.IS_SOUNDTRACK, 66, FrameBodyTXXX.IS_SOUNDTRACK, false);
        LANGUAGE = new AsfFieldKey("LANGUAGE", 67, "WM/Language", true);
        LYRICIST = new AsfFieldKey("LYRICIST", 68, "WM/Writer", true);
        LYRICS = new AsfFieldKey("LYRICS", 69, "WM/Lyrics", false);
        LYRICS_SYNCHRONISED = new AsfFieldKey("LYRICS_SYNCHRONISED", 70, "WM/Lyrics_Synchronised", true);
        MEDIA = new AsfFieldKey("MEDIA", 71, "WM/Media", false);
        MIXER = new AsfFieldKey("MIXER", 72, "WM/Mixer", false);
        MM_RATING = new AsfFieldKey("MM_RATING", 73, "SDB/Rating", true);
        MOOD = new AsfFieldKey(FrameBodyTXXX.MOOD, 74, "WM/Mood", true);
        MOOD_ACOUSTIC = new AsfFieldKey(FrameBodyTXXX.MOOD_ACOUSTIC, 75, FrameBodyTXXX.MOOD_ACOUSTIC, false);
        MOOD_AGGRESSIVE = new AsfFieldKey(FrameBodyTXXX.MOOD_AGGRESSIVE, 76, FrameBodyTXXX.MOOD_AGGRESSIVE, false);
        MOOD_AROUSAL = new AsfFieldKey(FrameBodyTXXX.MOOD_AROUSAL, 77, FrameBodyTXXX.MOOD_AROUSAL, false);
        MOOD_DANCEABILITY = new AsfFieldKey(FrameBodyTXXX.MOOD_DANCEABILITY, 78, FrameBodyTXXX.MOOD_DANCEABILITY, false);
        MOOD_ELECTRONIC = new AsfFieldKey(FrameBodyTXXX.MOOD_ELECTRONIC, 79, FrameBodyTXXX.MOOD_ELECTRONIC, false);
        MOOD_HAPPY = new AsfFieldKey(FrameBodyTXXX.MOOD_HAPPY, 80, FrameBodyTXXX.MOOD_HAPPY, false);
        MOOD_INSTRUMENTAL = new AsfFieldKey(FrameBodyTXXX.MOOD_INSTRUMENTAL, 81, FrameBodyTXXX.MOOD_INSTRUMENTAL, false);
        MOOD_PARTY = new AsfFieldKey(FrameBodyTXXX.MOOD_PARTY, 82, FrameBodyTXXX.MOOD_PARTY, false);
        MOOD_RELAXED = new AsfFieldKey(FrameBodyTXXX.MOOD_RELAXED, 83, FrameBodyTXXX.MOOD_RELAXED, false);
        MOOD_SAD = new AsfFieldKey(FrameBodyTXXX.MOOD_SAD, 84, FrameBodyTXXX.MOOD_SAD, false);
        MOOD_VALENCE = new AsfFieldKey(FrameBodyTXXX.MOOD_VALENCE, 85, FrameBodyTXXX.MOOD_VALENCE, false);
        MOVEMENT = new AsfFieldKey("MOVEMENT", 86, "MOVEMENT", false);
        MOVEMENT_NO = new AsfFieldKey("MOVEMENT_NO", 87, "MOVEMENT_NO", false);
        MOVEMENT_TOTAL = new AsfFieldKey("MOVEMENT_TOTAL", 88, "MOVEMENT_TOTAL", false);
        MUSICBRAINZ_ARTISTID = new AsfFieldKey("MUSICBRAINZ_ARTISTID", 89, "MusicBrainz/Artist Id", false);
        MUSICBRAINZ_DISC_ID = new AsfFieldKey("MUSICBRAINZ_DISC_ID", 90, "MusicBrainz/Disc Id", false);
        MUSICBRAINZ_ORIGINAL_RELEASEID = new AsfFieldKey("MUSICBRAINZ_ORIGINAL_RELEASEID", 91, "MusicBrainz/Original Album Id", false);
        MUSICBRAINZ_RELEASEARTISTID = new AsfFieldKey("MUSICBRAINZ_RELEASEARTISTID", 92, "MusicBrainz/Album Artist Id", false);
        MUSICBRAINZ_RELEASEGROUPID = new AsfFieldKey("MUSICBRAINZ_RELEASEGROUPID", 93, "MusicBrainz/Release Group Id", false);
        MUSICBRAINZ_RELEASEID = new AsfFieldKey("MUSICBRAINZ_RELEASEID", 94, "MusicBrainz/Album Id", false);
        MUSICBRAINZ_RELEASETRACKID = new AsfFieldKey("MUSICBRAINZ_RELEASETRACKID", 95, "MusicBrainz/Release Track Id", false);
        MUSICBRAINZ_RELEASE_COUNTRY = new AsfFieldKey("MUSICBRAINZ_RELEASE_COUNTRY", 96, "MusicBrainz/Album Release Country", false);
        MUSICBRAINZ_RELEASE_STATUS = new AsfFieldKey("MUSICBRAINZ_RELEASE_STATUS", 97, "MusicBrainz/Album Status", false);
        MUSICBRAINZ_RELEASE_TYPE = new AsfFieldKey("MUSICBRAINZ_RELEASE_TYPE", 98, "MusicBrainz/Album Type", false);
        MUSICBRAINZ_TRACK_ID = new AsfFieldKey("MUSICBRAINZ_TRACK_ID", 99, "MusicBrainz/Track Id", false);
        MUSICBRAINZ_WORKID = new AsfFieldKey("MUSICBRAINZ_WORKID", 100, "MusicBrainz/Work Id", false);
        MUSICBRAINZ_WORK_COMPOSITION = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION, 101, FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION, true);
        MUSICBRAINZ_WORK_COMPOSITION_ID = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION_ID, 102, "MUSICBRAINZ_MUSICBRAINZ_WORK_COMPOSITION_ID", true);
        MUSICBRAINZ_WORK_PART_LEVEL1 = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1, 103, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1, true);
        MUSICBRAINZ_WORK_PART_LEVEL1_ID = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1_ID, 104, "MUSICBRAINZ_MUSICBRAINZ_WORK_PART_LEVEL1_ID", true);
        MUSICBRAINZ_WORK_PART_LEVEL1_TYPE = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1_TYPE, 105, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1_TYPE, true);
        MUSICBRAINZ_WORK_PART_LEVEL2 = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2, 106, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2, true);
        MUSICBRAINZ_WORK_PART_LEVEL2_ID = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2_ID, 107, "MUSICBRAINZ_MUSICBRAINZ_WORK_PART_LEVEL2_ID", true);
        MUSICBRAINZ_WORK_PART_LEVEL2_TYPE = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2_TYPE, 108, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2_TYPE, true);
        MUSICBRAINZ_WORK_PART_LEVEL3 = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3, 109, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3, true);
        MUSICBRAINZ_WORK_PART_LEVEL3_ID = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3_ID, 110, "MUSICBRAINZ_MUSICBRAINZ_WORK_PART_LEVEL3_ID", true);
        MUSICBRAINZ_WORK_PART_LEVEL3_TYPE = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3_TYPE, 111, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3_TYPE, true);
        MUSICBRAINZ_WORK_PART_LEVEL4 = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4, 112, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4, true);
        MUSICBRAINZ_WORK_PART_LEVEL4_ID = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4_ID, 113, "MUSICBRAINZ_MUSICBRAINZ_WORK_PART_LEVEL4_ID", true);
        MUSICBRAINZ_WORK_PART_LEVEL4_TYPE = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4_TYPE, 114, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4_TYPE, true);
        MUSICBRAINZ_WORK_PART_LEVEL5 = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5, 115, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5, true);
        MUSICBRAINZ_WORK_PART_LEVEL5_ID = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5_ID, 116, "MUSICBRAINZ_MUSICBRAINZ_WORK_PART_LEVEL5_ID", true);
        MUSICBRAINZ_WORK_PART_LEVEL5_TYPE = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5_TYPE, 117, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5_TYPE, true);
        MUSICBRAINZ_WORK_PART_LEVEL6_ID = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6_ID, 118, "MUSICBRAINZ_MUSICBRAINZ_WORK_PART_LEVEL6_ID", true);
        MUSICBRAINZ_WORK_PART_LEVEL6 = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6, 119, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6, true);
        MUSICBRAINZ_WORK_PART_LEVEL6_TYPE = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6_TYPE, 120, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6_TYPE, true);
        MUSICIP_ID = new AsfFieldKey("MUSICIP_ID", 121, "MusicIP/PUID", false);
        OCCASION = new AsfFieldKey("OCCASION", 122, "Occasion", true);
        OPUS = new AsfFieldKey("OPUS", 123, "OPUS", true);
        ORCHESTRA = new AsfFieldKey(FrameBodyTXXX.ORCHESTRA, 124, FrameBodyTXXX.ORCHESTRA, true);
        ORCHESTRA_SORT = new AsfFieldKey(FrameBodyTXXX.ORCHESTRA_SORT, 125, FrameBodyTXXX.ORCHESTRA_SORT, true);
        ORIGINAL_ALBUM = new AsfFieldKey("ORIGINAL_ALBUM", 126, "WM/OriginalAlbumTitle", true);
        ORIGINAL_ARTIST = new AsfFieldKey("ORIGINAL_ARTIST", 127, "WM/OriginalArtist", true);
        ORIGINAL_LYRICIST = new AsfFieldKey("ORIGINAL_LYRICIST", 128, "WM/OriginalLyricist", true);
        ORIGINAL_YEAR = new AsfFieldKey("ORIGINAL_YEAR", 129, "WM/OriginalReleaseYear", true);
        PART = new AsfFieldKey(FrameBodyTXXX.PART, 130, FrameBodyTXXX.PART, true);
        PART_NUMBER = new AsfFieldKey("PART_NUMBER", 131, FrameBodyTXXX.PART_NUMBER, true);
        PART_TYPE = new AsfFieldKey(FrameBodyTXXX.PART_TYPE, 132, FrameBodyTXXX.PART_TYPE, true);
        PERFORMER = new AsfFieldKey("PERFORMER", 133, "PERFORMER", true);
        PERFORMER_NAME = new AsfFieldKey(FrameBodyTXXX.PERFORMER_NAME, 134, FrameBodyTXXX.PERFORMER_NAME, true);
        PERFORMER_NAME_SORT = new AsfFieldKey(FrameBodyTXXX.PERFORMER_NAME_SORT, 135, FrameBodyTXXX.PERFORMER_NAME_SORT, true);
        PERIOD = new AsfFieldKey(FrameBodyTXXX.PERIOD, 136, FrameBodyTXXX.PERIOD, true);
        PRODUCER = new AsfFieldKey("PRODUCER", 137, "WM/Producer", false);
        QUALITY = new AsfFieldKey("QUALITY", 138, "Quality", true);
        RANKING = new AsfFieldKey(FrameBodyTXXX.RANKING, 139, FrameBodyTXXX.RANKING, true);
        RECORD_LABEL = new AsfFieldKey("RECORD_LABEL", 140, "WM/Publisher", false);
        REMIXER = new AsfFieldKey("REMIXER", 141, "WM/ModifiedBy", false);
        SCRIPT = new AsfFieldKey("SCRIPT", 142, "WM/Script", false);
        SINGLE_DISC_TRACK_NO = new AsfFieldKey(FrameBodyTXXX.SINGLE_DISC_TRACK_NO, 143, FrameBodyTXXX.SINGLE_DISC_TRACK_NO, true);
        SUBTITLE = new AsfFieldKey("SUBTITLE", 144, "WM/SubTitle", false);
        TAGS = new AsfFieldKey(FrameBodyTXXX.TAGS, 145, "WM/Tags", false);
        TEMPO = new AsfFieldKey("TEMPO", 146, "Tempo", true);
        TIMBRE = new AsfFieldKey("TIMBRE", 147, FrameBodyTXXX.TIMBRE, false);
        TITLE_MOVEMENT = new AsfFieldKey(FrameBodyTXXX.TITLE_MOVEMENT, 148, FrameBodyTXXX.TITLE_MOVEMENT, false);
        MUSICBRAINZ_WORK = new AsfFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK, 149, FrameBodyTXXX.MUSICBRAINZ_WORK, false);
        TITLE_SORT = new AsfFieldKey("TITLE_SORT", 150, "WM/TitleSortOrder", false);
        TONALITY = new AsfFieldKey(FrameBodyTXXX.TONALITY, 151, FrameBodyTXXX.TONALITY, false);
        TRACK = new AsfFieldKey("TRACK", 152, "WM/TrackNumber", false);
        TRACK_TOTAL = new AsfFieldKey("TRACK_TOTAL", 153, "WM/TrackTotal", false);
        URL_DISCOGS_ARTIST_SITE = new AsfFieldKey("URL_DISCOGS_ARTIST_SITE", 154, "WM/DiscogsArtistUrl", false);
        URL_DISCOGS_RELEASE_SITE = new AsfFieldKey("URL_DISCOGS_RELEASE_SITE", 155, "WM/DiscogsReleaseUrl", false);
        URL_LYRICS_SITE = new AsfFieldKey("URL_LYRICS_SITE", 156, "WM/LyricsUrl", false);
        URL_OFFICIAL_ARTIST_SITE = new AsfFieldKey("URL_OFFICIAL_ARTIST_SITE", 157, "WM/AuthorURL", false);
        URL_OFFICIAL_RELEASE_SITE = new AsfFieldKey("URL_OFFICIAL_RELEASE_SITE", 158, "WM/OfficialReleaseUrl", false);
        URL_PROMOTIONAL_SITE = new AsfFieldKey("URL_PROMOTIONAL_SITE", 159, "WM/PromotionURL", true);
        URL_WIKIPEDIA_ARTIST_SITE = new AsfFieldKey("URL_WIKIPEDIA_ARTIST_SITE", 160, "WM/WikipediaArtistUrl", false);
        URL_WIKIPEDIA_RELEASE_SITE = new AsfFieldKey("URL_WIKIPEDIA_RELEASE_SITE", 161, "WM/WikipediaReleaseUrl", false);
        USER_RATING = new AsfFieldKey("USER_RATING", 162, "WM/SharedUserRating", true);
        WORK = new AsfFieldKey(FrameBodyTXXX.WORK, 163, FrameBodyTXXX.WORK, true);
        WORK_TYPE = new AsfFieldKey(FrameBodyTXXX.WORK_TYPE, 164, FrameBodyTXXX.WORK_TYPE, true);
        YEAR = new AsfFieldKey("YEAR", 165, "WM/Year", false);
        CUSTOM = new AsfFieldKey("CUSTOM", 166, "___CUSTOM___", true);
        $VALUES = $values();
        FIELD_ID_MAP = new HashMap(values().length);
        for (AsfFieldKey asfFieldKey : values()) {
            if (asfFieldKey != CUSTOM) {
                FIELD_ID_MAP.put(asfFieldKey.getFieldName(), asfFieldKey);
            }
        }
    }

    private AsfFieldKey(String str, int i, String str2, boolean z) {
        this(str, i, str2, z, ContainerType.EXTENDED_CONTENT, ContainerType.METADATA_LIBRARY_OBJECT);
    }

    public static AsfFieldKey getAsfFieldKey(String str) {
        AsfFieldKey asfFieldKey = FIELD_ID_MAP.get(str);
        return asfFieldKey == null ? CUSTOM : asfFieldKey;
    }

    public static boolean isMultiValued(String str) {
        AsfFieldKey asfFieldKey = getAsfFieldKey(str);
        return asfFieldKey != null && asfFieldKey.isMultiValued();
    }

    public static AsfFieldKey valueOf(String str) {
        return (AsfFieldKey) Enum.valueOf(AsfFieldKey.class, str);
    }

    public static AsfFieldKey[] values() {
        return (AsfFieldKey[]) $VALUES.clone();
    }

    public String getFieldName() {
        return this.fieldName;
    }

    public ContainerType getHighestContainer() {
        return this.highestContainer;
    }

    public ContainerType getLowestContainer() {
        return this.lowestContainer;
    }

    @Override
    public String toString() {
        return getFieldName();
    }

    private AsfFieldKey(String str, int i, String str2, boolean z, ContainerType containerType) {
        this(str, i, str2, z, containerType, containerType);
    }

    private AsfFieldKey(String str, int i, String str2, boolean z, ContainerType containerType, ContainerType containerType2) {
        super(str, i);
        this.fieldName = str2;
        this.multiValued = z && containerType2.isMultiValued();
        this.lowestContainer = containerType;
        this.highestContainer = containerType2;
    }

    public boolean isMultiValued() {
        return this.multiValued;
    }
}
