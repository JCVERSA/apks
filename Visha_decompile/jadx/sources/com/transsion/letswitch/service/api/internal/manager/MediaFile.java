package com.transsion.letswitch.service.api.internal.manager;

import android.util.SparseArray;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.rtsp.RtpPayloadFormat;
import androidx.webkit.internal.AssetHelper;
import com.transsion.audiotagger.tag.id3.ID3v22Frames;
import com.transsion.audiotagger.tag.id3.valuepair.ImageFormats;
import java.util.HashMap;
import java.util.Locale;

public class MediaFile {
    public static final String AUDIO_MIDI = "audio/midi";
    public static final int FILE_TYPE_3GA = 193;
    public static final int FILE_TYPE_3GPP = 303;
    public static final int FILE_TYPE_3GPP2 = 304;
    public static final int FILE_TYPE_3GPP3 = 199;
    public static final int FILE_TYPE_AAC = 108;
    public static final int FILE_TYPE_AMR = 104;
    public static final int FILE_TYPE_APE = 111;
    public static final int FILE_TYPE_ARW = 804;
    public static final int FILE_TYPE_ASF = 306;
    public static final int FILE_TYPE_AVI = 309;
    public static final int FILE_TYPE_AWB = 105;
    public static final int FILE_TYPE_BMP = 404;
    public static final int FILE_TYPE_CAF = 112;
    public static final int FILE_TYPE_CR2 = 801;
    public static final int FILE_TYPE_DNG = 800;
    public static final int FILE_TYPE_FL = 601;
    public static final int FILE_TYPE_FLA = 196;
    public static final int FILE_TYPE_FLAC = 110;
    public static final int FILE_TYPE_FLV = 398;
    public static final int FILE_TYPE_GIF = 402;
    public static final int FILE_TYPE_HEIF = 407;
    public static final int FILE_TYPE_HTML = 701;
    public static final int FILE_TYPE_HTTPLIVE = 504;
    public static final int FILE_TYPE_IMY = 203;
    public static final int FILE_TYPE_JPEG = 401;
    public static final int FILE_TYPE_M3U = 501;
    public static final int FILE_TYPE_M4A = 102;
    public static final int FILE_TYPE_M4V = 302;
    public static final int FILE_TYPE_MID = 201;
    public static final int FILE_TYPE_MKA = 109;
    public static final int FILE_TYPE_MKV = 307;
    public static final int FILE_TYPE_MP2PS = 393;
    public static final int FILE_TYPE_MP2TS = 308;
    public static final int FILE_TYPE_MP3 = 101;
    public static final int FILE_TYPE_MP4 = 301;
    public static final int FILE_TYPE_MPO = 499;
    public static final int FILE_TYPE_MS_EXCEL = 705;
    public static final int FILE_TYPE_MS_POWERPOINT = 706;
    public static final int FILE_TYPE_MS_WORD = 704;
    public static final int FILE_TYPE_NEF = 802;
    public static final int FILE_TYPE_NRW = 803;
    public static final int FILE_TYPE_OGG = 107;
    public static final int FILE_TYPE_OGM = 394;
    public static final int FILE_TYPE_ORF = 806;
    public static final int FILE_TYPE_PDF = 702;
    public static final int FILE_TYPE_PEF = 808;
    public static final int FILE_TYPE_PLS = 502;
    public static final int FILE_TYPE_PNG = 403;
    public static final int FILE_TYPE_QT = 200;
    public static final int FILE_TYPE_QUICKTIME_AUDIO = 194;
    public static final int FILE_TYPE_QUICKTIME_VIDEO = 397;
    public static final int FILE_TYPE_RA = 198;
    public static final int FILE_TYPE_RAF = 807;
    public static final int FILE_TYPE_RM = 399;
    public static final int FILE_TYPE_RMVB = 396;
    public static final int FILE_TYPE_RV = 395;
    public static final int FILE_TYPE_RW2 = 805;
    public static final int FILE_TYPE_SMF = 202;
    public static final int FILE_TYPE_SRW = 809;
    public static final int FILE_TYPE_TEXT = 700;
    public static final int FILE_TYPE_WAV = 103;
    public static final int FILE_TYPE_WBMP = 405;
    public static final int FILE_TYPE_WEBM = 310;
    public static final int FILE_TYPE_WEBP = 406;
    public static final int FILE_TYPE_WMA = 106;
    public static final int FILE_TYPE_WMV = 305;
    public static final int FILE_TYPE_WPL = 503;
    public static final int FILE_TYPE_XML = 703;
    public static final int FILE_TYPE_ZIP = 707;
    private static final int FIRST_AUDIO_FILE_TYPE = 101;
    private static final int FIRST_DRM_FILE_TYPE = 601;
    private static final int FIRST_IMAGE_FILE_TYPE = 401;
    private static final int FIRST_MIDI_FILE_TYPE = 201;
    private static final int FIRST_PLAYLIST_FILE_TYPE = 501;
    private static final int FIRST_RAW_IMAGE_FILE_TYPE = 800;
    private static final int FIRST_VIDEO_FILE_TYPE = 301;
    private static final int FIRST_VIDEO_FILE_TYPE2 = 200;
    private static final int LAST_AUDIO_FILE_TYPE = 199;
    private static final int LAST_DRM_FILE_TYPE = 601;
    private static final int LAST_IMAGE_FILE_TYPE = 499;
    private static final int LAST_MIDI_FILE_TYPE = 203;
    private static final int LAST_PLAYLIST_FILE_TYPE = 504;
    private static final int LAST_RAW_IMAGE_FILE_TYPE = 809;
    private static final int LAST_VIDEO_FILE_TYPE = 399;
    private static final int LAST_VIDEO_FILE_TYPE2 = 200;
    private static final HashMap<String, MediaFileType> sFileTypeMap = new HashMap<>();
    private static final HashMap<String, Integer> sMimeTypeMap = new HashMap<>();
    private static final HashMap<String, Integer> sFileTypeToFormatMap = new HashMap<>();
    private static final HashMap<String, Integer> sMimeTypeToFormatMap = new HashMap<>();
    private static final SparseArray<String> sFormatToMimeTypeMap = new SparseArray<>();

