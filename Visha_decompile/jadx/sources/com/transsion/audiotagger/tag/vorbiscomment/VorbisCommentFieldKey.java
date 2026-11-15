package com.transsion.audiotagger.tag.vorbiscomment;

import com.transsion.audiotagger.audio.asf.data.ContentDescription;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTXXX;
import com.transsion.audiotagger.tag.reference.Tagger;
import java.util.EnumSet;

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
public final class VorbisCommentFieldKey {
    private static final VorbisCommentFieldKey[] $VALUES;
    public static final VorbisCommentFieldKey ACOUSTID_FINGERPRINT;
    public static final VorbisCommentFieldKey ACOUSTID_ID;
    public static final VorbisCommentFieldKey ALBUM;
    public static final VorbisCommentFieldKey ALBUMARTIST;
    public static final VorbisCommentFieldKey ALBUMARTISTS;
    public static final VorbisCommentFieldKey ALBUMARTISTSORT;
    public static final VorbisCommentFieldKey ALBUMARTISTSSORT;
    public static final VorbisCommentFieldKey ALBUMARTIST_JRIVER;
    public static final VorbisCommentFieldKey ALBUMSORT;
    public static final VorbisCommentFieldKey ALBUM_ARTIST;
    public static final VorbisCommentFieldKey ARRANGER;
    public static final VorbisCommentFieldKey ARRANGER_SORT;
    public static final VorbisCommentFieldKey ARTIST;
    public static final VorbisCommentFieldKey ARTISTS;
    public static final VorbisCommentFieldKey ARTISTSORT;
    public static final VorbisCommentFieldKey ARTISTS_SORT;
    public static final VorbisCommentFieldKey ASIN;
    public static final VorbisCommentFieldKey BARCODE;
    public static final VorbisCommentFieldKey BPM;
    public static final VorbisCommentFieldKey CATALOGNUMBER;
    public static final VorbisCommentFieldKey CHOIR;
    public static final VorbisCommentFieldKey CHOIR_SORT;
    public static final VorbisCommentFieldKey CLASSICAL_CATALOG;
    public static final VorbisCommentFieldKey CLASSICAL_NICKNAME;
    public static final VorbisCommentFieldKey COMMENT;
    public static final VorbisCommentFieldKey COMPILATION;
    public static final VorbisCommentFieldKey COMPOSER;
    public static final VorbisCommentFieldKey COMPOSERSORT;
    public static final VorbisCommentFieldKey CONDUCTOR;
    public static final VorbisCommentFieldKey CONDUCTOR_SORT;
    public static final VorbisCommentFieldKey CONTACT;
    public static final VorbisCommentFieldKey COPYRIGHT;
    public static final VorbisCommentFieldKey COUNTRY;
    public static final VorbisCommentFieldKey COVERART;
    public static final VorbisCommentFieldKey COVERARTMIME;
    public static final VorbisCommentFieldKey CUSTOM1;
    public static final VorbisCommentFieldKey CUSTOM2;
    public static final VorbisCommentFieldKey CUSTOM3;
    public static final VorbisCommentFieldKey CUSTOM4;
    public static final VorbisCommentFieldKey CUSTOM5;
    public static final VorbisCommentFieldKey DATE;
    public static final VorbisCommentFieldKey DESCRIPTION;
    public static final VorbisCommentFieldKey DISCNUMBER;
    public static final VorbisCommentFieldKey DISCSUBTITLE;
    public static final VorbisCommentFieldKey DISCTOTAL;
    public static final VorbisCommentFieldKey DJMIXER;
    public static final VorbisCommentFieldKey ENCODEDBY;
    public static final VorbisCommentFieldKey ENCODER;
    public static final VorbisCommentFieldKey ENGINEER;
    public static final VorbisCommentFieldKey ENSEMBLE;
    public static final VorbisCommentFieldKey ENSEMBLE_SORT;
    public static final VorbisCommentFieldKey FBPM;
    public static final VorbisCommentFieldKey GENRE;
    public static final VorbisCommentFieldKey GROUP;
    public static final VorbisCommentFieldKey GROUPING;
    public static final VorbisCommentFieldKey INSTRUMENT;
    public static final VorbisCommentFieldKey INVOLVED_PERSON;
    public static final VorbisCommentFieldKey ISRC;
    public static final VorbisCommentFieldKey IS_CLASSICAL;
    public static final VorbisCommentFieldKey IS_SOUNDTRACK;
    public static final VorbisCommentFieldKey KEY;
    public static final VorbisCommentFieldKey LABEL;
    public static final VorbisCommentFieldKey LANGUAGE;
    public static final VorbisCommentFieldKey LICENSE;
    public static final VorbisCommentFieldKey LOCATION;
    public static final VorbisCommentFieldKey LYRICIST;
    public static final VorbisCommentFieldKey LYRICS;
    public static final VorbisCommentFieldKey MEDIA;
    public static final VorbisCommentFieldKey METADATA_BLOCK_PICTURE;
    public static final VorbisCommentFieldKey MIXER;
    public static final VorbisCommentFieldKey MOOD;
    public static final VorbisCommentFieldKey MOOD_ACOUSTIC;
    public static final VorbisCommentFieldKey MOOD_AGGRESSIVE;
    public static final VorbisCommentFieldKey MOOD_AROUSAL;
    public static final VorbisCommentFieldKey MOOD_DANCEABILITY;
    public static final VorbisCommentFieldKey MOOD_ELECTRONIC;
    public static final VorbisCommentFieldKey MOOD_HAPPY;
    public static final VorbisCommentFieldKey MOOD_INSTRUMENTAL;
    public static final VorbisCommentFieldKey MOOD_PARTY;
    public static final VorbisCommentFieldKey MOOD_RELAXED;
    public static final VorbisCommentFieldKey MOOD_SAD;
    public static final VorbisCommentFieldKey MOOD_VALENCE;
    public static final VorbisCommentFieldKey MOVEMENT;
    public static final VorbisCommentFieldKey MOVEMENT_NO;
    public static final VorbisCommentFieldKey MOVEMENT_TOTAL;
    public static final VorbisCommentFieldKey MUSICBRAINZ_ALBUMARTISTID;
    public static final VorbisCommentFieldKey MUSICBRAINZ_ALBUMID;
    public static final VorbisCommentFieldKey MUSICBRAINZ_ALBUMSTATUS;
    public static final VorbisCommentFieldKey MUSICBRAINZ_ALBUMTYPE;
    public static final VorbisCommentFieldKey MUSICBRAINZ_ARTISTID;
    public static final VorbisCommentFieldKey MUSICBRAINZ_DISCID;
    public static final VorbisCommentFieldKey MUSICBRAINZ_ORIGINAL_ALBUMID;
    public static final VorbisCommentFieldKey MUSICBRAINZ_RELEASEGROUPID;
    public static final VorbisCommentFieldKey MUSICBRAINZ_RELEASETRACKID;
    public static final VorbisCommentFieldKey MUSICBRAINZ_TRACKID;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORKID;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_COMPOSITION;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_COMPOSITION_ID;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_PART_LEVEL1;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_PART_LEVEL1_ID;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_PART_LEVEL1_TYPE;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_PART_LEVEL2;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_PART_LEVEL2_ID;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_PART_LEVEL2_TYPE;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_PART_LEVEL3;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_PART_LEVEL3_ID;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_PART_LEVEL3_TYPE;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_PART_LEVEL4;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_PART_LEVEL4_ID;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_PART_LEVEL4_TYPE;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_PART_LEVEL5;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_PART_LEVEL5_ID;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_PART_LEVEL5_TYPE;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_PART_LEVEL6;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_PART_LEVEL6_ID;
    public static final VorbisCommentFieldKey MUSICBRAINZ_WORK_PART_LEVEL6_TYPE;
    public static final VorbisCommentFieldKey MUSICIAN;
    public static final VorbisCommentFieldKey MUSICIP_PUID;
    public static final VorbisCommentFieldKey OCCASION;
    public static final VorbisCommentFieldKey OPUS;
    public static final VorbisCommentFieldKey ORCHESTRA;
    public static final VorbisCommentFieldKey ORCHESTRA_SORT;
    public static final VorbisCommentFieldKey ORGANIZATION;
    public static final VorbisCommentFieldKey ORIGINAL_ALBUM;
    public static final VorbisCommentFieldKey ORIGINAL_ARTIST;
    public static final VorbisCommentFieldKey ORIGINAL_LYRICIST;
    public static final VorbisCommentFieldKey ORIGINAL_YEAR;
    public static final VorbisCommentFieldKey PART;
    public static final VorbisCommentFieldKey PART_NUMBER;
    public static final VorbisCommentFieldKey PART_TYPE;
    public static final VorbisCommentFieldKey PERFORMER;
    public static final VorbisCommentFieldKey PERFORMER_NAME;
    public static final VorbisCommentFieldKey PERFORMER_NAME_SORT;
    public static final VorbisCommentFieldKey PERIOD;
    public static final VorbisCommentFieldKey PRODUCER;
    public static final VorbisCommentFieldKey PRODUCTNUMBER;
    public static final VorbisCommentFieldKey QUALITY;
    public static final VorbisCommentFieldKey RANKING;
    public static final VorbisCommentFieldKey RATING;
    public static final VorbisCommentFieldKey RELEASECOUNTRY;
    public static final VorbisCommentFieldKey REMIXER;
    public static final VorbisCommentFieldKey SCRIPT;
    public static final VorbisCommentFieldKey SINGLE_DISC_TRACK_NO;
    public static final VorbisCommentFieldKey SOURCEMEDIA;
    public static final VorbisCommentFieldKey SUBTITLE;
    public static final VorbisCommentFieldKey TAGS;
    public static final VorbisCommentFieldKey TEMPO;
    public static final VorbisCommentFieldKey TIMBRE;
    public static final VorbisCommentFieldKey TITLE;
    public static final VorbisCommentFieldKey TITLESORT;
    public static final VorbisCommentFieldKey TITLE_MOVEMENT;
    public static final VorbisCommentFieldKey TONALITY;
    public static final VorbisCommentFieldKey TRACKNUMBER;
    public static final VorbisCommentFieldKey TRACKTOTAL;
    public static final VorbisCommentFieldKey URL_DISCOGS_ARTIST_SITE;
    public static final VorbisCommentFieldKey URL_DISCOGS_RELEASE_SITE;
    public static final VorbisCommentFieldKey URL_LYRICS_SITE;
    public static final VorbisCommentFieldKey URL_OFFICIAL_ARTIST_SITE;
    public static final VorbisCommentFieldKey URL_OFFICIAL_RELEASE_SITE;
    public static final VorbisCommentFieldKey URL_WIKIPEDIA_ARTIST_SITE;
    public static final VorbisCommentFieldKey URL_WIKIPEDIA_RELEASE_SITE;
    public static final VorbisCommentFieldKey VENDOR;
    public static final VorbisCommentFieldKey VERSION;
    public static final VorbisCommentFieldKey WORK;
    public static final VorbisCommentFieldKey WORK_TYPE;
    private String fieldName;
    private EnumSet<Tagger> taggers;

