package androidx.media3.exoplayer.rtsp;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import com.google.common.collect.ImmutableMap;
import com.hunantv.media.drm.IDrmSession;
import defpackage.ui;
import java.util.Map;
import org.mozilla.classfile.ByteCode;

@UnstableApi
public final class RtpPayloadFormat {
    public static final String RTP_MEDIA_AC3 = "AC3";
    public static final String RTP_MEDIA_AMR = "AMR";
    public static final String RTP_MEDIA_AMR_WB = "AMR-WB";
    public static final String RTP_MEDIA_H263_1998 = "H263-1998";
    public static final String RTP_MEDIA_H263_2000 = "H263-2000";
    public static final String RTP_MEDIA_H264 = "H264";
    public static final String RTP_MEDIA_H265 = "H265";
    public static final String RTP_MEDIA_MPEG4_GENERIC = "MPEG4-GENERIC";
    public static final String RTP_MEDIA_MPEG4_LATM_AUDIO = "MP4A-LATM";
    public static final String RTP_MEDIA_MPEG4_VIDEO = "MP4V-ES";
    public static final String RTP_MEDIA_OPUS = "OPUS";
    public static final String RTP_MEDIA_PCMA = "PCMA";
    public static final String RTP_MEDIA_PCMU = "PCMU";
    public static final String RTP_MEDIA_PCM_L16 = "L16";
    public static final String RTP_MEDIA_PCM_L8 = "L8";
    public static final String RTP_MEDIA_VP8 = "VP8";
    public static final String RTP_MEDIA_VP9 = "VP9";
    public final int clockRate;
    public final ImmutableMap<String, String> fmtpParameters;
    public final Format format;
    public final String mediaEncoding;
    public final int rtpPayloadType;