    public static class MediaFileType {
        public final int fileType;
        public final String mimeType;

        public MediaFileType(int i, String str) {
            this.fileType = i;
            this.mimeType = str;
        }
    }

    static {
        addFileType("MP3", 101, "audio/mpeg", 12297, true);
        addFileType("MPGA", 101, "audio/mpeg", 12297, false);
        addFileType("M4A", 102, MimeTypes.AUDIO_MP4, 12299, false);
        addFileType("WAV", 103, "audio/x-wav", 12296, true);
        addFileType(RtpPayloadFormat.RTP_MEDIA_AMR, 104, MimeTypes.AUDIO_AMR);
        addFileType("AWB", 105, "audio/amr-wb");
        addFileType("OGG", 107, MimeTypes.AUDIO_OGG, 47362, false);
        addFileType("OGG", 107, "application/ogg", 47362, true);
        addFileType("OGA", 107, "application/ogg", 47362, false);
        addFileType("AAC", 108, "audio/aac", 47363, true);
        addFileType("AAC", 108, "audio/aac-adts", 47363, false);
        addFileType("MKA", 109, MimeTypes.AUDIO_MATROSKA);
        addFileType("MID", 201, "audio/midi");
        addFileType("MIDI", 201, "audio/midi");
        addFileType("XMF", 201, "audio/midi");
        addFileType("RTTTL", 201, "audio/midi");
        addFileType("SMF", 202, "audio/sp-midi");
        addFileType("IMY", 203, "audio/imelody");
        addFileType("RTX", 201, "audio/midi");
        addFileType("OTA", 201, "audio/midi");
        addFileType("MXMF", 201, "audio/midi");
        addFileType("MPEG", 301, MimeTypes.VIDEO_MPEG, 12299, true);
        addFileType("MPG", 301, MimeTypes.VIDEO_MPEG, 12299, false);
        addFileType("MP4", 301, MimeTypes.VIDEO_MP4, 12299, false);
        addFileType("M4V", 302, MimeTypes.VIDEO_MP4, 12299, false);
        addFileType("MOV", 200, "video/quicktime", 12299, false);
        addFileType("3GP", 303, "video/3gpp", 47492, true);
        addFileType("3GPP", 303, "video/3gpp", 47492, false);
        addFileType("3G2", 304, "video/3gpp2", 47492, false);
        addFileType("3GPP2", 304, "video/3gpp2", 47492, false);
        addFileType("MKV", 307, MimeTypes.VIDEO_MATROSKA);
        addFileType("WEBM", 310, MimeTypes.VIDEO_WEBM);
        addFileType("TS", 308, "video/mp2ts");
        addFileType("AVI", 309, "video/avi");
        addFileType(ImageFormats.V22_JPG_FORMAT, 401, "image/jpeg", 14337, true);
        addFileType("JPEG", 401, "image/jpeg", 14337, false);
        addFileType(ImageFormats.V22_GIF_FORMAT, 402, ImageFormats.MIME_TYPE_GIF, 14343, true);
        addFileType(ImageFormats.V22_PNG_FORMAT, 403, "image/png", 14347, true);
        addFileType(ImageFormats.V22_BMP_FORMAT, 404, "image/x-ms-bmp", 14340, true);
        addFileType("WBMP", 405, "image/vnd.wap.wbmp", 14336, false);
        addFileType("WEBP", 406, MimeTypes.IMAGE_WEBP, 14336, false);
        addFileType("DNG", 800, "image/x-adobe-dng", 14353, true);
        addFileType("CR2", 801, "image/x-canon-cr2", 14349, false);
        addFileType("NEF", 802, "image/x-nikon-nef", 14338, false);
        addFileType("NRW", 803, "image/x-nikon-nrw", 14349, false);
        addFileType("ARW", FILE_TYPE_ARW, "image/x-sony-arw", 14349, false);
        addFileType("RW2", FILE_TYPE_RW2, "image/x-panasonic-rw2", 14349, false);
        addFileType("ORF", FILE_TYPE_ORF, "image/x-olympus-orf", 14349, false);
        addFileType("RAF", FILE_TYPE_RAF, "image/x-fuji-raf", 14336, false);
        addFileType("PEF", FILE_TYPE_PEF, "image/x-pentax-pef", 14349, false);
        addFileType("SRW", 809, "image/x-samsung-srw", 14349, false);
        addFileType("M3U", 501, "audio/x-mpegurl", 47633, true);
        addFileType("M3U", 501, "application/x-mpegurl", 47633, false);
        addFileType("PLS", 502, "audio/x-scpls", 47636, true);
        addFileType("WPL", 503, "application/vnd.ms-wpl", 47632, true);
        addFileType("M3U8", 504, "application/vnd.apple.mpegurl");
        addFileType("M3U8", 504, "audio/mpegurl");
        addFileType("M3U8", 504, "audio/x-mpegurl");
        addFileType("FL", 601, "application/x-android-drm-fl");
        addFileType(ID3v22Frames.FRAME_ID_V2_LYRICIST, 700, AssetHelper.DEFAULT_MIME_TYPE, 12292, true);
        addFileType("HTM", 701, "text/html", 12293, true);
        addFileType("HTML", 701, "text/html", 12293, false);
        addFileType(ImageFormats.V22_PDF_FORMAT, 702, "application/pdf");
        addFileType("DOC", 704, "application/msword", 47747, true);
        addFileType("DOC", 704, "application/vnd.openxmlformats-officedocument.wordprocessingml.document", 47747, true);
        addFileType("DOCX", 704, "application/msword", 47747, true);
        addFileType("XLSX", 705, "application/vnd.ms-excel", 47749, true);
        addFileType("XLSX", 705, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", 47749, true);
        addFileType("XLS", 705, "application/vnd.ms-excel", 47749, true);
        addFileType("PPT", 706, "application/vnd.ms-powerpoint", 47750, true);
        addFileType("FLAC", 110, "audio/flac", 47366, true);
        addFileType("ZIP", 707, "application/zip");
        addFileType("MPG", FILE_TYPE_MP2PS, MimeTypes.VIDEO_PS);
        addFileType("MPEG", FILE_TYPE_MP2PS, MimeTypes.VIDEO_PS);
    }

    public static void addFileType(String str, int i, String str2) {
        sFileTypeMap.put(str, new MediaFileType(i, str2));
        sMimeTypeMap.put(str2, Integer.valueOf(i));
    }

    public static String getFileTitle(String str) {
        int i;
        int iLastIndexOf = str.lastIndexOf(47);
        if (iLastIndexOf >= 0 && (i = iLastIndexOf + 1) < str.length()) {
            str = str.substring(i);
        }
        int iLastIndexOf2 = str.lastIndexOf(46);
        return iLastIndexOf2 > 0 ? str.substring(0, iLastIndexOf2) : str;
    }

    public static MediaFileType getFileType(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf < 0) {
            return null;
        }
        return sFileTypeMap.get(str.substring(iLastIndexOf + 1).toUpperCase(Locale.ROOT));
    }