    private static VorbisCommentFieldKey[] $values() {
        return new VorbisCommentFieldKey[]{ACOUSTID_FINGERPRINT, ACOUSTID_ID, ALBUM, ALBUMARTIST, ALBUMARTISTSORT, ALBUMARTISTS, ALBUMARTISTSSORT, ALBUMARTIST_JRIVER, ALBUMSORT, ALBUM_ARTIST, ARRANGER, ARRANGER_SORT, ARTIST, ARTISTS, ARTISTSORT, ARTISTS_SORT, ASIN, BARCODE, BPM, CATALOGNUMBER, CHOIR, CHOIR_SORT, CLASSICAL_CATALOG, CLASSICAL_NICKNAME, COMMENT, COMPILATION, COMPOSER, COMPOSERSORT, CONDUCTOR, CONDUCTOR_SORT, CONTACT, COPYRIGHT, COUNTRY, COVERART, COVERARTMIME, CUSTOM1, CUSTOM2, CUSTOM3, CUSTOM4, CUSTOM5, DATE, DESCRIPTION, DISCNUMBER, DISCSUBTITLE, DISCTOTAL, DJMIXER, ENCODEDBY, ENCODER, ENGINEER, ENSEMBLE, ENSEMBLE_SORT, FBPM, GENRE, GROUP, GROUPING, INSTRUMENT, INVOLVED_PERSON, ISRC, IS_CLASSICAL, IS_SOUNDTRACK, KEY, LABEL, LANGUAGE, LICENSE, LOCATION, LYRICIST, LYRICS, MEDIA, METADATA_BLOCK_PICTURE, MIXER, MOOD, MOOD_ACOUSTIC, MOOD_AGGRESSIVE, MOOD_AROUSAL, MOOD_DANCEABILITY, MOOD_ELECTRONIC, MOOD_HAPPY, MOOD_INSTRUMENTAL, MOOD_PARTY, MOOD_RELAXED, MOOD_SAD, MOOD_VALENCE, MOVEMENT, MOVEMENT_NO, MOVEMENT_TOTAL, MUSICBRAINZ_ALBUMARTISTID, MUSICBRAINZ_ALBUMID, MUSICBRAINZ_ALBUMSTATUS, MUSICBRAINZ_ALBUMTYPE, MUSICBRAINZ_ARTISTID, MUSICBRAINZ_DISCID, MUSICBRAINZ_ORIGINAL_ALBUMID, MUSICBRAINZ_RELEASEGROUPID, MUSICBRAINZ_RELEASETRACKID, MUSICBRAINZ_TRACKID, MUSICBRAINZ_WORK, MUSICBRAINZ_WORKID, MUSICBRAINZ_WORK_COMPOSITION, MUSICBRAINZ_WORK_COMPOSITION_ID, MUSICBRAINZ_WORK_PART_LEVEL1, MUSICBRAINZ_WORK_PART_LEVEL1_ID, MUSICBRAINZ_WORK_PART_LEVEL1_TYPE, MUSICBRAINZ_WORK_PART_LEVEL2, MUSICBRAINZ_WORK_PART_LEVEL2_ID, MUSICBRAINZ_WORK_PART_LEVEL2_TYPE, MUSICBRAINZ_WORK_PART_LEVEL3, MUSICBRAINZ_WORK_PART_LEVEL3_ID, MUSICBRAINZ_WORK_PART_LEVEL3_TYPE, MUSICBRAINZ_WORK_PART_LEVEL4_ID, MUSICBRAINZ_WORK_PART_LEVEL4, MUSICBRAINZ_WORK_PART_LEVEL4_TYPE, MUSICBRAINZ_WORK_PART_LEVEL5, MUSICBRAINZ_WORK_PART_LEVEL5_ID, MUSICBRAINZ_WORK_PART_LEVEL5_TYPE, MUSICBRAINZ_WORK_PART_LEVEL6, MUSICBRAINZ_WORK_PART_LEVEL6_ID, MUSICBRAINZ_WORK_PART_LEVEL6_TYPE, MUSICIAN, MUSICIP_PUID, OCCASION, OPUS, ORCHESTRA, ORCHESTRA_SORT, ORGANIZATION, ORIGINAL_ALBUM, ORIGINAL_ARTIST, ORIGINAL_LYRICIST, ORIGINAL_YEAR, PART, PART_NUMBER, PART_TYPE, PERFORMER, PERFORMER_NAME, PERFORMER_NAME_SORT, PERIOD, PRODUCER, PRODUCTNUMBER, QUALITY, RANKING, RATING, RELEASECOUNTRY, REMIXER, SCRIPT, SINGLE_DISC_TRACK_NO, SOURCEMEDIA, SUBTITLE, TAGS, TEMPO, TIMBRE, TITLE, TITLE_MOVEMENT, TITLESORT, TONALITY, TRACKNUMBER, TRACKTOTAL, URL_DISCOGS_ARTIST_SITE, URL_DISCOGS_RELEASE_SITE, URL_LYRICS_SITE, URL_OFFICIAL_ARTIST_SITE, URL_OFFICIAL_RELEASE_SITE, URL_WIKIPEDIA_ARTIST_SITE, URL_WIKIPEDIA_RELEASE_SITE, VENDOR, VERSION, WORK, WORK_TYPE};
    }

