package com.yandex.mobile.ads.impl;

import android.app.UiModeManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.media.drm.IDrmSession;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.audiotagger.audio.mp3.MPEGFrameHeader;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.hubsdk.display.BuildConfig;
import com.yandex.mobile.ads.impl.f92;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
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

public final class f92 {
    public static final int a;
    public static final String b;
    public static final String c;
    public static final String d;
    public static final String e;
    public static final byte[] f;
    private static final Pattern g;
    private static final Pattern h;

    @Nullable
    private static HashMap<String, String> i;
    private static final String[] j;
    private static final String[] k;
    private static final int[] l;
    private static final int[] m;

    static {
        int i2 = Build.VERSION.SDK_INT;
        a = i2;
        String str = Build.DEVICE;
        b = str;
        String str2 = Build.MANUFACTURER;
        c = str2;
        String str3 = Build.MODEL;
        d = str3;
        e = str + ", " + str3 + ", " + str2 + ", " + i2;
        f = new byte[0];
        Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        g = Pattern.compile("%([A-Fa-f0-9]{2})");
        h = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        j = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", DownloadFacadeEnum.USER_MAC, "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", TtmlNode.ATTR_ID, "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", CmcdConfiguration.KEY_BUFFER_STARVATION, "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        k = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        l = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        m = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, MPEGFrameHeader.SYNC_BIT_ANDSAMPING_BYTE3, 251, 242, 245, IDrmSession.ERROR_SESSION_PROVISION_ERROR_KEYID_INVALID, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES, 214, IDrmSession.ERROR_SESSION_DRM_PSSHS_NOT_SUPPORT, 196, ByteCode.MONITOREXIT, 202, IDrmSession.ERROR_SESSION_KEY_REQUEST_NULL, 144, 151, 158, 153, 140, 139, 130, 133, ByteCode.JSR, ByteCode.DRETURN, 166, 161, 180, ByteCode.PUTSTATIC, ByteCode.INVOKEDYNAMIC, 189, 199, 192, 201, IDrmSession.ERROR_SESSION_SELECT_DRM_NOT_SUPPORT, 219, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT, IDrmSession.ERROR_SESSION_PROVISION_ERROR, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, ByteCode.ARRAYLENGTH, ByteCode.LOOKUPSWITCH, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, ByteCode.ATHROW, 184, ByteCode.LRETURN, 170, 163, 164, 249, ByteCode.IMPDEP1, 247, 240, 229, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_BLINK, 235, 236, 193, 198, IDrmSession.ERROR_SESSION_DRM_LICENSE_URL_EMPTY, 200, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_WAKE, IDrmSession.ERROR_SESSION_DRM_INFO_INVALID, IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_NONE, IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_ERROR, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, ByteCode.FRETURN, 169, 160, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, 141, 132, 131, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_REPLY, IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY, IDrmSession.ERROR_SESSION_DRM_PSSHS_EMPTY, IDrmSession.ERROR_SESSION_PROVISION_ERROR_WASABI_ERROR, 194, ByteCode.MULTIANEWARRAY, IDrmSession.ERROR_SESSION_DRM_NULL, 203, 230, TranSceneConfig.TSCENE_TYPE_VOICE_ASSISTANT_SMILE, 232, 239, 250, 253, 244, 243};
    }

    public static long a(long j2) {
        return (j2 == C.TIME_UNSET || j2 == Long.MIN_VALUE) ? j2 : j2 * 1000;
    }

    public static int c(int i2) {
        if (i2 == 13) {
            return 1;
        }
        switch (i2) {
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            default:
                return 3;
        }
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
            case 6:
                return "camera motion";
            default:
                if (i2 < 10000) {
                    return "?";
                }
                return "custom (" + i2 + ")";
        }
    }

    public static boolean e(int i2) {
        return i2 == 3 || i2 == 2 || i2 == 268435456 || i2 == 536870912 || i2 == 805306368 || i2 == 4;
    }

    @Nullable
    public static String f(String str) {
        int length = str.length();
        int iEnd = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            if (str.charAt(i3) == '%') {
                i2++;
            }
        }
        if (i2 == 0) {
            return str;
        }
        int i4 = length - (i2 * 2);
        StringBuilder sb = new StringBuilder(i4);
        Matcher matcher = g.matcher(str);
        while (i2 > 0 && matcher.find()) {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            char c2 = (char) Integer.parseInt(strGroup, 16);
            sb.append((CharSequence) str, iEnd, matcher.start());
            sb.append(c2);
            iEnd = matcher.end();
            i2--;
        }
        if (iEnd < length) {
            sb.append((CharSequence) str, iEnd, length);
        }
        if (sb.length() != i4) {
            return null;
        }
        return sb.toString();
    }

    public static <T> T a(@Nullable T t) {
        return t;
    }

    public static int b(int i2) {
        if (i2 == 8) {
            return 3;
        }
        if (i2 == 16) {
            return 2;
        }
        if (i2 != 24) {
            return i2 != 32 ? 0 : 805306368;
        }
        return 536870912;
    }

    public static Point c(Context context) {
        DisplayManager displayManager;
        int i2 = a;
        Display display = (i2 < 17 || (displayManager = (DisplayManager) context.getSystemService(BuildConfig.FLAVOR)) == null) ? null : displayManager.getDisplay(0);
        if (display == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            windowManager.getClass();
            display = windowManager.getDefaultDisplay();
        }
        if (display.getDisplayId() == 0 && d(context)) {
            String strB = i2 < 28 ? b("sys.display-size") : b("vendor.display-size");
            if (!TextUtils.isEmpty(strB)) {
                try {
                    String[] strArrSplit = strB.trim().split("x", -1);
                    if (strArrSplit.length == 2) {
                        int i3 = Integer.parseInt(strArrSplit[0]);
                        int i4 = Integer.parseInt(strArrSplit[1]);
                        if (i3 > 0 && i4 > 0) {
                            return new Point(i3, i4);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                et0.b("Util", "Invalid display size: " + strB);
            }
            if ("Sony".equals(c) && d.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        int i5 = a;
        if (i5 >= 23) {
            Display.Mode mode = display.getMode();
            point.x = mode.getPhysicalWidth();
            point.y = mode.getPhysicalHeight();
            return point;
        }
        if (i5 >= 17) {
            display.getRealSize(point);
            return point;
        }
        display.getSize(point);
        return point;
    }

    public static String e(String str) {
        if (str == null) {
            return null;
        }
        String strReplace = str.replace('_', '-');
        if (!strReplace.isEmpty() && !strReplace.equals(C.LANGUAGE_UNDETERMINED)) {
            str = strReplace;
        }
        String strB = fg.b(str);
        int i2 = 0;
        String str2 = strB.split("-", 2)[0];
        if (i == null) {
            String[] iSOLanguages = Locale.getISOLanguages();
            HashMap<String, String> map = new HashMap<>(iSOLanguages.length + j.length);
            for (String str3 : iSOLanguages) {
                try {
                    String iSO3Language = new Locale(str3).getISO3Language();
                    if (!TextUtils.isEmpty(iSO3Language)) {
                        map.put(iSO3Language, str3);
                    }
                } catch (MissingResourceException unused) {
                }
            }
            int i3 = 0;
            while (true) {
                String[] strArr = j;
                if (i3 >= strArr.length) {
                    break;
                }
                map.put(strArr[i3], strArr[i3 + 1]);
                i3 += 2;
            }
            i = map;
        }
        String str4 = i.get(str2);
        if (str4 != null) {
            strB = str4 + strB.substring(str2.length());
            str2 = str4;
        }
        if (!BooleanUtils.NO.equals(str2) && !CmcdData.OBJECT_TYPE_INIT_SEGMENT.equals(str2) && !"zh".equals(str2)) {
            return strB;
        }
        while (true) {
            String[] strArr2 = k;
            if (i2 >= strArr2.length) {
                return strB;
            }
            if (strB.startsWith(strArr2[i2])) {
                return strArr2[i2 + 1] + strB.substring(strArr2[i2].length());
            }
            i2 += 2;
        }
    }

    public static boolean a(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static int b(long[] jArr, long j2, boolean z) {
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
        return z ? Math.max(0, i2) : i2;
    }

    public static int a(long[] jArr, long j2, boolean z) {
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
        return z ? iBinarySearch : i2;
    }

    public static int a(gt0 gt0Var, long j2) {
        int iA = gt0Var.a() - 1;
        int i2 = 0;
        while (i2 <= iA) {
            int i3 = (i2 + iA) >>> 1;
            if (gt0Var.a(i3) < j2) {
                i2 = i3 + 1;
            } else {
                iA = i3 - 1;
            }
        }
        int i4 = iA + 1;
        if (i4 < gt0Var.a() && gt0Var.a(i4) == j2) {
            return i4;
        }
        if (iA == -1) {
            return 0;
        }
        return iA;
    }

    public static Handler b() {
        return b((Handler.Callback) null);
    }

    public static String b(@Nullable Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return fg.c(networkCountryIso);
            }
        }
        return fg.c(Locale.getDefault().getCountry());
    }

    public static int a(List list, Long l2, boolean z) {
        int i2;
        int iBinarySearch = Collections.binarySearch(list, l2);
        if (iBinarySearch < 0) {
            i2 = -(iBinarySearch + 2);
        } else {
            while (true) {
                int i3 = iBinarySearch - 1;
                if (i3 < 0 || ((Comparable) list.get(i3)).compareTo(l2) != 0) {
                    break;
                }
                iBinarySearch = i3;
            }
            i2 = iBinarySearch;
        }
        return z ? Math.max(0, i2) : i2;
    }

    public static boolean d(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    public static int a(int[] iArr, int i2, boolean z, boolean z2) {
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

    public static int b(int i2, int i3) {
        if (i2 != 2) {
            if (i2 == 3) {
                return i3;
            }
            if (i2 != 4) {
                if (i2 != 268435456) {
                    if (i2 == 536870912) {
                        return i3 * 3;
                    }
                    if (i2 != 805306368) {
                        throw new IllegalArgumentException();
                    }
                }
            }
            return i3 * 4;
        }
        return i3 * 2;
    }

    public static long b(long j2) {
        return (j2 == C.TIME_UNSET || j2 == Long.MIN_VALUE) ? j2 : j2 / 1000;
    }

    public static ExecutorService d(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() {
            @Override
            public final Thread newThread(Runnable runnable) {
                return f92.a(str, runnable);
            }
        });
    }

    public static Handler b(@Nullable Handler.Callback callback) {
        return new Handler(c(), callback);
    }

    public static String[] d() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        String[] strArrSplit = a >= 24 ? configuration.getLocales().toLanguageTags().split(StringUtils.COMMA, -1) : new String[]{a(configuration.locale)};
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            strArrSplit[i2] = e(strArrSplit[i2]);
        }
        return strArrSplit;
    }

    public static int a(int i2, int i3) {
        return ((i2 + i3) - 1) / i3;
    }

    public static void a(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    @Nullable
    private static String b(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e2) {
            et0.a("Util", "Failed to read system property ".concat(str), e2);
            return null;
        }
    }

    public static float a(float f2) {
        return Math.max(0.0f, Math.min(f2, 0.95f));
    }

    public static int a(int i2, byte[] bArr) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = l[((i3 >>> 24) ^ (bArr[i4] & 255)) & 255] ^ (i3 << 8);
        }
        return i3;
    }

    public static int a(int i2, int i3, byte[] bArr) {
        int i4 = 0;
        while (i2 < i3) {
            i4 = m[i4 ^ (bArr[i2] & 255)];
            i2++;
        }
        return i4;
    }

    public static Handler a() {
        return a((Handler.Callback) null);
    }

    @RequiresApi(21)
    public static int a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return -1;
        }
        return audioManager.generateAudioSessionId();
    }

    public static int a(int i2) {
        if (i2 == 12) {
            return a >= 32 ? 743676 : 0;
        }
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
                int i3 = a;
                return (i3 < 23 && i3 < 21) ? 0 : 6396;
            default:
                return 0;
        }
    }

    public static int a(@Nullable String str) {
        String[] strArrSplit;
        int length;
        if (str == null || (length = (strArrSplit = str.split("_", -1)).length) < 2) {
            return 0;
        }
        String str2 = strArrSplit[length - 1];
        boolean z = length >= 3 && "neg".equals(strArrSplit[length - 2]);
        try {
            str2.getClass();
            int i2 = Integer.parseInt(str2);
            return z ? -i2 : i2;
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static byte[] c(String str) {
        return str.getBytes(lo.c);
    }

    public static Looper c() {
        Looper looperMyLooper = Looper.myLooper();
        return looperMyLooper != null ? looperMyLooper : Looper.getMainLooper();
    }

    public static int a(Uri uri, @Nullable String str) {
        int i2;
        if (str != null) {
            switch (str) {
                case "application/x-mpegURL":
                    return 2;
                case "application/vnd.ms-sstr+xml":
                    return 1;
                case "application/dash+xml":
                    return 0;
                case "application/x-rtsp":
                    return 3;
                default:
                    return 4;
            }
        }
        String scheme = uri.getScheme();
        if (scheme != null && fg.a(scheme)) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment != null) {
            int iLastIndexOf = lastPathSegment.lastIndexOf(46);
            if (iLastIndexOf >= 0) {
                String strB = fg.b(lastPathSegment.substring(iLastIndexOf + 1));
                strB.getClass();
                switch (strB.hashCode()) {
                    case 104579:
                        if (strB.equals("ism")) {
                        }
                        break;
                    case 108321:
                        if (strB.equals("mpd")) {
                        }
                        break;
                    case 3242057:
                        if (strB.equals("isml")) {
                        }
                        break;
                    case 3299913:
                        if (strB.equals("m3u8")) {
                        }
                        break;
                }
                /*  JADX ERROR: Method code generation error
                    java.lang.NullPointerException: Switch insn not found in header
                    	at java.base/java.util.Objects.requireNonNull(Objects.java:235)
                    	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                    	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                    */
                /*
                    Method dump skipped, instruction units count: 282
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.yandex.mobile.ads.impl.f92.a(android.net.Uri, java.lang.String):int");
            }

            public static boolean a(ag1 ag1Var, ag1 ag1Var2, @Nullable Inflater inflater) {
                if (ag1Var.a() <= 0) {
                    return false;
                }
                if (ag1Var2.b() < ag1Var.a()) {
                    ag1Var2.a(ag1Var.a() * 2);
                }
                if (inflater == null) {
                    inflater = new Inflater();
                }
                inflater.setInput(ag1Var.c(), ag1Var.d(), ag1Var.a());
                int iInflate = 0;
                while (true) {
                    try {
                        iInflate += inflater.inflate(ag1Var2.c(), iInflate, ag1Var2.b() - iInflate);
                        if (inflater.finished()) {
                            ag1Var2.d(iInflate);
                            inflater.reset();
                            return true;
                        }
                        if (!inflater.needsDictionary() && !inflater.needsInput()) {
                            if (iInflate == ag1Var2.b()) {
                                ag1Var2.a(ag1Var2.b() * 2);
                            }
                        }
                        inflater.reset();
                        return false;
                    } catch (DataFormatException unused) {
                        inflater.reset();
                        return false;
                    } catch (Throwable th) {
                        inflater.reset();
                        throw th;
                    }
                }
            }

            public static <T> T[] a(T[] tArr, T[] tArr2) {
                T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
                System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
                return tArr3;
            }

            public static Object[] a(int i2, Object[] objArr) {
                if (i2 <= objArr.length) {
                    return Arrays.copyOf(objArr, i2);
                }
                throw new IllegalArgumentException();
            }

            public static Object[] a(Object[] objArr, int i2) {
                if (i2 <= objArr.length) {
                    return Arrays.copyOfRange(objArr, 1, i2);
                }
                throw new IllegalArgumentException();
            }

            public static void a(Handler handler, Runnable runnable) {
                if (handler.getLooper().getThread().isAlive()) {
                    if (handler.getLooper() == Looper.myLooper()) {
                        runnable.run();
                    } else {
                        handler.post(runnable);
                    }
                }
            }

            public static boolean a(Parcel parcel) {
                return parcel.readInt() != 0;
            }

            public static long a(long j2, long j3, long j4) {
                if (j4 >= j3 && j4 % j3 == 0) {
                    return j2 / (j4 / j3);
                }
                if (j4 < j3 && j3 % j4 == 0) {
                    return (j3 / j4) * j2;
                }
                return (long) (j2 * (j3 / j4));
            }

            public static void a(long[] jArr, long j2) {
                int i2 = 0;
                if (j2 >= 1000000 && j2 % 1000000 == 0) {
                    long j3 = j2 / 1000000;
                    while (i2 < jArr.length) {
                        jArr[i2] = jArr[i2] / j3;
                        i2++;
                    }
                    return;
                }
                if (j2 < 1000000 && 1000000 % j2 == 0) {
                    long j4 = 1000000 / j2;
                    while (i2 < jArr.length) {
                        jArr[i2] = jArr[i2] * j4;
                        i2++;
                    }
                    return;
                }
                double d2 = 1000000 / j2;
                while (i2 < jArr.length) {
                    jArr[i2] = (long) (jArr[i2] * d2);
                    i2++;
                }
            }

            public static boolean a(SQLiteDatabase sQLiteDatabase, String str) {
                return DatabaseUtils.queryNumEntries(sQLiteDatabase, "sqlite_master", "tbl_name = ?", new String[]{str}) > 0;
            }

            public static Handler a(@Nullable Handler.Callback callback) {
                Looper looperMyLooper = Looper.myLooper();
                if (looperMyLooper != null) {
                    return new Handler(looperMyLooper, callback);
                }
                throw new IllegalStateException();
            }

            public static Handler a(Looper looper, @Nullable Handler.Callback callback) {
                return new Handler(looper, callback);
            }

            public static Thread a(String str, Runnable runnable) {
                return new Thread(runnable, str);
            }

            public static String a(Locale locale) {
                if (a >= 21) {
                    return locale.toLanguageTag();
                }
                return locale.toString();
            }

            public static String a(byte[] bArr) {
                return new String(bArr, lo.c);
            }

            public static String a(byte[] bArr, int i2, int i3) {
                return new String(bArr, i2, i3, lo.c);
            }
        }
