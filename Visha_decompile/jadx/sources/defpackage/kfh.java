package defpackage;

import android.app.UiModeManager;
import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.AudioFormat;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.Display;
import android.view.WindowManager;
import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.media.drm.IDrmSession;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.audiotagger.audio.mp3.MPEGFrameHeader;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.hubsdk.display.BuildConfig;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import org.apache.commons.lang3.BooleanUtils;
import org.greenrobot.greendao.generator.Schema;
import org.mozilla.classfile.ByteCode;

public abstract class kfh {
    public static final int a;
    public static final String b;
    public static final byte[] c;
    public static final Pattern d;
    public static HashMap e;
    public static final String[] f;
    public static final String[] g;
    public static final int[] h;
    public static final int[] i;
    public static final int[] j;

    static {
        int i2 = Build.VERSION.SDK_INT;
        a = i2;
        b = Build.DEVICE + ", " + Build.MODEL + ", " + Build.MANUFACTURER + ", " + i2;
        c = new byte[0];
        d = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        f = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", DownloadFacadeEnum.USER_MAC, "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", TtmlNode.ATTR_ID, "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", CmcdConfiguration.KEY_BUFFER_STARVATION, "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        g = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        h = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        i = new int[]{0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161, 41290, 45419, 49548, 53677, 57806, 61935};
        j = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, MPEGFrameHeader.SYNC_BIT_ANDSAMPING_BYTE3, 251, 242, 245, IDrmSession.ERROR_SESSION_PROVISION_ERROR_KEYID_INVALID, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES, 214, IDrmSession.ERROR_SESSION_DRM_PSSHS_NOT_SUPPORT, 196, ByteCode.MONITOREXIT, 202, IDrmSession.ERROR_SESSION_KEY_REQUEST_NULL, 144, 151, 158, 153, 140, 139, 130, 133, ByteCode.JSR, ByteCode.DRETURN, 166, 161, 180, ByteCode.PUTSTATIC, ByteCode.INVOKEDYNAMIC, 189, 199, 192, 201, IDrmSession.ERROR_SESSION_SELECT_DRM_NOT_SUPPORT, 219, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT, IDrmSession.ERROR_SESSION_PROVISION_ERROR, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, ByteCode.ARRAYLENGTH, ByteCode.LOOKUPSWITCH, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, ByteCode.ATHROW, 184, ByteCode.LRETURN, 170, 163, 164, 249, ByteCode.IMPDEP1, 247, 240, 229, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_BLINK, 235, 236, 193, 198, IDrmSession.ERROR_SESSION_DRM_LICENSE_URL_EMPTY, 200, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_WAKE, IDrmSession.ERROR_SESSION_DRM_INFO_INVALID, IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_NONE, IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_ERROR, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, ByteCode.FRETURN, 169, 160, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, 141, 132, 131, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_REPLY, IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY, IDrmSession.ERROR_SESSION_DRM_PSSHS_EMPTY, IDrmSession.ERROR_SESSION_PROVISION_ERROR_WASABI_ERROR, 194, ByteCode.MULTIANEWARRAY, IDrmSession.ERROR_SESSION_DRM_NULL, 203, 230, TranSceneConfig.TSCENE_TYPE_VOICE_ASSISTANT_SMILE, 232, 239, 250, 253, 244, 243};
    }

    public static int A(byte[] bArr, int i2, int i3, int i4) {
        while (i2 < i3) {
            i4 = h[(i4 >>> 24) ^ (bArr[i2] & 255)] ^ (i4 << 8);
            i2++;
        }
        return i4;
    }

    public static int B(byte[] bArr, int i2, int i3, int i4) {
        int i5 = 0;
        while (i2 < i3) {
            i5 = j[i5 ^ (bArr[i2] & 255)];
            i2++;
        }
        return i5;
    }

    public static int C(int i2) {
        if (i2 == 20) {
            return 30;
        }
        if (i2 == 22) {
            return 31;
        }
        if (i2 == 30) {
            return 34;
        }
        switch (i2) {
            case 2:
            case 3:
                return 3;
            case 4:
            case 5:
            case 6:
                return 21;
            case 7:
            case 8:
                return 23;
            case 9:
            case 10:
            case 11:
            case 12:
                return 28;
            default:
                switch (i2) {
                    case 14:
                        return 25;
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                        return 28;
                    default:
                        return Integer.MAX_VALUE;
                }
        }
    }

    public static int D(int i2) {
        int i3;
        int i4 = 6396;
        if (i2 == 10) {
            i3 = 737532;
        } else {
            if (i2 == 12) {
                return 743676;
            }
            if (i2 != 24) {
                switch (i2) {
                    case 1:
                        return 4;
                    case 2:
                        return 12;
                    case 3:
                        return 28;
                    case 4:
                        return IDrmSession.ERROR_SESSION_DRM_NULL;
                    case 5:
                        return TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT;
                    case 6:
                        return MPEGFrameHeader.SYNC_BIT_ANDSAMPING_BYTE3;
                    case 7:
                        return 1276;
                    case 8:
                        return 6396;
                    default:
                        return 0;
                }
            }
            i3 = 67108860;
            i4 = 0;
        }
        return a >= 32 ? i3 : i4;
    }

    public static int E(ByteBuffer byteBuffer, int i2) {
        int i3 = byteBuffer.getInt(i2);
        return byteBuffer.order() == ByteOrder.BIG_ENDIAN ? i3 : Integer.reverseBytes(i3);
    }

    public static int F(int i2) {
        if (i2 != 2) {
            if (i2 == 3) {
                return 1;
            }
            if (i2 != 4) {
                if (i2 != 21) {
                    if (i2 != 22) {
                        if (i2 != 268435456) {
                            if (i2 != 1342177280) {
                                if (i2 != 1610612736) {
                                    throw new IllegalArgumentException();
                                }
                            }
                        }
                    }
                }
                return 3;
            }
            return 4;
        }
        return 2;
    }

    public static int G(int i2) {
        if (i2 == 2 || i2 == 4) {
            return 6005;
        }
        if (i2 == 10) {
            return 6004;
        }
        if (i2 == 7) {
            return 6005;
        }
        if (i2 == 8) {
            return 6003;
        }
        switch (i2) {
            case 15:
                return 6003;
            case 16:
            case 18:
                return 6005;
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
                return 6004;
            default:
                switch (i2) {
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                        return 6002;
                    default:
                        return 6006;
                }
        }
    }

    public static int H(String str) {
        String[] strArrSplit;
        int length;
        if (str == null || (length = (strArrSplit = str.split("_", -1)).length) < 2) {
            return 0;
        }
        String str2 = strArrSplit[length - 1];
        boolean z = length >= 3 && "neg".equals(strArrSplit[length + (-2)]);
        try {
            if (str2 == null) {
                throw null;
            }
            int i2 = Integer.parseInt(str2);
            return z ? -i2 : i2;
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static int I(int i2) {
        if (i2 == 8) {
            return 3;
        }
        if (i2 == 16) {
            return 2;
        }
        if (i2 != 24) {
            return i2 != 32 ? 0 : 22;
        }
        return 21;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:28:0x005d  */
    public static int J(Uri uri) {
        byte b2;
        int i2;
        String scheme = uri.getScheme();
        if (scheme != null && d2i.c("rtsp", scheme)) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return 4;
        }
        int iLastIndexOf = lastPathSegment.lastIndexOf(46);
        if (iLastIndexOf >= 0) {
            switch (d2i.a(lastPathSegment.substring(iLastIndexOf + 1))) {
                case "ism":
                    b2 = 2;
                    break;
                case "mpd":
                    b2 = 0;
                    break;
                case "isml":
                    b2 = 3;
                    break;
                case "m3u8":
                    b2 = 1;
                    break;
                default:
                    b2 = -1;
                    break;
            }
            if (b2 == 0) {
                i2 = 0;
            } else if (b2 != 1) {
                i2 = (b2 == 2 || b2 == 3) ? 1 : 4;
            } else {
                i2 = 2;
            }
            if (i2 != 4) {
                return i2;
            }
        }
        Pattern pattern = d;
        String path = uri.getPath();
        path.getClass();
        Matcher matcher = pattern.matcher(path);
        if (!matcher.matches()) {
            return 4;
        }
        String strGroup = matcher.group(2);
        if (strGroup != null) {
            if (strGroup.contains("format=mpd-time-csf")) {
                return 0;
            }
            if (strGroup.contains("format=m3u8-aapl")) {
                return 2;
            }
        }
        return 1;
    }

    public static long K(long j2, int i2) {
        return P(j2, i2, 1000000L, RoundingMode.UP);
    }

    public static long L(long j2, float f2) {
        return f2 == 1.0f ? j2 : Math.round(j2 * ((double) f2));
    }

    public static long M(long j2, float f2) {
        return f2 == 1.0f ? j2 : Math.round(j2 / ((double) f2));
    }

    public static long N(long j2) {
        return (j2 == C.TIME_UNSET || j2 == Long.MIN_VALUE) ? j2 : j2 * 1000;
    }

    public static long O(long j2, int i2) {
        return P(j2, 1000000L, i2, RoundingMode.DOWN);
    }

    public static long P(long j2, long j3, long j4, RoundingMode roundingMode) {
        if (j2 == 0 || j3 == 0) {
            return 0L;
        }
        if (j4 >= j3 && j4 % j3 == 0) {
            return o6i.b(j2, o6i.b(j4, j3, RoundingMode.UNNECESSARY), roundingMode);
        }
        if (j4 < j3 && j3 % j4 == 0) {
            return o6i.d(j2, o6i.b(j3, j4, RoundingMode.UNNECESSARY));
        }
        if (j4 < j2 || j4 % j2 != 0) {
            return (j4 >= j2 || j2 % j4 != 0) ? s(j2, j3, j4, roundingMode) : o6i.d(j3, o6i.b(j2, j4, RoundingMode.UNNECESSARY));
        }
        return o6i.b(j3, o6i.b(j4, j2, RoundingMode.UNNECESSARY), roundingMode);
    }

    public static long Q(long j2) {
        return (j2 == C.TIME_UNSET || j2 == Long.MIN_VALUE) ? j2 : j2 / 1000;
    }

    public static Point R(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService(BuildConfig.FLAVOR);
        Display display = displayManager != null ? displayManager.getDisplay(0) : null;
        if (display == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            windowManager.getClass();
            display = windowManager.getDefaultDisplay();
        }
        if (display.getDisplayId() == 0 && n(context)) {
            String strT = a < 28 ? t("sys.display-size") : t("vendor.display-size");
            if (!TextUtils.isEmpty(strT)) {
                try {
                    String[] strArrSplit = strT.trim().split("x", -1);
                    if (strArrSplit.length == 2) {
                        int i2 = Integer.parseInt(strArrSplit[0]);
                        int i3 = Integer.parseInt(strArrSplit[1]);
                        if (i2 > 0 && i3 > 0) {
                            return new Point(i2, i3);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                zrg.c("Util", "Invalid display size: ".concat(String.valueOf(strT)));
            }
            if ("Sony".equals(Build.MANUFACTURER) && Build.MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
        return point;
    }

    public static AudioFormat S(int i2, int i3, int i4) {
        return new AudioFormat.Builder().setSampleRate(i2).setChannelMask(i3).setEncoding(i4).build();
    }

    public static Handler T(Handler.Callback callback) {
        Looper looperMyLooper = Looper.myLooper();
        n7g.b(looperMyLooper);
        return new Handler(looperMyLooper, null);
    }

    public static Looper U() {
        Looper looperMyLooper = Looper.myLooper();
        return looperMyLooper != null ? looperMyLooper : Looper.getMainLooper();
    }

    public static erj a(int i2, int i3, int i4) {
        gpj gpjVar = new gpj();
        gpjVar.E("audio/raw");
        gpjVar.b(i3);
        gpjVar.F(i4);
        gpjVar.x(i2);
        return gpjVar.K();
    }

    public static String b(byte[] bArr) {
        return new String(bArr, StandardCharsets.UTF_8);
    }

    public static String c(byte[] bArr, int i2, int i3) {
        return new String(bArr, i2, i3, StandardCharsets.UTF_8);
    }

    public static String d(int i2) {
        switch (i2) {
            case -2:
                return "none";
            case -1:
                return "unknown";
            case 0:
                return Schema.DEFAULT_NAME;
            case 1:
                return "audio";
            case 2:
                return "video";
            case 3:
                return "text";
            case 4:
                return "image";
            case 5:
                return TtmlNode.TAG_METADATA;
            default:
                return "camera motion";
        }
    }

    public static String e(String str) {
        if (str == null) {
            return null;
        }
        String strReplace = str.replace('_', '-');
        if (!strReplace.isEmpty() && !strReplace.equals(C.LANGUAGE_UNDETERMINED)) {
            str = strReplace;
        }
        String strA = d2i.a(str);
        int i2 = 0;
        String str2 = strA.split("-", 2)[0];
        if (e == null) {
            e = u();
        }
        String str3 = (String) e.get(str2);
        if (str3 != null) {
            strA = str3.concat(String.valueOf(strA.substring(str2.length())));
            str2 = str3;
        }
        if (!BooleanUtils.NO.equals(str2) && !CmcdData.OBJECT_TYPE_INIT_SEGMENT.equals(str2) && !"zh".equals(str2)) {
            return strA;
        }
        while (true) {
            String[] strArr = g;
            int length = strArr.length;
            if (i2 >= 18) {
                return strA;
            }
            if (strA.startsWith(strArr[i2])) {
                return String.valueOf(strArr[i2 + 1]).concat(String.valueOf(strA.substring(strArr[i2].length())));
            }
            i2 += 2;
        }
    }

    public static ExecutorService f(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() {
            @Override
            public final Thread newThread(Runnable runnable) {
                int i2 = kfh.a;
                return new Thread(runnable, str);
            }
        });
    }

    public static void g(long[] jArr, long j2, long j3) {
        RoundingMode roundingMode = RoundingMode.DOWN;
        int i2 = 0;
        if (j3 >= 1000000 && j3 % 1000000 == 0) {
            long jB = o6i.b(j3, 1000000L, RoundingMode.UNNECESSARY);
            while (i2 < jArr.length) {
                jArr[i2] = o6i.b(jArr[i2], jB, roundingMode);
                i2++;
            }
            return;
        }
        if (j3 < 1000000 && 1000000 % j3 == 0) {
            long jB2 = o6i.b(1000000L, j3, RoundingMode.UNNECESSARY);
            while (i2 < jArr.length) {
                jArr[i2] = o6i.d(jArr[i2], jB2);
                i2++;
            }
            return;
        }
        for (int i3 = 0; i3 < jArr.length; i3++) {
            long j4 = jArr[i3];
            if (j4 != 0) {
                if (j3 >= j4 && j3 % j4 == 0) {
                    jArr[i3] = o6i.b(1000000L, o6i.b(j3, j4, RoundingMode.UNNECESSARY), roundingMode);
                } else if (j3 >= j4 || j4 % j3 != 0) {
                    jArr[i3] = s(j4, 1000000L, j3, roundingMode);
                } else {
                    jArr[i3] = o6i.d(1000000L, o6i.b(j4, j3, RoundingMode.UNNECESSARY));
                }
            }
        }
    }

    public static boolean h(SparseArray sparseArray, int i2) {
        return sparseArray.indexOfKey(i2) >= 0;
    }

    public static boolean i(u4h u4hVar, u4h u4hVar2, Inflater inflater) {
        boolean z = false;
        if (u4hVar.u() == 0) {
            return false;
        }
        if (u4hVar2.v() < u4hVar.u()) {
            int iU = u4hVar.u();
            u4hVar2.f(iU + iU);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(u4hVar.n(), u4hVar.w(), u4hVar.u());
        int iInflate = 0;
        while (true) {
            try {
                iInflate += inflater.inflate(u4hVar2.n(), iInflate, u4hVar2.v() - iInflate);
                if (!inflater.finished()) {
                    if (inflater.needsDictionary() || inflater.needsInput()) {
                        break;
                        break;
                    }
                    if (iInflate == u4hVar2.v()) {
                        int iV = u4hVar2.v();
                        u4hVar2.f(iV + iV);
                    }
                } else {
                    u4hVar2.k(iInflate);
                    z = true;
                    break;
                }
            } catch (DataFormatException unused) {
            } catch (Throwable th) {
                inflater.reset();
                throw th;
            }
        }
        inflater.reset();
        return z;
    }

    public static boolean j(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
    }

    public static boolean k(int i2) {
        return i2 == 3 || i2 == 2 || i2 == 268435456 || i2 == 21 || i2 == 1342177280 || i2 == 22 || i2 == 1610612736 || i2 == 4;
    }

    public static boolean l(Context context) {
        int i2 = a;
        if (i2 < 29 || context.getApplicationInfo().targetSdkVersion < 29) {
            return true;
        }
        if (i2 != 30) {
            return i2 == 34 && d2i.c(Build.MODEL, "sm-x200");
        }
        String str = Build.MODEL;
        return d2i.c(str, "moto g(20)") || d2i.c(str, "rmx3231");
    }

    public static boolean m(int i2) {
        return i2 == 10 || i2 == 13;
    }

    public static boolean n(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    public static boolean o(u4h u4hVar, u4h u4hVar2, Inflater inflater) {
        return u4hVar.u() > 0 && u4hVar.z() == 120 && i(u4hVar, u4hVar2, inflater);
    }

    public static boolean p(Handler handler, Runnable runnable) {
        Looper looper = handler.getLooper();
        if (!looper.getThread().isAlive()) {
            return false;
        }
        if (looper != Looper.myLooper()) {
            return handler.post(runnable);
        }
        runnable.run();
        return true;
    }

    public static Object[] q(Object[] objArr, int i2) {
        n7g.d(i2 <= objArr.length);
        return Arrays.copyOf(objArr, i2);
    }

    public static int r(int i2, int i3) {
        return (char) (i[i2 ^ (i3 >> 12)] ^ ((char) (i3 << 4)));
    }

    public static long s(long j2, long j3, long j4, RoundingMode roundingMode) {
        long jD = o6i.d(j2, j3);
        if (jD != Long.MAX_VALUE && jD != Long.MIN_VALUE) {
            return o6i.b(jD, j4, roundingMode);
        }
        long jC = o6i.c(Math.abs(j3), Math.abs(j4));
        RoundingMode roundingMode2 = RoundingMode.UNNECESSARY;
        long jB = o6i.b(j3, jC, roundingMode2);
        long jB2 = o6i.b(j4, jC, roundingMode2);
        long jC2 = o6i.c(Math.abs(j2), Math.abs(jB2));
        long jB3 = o6i.b(j2, jC2, roundingMode2);
        long jB4 = o6i.b(jB2, jC2, roundingMode2);
        long jD2 = o6i.d(jB3, jB);
        if (jD2 != Long.MAX_VALUE && jD2 != Long.MIN_VALUE) {
            return o6i.b(jD2, jB4, roundingMode);
        }
        double d2 = jB3 * (jB / jB4);
        if (d2 > 9.223372036854776E18d) {
            return Long.MAX_VALUE;
        }
        if (d2 < -9.223372036854776E18d) {
            return Long.MIN_VALUE;
        }
        return j6i.b(d2, roundingMode);
    }

    public static String t(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e2) {
            zrg.d("Util", "Failed to read system property ".concat(str), e2);
            return null;
        }
    }

    public static HashMap u() {
        String[] iSOLanguages = Locale.getISOLanguages();
        int length = iSOLanguages.length;
        int length2 = f.length;
        HashMap map = new HashMap(length + 88);
        int i2 = 0;
        for (String str : iSOLanguages) {
            try {
                String iSO3Language = new Locale(str).getISO3Language();
                if (!TextUtils.isEmpty(iSO3Language)) {
                    map.put(iSO3Language, str);
                }
            } catch (MissingResourceException unused) {
            }
        }
        while (true) {
            String[] strArr = f;
            int length3 = strArr.length;
            if (i2 >= 88) {
                return map;
            }
            map.put(strArr[i2], strArr[i2 + 1]);
            i2 += 2;
        }
    }

    public static int v(long[] jArr, long j2, boolean z, boolean z2) {
        int i2;
        int iBinarySearch = Arrays.binarySearch(jArr, j2);
        if (iBinarySearch < 0) {
            return ~iBinarySearch;
        }
        while (true) {
            i2 = iBinarySearch + 1;
            if (i2 >= jArr.length || jArr[i2] != j2) {
                break;
            }
            iBinarySearch = i2;
        }
        return !z ? i2 : iBinarySearch;
    }

    public static int w(xsg xsgVar, long j2, boolean z, boolean z2) {
        int iA = xsgVar.a() - 1;
        int i2 = 0;
        while (i2 <= iA) {
            int i3 = (i2 + iA) >>> 1;
            if (xsgVar.b(i3) < j2) {
                i2 = i3 + 1;
            } else {
                iA = i3 - 1;
            }
        }
        int i4 = iA + 1;
        if (i4 < xsgVar.a() && xsgVar.b(i4) == j2) {
            return i4;
        }
        if (iA == -1) {
            return 0;
        }
        return iA;
    }

    public static int x(int[] iArr, int i2, boolean z, boolean z2) {
        int i3;
        int i4;
        int iBinarySearch = Arrays.binarySearch(iArr, i2);
        if (iBinarySearch < 0) {
            i4 = -(iBinarySearch + 2);
        } else {
            while (true) {
                i3 = iBinarySearch - 1;
                if (i3 < 0 || iArr[i3] != i2) {
                    break;
                }
                iBinarySearch = i3;
            }
            i4 = z ? iBinarySearch : i3;
        }
        return z2 ? Math.max(0, i4) : i4;
    }

    public static int y(long[] jArr, long j2, boolean z, boolean z2) {
        int i2;
        int iBinarySearch = Arrays.binarySearch(jArr, j2);
        if (iBinarySearch < 0) {
            i2 = -(iBinarySearch + 2);
        } else {
            while (true) {
                int i3 = iBinarySearch - 1;
                if (i3 < 0 || jArr[i3] != j2) {
                    break;
                }
                iBinarySearch = i3;
            }
            i2 = iBinarySearch;
        }
        return z2 ? Math.max(0, i2) : i2;
    }

    public static int z(byte[] bArr, int i2, int i3, int i4) {
        int iR = 65535;
        for (int i5 = 0; i5 < i3; i5++) {
            byte b2 = bArr[i5];
            iR = r(b2 & 15, r((b2 & 255) >> 4, iR));
        }
        return iR;
    }
}
