package defpackage;

import android.text.TextUtils;
import androidx.media3.common.MimeTypes;
import com.transsion.audiotagger.audio.ogg.util.VorbisHeader;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mozilla.classfile.ByteCode;

public abstract class bue {
    public static final ArrayList a = new ArrayList();
    public static final Pattern b = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:41:0x008e  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static int a(String str, String str2) {
        byte b2;
        gte gteVarC;
        switch (str.hashCode()) {
            case -2123537834:
                if (!str.equals(MimeTypes.AUDIO_E_AC3_JOC)) {
                    b2 = -1;
                } else {
                    b2 = 4;
                }
                break;
            case -1365340241:
                if (!str.equals(MimeTypes.AUDIO_DTS_EXPRESS)) {
                    b2 = -1;
                } else {
                    b2 = 8;
                }
                break;
            case -1095064472:
                if (!str.equals(MimeTypes.AUDIO_DTS)) {
                    b2 = -1;
                } else {
                    b2 = 6;
                }
                break;
            case -53558318:
                if (!str.equals("audio/mp4a-latm")) {
                    b2 = -1;
                } else {
                    b2 = 1;
                }
                break;
            case 187078296:
                if (!str.equals("audio/ac3")) {
                    b2 = -1;
                } else {
                    b2 = 2;
                }
                break;
            case 187078297:
                if (!str.equals(MimeTypes.AUDIO_AC4)) {
                    b2 = -1;
                } else {
                    b2 = 5;
                }
                break;
            case 550520934:
                if (!str.equals(MimeTypes.AUDIO_DTS_X)) {
                    b2 = -1;
                } else {
                    b2 = 9;
                }
                break;
            case 1504578661:
                if (!str.equals("audio/eac3")) {
                    b2 = -1;
                } else {
                    b2 = 3;
                }
                break;
            case 1504831518:
                if (!str.equals("audio/mpeg")) {
                    b2 = -1;
                } else {
                    b2 = 0;
                }
                break;
            case 1504891608:
                if (!str.equals("audio/opus")) {
                    b2 = -1;
                } else {
                    b2 = ByteCode.T_LONG;
                }
                break;
            case 1505942594:
                if (!str.equals(MimeTypes.AUDIO_DTS_HD)) {
                    b2 = -1;
                } else {
                    b2 = 7;
                }
                break;
            case 1556697186:
                if (!str.equals(MimeTypes.AUDIO_TRUEHD)) {
                    b2 = -1;
                } else {
                    b2 = 10;
                }
                break;
            default:
                b2 = -1;
                break;
        }
        switch (b2) {
            case 0:
                return 9;
            case 1:
                if (str2 == null || (gteVarC = c(str2)) == null) {
                    return 0;
                }
                return gteVarC.a();
            case 2:
                return 5;
            case 3:
                return 6;
            case 4:
                return 18;
            case 5:
                return 17;
            case 6:
                return 7;
            case 7:
            case 8:
                return 8;
            case 9:
                return 30;
            case 10:
                return 14;
            case 11:
                return 20;
            default:
                return 0;
        }
    }

