package androidx.media3.common;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.transsion.audiotagger.audio.ogg.util.VorbisHeader;
import defpackage.ui;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mozilla.classfile.ByteCode;

public final class MimeTypes {
    public static final String APPLICATION_AIT = "application/vnd.dvb.ait";

    @UnstableApi
    public static final String APPLICATION_CAMERA_MOTION = "application/x-camera-motion";
    public static final String APPLICATION_CEA608 = "application/cea-608";
    public static final String APPLICATION_CEA708 = "application/cea-708";

    @UnstableApi
    public static final String APPLICATION_DEPTH_METADATA = "application/x-depth-metadata";
    public static final String APPLICATION_DVBSUBS = "application/dvbsubs";

    @UnstableApi
    public static final String APPLICATION_EMSG = "application/x-emsg";

    @UnstableApi
    public static final String APPLICATION_EXIF = "application/x-exif";

    @UnstableApi
    public static final String APPLICATION_EXTERNALLY_LOADED_IMAGE = "application/x-image-uri";

    @UnstableApi
    public static final String APPLICATION_ICY = "application/x-icy";
    public static final String APPLICATION_ID3 = "application/id3";
    public static final String APPLICATION_M3U8 = "application/x-mpegURL";
    public static final String APPLICATION_MATROSKA = "application/x-matroska";

    @UnstableApi
    public static final String APPLICATION_MEDIA3_CUES = "application/x-media3-cues";
    public static final String APPLICATION_MP4 = "application/mp4";
    public static final String APPLICATION_MP4CEA608 = "application/x-mp4-cea-608";
    public static final String APPLICATION_MP4VTT = "application/x-mp4-vtt";
    public static final String APPLICATION_MPD = "application/dash+xml";
    public static final String APPLICATION_PGS = "application/pgs";

    @Deprecated
    public static final String APPLICATION_RAWCC = "application/x-rawcc";
    public static final String APPLICATION_RTSP = "application/x-rtsp";

    @UnstableApi
    public static final String APPLICATION_SCTE35 = "application/x-scte35";
    public static final String APPLICATION_SDP = "application/sdp";
    public static final String APPLICATION_SS = "application/vnd.ms-sstr+xml";
    public static final String APPLICATION_SUBRIP = "application/x-subrip";
    public static final String APPLICATION_TTML = "application/ttml+xml";
    public static final String APPLICATION_TX3G = "application/x-quicktime-tx3g";
    public static final String APPLICATION_VOBSUB = "application/vobsub";
    public static final String APPLICATION_WEBM = "application/webm";
    public static final String AUDIO_AAC = "audio/mp4a-latm";
    public static final String AUDIO_AC3 = "audio/ac3";
    public static final String AUDIO_AC4 = "audio/ac4";
    public static final String AUDIO_ALAC = "audio/alac";
    public static final String AUDIO_ALAW = "audio/g711-alaw";
    public static final String AUDIO_AMR = "audio/amr";
    public static final String AUDIO_AMR_NB = "audio/3gpp";
    public static final String AUDIO_AMR_WB = "audio/amr-wb";
    public static final String AUDIO_DTS = "audio/vnd.dts";
    public static final String AUDIO_DTS_EXPRESS = "audio/vnd.dts.hd;profile=lbr";
    public static final String AUDIO_DTS_HD = "audio/vnd.dts.hd";

    @UnstableApi
    public static final String AUDIO_DTS_X = "audio/vnd.dts.uhd;profile=p2";

    @UnstableApi
    public static final String AUDIO_EXOPLAYER_MIDI = "audio/x-exoplayer-midi";
    public static final String AUDIO_E_AC3 = "audio/eac3";
    public static final String AUDIO_E_AC3_JOC = "audio/eac3-joc";
    public static final String AUDIO_FLAC = "audio/flac";

    @UnstableApi
    public static final String AUDIO_IAMF = "audio/iamf";