    public RtpPayloadFormat(Format format, int i, int i2, Map<String, String> map, String str) {
        this.rtpPayloadType = i;
        this.clockRate = i2;
        this.format = format;
        this.fmtpParameters = ImmutableMap.copyOf((Map) map);
        this.mediaEncoding = str;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static String getMimeTypeFromRtpMediaType(String str) {
        String strG = ui.g(str);
        strG.hashCode();
        byte b = -1;
        switch (strG.hashCode()) {
            case -1922091719:
                if (strG.equals(RTP_MEDIA_MPEG4_GENERIC)) {
                    b = 0;
                }
                break;
            case 2412:
                if (strG.equals(RTP_MEDIA_PCM_L8)) {
                    b = 1;
                }
                break;
            case 64593:
                if (strG.equals(RTP_MEDIA_AC3)) {
                    b = 2;
                }
                break;
            case 64934:
                if (strG.equals(RTP_MEDIA_AMR)) {
                    b = 3;
                }
                break;
            case 74609:
                if (strG.equals(RTP_MEDIA_PCM_L16)) {
                    b = 4;
                }
                break;
            case 85182:
                if (strG.equals(RTP_MEDIA_VP8)) {
                    b = 5;
                }
                break;
            case 85183:
                if (strG.equals(RTP_MEDIA_VP9)) {
                    b = 6;
                }
                break;
            case 2194728:
                if (strG.equals("H264")) {
                    b = 7;
                }
                break;
            case 2194729:
                if (strG.equals("H265")) {
                    b = 8;
                }
                break;
            case 2433087:
                if (strG.equals("OPUS")) {
                    b = 9;
                }
                break;
            case 2450119:
                if (strG.equals(RTP_MEDIA_PCMA)) {
                    b = 10;
                }
                break;
            case 2450139:
                if (strG.equals(RTP_MEDIA_PCMU)) {
                    b = ByteCode.T_LONG;
                }
                break;
            case 1061166827:
                if (strG.equals(RTP_MEDIA_MPEG4_LATM_AUDIO)) {
                    b = 12;
                }
                break;
            case 1934494802:
                if (strG.equals(RTP_MEDIA_AMR_WB)) {
                    b = 13;
                }
                break;
            case 1959269366:
                if (strG.equals(RTP_MEDIA_MPEG4_VIDEO)) {
                    b = 14;
                }
                break;
            case 2137188397:
                if (strG.equals(RTP_MEDIA_H263_1998)) {
                    b = 15;
                }
                break;
            case 2137209252:
                if (strG.equals(RTP_MEDIA_H263_2000)) {
                    b = 16;
                }
                break;
        }
        switch (b) {
            case 0:
            case 12:
                return "audio/mp4a-latm";
            case 1:
            case 4:
                return "audio/raw";
            case 2:
                return "audio/ac3";
            case 3:
                return "audio/3gpp";
            case 5:
                return "video/x-vnd.on2.vp8";
            case 6:
                return "video/x-vnd.on2.vp9";
            case 7:
                return "video/avc";
            case 8:
                return "video/hevc";
            case 9:
                return "audio/opus";
            case 10:
                return "audio/g711-alaw";
            case 11:
                return "audio/g711-mlaw";
            case 13:
                return "audio/amr-wb";
            case 14:
                return "video/mp4v-es";
            case 15:
            case 16:
                return "video/3gpp";
            default:
                throw new IllegalArgumentException(str);
        }
    }

    public static int getRawPcmEncodingType(String str) {
        Assertions.checkArgument(str.equals(RTP_MEDIA_PCM_L8) || str.equals(RTP_MEDIA_PCM_L16));
        return str.equals(RTP_MEDIA_PCM_L8) ? 3 : 268435456;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static boolean isFormatSupported(MediaDescription mediaDescription) {
        String strG = ui.g(mediaDescription.rtpMapAttribute.mediaEncoding);
        strG.hashCode();
        byte b = -1;
        switch (strG.hashCode()) {
            case -1922091719:
                if (strG.equals(RTP_MEDIA_MPEG4_GENERIC)) {
                    b = 0;
                }
                break;
            case 2412:
                if (strG.equals(RTP_MEDIA_PCM_L8)) {
                    b = 1;
                }
                break;
            case 64593:
                if (strG.equals(RTP_MEDIA_AC3)) {
                    b = 2;
                }
                break;
            case 64934:
                if (strG.equals(RTP_MEDIA_AMR)) {
                    b = 3;
                }
                break;
            case 74609:
                if (strG.equals(RTP_MEDIA_PCM_L16)) {
                    b = 4;
                }
                break;
            case 85182:
                if (strG.equals(RTP_MEDIA_VP8)) {
                    b = 5;
                }
                break;
            case 85183:
                if (strG.equals(RTP_MEDIA_VP9)) {
                    b = 6;
                }
                break;
            case 2194728:
                if (strG.equals("H264")) {
                    b = 7;
                }
                break;
            case 2194729:
                if (strG.equals("H265")) {
                    b = 8;
                }
                break;
            case 2433087:
                if (strG.equals("OPUS")) {
                    b = 9;
                }
                break;
            case 2450119:
                if (strG.equals(RTP_MEDIA_PCMA)) {
                    b = 10;
                }
                break;
            case 2450139:
                if (strG.equals(RTP_MEDIA_PCMU)) {
                    b = ByteCode.T_LONG;
                }
                break;
            case 1061166827:
                if (strG.equals(RTP_MEDIA_MPEG4_LATM_AUDIO)) {
                    b = 12;
                }
                break;
            case 1934494802:
                if (strG.equals(RTP_MEDIA_AMR_WB)) {
                    b = 13;
                }
                break;
            case 1959269366:
                if (strG.equals(RTP_MEDIA_MPEG4_VIDEO)) {
                    b = 14;
                }
                break;
            case 2137188397:
                if (strG.equals(RTP_MEDIA_H263_1998)) {
                    b = 15;
                }
                break;
            case 2137209252:
                if (strG.equals(RTP_MEDIA_H263_2000)) {
                    b = 16;
                }
                break;
        }
        switch (b) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                return true;
            default:
                return false;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || RtpPayloadFormat.class != obj.getClass()) {
            return false;
        }
        RtpPayloadFormat rtpPayloadFormat = (RtpPayloadFormat) obj;
        return this.rtpPayloadType == rtpPayloadFormat.rtpPayloadType && this.clockRate == rtpPayloadFormat.clockRate && this.format.equals(rtpPayloadFormat.format) && this.fmtpParameters.equals(rtpPayloadFormat.fmtpParameters) && this.mediaEncoding.equals(rtpPayloadFormat.mediaEncoding);
    }

    public int hashCode() {
        return ((((((((IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY + this.rtpPayloadType) * 31) + this.clockRate) * 31) + this.format.hashCode()) * 31) + this.fmtpParameters.hashCode()) * 31) + this.mediaEncoding.hashCode();
    }
}