    static {
        Tagger tagger = Tagger.PICARD;
        ACOUSTID_FINGERPRINT = new VorbisCommentFieldKey("ACOUSTID_FINGERPRINT", 0, "ACOUSTID_FINGERPRINT", EnumSet.of(tagger));
        ACOUSTID_ID = new VorbisCommentFieldKey("ACOUSTID_ID", 1, "ACOUSTID_ID", EnumSet.of(tagger));
        Tagger tagger2 = Tagger.XIPH;
        Tagger tagger3 = Tagger.JAIKOZ;
        ALBUM = new VorbisCommentFieldKey("ALBUM", 2, "ALBUM", EnumSet.of(tagger2, tagger, tagger3));
        ALBUMARTIST = new VorbisCommentFieldKey("ALBUMARTIST", 3, "ALBUMARTIST", EnumSet.of(tagger, tagger3));
        ALBUMARTISTSORT = new VorbisCommentFieldKey("ALBUMARTISTSORT", 4, "ALBUMARTISTSORT", EnumSet.of(tagger, tagger3));
        ALBUMARTISTS = new VorbisCommentFieldKey("ALBUMARTISTS", 5, FrameBodyTXXX.ALBUM_ARTISTS, EnumSet.of(tagger, tagger3));
        ALBUMARTISTSSORT = new VorbisCommentFieldKey("ALBUMARTISTSSORT", 6, FrameBodyTXXX.ALBUM_ARTISTS_SORT, EnumSet.of(tagger, tagger3));
        ALBUMARTIST_JRIVER = new VorbisCommentFieldKey("ALBUMARTIST_JRIVER", 7, FrameBodyTXXX.ALBUM_ARTIST, EnumSet.of(Tagger.JRIVER));
        ALBUMSORT = new VorbisCommentFieldKey("ALBUMSORT", 8, "ALBUMSORT", EnumSet.of(tagger, tagger3));
        Tagger tagger4 = Tagger.MEDIA_MONKEY;
        ALBUM_ARTIST = new VorbisCommentFieldKey("ALBUM_ARTIST", 9, "ALBUM_ARTIST", EnumSet.of(tagger4));
        ARRANGER = new VorbisCommentFieldKey("ARRANGER", 10, "ARRANGER", EnumSet.of(tagger));
        ARRANGER_SORT = new VorbisCommentFieldKey(FrameBodyTXXX.ARRANGER_SORT, 11, FrameBodyTXXX.ARRANGER_SORT, EnumSet.of(tagger3));
        ARTIST = new VorbisCommentFieldKey("ARTIST", 12, "ARTIST", EnumSet.of(tagger2, tagger, tagger3));
        ARTISTS = new VorbisCommentFieldKey(FrameBodyTXXX.ARTISTS, 13, FrameBodyTXXX.ARTISTS, EnumSet.of(tagger3));
        ARTISTSORT = new VorbisCommentFieldKey("ARTISTSORT", 14, "ARTISTSORT", EnumSet.of(tagger, tagger3));
        ARTISTS_SORT = new VorbisCommentFieldKey(FrameBodyTXXX.ARTISTS_SORT, 15, FrameBodyTXXX.ARTISTS_SORT, EnumSet.of(tagger3));
        ASIN = new VorbisCommentFieldKey(FrameBodyTXXX.AMAZON_ASIN, 16, FrameBodyTXXX.AMAZON_ASIN, EnumSet.of(tagger, tagger3));
        BARCODE = new VorbisCommentFieldKey(FrameBodyTXXX.BARCODE, 17, FrameBodyTXXX.BARCODE, EnumSet.of(tagger3));
        BPM = new VorbisCommentFieldKey("BPM", 18, "BPM", EnumSet.of(tagger, tagger3));
        CATALOGNUMBER = new VorbisCommentFieldKey(FrameBodyTXXX.CATALOG_NO, 19, FrameBodyTXXX.CATALOG_NO, EnumSet.of(tagger, tagger3));
        CHOIR = new VorbisCommentFieldKey(FrameBodyTXXX.CHOIR, 20, FrameBodyTXXX.CHOIR, EnumSet.of(tagger3));
        CHOIR_SORT = new VorbisCommentFieldKey(FrameBodyTXXX.CHOIR_SORT, 21, FrameBodyTXXX.CHOIR_SORT, EnumSet.of(tagger3));
        CLASSICAL_CATALOG = new VorbisCommentFieldKey(FrameBodyTXXX.CLASSICAL_CATALOG, 22, FrameBodyTXXX.CLASSICAL_CATALOG, EnumSet.of(tagger3));
        CLASSICAL_NICKNAME = new VorbisCommentFieldKey(FrameBodyTXXX.CLASSICAL_NICKNAME, 23, FrameBodyTXXX.CLASSICAL_NICKNAME, EnumSet.of(tagger3));
        COMMENT = new VorbisCommentFieldKey("COMMENT", 24, "COMMENT", EnumSet.of(tagger));
        COMPILATION = new VorbisCommentFieldKey("COMPILATION", 25, "COMPILATION", EnumSet.of(tagger, tagger3));
        COMPOSER = new VorbisCommentFieldKey("COMPOSER", 26, "COMPOSER", EnumSet.of(tagger, tagger3));
        COMPOSERSORT = new VorbisCommentFieldKey("COMPOSERSORT", 27, "COMPOSERSORT", EnumSet.of(tagger3));
        CONDUCTOR = new VorbisCommentFieldKey("CONDUCTOR", 28, "CONDUCTOR", EnumSet.of(tagger, tagger3));
        CONDUCTOR_SORT = new VorbisCommentFieldKey(FrameBodyTXXX.CONDUCTOR_SORT, 29, FrameBodyTXXX.CONDUCTOR_SORT, EnumSet.of(tagger3));
        CONTACT = new VorbisCommentFieldKey("CONTACT", 30, "CONTACT", EnumSet.of(tagger2));
        COPYRIGHT = new VorbisCommentFieldKey(ContentDescription.KEY_COPYRIGHT, 31, ContentDescription.KEY_COPYRIGHT, EnumSet.of(tagger2, tagger, tagger3));
        COUNTRY = new VorbisCommentFieldKey("COUNTRY", 32, "COUNTRY", EnumSet.of(tagger));
        COVERART = new VorbisCommentFieldKey("COVERART", 33, "COVERART", EnumSet.of(tagger3));
        COVERARTMIME = new VorbisCommentFieldKey("COVERARTMIME", 34, "COVERARTMIME", EnumSet.of(tagger3));
        CUSTOM1 = new VorbisCommentFieldKey("CUSTOM1", 35, "CUSTOM1", EnumSet.of(tagger4));
        CUSTOM2 = new VorbisCommentFieldKey("CUSTOM2", 36, "CUSTOM2", EnumSet.of(tagger4));
        CUSTOM3 = new VorbisCommentFieldKey("CUSTOM3", 37, "CUSTOM3", EnumSet.of(tagger4));
        CUSTOM4 = new VorbisCommentFieldKey("CUSTOM4", 38, "CUSTOM4", EnumSet.of(tagger4));
        CUSTOM5 = new VorbisCommentFieldKey("CUSTOM5", 39, "CUSTOM5", EnumSet.of(tagger4));
        DATE = new VorbisCommentFieldKey("DATE", 40, "DATE", EnumSet.of(tagger2, tagger, tagger3));
        DESCRIPTION = new VorbisCommentFieldKey(ContentDescription.KEY_DESCRIPTION, 41, ContentDescription.KEY_DESCRIPTION, EnumSet.of(tagger2));
        DISCNUMBER = new VorbisCommentFieldKey("DISCNUMBER", 42, "DISCNUMBER", EnumSet.of(tagger, tagger3));
        DISCSUBTITLE = new VorbisCommentFieldKey("DISCSUBTITLE", 43, "DISCSUBTITLE", EnumSet.of(tagger, tagger3));
        DISCTOTAL = new VorbisCommentFieldKey("DISCTOTAL", 44, "DISCTOTAL", EnumSet.of(tagger2, tagger));
        DJMIXER = new VorbisCommentFieldKey("DJMIXER", 45, "DJMIXER", EnumSet.of(tagger));
        ENCODEDBY = new VorbisCommentFieldKey("ENCODEDBY", 46, "ENCODEDBY", EnumSet.of(tagger));
        ENCODER = new VorbisCommentFieldKey("ENCODER", 47, "ENCODER");
        ENGINEER = new VorbisCommentFieldKey("ENGINEER", 48, "ENGINEER", EnumSet.of(tagger));
        ENSEMBLE = new VorbisCommentFieldKey(FrameBodyTXXX.ENSEMBLE, 49, FrameBodyTXXX.ENSEMBLE, EnumSet.of(tagger4, tagger3));
        ENSEMBLE_SORT = new VorbisCommentFieldKey(FrameBodyTXXX.ENSEMBLE_SORT, 50, FrameBodyTXXX.ENSEMBLE_SORT, EnumSet.of(tagger3));
        FBPM = new VorbisCommentFieldKey(FrameBodyTXXX.FBPM, 51, FrameBodyTXXX.FBPM, EnumSet.of(Tagger.BEATUNES));
        GENRE = new VorbisCommentFieldKey("GENRE", 52, "GENRE", EnumSet.of(tagger2, tagger, tagger3));
        GROUP = new VorbisCommentFieldKey(FrameBodyTXXX.GROUP, 53, FrameBodyTXXX.GROUP, EnumSet.of(tagger3));
        GROUPING = new VorbisCommentFieldKey("GROUPING", 54, "GROUPING", EnumSet.of(tagger, tagger3));
        INSTRUMENT = new VorbisCommentFieldKey(FrameBodyTXXX.INSTRUMENT, 55, FrameBodyTXXX.INSTRUMENT, EnumSet.of(tagger3));
        INVOLVED_PERSON = new VorbisCommentFieldKey("INVOLVED_PERSON", 56, "INVOLVED_PERSON", EnumSet.of(tagger3));
        ISRC = new VorbisCommentFieldKey("ISRC", 57, "ISRC", EnumSet.of(tagger2, tagger, tagger3));
        IS_CLASSICAL = new VorbisCommentFieldKey(FrameBodyTXXX.IS_CLASSICAL, 58, FrameBodyTXXX.IS_CLASSICAL, EnumSet.of(tagger, tagger3));
        IS_SOUNDTRACK = new VorbisCommentFieldKey(FrameBodyTXXX.IS_SOUNDTRACK, 59, FrameBodyTXXX.IS_SOUNDTRACK, EnumSet.of(tagger, tagger3));
        KEY = new VorbisCommentFieldKey("KEY", 60, "KEY");
        LABEL = new VorbisCommentFieldKey("LABEL", 61, "LABEL", EnumSet.of(tagger, tagger3));
        LANGUAGE = new VorbisCommentFieldKey("LANGUAGE", 62, "LANGUAGE");
        LICENSE = new VorbisCommentFieldKey("LICENSE", 63, "LICENSE", EnumSet.of(tagger2));
        LOCATION = new VorbisCommentFieldKey("LOCATION", 64, "LOCATION", EnumSet.of(tagger2));
        LYRICIST = new VorbisCommentFieldKey("LYRICIST", 65, "LYRICIST", EnumSet.of(tagger, tagger3));
        LYRICS = new VorbisCommentFieldKey("LYRICS", 66, "LYRICS", EnumSet.of(tagger, tagger3));
        MEDIA = new VorbisCommentFieldKey("MEDIA", 67, "MEDIA", EnumSet.of(tagger, tagger3));
        METADATA_BLOCK_PICTURE = new VorbisCommentFieldKey("METADATA_BLOCK_PICTURE", 68, "METADATA_BLOCK_PICTURE", EnumSet.of(tagger2));
        MIXER = new VorbisCommentFieldKey("MIXER", 69, "MIXER", EnumSet.of(tagger));
        MOOD = new VorbisCommentFieldKey(FrameBodyTXXX.MOOD, 70, FrameBodyTXXX.MOOD, EnumSet.of(tagger, tagger3));
        MOOD_ACOUSTIC = new VorbisCommentFieldKey(FrameBodyTXXX.MOOD_ACOUSTIC, 71, FrameBodyTXXX.MOOD_ACOUSTIC, EnumSet.of(tagger3));
        MOOD_AGGRESSIVE = new VorbisCommentFieldKey(FrameBodyTXXX.MOOD_AGGRESSIVE, 72, FrameBodyTXXX.MOOD_AGGRESSIVE, EnumSet.of(tagger3));
        MOOD_AROUSAL = new VorbisCommentFieldKey(FrameBodyTXXX.MOOD_AROUSAL, 73, FrameBodyTXXX.MOOD_AROUSAL, EnumSet.of(tagger3));
        MOOD_DANCEABILITY = new VorbisCommentFieldKey(FrameBodyTXXX.MOOD_DANCEABILITY, 74, FrameBodyTXXX.MOOD_DANCEABILITY, EnumSet.of(tagger3));
        MOOD_ELECTRONIC = new VorbisCommentFieldKey(FrameBodyTXXX.MOOD_ELECTRONIC, 75, FrameBodyTXXX.MOOD_ELECTRONIC, EnumSet.of(tagger3));
        MOOD_HAPPY = new VorbisCommentFieldKey(FrameBodyTXXX.MOOD_HAPPY, 76, FrameBodyTXXX.MOOD_HAPPY, EnumSet.of(tagger3));
        MOOD_INSTRUMENTAL = new VorbisCommentFieldKey(FrameBodyTXXX.MOOD_INSTRUMENTAL, 77, FrameBodyTXXX.MOOD_INSTRUMENTAL, EnumSet.of(tagger3));
        MOOD_PARTY = new VorbisCommentFieldKey(FrameBodyTXXX.MOOD_PARTY, 78, FrameBodyTXXX.MOOD_PARTY, EnumSet.of(tagger3));
        MOOD_RELAXED = new VorbisCommentFieldKey(FrameBodyTXXX.MOOD_RELAXED, 79, FrameBodyTXXX.MOOD_RELAXED, EnumSet.of(tagger3));
        MOOD_SAD = new VorbisCommentFieldKey(FrameBodyTXXX.MOOD_SAD, 80, FrameBodyTXXX.MOOD_SAD, EnumSet.of(tagger3));
        MOOD_VALENCE = new VorbisCommentFieldKey(FrameBodyTXXX.MOOD_VALENCE, 81, FrameBodyTXXX.MOOD_VALENCE, EnumSet.of(tagger3));
        MOVEMENT = new VorbisCommentFieldKey("MOVEMENT", 82, "MOVEMENT", EnumSet.of(tagger3));
        MOVEMENT_NO = new VorbisCommentFieldKey("MOVEMENT_NO", 83, "MOVEMENT_NO", EnumSet.of(tagger3));
        MOVEMENT_TOTAL = new VorbisCommentFieldKey("MOVEMENT_TOTAL", 84, "MOVEMENT_TOTAL", EnumSet.of(tagger3));
        MUSICBRAINZ_ALBUMARTISTID = new VorbisCommentFieldKey("MUSICBRAINZ_ALBUMARTISTID", 85, "MUSICBRAINZ_ALBUMARTISTID", EnumSet.of(tagger, tagger3));
        MUSICBRAINZ_ALBUMID = new VorbisCommentFieldKey("MUSICBRAINZ_ALBUMID", 86, "MUSICBRAINZ_ALBUMID", EnumSet.of(tagger, tagger3));
        MUSICBRAINZ_ALBUMSTATUS = new VorbisCommentFieldKey("MUSICBRAINZ_ALBUMSTATUS", 87, "MUSICBRAINZ_ALBUMSTATUS", EnumSet.of(tagger, tagger3));
        MUSICBRAINZ_ALBUMTYPE = new VorbisCommentFieldKey("MUSICBRAINZ_ALBUMTYPE", 88, "MUSICBRAINZ_ALBUMTYPE", EnumSet.of(tagger, tagger3));
        MUSICBRAINZ_ARTISTID = new VorbisCommentFieldKey("MUSICBRAINZ_ARTISTID", 89, "MUSICBRAINZ_ARTISTID", EnumSet.of(tagger, tagger3));
        MUSICBRAINZ_DISCID = new VorbisCommentFieldKey("MUSICBRAINZ_DISCID", 90, "MUSICBRAINZ_DISCID", EnumSet.of(tagger, tagger3));
        MUSICBRAINZ_ORIGINAL_ALBUMID = new VorbisCommentFieldKey("MUSICBRAINZ_ORIGINAL_ALBUMID", 91, "MUSICBRAINZ_ORIGINALALBUMID", EnumSet.of(tagger3));
        MUSICBRAINZ_RELEASEGROUPID = new VorbisCommentFieldKey("MUSICBRAINZ_RELEASEGROUPID", 92, "MUSICBRAINZ_RELEASEGROUPID", EnumSet.of(tagger, tagger3));
        MUSICBRAINZ_RELEASETRACKID = new VorbisCommentFieldKey("MUSICBRAINZ_RELEASETRACKID", 93, "MUSICBRAINZ_RELEASETRACKID", EnumSet.of(tagger3));
        MUSICBRAINZ_TRACKID = new VorbisCommentFieldKey("MUSICBRAINZ_TRACKID", 94, "MUSICBRAINZ_TRACKID", EnumSet.of(tagger, tagger3));
        MUSICBRAINZ_WORK = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK, 95, FrameBodyTXXX.MUSICBRAINZ_WORK, EnumSet.of(tagger3));
        MUSICBRAINZ_WORKID = new VorbisCommentFieldKey("MUSICBRAINZ_WORKID", 96, "MUSICBRAINZ_WORKID", EnumSet.of(tagger, tagger3));
        MUSICBRAINZ_WORK_COMPOSITION = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION, 97, FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_COMPOSITION_ID = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION_ID, 98, FrameBodyTXXX.MUSICBRAINZ_WORK_COMPOSITION_ID, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_PART_LEVEL1 = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1, 99, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_PART_LEVEL1_ID = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1_ID, 100, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1_ID, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_PART_LEVEL1_TYPE = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1_TYPE, 101, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL1_TYPE, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_PART_LEVEL2 = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2, 102, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_PART_LEVEL2_ID = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2_ID, 103, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2_ID, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_PART_LEVEL2_TYPE = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2_TYPE, 104, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL2_TYPE, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_PART_LEVEL3 = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3, 105, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_PART_LEVEL3_ID = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3_ID, 106, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3_ID, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_PART_LEVEL3_TYPE = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3_TYPE, 107, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL3_TYPE, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_PART_LEVEL4_ID = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4_ID, 108, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4_ID, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_PART_LEVEL4 = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4, 109, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_PART_LEVEL4_TYPE = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4_TYPE, 110, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL4_TYPE, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_PART_LEVEL5 = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5, 111, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_PART_LEVEL5_ID = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5_ID, 112, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5_ID, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_PART_LEVEL5_TYPE = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5_TYPE, 113, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL5_TYPE, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_PART_LEVEL6 = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6, 114, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_PART_LEVEL6_ID = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6_ID, 115, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6_ID, EnumSet.of(tagger3));
        MUSICBRAINZ_WORK_PART_LEVEL6_TYPE = new VorbisCommentFieldKey(FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6_TYPE, 116, FrameBodyTXXX.MUSICBRAINZ_WORK_PART_LEVEL6_TYPE, EnumSet.of(tagger3));
        MUSICIAN = new VorbisCommentFieldKey("MUSICIAN", 117, "MUSICIAN", EnumSet.of(tagger3));
        MUSICIP_PUID = new VorbisCommentFieldKey("MUSICIP_PUID", 118, "MUSICIP_PUID", EnumSet.of(tagger, tagger3));
        OCCASION = new VorbisCommentFieldKey("OCCASION", 119, "OCCASION", EnumSet.of(tagger4));
        OPUS = new VorbisCommentFieldKey("OPUS", 120, "OPUS", EnumSet.of(tagger3));
        ORCHESTRA = new VorbisCommentFieldKey(FrameBodyTXXX.ORCHESTRA, 121, FrameBodyTXXX.ORCHESTRA, EnumSet.of(tagger3));
        ORCHESTRA_SORT = new VorbisCommentFieldKey(FrameBodyTXXX.ORCHESTRA_SORT, 122, FrameBodyTXXX.ORCHESTRA_SORT, EnumSet.of(tagger3));
        ORGANIZATION = new VorbisCommentFieldKey("ORGANIZATION", 123, "ORGANIZATION", EnumSet.of(tagger2));
        ORIGINAL_ALBUM = new VorbisCommentFieldKey("ORIGINAL_ALBUM", 124, "ORIGINAL ALBUM", EnumSet.of(tagger3, tagger4));
        ORIGINAL_ARTIST = new VorbisCommentFieldKey("ORIGINAL_ARTIST", 125, "ORIGINAL ARTIST", EnumSet.of(tagger3, tagger4));
        ORIGINAL_LYRICIST = new VorbisCommentFieldKey("ORIGINAL_LYRICIST", 126, "ORIGINAL LYRICIST", EnumSet.of(tagger4));
        ORIGINAL_YEAR = new VorbisCommentFieldKey("ORIGINAL_YEAR", 127, "ORIGINAL YEAR", EnumSet.of(tagger3, tagger4));
        PART = new VorbisCommentFieldKey(FrameBodyTXXX.PART, 128, FrameBodyTXXX.PART, EnumSet.of(tagger3));
        PART_NUMBER = new VorbisCommentFieldKey("PART_NUMBER", 129, FrameBodyTXXX.PART_NUMBER, EnumSet.of(tagger2));
        PART_TYPE = new VorbisCommentFieldKey(FrameBodyTXXX.PART_TYPE, 130, FrameBodyTXXX.PART_TYPE, EnumSet.of(tagger3));
        PERFORMER = new VorbisCommentFieldKey("PERFORMER", 131, "PERFORMER", EnumSet.of(tagger2, tagger));
        PERFORMER_NAME = new VorbisCommentFieldKey(FrameBodyTXXX.PERFORMER_NAME, 132, FrameBodyTXXX.PERFORMER_NAME, EnumSet.of(tagger3));
        PERFORMER_NAME_SORT = new VorbisCommentFieldKey(FrameBodyTXXX.PERFORMER_NAME_SORT, 133, FrameBodyTXXX.PERFORMER_NAME_SORT, EnumSet.of(tagger3));
        PERIOD = new VorbisCommentFieldKey(FrameBodyTXXX.PERIOD, 134, FrameBodyTXXX.PERIOD, EnumSet.of(Tagger.MUSICHI));
        PRODUCER = new VorbisCommentFieldKey("PRODUCER", 135, "PRODUCER", EnumSet.of(tagger));
        PRODUCTNUMBER = new VorbisCommentFieldKey("PRODUCTNUMBER", 136, "PRODUCTNUMBER", EnumSet.of(tagger2));
        QUALITY = new VorbisCommentFieldKey("QUALITY", 137, "QUALITY", EnumSet.of(tagger4));
        RANKING = new VorbisCommentFieldKey(FrameBodyTXXX.RANKING, 138, FrameBodyTXXX.RANKING, EnumSet.of(tagger3));
        RATING = new VorbisCommentFieldKey(ContentDescription.KEY_RATING, 139, ContentDescription.KEY_RATING, EnumSet.of(tagger4));
        RELEASECOUNTRY = new VorbisCommentFieldKey("RELEASECOUNTRY", 140, "RELEASECOUNTRY", EnumSet.of(tagger, tagger3));
        REMIXER = new VorbisCommentFieldKey("REMIXER", 141, "REMIXER", EnumSet.of(tagger, tagger3));
        SCRIPT = new VorbisCommentFieldKey("SCRIPT", 142, "SCRIPT", EnumSet.of(tagger3));
        SINGLE_DISC_TRACK_NO = new VorbisCommentFieldKey(FrameBodyTXXX.SINGLE_DISC_TRACK_NO, 143, FrameBodyTXXX.SINGLE_DISC_TRACK_NO, EnumSet.of(tagger3));
        SOURCEMEDIA = new VorbisCommentFieldKey("SOURCEMEDIA", 144, "SOURCEMEDIA", EnumSet.of(tagger2));
        SUBTITLE = new VorbisCommentFieldKey("SUBTITLE", 145, "SUBTITLE", EnumSet.of(tagger, tagger3));
        TAGS = new VorbisCommentFieldKey(FrameBodyTXXX.TAGS, 146, FrameBodyTXXX.TAGS, EnumSet.of(tagger3));
        TEMPO = new VorbisCommentFieldKey("TEMPO", 147, "TEMPO", EnumSet.of(tagger4));
        TIMBRE = new VorbisCommentFieldKey("TIMBRE", 148, FrameBodyTXXX.TIMBRE, EnumSet.of(tagger3));
        TITLE = new VorbisCommentFieldKey(ContentDescription.KEY_TITLE, 149, ContentDescription.KEY_TITLE, EnumSet.of(tagger2, tagger, tagger3));
        TITLE_MOVEMENT = new VorbisCommentFieldKey(FrameBodyTXXX.TITLE_MOVEMENT, 150, FrameBodyTXXX.TITLE_MOVEMENT, EnumSet.of(tagger3));
        TITLESORT = new VorbisCommentFieldKey("TITLESORT", 151, "TITLESORT", EnumSet.of(tagger, tagger3));
        TONALITY = new VorbisCommentFieldKey(FrameBodyTXXX.TONALITY, 152, FrameBodyTXXX.TONALITY, EnumSet.of(tagger3));
        TRACKNUMBER = new VorbisCommentFieldKey("TRACKNUMBER", 153, "TRACKNUMBER", EnumSet.of(tagger2, tagger, tagger3));
        TRACKTOTAL = new VorbisCommentFieldKey("TRACKTOTAL", 154, "TRACKTOTAL", EnumSet.of(tagger2, tagger));
        URL_DISCOGS_ARTIST_SITE = new VorbisCommentFieldKey("URL_DISCOGS_ARTIST_SITE", 155, "URL_DISCOGS_ARTIST_SITE", EnumSet.of(tagger3));
        URL_DISCOGS_RELEASE_SITE = new VorbisCommentFieldKey("URL_DISCOGS_RELEASE_SITE", 156, "URL_DISCOGS_RELEASE_SITE", EnumSet.of(tagger3));
        URL_LYRICS_SITE = new VorbisCommentFieldKey("URL_LYRICS_SITE", 157, "URL_LYRICS_SITE", EnumSet.of(tagger3));
        URL_OFFICIAL_ARTIST_SITE = new VorbisCommentFieldKey("URL_OFFICIAL_ARTIST_SITE", 158, "URL_OFFICIAL_ARTIST_SITE", EnumSet.of(tagger3));
        URL_OFFICIAL_RELEASE_SITE = new VorbisCommentFieldKey("URL_OFFICIAL_RELEASE_SITE", 159, "URL_OFFICIAL_RELEASE_SITE", EnumSet.of(tagger3));
        URL_WIKIPEDIA_ARTIST_SITE = new VorbisCommentFieldKey("URL_WIKIPEDIA_ARTIST_SITE", 160, "URL_WIKIPEDIA_ARTIST_SITE", EnumSet.of(tagger3));
        URL_WIKIPEDIA_RELEASE_SITE = new VorbisCommentFieldKey("URL_WIKIPEDIA_RELEASE_SITE", 161, "URL_WIKIPEDIA_RELEASE_SITE", EnumSet.of(tagger3));
        VENDOR = new VorbisCommentFieldKey("VENDOR", 162, "VENDOR");
        VERSION = new VorbisCommentFieldKey("VERSION", 163, "VERSION", EnumSet.of(tagger2));
        WORK = new VorbisCommentFieldKey(FrameBodyTXXX.WORK, 164, FrameBodyTXXX.WORK, EnumSet.of(tagger3));
        WORK_TYPE = new VorbisCommentFieldKey(FrameBodyTXXX.WORK_TYPE, 165, FrameBodyTXXX.WORK_TYPE, EnumSet.of(tagger3));
        $VALUES = $values();
    }

    private VorbisCommentFieldKey(String str, int i, String str2) {
        super(str, i);
        this.fieldName = str2;
    }

    public static VorbisCommentFieldKey valueOf(String str) {
        return (VorbisCommentFieldKey) Enum.valueOf(VorbisCommentFieldKey.class, str);
    }

    public static VorbisCommentFieldKey[] values() {
        return (VorbisCommentFieldKey[]) $VALUES.clone();
    }

    public String getFieldName() {
        return this.fieldName;
    }

    public EnumSet<Tagger> getTaggers() {
        return this.taggers;
    }

    private VorbisCommentFieldKey(String str, int i, String str2, EnumSet enumSet) {
        super(str, i);
        this.fieldName = str2;
        this.taggers = enumSet;
    }
}