    @UnstableApi
    public static final String AUDIO_MATROSKA = "audio/x-matroska";
    public static final String AUDIO_MIDI = "audio/midi";
    public static final String AUDIO_MLAW = "audio/g711-mlaw";
    public static final String AUDIO_MP4 = "audio/mp4";
    public static final String AUDIO_MPEG = "audio/mpeg";
    public static final String AUDIO_MPEGH_MHA1 = "audio/mha1";
    public static final String AUDIO_MPEGH_MHM1 = "audio/mhm1";
    public static final String AUDIO_MPEG_L1 = "audio/mpeg-L1";
    public static final String AUDIO_MPEG_L2 = "audio/mpeg-L2";
    public static final String AUDIO_MSGSM = "audio/gsm";
    public static final String AUDIO_OGG = "audio/ogg";
    public static final String AUDIO_OPUS = "audio/opus";
    public static final String AUDIO_RAW = "audio/raw";
    public static final String AUDIO_TRUEHD = "audio/true-hd";

    @UnstableApi
    public static final String AUDIO_UNKNOWN = "audio/x-unknown";
    public static final String AUDIO_VORBIS = "audio/vorbis";
    public static final String AUDIO_WAV = "audio/wav";
    public static final String AUDIO_WEBM = "audio/webm";

    @UnstableApi
    public static final String BASE_TYPE_APPLICATION = "application";

    @UnstableApi
    public static final String BASE_TYPE_AUDIO = "audio";

    @UnstableApi
    public static final String BASE_TYPE_IMAGE = "image";

    @UnstableApi
    public static final String BASE_TYPE_TEXT = "text";

    @UnstableApi
    public static final String BASE_TYPE_VIDEO = "video";

    @UnstableApi
    public static final String CODEC_E_AC3_JOC = "ec+3";

    @UnstableApi
    public static final String IMAGE_AVIF = "image/avif";

    @UnstableApi
    public static final String IMAGE_BMP = "image/bmp";

    @UnstableApi
    public static final String IMAGE_HEIC = "image/heic";

    @UnstableApi
    public static final String IMAGE_HEIF = "image/heif";
    public static final String IMAGE_JPEG = "image/jpeg";

    @UnstableApi
    public static final String IMAGE_JPEG_R = "image/jpeg_r";

    @UnstableApi
    public static final String IMAGE_PNG = "image/png";

    @UnstableApi
    public static final String IMAGE_RAW = "image/raw";

    @UnstableApi
    public static final String IMAGE_WEBP = "image/webp";
    public static final String TEXT_SSA = "text/x-ssa";

    @UnstableApi
    public static final String TEXT_UNKNOWN = "text/x-unknown";
    public static final String TEXT_VTT = "text/vtt";

    @UnstableApi
    public static final String VIDEO_APV = "video/apv";
    public static final String VIDEO_AV1 = "video/av01";
    public static final String VIDEO_AVI = "video/x-msvideo";
    public static final String VIDEO_DIVX = "video/divx";
    public static final String VIDEO_DOLBY_VISION = "video/dolby-vision";

    @UnstableApi
    public static final String VIDEO_FLV = "video/x-flv";
    public static final String VIDEO_H263 = "video/3gpp";
    public static final String VIDEO_H264 = "video/avc";
    public static final String VIDEO_H265 = "video/hevc";

    @UnstableApi
    public static final String VIDEO_MATROSKA = "video/x-matroska";
    public static final String VIDEO_MJPEG = "video/mjpeg";
    public static final String VIDEO_MP2T = "video/mp2t";
    public static final String VIDEO_MP4 = "video/mp4";
    public static final String VIDEO_MP42 = "video/mp42";
    public static final String VIDEO_MP43 = "video/mp43";
    public static final String VIDEO_MP4V = "video/mp4v-es";
    public static final String VIDEO_MPEG = "video/mpeg";
    public static final String VIDEO_MPEG2 = "video/mpeg2";

    @UnstableApi
    public static final String VIDEO_MV_HEVC = "video/mv-hevc";
    public static final String VIDEO_OGG = "video/ogg";
    public static final String VIDEO_PS = "video/mp2p";

    @UnstableApi
    public static final String VIDEO_RAW = "video/raw";

    @UnstableApi
    public static final String VIDEO_UNKNOWN = "video/x-unknown";
    public static final String VIDEO_VC1 = "video/wvc1";

