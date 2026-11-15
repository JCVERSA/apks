package com.yandex.mobile.ads.impl;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.MimeTypes;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mozilla.classfile.ByteCode;

public final class w01 {
    private static final ArrayList<a> a = new ArrayList<>();
    private static final Pattern b = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");
    public static final int c = 0;

    public static final class a {
    }

    @VisibleForTesting
    public static final class b {
        public final int a;

        public b(int i) {
            this.a = i;
        }
    }

    public static boolean a(@Nullable String str, @Nullable String str2) {
        b bVarA;
        char c2 = '\n';
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
                if (str2 == null || (bVarA = a(str2)) == null) {
                    return false;
                }
                int i = bVarA.a;
                if (i != 2) {
                    if (i == 5) {
                        c2 = 11;
                    } else if (i == 29) {
                        c2 = '\f';
                    } else if (i == 42) {
                        c2 = 16;
                    } else if (i != 22) {
                        c2 = i != 23 ? (char) 0 : (char) 15;
                    } else {
                        c2 = 0;
                    }
                }
                return (c2 == 0 || c2 == 16) ? false : true;
            default:
                return false;
        }
    }

    public static int b(String str, @Nullable String str2) {
        b bVarA;
        str.hashCode();
        switch (str) {
            case "audio/eac3-joc":
                return 18;
            case "audio/vnd.dts":
                return 7;
            case "audio/mp4a-latm":
                if (str2 == null || (bVarA = a(str2)) == null) {
                    return 0;
                }
                int i = bVarA.a;
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
            case "audio/ac3":
                return 5;
            case "audio/ac4":
                return 17;
            case "audio/eac3":
                return 6;
            case "audio/mpeg":
                return 9;
            case "audio/vnd.dts.hd":
                return 8;
            case "audio/true-hd":
                return 14;
            default:
                return 0;
        }
    }

    public static int c(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if ("audio".equals(b(str))) {
            return 1;
        }
        if ("video".equals(b(str))) {
            return 2;
        }
        if (e(str)) {
            return 3;
        }
        if ("image".equals(b(str))) {
            return 4;
        }
        if (MimeTypes.APPLICATION_ID3.equals(str) || MimeTypes.APPLICATION_EMSG.equals(str) || MimeTypes.APPLICATION_SCTE35.equals(str)) {
            return 5;
        }
        if (MimeTypes.APPLICATION_CAMERA_MOTION.equals(str)) {
            return 6;
        }
        int size = a.size();
        for (int i = 0; i < size; i++) {
            a.get(i).getClass();
            if (str.equals(null)) {
                return 0;
            }
        }
        return -1;
    }

    public static boolean d(@Nullable String str) {
        return "audio".equals(b(str));
    }

    public static boolean e(@Nullable String str) {
        return "text".equals(b(str)) || MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str) || MimeTypes.APPLICATION_MP4CEA608.equals(str) || "application/x-subrip".equals(str) || MimeTypes.APPLICATION_TTML.equals(str) || MimeTypes.APPLICATION_TX3G.equals(str) || MimeTypes.APPLICATION_MP4VTT.equals(str) || MimeTypes.APPLICATION_RAWCC.equals(str) || MimeTypes.APPLICATION_VOBSUB.equals(str) || MimeTypes.APPLICATION_PGS.equals(str) || MimeTypes.APPLICATION_DVBSUBS.equals(str);
    }

    public static boolean f(@Nullable String str) {
        return "video".equals(b(str));
    }

    @Nullable
    public static String a(int i) {
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
        if (i == 165) {
            return "audio/ac3";
        }
        if (i != 166) {
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
        return "audio/eac3";
    }

    @Nullable
    private static String b(@Nullable String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, iIndexOf);
    }

    @Nullable
    @VisibleForTesting
    public static b a(String str) {
        Matcher matcher = b.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String strGroup = matcher.group(1);
        strGroup.getClass();
        String strGroup2 = matcher.group(2);
        try {
            Integer.parseInt(strGroup, 16);
            return new b(strGroup2 != null ? Integer.parseInt(strGroup2) : 0);
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
