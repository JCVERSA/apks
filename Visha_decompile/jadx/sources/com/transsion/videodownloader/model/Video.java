package com.transsion.videodownloader.model;

public class Video {

    public static class Mime {
        public static String MIME_TYPE_3GP = "video/3gp";
        public static String MIME_TYPE_M3U8_1 = "application/vnd.apple.mpegurl";
        public static String MIME_TYPE_M3U8_2 = "application/x-mpegurl";
        public static String MIME_TYPE_M3U8_3 = "vnd.apple.mpegurl";
        public static String MIME_TYPE_M3U8_4 = "applicationnd.apple.mpegurl";
        public static String MIME_TYPE_MKV = "video/x-matroska";
        public static String MIME_TYPE_MP4 = "video/mp4";
        public static String MIME_TYPE_QUICKTIME = "video/quicktime";
        public static String MIME_TYPE_WEBM = "video/webm";
    }

    public static class SUFFIX {
        public static final String SUFFIX_3GP = ".3gp";
        public static final String SUFFIX_M3U8 = ".m3u8";
        public static final String SUFFIX_MKV = ".mkv";
        public static final String SUFFIX_MOV = ".mov";
        public static final String SUFFIX_MP4 = ".mp4";
        public static final String SUFFIX_WEBM = ".webm";
    }

    public static class Type {
        public static final int DEFAULT = 0;
        public static final int GP3_TYPE = 6;
        public static final int HLS_LIVE_TYPE = 2;
        public static final int HLS_TYPE = 1;
        public static final int MKV_TYPE = 7;
        public static final int MP4_TYPE = 3;
        public static final int QUICKTIME_TYPE = 5;
        public static final int WEBM_TYPE = 4;
    }

    public static class TypeInfo {
        public static String GP3 = "3gp";
        public static String M3U8 = "m3u8";
        public static String MKV = "mkv";
        public static String MOV = "mov";
        public static String MP4 = "mp4";
        public static final String OTHER = "other";
        public static String WEBM = "webm";
    }
}