    @UnstableApi
    public static final String VIDEO_VP8 = "video/x-vnd.on2.vp8";

    @UnstableApi
    public static final String VIDEO_VP9 = "video/x-vnd.on2.vp9";
    public static final String VIDEO_WEBM = "video/webm";
    private static final ArrayList<CustomMimeType> customMimeTypes = new ArrayList<>();
    private static final Pattern MP4A_RFC_6381_CODEC_PATTERN = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    public static final class CustomMimeType {
        public final String codecPrefix;
        public final String mimeType;
        public final int trackType;

        public CustomMimeType(String str, String str2, int i) {
            this.mimeType = str;
            this.codecPrefix = str2;
            this.trackType = i;
        }
    }

    @VisibleForTesting
    public static final class Mp4aObjectType {
        public final int audioObjectTypeIndication;
        public final int objectTypeIndication;

        public Mp4aObjectType(int i, int i2) {
            this.objectTypeIndication = i;
            this.audioObjectTypeIndication = i2;
        }

        public int getEncoding() {
            int i = this.audioObjectTypeIndication;
            if (i == 2) {
                return 10;
            }
            if (i == 5) {
                return 11;
            }
            if (i == 29) {
                return 12;
            }
            if (i == 42) {
                return 16;
            }
            if (i != 22) {
                return i != 23 ? 0 : 15;
            }
            return 1073741824;
        }
    }

    private MimeTypes() {
    }

    @UnstableApi
    public static boolean allSamplesAreSyncSamples(@Nullable String str, @Nullable String str2) {
        Mp4aObjectType objectTypeFromMp4aRFC6381CodecString;
        if (str == null) {
            return false;
        }
        switch (str) {
            case "audio/eac3-joc":
            case "audio/mpeg-L1":
            case "audio/mpeg-L2":
            case "audio/ac3":
            case "audio/raw":
            case "audio/eac3":
            case "audio/flac":
            case "audio/mpeg":
            case "audio/g711-alaw":
            case "audio/g711-mlaw":
                return true;
            case "audio/mp4a-latm":
                if (str2 == null || (objectTypeFromMp4aRFC6381CodecString = getObjectTypeFromMp4aRFC6381CodecString(str2)) == null) {
                    return false;
                }
                int encoding = objectTypeFromMp4aRFC6381CodecString.getEncoding();
                return (encoding == 0 || encoding == 16) ? false : true;
            default:
                return false;
        }
    }

    @UnstableApi
    public static boolean containsCodecsCorrespondingToMimeType(@Nullable String str, String str2) {
        return getCodecsCorrespondingToMimeType(str, str2) != null;
    }

