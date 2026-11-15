package com.transsion.playercommon.vishaapis.smartedit;

public class AudioSmartEditApiConfig {
    public static final String ACOUSTID_API_KEY = "fVT58izaST";
    public static final String ACOUSTID_HOST = "https://api.acoustid.org";
    public static final String COVER_ART_ARCHIVE_HOST = "https://coverartarchive.org";
    public static final String COVER_LAST_FM_HOST = "http://ws.audioscrobbler.com";
    public static final String FORMAT_JSON = "json";
    public static final String LAST_FM_API_KEY = "b937ec4f1c3238e183d0ae8b1a020c3d";
    public static final String MUSICBRAINZ_HOST = "https://musicbrainz.org";

    public static final class AcoustIDAPI {
        public static final String API_GET_MBID = "/v2/lookup";
    }

    public static final class CoverArtArchiveAPI {
        public static final String API_GET_RELEASE_COVER = "/release/{mbid}";
    }

    public static final class CoverLastFmAPI {
        public static final String API_GET_RELEASE_COVER = "/release/{mbid}";
    }

    public static final class MusicBrainzAPI {
        public static final String API_GET_RECORDING_DETAILS = "/ws/2/recording/{mbid}";
    }
}