    public static int b(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (h(str)) {
            return 1;
        }
        if (j(str)) {
            return 2;
        }
        if ("text".equals(k(str)) || MimeTypes.APPLICATION_MEDIA3_CUES.equals(str) || MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str) || MimeTypes.APPLICATION_MP4CEA608.equals(str) || "application/x-subrip".equals(str) || MimeTypes.APPLICATION_TTML.equals(str) || MimeTypes.APPLICATION_TX3G.equals(str) || MimeTypes.APPLICATION_MP4VTT.equals(str) || MimeTypes.APPLICATION_RAWCC.equals(str) || MimeTypes.APPLICATION_VOBSUB.equals(str) || MimeTypes.APPLICATION_PGS.equals(str) || MimeTypes.APPLICATION_DVBSUBS.equals(str)) {
            return 3;
        }
        if (i(str)) {
            return 4;
        }
        if (MimeTypes.APPLICATION_ID3.equals(str) || MimeTypes.APPLICATION_EMSG.equals(str) || MimeTypes.APPLICATION_SCTE35.equals(str) || MimeTypes.APPLICATION_ICY.equals(str) || MimeTypes.APPLICATION_AIT.equals(str)) {
            return 5;
        }
        if (MimeTypes.APPLICATION_CAMERA_MOTION.equals(str)) {
            return 6;
        }
        ArrayList arrayList = a;
        if (arrayList.size() <= 0) {
            return -1;
        }
        ubc.a(arrayList.get(0));
        throw null;
    }

    public static gte c(String str) {
        Matcher matcher = b.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String strGroup = matcher.group(1);
        strGroup.getClass();
        String strGroup2 = matcher.group(2);
        try {
            return new gte(Integer.parseInt(strGroup, 16), strGroup2 != null ? Integer.parseInt(strGroup2) : 0);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static String d(int i) {
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
            return MimeTypes.VIDEO_VC1;
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
                return MimeTypes.VIDEO_MPEG;
            case 108:
                return "image/jpeg";
            default:
                switch (i) {
                    case 169:
                    case 172:
                        return MimeTypes.AUDIO_DTS;
                    case 170:
                    case ByteCode.LOOKUPSWITCH:
                        return MimeTypes.AUDIO_DTS_HD;
                    case ByteCode.LRETURN:
                        return "audio/opus";
                    case ByteCode.FRETURN:
                        return MimeTypes.AUDIO_AC4;
                    default:
                        return null;
                }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:29:0x0056  */
    public static String e(String str) {
        if (str == null) {
            return null;
        }
        String strA = d2i.a(str);
        switch (strA) {
            case "video/x-mvhevc":
                return MimeTypes.VIDEO_MV_HEVC;
            case "audio/x-flac":
                return "audio/flac";
            case "audio/mp3":
                return "audio/mpeg";
            case "audio/x-wav":
                return MimeTypes.AUDIO_WAV;
            case "application/x-mpegurl":
                return MimeTypes.APPLICATION_M3U8;
            case "audio/mpeg-l1":
                return MimeTypes.AUDIO_MPEG_L1;
            case "audio/mpeg-l2":
                return MimeTypes.AUDIO_MPEG_L2;
            default:
                return strA;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:41:0x0081  */
    public static boolean f(String str, String str2) {
        gte gteVarC;
        int iA;
        if (str == null) {
            return false;
        }
        switch (str) {
            case "audio/mpeg":
            case "audio/mpeg-L1":
            case "audio/mpeg-L2":
            case "audio/raw":
            case "audio/g711-alaw":
            case "audio/g711-mlaw":
            case "audio/flac":
            case "audio/ac3":
            case "audio/eac3":
            case "audio/eac3-joc":
                return true;
            case "audio/mp4a-latm":
                return (str2 == null || (gteVarC = c(str2)) == null || (iA = gteVarC.a()) == 0 || iA == 16) ? false : true;
            default:
                return false;
        }
    }

    public static boolean g(String str, String str2) {
        String strD;
        gte gteVarC;
        String string = null;
        if (str != null) {
            int i = kfh.a;
            String[] strArrSplit = TextUtils.isEmpty(str) ? new String[0] : str.trim().split("(\\s*,\\s*)", -1);
            StringBuilder sb = new StringBuilder();
            for (String str3 : strArrSplit) {
                if (str3 == null) {
                    strD = null;
                } else {
                    String strA = d2i.a(str3.trim());
                    if (strA.startsWith("avc1") || strA.startsWith("avc3")) {
                        strD = "video/avc";
                    } else if (strA.startsWith("hev1") || strA.startsWith("hvc1")) {
                        strD = "video/hevc";
                    } else if (strA.startsWith("dvav") || strA.startsWith("dva1") || strA.startsWith("dvhe") || strA.startsWith("dvh1")) {
                        strD = "video/dolby-vision";
                    } else if (strA.startsWith("av01")) {
                        strD = MimeTypes.VIDEO_AV1;
                    } else if (strA.startsWith("vp9") || strA.startsWith("vp09")) {
                        strD = "video/x-vnd.on2.vp9";
                    } else if (strA.startsWith("vp8") || strA.startsWith("vp08")) {
                        strD = "video/x-vnd.on2.vp8";
                    } else if (strA.startsWith("mp4a")) {
                        strD = (!strA.startsWith("mp4a.") || (gteVarC = c(strA)) == null) ? null : d(gteVarC.a);
                        if (strD == null) {
                            strD = "audio/mp4a-latm";
                        }
                    } else if (strA.startsWith("mha1")) {
                        strD = MimeTypes.AUDIO_MPEGH_MHA1;
                    } else if (strA.startsWith("mhm1")) {
                        strD = MimeTypes.AUDIO_MPEGH_MHM1;
                    } else if (strA.startsWith("ac-3") || strA.startsWith("dac3")) {
                        strD = "audio/ac3";
                    } else if (strA.startsWith("ec-3") || strA.startsWith("dec3")) {
                        strD = "audio/eac3";
                    } else if (strA.startsWith(MimeTypes.CODEC_E_AC3_JOC)) {
                        strD = MimeTypes.AUDIO_E_AC3_JOC;
                    } else if (strA.startsWith("ac-4") || strA.startsWith("dac4")) {
                        strD = MimeTypes.AUDIO_AC4;
                    } else if (strA.startsWith("dtsc")) {
                        strD = MimeTypes.AUDIO_DTS;
                    } else if (strA.startsWith("dtse")) {
                        strD = MimeTypes.AUDIO_DTS_EXPRESS;
                    } else if (strA.startsWith("dtsh") || strA.startsWith("dtsl")) {
                        strD = MimeTypes.AUDIO_DTS_HD;
                    } else if (strA.startsWith("dtsx")) {
                        strD = MimeTypes.AUDIO_DTS_X;
                    } else if (strA.startsWith("opus")) {
                        strD = "audio/opus";
                    } else if (strA.startsWith(VorbisHeader.CAPTURE_PATTERN)) {
                        strD = "audio/vorbis";
                    } else if (strA.startsWith("flac")) {
                        strD = "audio/flac";
                    } else if (strA.startsWith("stpp")) {
                        strD = MimeTypes.APPLICATION_TTML;
                    } else if (strA.startsWith("wvtt")) {
                        strD = "text/vtt";
                    } else if (strA.contains("cea708")) {
                        strD = MimeTypes.APPLICATION_CEA708;
                    } else if (strA.contains("eia608") || strA.contains("cea608")) {
                        strD = MimeTypes.APPLICATION_CEA608;
                    } else {
                        ArrayList arrayList = a;
                        if (arrayList.size() > 0) {
                            ubc.a(arrayList.get(0));
                            throw null;
                        }
                        strD = null;
                    }
                }
                if (str2.equals(strD)) {
                    if (sb.length() > 0) {
                        sb.append(StringUtils.COMMA);
                    }
                    sb.append(str3);
                }
            }
            if (sb.length() > 0) {
                string = sb.toString();
            }
        }
        return string != null;
    }

    public static boolean h(String str) {
        return "audio".equals(k(str));
    }

    public static boolean i(String str) {
        return "image".equals(k(str)) || MimeTypes.APPLICATION_EXTERNALLY_LOADED_IMAGE.equals(str);
    }

    public static boolean j(String str) {
        return "video".equals(k(str));
    }

    public static String k(String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, iIndexOf);
    }
}