    @Nullable
    @UnstableApi
    public static String getAudioMediaMimeType(@Nullable String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : Util.splitCodecs(str)) {
            String mediaMimeType = getMediaMimeType(str2);
            if (mediaMimeType != null && isAudio(mediaMimeType)) {
                return mediaMimeType;
            }
        }
        return null;
    }

    @Nullable
    @UnstableApi
    public static String getCodecsCorrespondingToMimeType(@Nullable String str, @Nullable String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        String[] strArrSplitCodecs = Util.splitCodecs(str);
        StringBuilder sb = new StringBuilder();
        for (String str3 : strArrSplitCodecs) {
            if (str2.equals(getMediaMimeType(str3))) {
                if (sb.length() > 0) {
                    sb.append(StringUtils.COMMA);
                }
                sb.append(str3);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    @Nullable
    private static String getCustomMimeTypeForCodec(String str) {
        int size = customMimeTypes.size();
        for (int i = 0; i < size; i++) {
            CustomMimeType customMimeType = customMimeTypes.get(i);
            if (str.startsWith(customMimeType.codecPrefix)) {
                return customMimeType.mimeType;
            }
        }
        return null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @UnstableApi
    public static int getEncoding(String str, @Nullable String str2) {
        Mp4aObjectType objectTypeFromMp4aRFC6381CodecString;
        str.hashCode();
        byte b = -1;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals(AUDIO_E_AC3_JOC)) {
                    b = 0;
                }
                break;
            case -1365340241:
                if (str.equals(AUDIO_DTS_EXPRESS)) {
                    b = 1;
                }
                break;
            case -1095064472:
                if (str.equals(AUDIO_DTS)) {
                    b = 2;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    b = 3;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    b = 4;
                }
                break;
            case 187078297:
                if (str.equals(AUDIO_AC4)) {
                    b = 5;
                }
                break;
            case 550520934:
                if (str.equals(AUDIO_DTS_X)) {
                    b = 6;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    b = 7;
                }
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    b = 8;
                }
                break;
            case 1504891608:
                if (str.equals("audio/opus")) {
                    b = 9;
                }
                break;
            case 1505942594:
                if (str.equals(AUDIO_DTS_HD)) {
                    b = 10;
                }
                break;
            case 1556697186:
                if (str.equals(AUDIO_TRUEHD)) {
                    b = ByteCode.T_LONG;
                }
                break;
        }
        switch (b) {
            case 0:
                return 18;
            case 1:
                return 8;
            case 2:
                return 7;
            case 3:
                if (str2 == null || (objectTypeFromMp4aRFC6381CodecString = getObjectTypeFromMp4aRFC6381CodecString(str2)) == null) {
                    return 0;
                }
                return objectTypeFromMp4aRFC6381CodecString.getEncoding();
            case 4:
                return 5;
            case 5:
                return 17;
            case 6:
                return 30;
            case 7:
                return 6;
            case 8:
                return 9;
            case 9:
                return 20;
            case 10:
                return 8;
            case 11:
                return 14;
            default:
                return 0;
        }
    }

    @Nullable
    @UnstableApi
    public static String getMediaMimeType(@Nullable String str) {
        Mp4aObjectType objectTypeFromMp4aRFC6381CodecString;
        String mimeTypeFromMp4ObjectType = null;
        if (str == null) {
            return null;
        }
        String strE = ui.e(str.trim());
        if (strE.startsWith("avc1") || strE.startsWith("avc3")) {
            return "video/avc";
        }
        if (strE.startsWith("hev1") || strE.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (strE.startsWith("dvav") || strE.startsWith("dva1") || strE.startsWith("dvhe") || strE.startsWith("dvh1")) {
            return "video/dolby-vision";
        }
        if (strE.startsWith("av01")) {
            return VIDEO_AV1;
        }
        if (strE.startsWith("vp9") || strE.startsWith("vp09")) {
            return "video/x-vnd.on2.vp9";
        }
        if (strE.startsWith("vp8") || strE.startsWith("vp08")) {
            return "video/x-vnd.on2.vp8";
        }
        if (strE.startsWith("mp4a")) {
            if (strE.startsWith("mp4a.") && (objectTypeFromMp4aRFC6381CodecString = getObjectTypeFromMp4aRFC6381CodecString(strE)) != null) {
                mimeTypeFromMp4ObjectType = getMimeTypeFromMp4ObjectType(objectTypeFromMp4aRFC6381CodecString.objectTypeIndication);
            }
            return mimeTypeFromMp4ObjectType == null ? "audio/mp4a-latm" : mimeTypeFromMp4ObjectType;
        }
        if (strE.startsWith("mha1")) {
            return AUDIO_MPEGH_MHA1;
        }
        if (strE.startsWith("mhm1")) {
            return AUDIO_MPEGH_MHM1;
        }
        if (strE.startsWith("ac-3") || strE.startsWith("dac3")) {
            return "audio/ac3";
        }
        if (strE.startsWith("ec-3") || strE.startsWith("dec3")) {
            return "audio/eac3";
        }
        if (strE.startsWith(CODEC_E_AC3_JOC)) {
            return AUDIO_E_AC3_JOC;
        }
        if (strE.startsWith("ac-4") || strE.startsWith("dac4")) {
            return AUDIO_AC4;
        }
        if (strE.startsWith("dtsc")) {
            return AUDIO_DTS;
        }
        if (strE.startsWith("dtse")) {
            return AUDIO_DTS_EXPRESS;
        }
        if (strE.startsWith("dtsh") || strE.startsWith("dtsl")) {
            return AUDIO_DTS_HD;
        }
        if (strE.startsWith("dtsx")) {
            return AUDIO_DTS_X;
        }
        if (strE.startsWith("opus")) {
            return "audio/opus";
        }
        if (strE.startsWith(VorbisHeader.CAPTURE_PATTERN)) {
            return "audio/vorbis";
        }
        if (strE.startsWith("flac")) {
            return "audio/flac";
        }
        if (strE.startsWith("stpp")) {
            return APPLICATION_TTML;
        }
        if (strE.startsWith("wvtt")) {
            return "text/vtt";
        }
        if (strE.contains("cea708")) {
            return APPLICATION_CEA708;
        }
        return (strE.contains("eia608") || strE.contains("cea608")) ? APPLICATION_CEA608 : getCustomMimeTypeForCodec(strE);
    }

    @Nullable
    @UnstableApi
    public static String getMimeTypeFromMp4ObjectType(int i) {
        if (i == 32) {
            return "video/mp4v-es";
        }
        if (i == 33) {
            return "video/avc";
        }
        if (i == 35) {
            return "video/hevc";
        }
        if (i == 64) {
            return "audio/mp4a-latm";
        }
        if (i == 163) {
            return VIDEO_VC1;
        }
        if (i == 177) {
            return "video/x-vnd.on2.vp9";
        }
        if (i == 221) {
            return "audio/vorbis";
        }
        if (i == 165) {
            return "audio/ac3";
        }
        if (i == 166) {
            return "audio/eac3";
        }
        switch (i) {
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
                return "video/mpeg2";
            case 102:
            case 103:
            case 104:
                return "audio/mp4a-latm";
            case 105:
            case 107:
                return "audio/mpeg";
            case 106:
                return VIDEO_MPEG;
            case 108:
                return "image/jpeg";
            default:
                switch (i) {
                    case 169:
                    case 172:
                        return AUDIO_DTS;
                    case 170:
                    case ByteCode.LOOKUPSWITCH:
                        return AUDIO_DTS_HD;
                    case ByteCode.LRETURN:
                        return "audio/opus";
                    case ByteCode.FRETURN:
                        return AUDIO_AC4;
                    default:
                        return null;
                }
        }
    }

    @Nullable
    @UnstableApi
    public static Byte getMp4ObjectTypeFromMimeType(String str) {
        str.hashCode();
        switch (str) {
            case "audio/vorbis":
                return (byte) -35;
            case "audio/mp4a-latm":
                return (byte) 64;
            case "video/mp4v-es":
                return (byte) 32;
            default:
                return null;
        }
    }

    @Nullable
    @VisibleForTesting
    public static Mp4aObjectType getObjectTypeFromMp4aRFC6381CodecString(String str) {
        Matcher matcher = MP4A_RFC_6381_CODEC_PATTERN.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String str2 = (String) Assertions.checkNotNull(matcher.group(1));
        String strGroup = matcher.group(2);
        try {
            return new Mp4aObjectType(Integer.parseInt(str2, 16), strGroup != null ? Integer.parseInt(strGroup) : 0);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @Nullable
    @UnstableApi
    public static String getTextMediaMimeType(@Nullable String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : Util.splitCodecs(str)) {
            String mediaMimeType = getMediaMimeType(str2);
            if (mediaMimeType != null && isText(mediaMimeType)) {
                return mediaMimeType;
            }
        }
        return null;
    }

    @Nullable
    @UnstableApi
    private static String getTopLevelType(@Nullable String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, iIndexOf);
    }

    @UnstableApi
    public static int getTrackType(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (isAudio(str)) {
            return 1;
        }
        if (isVideo(str)) {
            return 2;
        }
        if (isText(str)) {
            return 3;
        }
        if (isImage(str)) {
            return 4;
        }
        if (APPLICATION_ID3.equals(str) || APPLICATION_EMSG.equals(str) || APPLICATION_SCTE35.equals(str) || APPLICATION_ICY.equals(str) || APPLICATION_AIT.equals(str)) {
            return 5;
        }
        if (APPLICATION_CAMERA_MOTION.equals(str)) {
            return 6;
        }
        return getTrackTypeForCustomMimeType(str);
    }

    private static int getTrackTypeForCustomMimeType(String str) {
        int size = customMimeTypes.size();
        for (int i = 0; i < size; i++) {
            CustomMimeType customMimeType = customMimeTypes.get(i);
            if (str.equals(customMimeType.mimeType)) {
                return customMimeType.trackType;
            }
        }
        return -1;
    }

    @UnstableApi
    public static int getTrackTypeOfCodec(String str) {
        return getTrackType(getMediaMimeType(str));
    }

    @Nullable
    @UnstableApi
    public static String getVideoMediaMimeType(@Nullable String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : Util.splitCodecs(str)) {
            String mediaMimeType = getMediaMimeType(str2);
            if (mediaMimeType != null && isVideo(mediaMimeType)) {
                return mediaMimeType;
            }
        }
        return null;
    }

    @UnstableApi
    public static boolean isAudio(@Nullable String str) {
        return "audio".equals(getTopLevelType(str));
    }

    @UnstableApi
    public static boolean isDolbyVisionCodec(@Nullable String str, @Nullable String str2) {
        if (str == null) {
            return false;
        }
        if (str.startsWith("dvhe") || str.startsWith("dvh1")) {
            return true;
        }
        if (str2 == null) {
            return false;
        }
        return (str2.startsWith("dvhe") && str.startsWith("hev1")) || (str2.startsWith("dvh1") && str.startsWith("hvc1")) || ((str2.startsWith("dvav") && str.startsWith("avc3")) || ((str2.startsWith("dva1") && str.startsWith("avc1")) || (str2.startsWith("dav1") && str.startsWith("av01"))));
    }

    @UnstableApi
    public static boolean isImage(@Nullable String str) {
        return "image".equals(getTopLevelType(str)) || APPLICATION_EXTERNALLY_LOADED_IMAGE.equals(str);
    }

    @UnstableApi
    public static boolean isMatroska(@Nullable String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith(VIDEO_WEBM) || str.startsWith(AUDIO_WEBM) || str.startsWith(APPLICATION_WEBM) || str.startsWith(VIDEO_MATROSKA) || str.startsWith(AUDIO_MATROSKA) || str.startsWith(APPLICATION_MATROSKA);
    }

    @UnstableApi
    public static boolean isText(@Nullable String str) {
        return "text".equals(getTopLevelType(str)) || APPLICATION_MEDIA3_CUES.equals(str) || APPLICATION_CEA608.equals(str) || APPLICATION_CEA708.equals(str) || APPLICATION_MP4CEA608.equals(str) || "application/x-subrip".equals(str) || APPLICATION_TTML.equals(str) || APPLICATION_TX3G.equals(str) || APPLICATION_MP4VTT.equals(str) || APPLICATION_RAWCC.equals(str) || APPLICATION_VOBSUB.equals(str) || APPLICATION_PGS.equals(str) || APPLICATION_DVBSUBS.equals(str);
    }

    @UnstableApi
    public static boolean isVideo(@Nullable String str) {
        return "video".equals(getTopLevelType(str));
    }

    @UnstableApi
    public static String normalizeMimeType(String str) {
        if (str == null) {
            return null;
        }
        String strE = ui.e(str);
        strE.hashCode();
        switch (strE) {
            case "video/x-mvhevc":
                return VIDEO_MV_HEVC;
            case "audio/x-flac":
                return "audio/flac";
            case "application/x-mpegurl":
                return APPLICATION_M3U8;
            case "audio/x-wav":
                return AUDIO_WAV;
            case "audio/mpeg-l1":
                return AUDIO_MPEG_L1;
            case "audio/mpeg-l2":
                return AUDIO_MPEG_L2;
            case "audio/mp3":
                return "audio/mpeg";
            default:
                return strE;
        }
    }

    @UnstableApi
    public static void registerCustomMimeType(String str, String str2, int i) {
        CustomMimeType customMimeType = new CustomMimeType(str, str2, i);
        int size = customMimeTypes.size();
        for (int i2 = 0; i2 < size; i2++) {
            ArrayList<CustomMimeType> arrayList = customMimeTypes;
            if (str.equals(arrayList.get(i2).mimeType)) {
                arrayList.remove(i2);
                break;
            }
        }
        customMimeTypes.add(customMimeType);
    }
}