    public static int getFileTypeForMimeType(String str) {
        Integer num = sMimeTypeMap.get(str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static int getFormatCode(String str, String str2) {
        Integer num;
        if (str2 != null && (num = sMimeTypeToFormatMap.get(str2)) != null) {
            return num.intValue();
        }
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf <= 0) {
            return 12288;
        }
        Integer num2 = sFileTypeToFormatMap.get(str.substring(iLastIndexOf + 1).toUpperCase(Locale.ROOT));
        if (num2 != null) {
            return num2.intValue();
        }
        return 12288;
    }

    public static String getMimeTypeForFile(String str) {
        MediaFileType fileType = getFileType(str);
        if (fileType == null) {
            return null;
        }
        return fileType.mimeType;
    }

    public static String getMimeTypeForFormatCode(int i) {
        return sFormatToMimeTypeMap.get(i);
    }

    public static boolean isAudioFileType(int i) {
        return (i >= 101 && i <= 199) || (i >= 201 && i <= 203);
    }

    public static boolean isDocumentFileType(int i) {
        return (i >= 700 && i <= 702) || i == 704;
    }

    public static boolean isDrmFileType(int i) {
        return i >= 601 && i <= 601;
    }

    public static boolean isImageFileType(int i) {
        return (i >= 401 && i <= 499) || (i >= 800 && i <= 809);
    }

    public static boolean isMimeTypeMedia(String str) {
        int fileTypeForMimeType = getFileTypeForMimeType(str);
        return isAudioFileType(fileTypeForMimeType) || isVideoFileType(fileTypeForMimeType) || isImageFileType(fileTypeForMimeType) || isPlayListFileType(fileTypeForMimeType);
    }

    public static boolean isPlayListFileType(int i) {
        return i >= 501 && i <= 504;
    }

    public static boolean isRawImageFileType(int i) {
        return i >= 800 && i <= 809;
    }

    public static boolean isVideoFileType(int i) {
        return (i >= 301 && i <= 399) || (i >= 200 && i <= 200);
    }

    private static void addFileType(String str, int i, String str2, int i2, boolean z) {
        addFileType(str, i, str2);
        sFileTypeToFormatMap.put(str, Integer.valueOf(i2));
        sMimeTypeToFormatMap.put(str2, Integer.valueOf(i2));
        if (z) {
            SparseArray<String> sparseArray = sFormatToMimeTypeMap;
            if (sparseArray.get(i2) == null) {
                sparseArray.put(i2, str2);
            }
        }
    }
}
