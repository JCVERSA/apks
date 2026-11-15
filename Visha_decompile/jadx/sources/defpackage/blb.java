package defpackage;

import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
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
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.media3.muxer.MuxerUtil;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.t;
import com.hunantv.media.drm.IDrmSession;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.audiotagger.audio.mp3.MPEGFrameHeader;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.hubsdk.display.BuildConfig;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
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

public abstract class blb {
    public static final int a;
    public static final String b;
    public static final String c;
    public static final String d;
    public static final String e;
    public static final byte[] f;
    public static final Pattern g;
    public static final Pattern h;
    public static final Pattern i;
    public static final Pattern j;
    public static HashMap k;
    public static final String[] l;
    public static final String[] m;
    public static final int[] n;
    public static final int[] o;

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
        g = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        h = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        i = Pattern.compile("%([A-Fa-f0-9]{2})");
        j = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        l = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", DownloadFacadeEnum.USER_MAC, "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", TtmlNode.ATTR_ID, "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", CmcdConfiguration.KEY_BUFFER_STARVATION, "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        m = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        n = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        o = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, MPEGFrameHeader.SYNC_BIT_ANDSAMPING_BYTE3, 251, 242, 245, IDrmSession.ERROR_SESSION_PROVISION_ERROR_KEYID_INVALID, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES, 214, IDrmSession.ERROR_SESSION_DRM_PSSHS_NOT_SUPPORT, 196, ByteCode.MONITOREXIT, 202, IDrmSession.ERROR_SESSION_KEY_REQUEST_NULL, 144, 151, 158, 153, 140, 139, 130, 133, ByteCode.JSR, ByteCode.DRETURN, 166, 161, 180, ByteCode.PUTSTATIC, ByteCode.INVOKEDYNAMIC, 189, 199, 192, 201, IDrmSession.ERROR_SESSION_SELECT_DRM_NOT_SUPPORT, 219, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT, IDrmSession.ERROR_SESSION_PROVISION_ERROR, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, ByteCode.ARRAYLENGTH, ByteCode.LOOKUPSWITCH, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, ByteCode.ATHROW, 184, ByteCode.LRETURN, 170, 163, 164, 249, ByteCode.IMPDEP1, 247, 240, 229, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_BLINK, 235, 236, 193, 198, IDrmSession.ERROR_SESSION_DRM_LICENSE_URL_EMPTY, 200, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_WAKE, IDrmSession.ERROR_SESSION_DRM_INFO_INVALID, IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_NONE, IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_ERROR, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, ByteCode.FRETURN, 169, 160, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, 141, 132, 131, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_REPLY, IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY, IDrmSession.ERROR_SESSION_DRM_PSSHS_EMPTY, IDrmSession.ERROR_SESSION_PROVISION_ERROR_WASABI_ERROR, 194, ByteCode.MULTIANEWARRAY, IDrmSession.ERROR_SESSION_DRM_NULL, 203, 230, TranSceneConfig.TSCENE_TYPE_VOICE_ASSISTANT_SMILE, 232, 239, 250, 253, 244, 243};
    }

    public static String A(byte[] bArr) {
        return new String(bArr, rv0.c);
    }

    public static boolean A0(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    public static String B(byte[] bArr, int i2, int i3) {
        return new String(bArr, i2, i3, rv0.c);
    }

    public static long B0(long j2, long j3, long j4) {
        if (j4 >= j3 && j4 % j3 == 0) {
            return j2 / (j4 / j3);
        }
        if (j4 < j3 && j3 % j4 == 0) {
            return j2 * (j3 / j4);
        }
        return (long) (j2 * (j3 / j4));
    }

    public static int C(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return -1;
        }
        return audioManager.generateAudioSessionId();
    }

    public static void C0(long[] jArr, long j2, long j3) {
        int i2 = 0;
        if (j3 >= j2 && j3 % j2 == 0) {
            long j4 = j3 / j2;
            while (i2 < jArr.length) {
                jArr[i2] = jArr[i2] / j4;
                i2++;
            }
            return;
        }
        if (j3 >= j2 || j2 % j3 != 0) {
            double d2 = j2 / j3;
            while (i2 < jArr.length) {
                jArr[i2] = (long) (jArr[i2] * d2);
                i2++;
            }
            return;
        }
        long j5 = j2 / j3;
        while (i2 < jArr.length) {
            jArr[i2] = jArr[i2] * j5;
            i2++;
        }
    }

    public static int D(int i2) {
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

    public static void D0(Throwable th) throws Throwable {
        E0(th);
    }

    public static t.b E(t tVar, t.b bVar) {
        boolean zIsPlayingAd = tVar.isPlayingAd();
        boolean zIsCurrentMediaItemSeekable = tVar.isCurrentMediaItemSeekable();
        boolean zHasPreviousMediaItem = tVar.hasPreviousMediaItem();
        boolean zHasNextMediaItem = tVar.hasNextMediaItem();
        boolean zIsCurrentMediaItemLive = tVar.isCurrentMediaItemLive();
        boolean zIsCurrentMediaItemDynamic = tVar.isCurrentMediaItemDynamic();
        boolean zU = tVar.getCurrentTimeline().u();
        boolean z = false;
        t.b.a aVarD = new t.b.a().b(bVar).d(4, !zIsPlayingAd).d(5, zIsCurrentMediaItemSeekable && !zIsPlayingAd).d(6, zHasPreviousMediaItem && !zIsPlayingAd).d(7, !zU && (zHasPreviousMediaItem || !zIsCurrentMediaItemLive || zIsCurrentMediaItemSeekable) && !zIsPlayingAd).d(8, zHasNextMediaItem && !zIsPlayingAd).d(9, !zU && (zHasNextMediaItem || (zIsCurrentMediaItemLive && zIsCurrentMediaItemDynamic)) && !zIsPlayingAd).d(10, !zIsPlayingAd).d(11, zIsCurrentMediaItemSeekable && !zIsPlayingAd);
        if (zIsCurrentMediaItemSeekable && !zIsPlayingAd) {
            z = true;
        }
        return aVarD.d(12, z).e();
    }

    public static void E0(Throwable th) throws Throwable {
        throw th;
    }

    public static int F(ByteBuffer byteBuffer, int i2) {
        int i3 = byteBuffer.getInt(i2);
        return byteBuffer.order() == ByteOrder.BIG_ENDIAN ? i3 : Integer.reverseBytes(i3);
    }

    public static String[] F0(String str, String str2) {
        return str.split(str2, -1);
    }

    public static String G(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < objArr.length; i2++) {
            sb.append(objArr[i2].getClass().getSimpleName());
            if (i2 < objArr.length - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    public static String[] G0(String str, String str2) {
        return str.split(str2, 2);
    }

    public static String H(Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return ui.g(networkCountryIso);
            }
        }
        return ui.g(Locale.getDefault().getCountry());
    }

    public static ComponentName H0(Context context, Intent intent) {
        return a >= 26 ? context.startForegroundService(intent) : context.startService(intent);
    }

    public static Point I(Context context) {
        DisplayManager displayManager;
        Display display = (a < 17 || (displayManager = (DisplayManager) context.getSystemService(BuildConfig.FLAVOR)) == null) ? null : displayManager.getDisplay(0);
        if (display == null) {
            display = ((WindowManager) zi.e((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
        }
        return J(context, display);
    }

    public static long I0(long j2, long j3, long j4) {
        long j5 = j2 - j3;
        return ((j2 ^ j5) & (j3 ^ j2)) < 0 ? j4 : j5;
    }

    public static Point J(Context context, Display display) {
        if (display.getDisplayId() == 0 && p0(context)) {
            String strD0 = a < 28 ? d0("sys.display-size") : d0("vendor.display-size");
            if (!TextUtils.isEmpty(strD0)) {
                try {
                    String[] strArrF0 = F0(strD0.trim(), "x");
                    if (strArrF0.length == 2) {
                        int i2 = Integer.parseInt(strArrF0[0]);
                        int i3 = Integer.parseInt(strArrF0[1]);
                        if (i2 > 0 && i3 > 0) {
                            return new Point(i2, i3);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                op5.c("Util", "Invalid display size: " + strD0);
            }
            if ("Sony".equals(c) && d.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        int i4 = a;
        if (i4 >= 23) {
            N(display, point);
        } else if (i4 >= 17) {
            M(display, point);
        } else {
            L(display, point);
        }
        return point;
    }

    public static boolean J0(SQLiteDatabase sQLiteDatabase, String str) {
        return DatabaseUtils.queryNumEntries(sQLiteDatabase, "sqlite_master", "tbl_name = ?", new String[]{str}) > 0;
    }

    public static Looper K() {
        Looper looperMyLooper = Looper.myLooper();
        return looperMyLooper != null ? looperMyLooper : Looper.getMainLooper();
    }

    public static byte[] K0(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4096];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i2);
        }
    }

    public static void L(Display display, Point point) {
        display.getSize(point);
    }

    public static long L0(int i2, int i3) {
        return M0(i3) | (M0(i2) << 32);
    }

    public static void M(Display display, Point point) {
        display.getRealSize(point);
    }

    public static long M0(int i2) {
        return ((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
    }

    public static void N(Display display, Point point) {
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
    }

    public static CharSequence N0(CharSequence charSequence, int i2) {
        return charSequence.length() <= i2 ? charSequence : charSequence.subSequence(0, i2);
    }

    public static int O(int i2) {
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

    public static String O0(String str) {
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
        Matcher matcher = i.matcher(str);
        while (i2 > 0 && matcher.find()) {
            char c2 = (char) Integer.parseInt((String) zi.e(matcher.group(1)), 16);
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

    public static int P(String str) {
        String[] strArrF0;
        int length;
        if (str == null || (length = (strArrF0 = F0(str, "_")).length) < 2) {
            return 0;
        }
        String str2 = strArrF0[length - 1];
        boolean z = length >= 3 && "neg".equals(strArrF0[length - 2]);
        try {
            int i2 = Integer.parseInt((String) zi.e(str2));
            return z ? -i2 : i2;
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static long P0(long j2) {
        return (j2 == C.TIME_UNSET || j2 == Long.MIN_VALUE) ? j2 : j2 / 1000;
    }

    public static String Q(int i2) {
        if (i2 == 0) {
            return "NO";
        }
        if (i2 == 1) {
            return "NO_UNSUPPORTED_TYPE";
        }
        if (i2 == 2) {
            return "NO_UNSUPPORTED_DRM";
        }
        if (i2 == 3) {
            return "NO_EXCEEDS_CAPABILITIES";
        }
        if (i2 == 4) {
            return "YES";
        }
        throw new IllegalStateException();
    }

    public static void Q0(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    public static String R(Locale locale) {
        return a >= 21 ? S(locale) : locale.toString();
    }

    public static String S(Locale locale) {
        return locale.toLanguageTag();
    }

    public static long T(long j2, float f2) {
        return f2 == 1.0f ? j2 : Math.round(j2 * ((double) f2));
    }

    public static long U(long j2) {
        return j2 == C.TIME_UNSET ? System.currentTimeMillis() : j2 + SystemClock.elapsedRealtime();
    }

    public static int V(int i2) {
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

    public static k W(int i2, int i3, int i4) {
        return new k.b().e0("audio/raw").H(i3).f0(i4).Y(i2).E();
    }

    public static int X(int i2, int i3) {
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

    public static long Y(long j2, float f2) {
        return f2 == 1.0f ? j2 : Math.round(j2 / ((double) f2));
    }

    public static int Z(int i2) {
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

    public static String[] a0() {
        String[] strArrB0 = b0();
        for (int i2 = 0; i2 < strArrB0.length; i2++) {
            strArrB0[i2] = v0(strArrB0[i2]);
        }
        return strArrB0;
    }

    public static long b(long j2, long j3, long j4) {
        long j5 = j2 + j3;
        return ((j2 ^ j5) & (j3 ^ j5)) < 0 ? j4 : j5;
    }

    public static String[] b0() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        return a >= 24 ? c0(configuration) : new String[]{R(configuration.locale)};
    }

    public static boolean c(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static String[] c0(Configuration configuration) {
        return F0(configuration.getLocales().toLanguageTags(), StringUtils.COMMA);
    }

    public static int d(List list, Comparable comparable, boolean z, boolean z2) {
        int i2;
        int i3;
        int iBinarySearch = Collections.binarySearch(list, comparable);
        if (iBinarySearch < 0) {
            i3 = ~iBinarySearch;
        } else {
            int size = list.size();
            while (true) {
                i2 = iBinarySearch + 1;
                if (i2 >= size || ((Comparable) list.get(i2)).compareTo(comparable) != 0) {
                    break;
                }
                iBinarySearch = i2;
            }
            i3 = z ? iBinarySearch : i2;
        }
        return z2 ? Math.min(list.size() - 1, i3) : i3;
    }

    public static String d0(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e2) {
            op5.d("Util", "Failed to read system property " + str, e2);
            return null;
        }
    }

    public static int e(long[] jArr, long j2, boolean z, boolean z2) {
        int i2;
        int i3;
        int iBinarySearch = Arrays.binarySearch(jArr, j2);
        if (iBinarySearch < 0) {
            i3 = ~iBinarySearch;
        } else {
            while (true) {
                i2 = iBinarySearch + 1;
                if (i2 >= jArr.length || jArr[i2] != j2) {
                    break;
                }
                iBinarySearch = i2;
            }
            i3 = z ? iBinarySearch : i2;
        }
        return z2 ? Math.min(jArr.length - 1, i3) : i3;
    }

    public static String e0(int i2) {
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

    public static int f(zq5 zq5Var, long j2, boolean z, boolean z2) {
        int i2;
        int iC = zq5Var.c() - 1;
        int i3 = 0;
        while (i3 <= iC) {
            int i4 = (i3 + iC) >>> 1;
            if (zq5Var.b(i4) < j2) {
                i3 = i4 + 1;
            } else {
                iC = i4 - 1;
            }
        }
        if (z && (i2 = iC + 1) < zq5Var.c() && zq5Var.b(i2) == j2) {
            return i2;
        }
        if (z2 && iC == -1) {
            return 0;
        }
        return iC;
    }

    public static byte[] f0(String str) {
        return str.getBytes(rv0.c);
    }

    public static int g(List list, Comparable comparable, boolean z, boolean z2) {
        int i2;
        int i3;
        int iBinarySearch = Collections.binarySearch(list, comparable);
        if (iBinarySearch < 0) {
            i3 = -(iBinarySearch + 2);
        } else {
            while (true) {
                i2 = iBinarySearch - 1;
                if (i2 < 0 || ((Comparable) list.get(i2)).compareTo(comparable) != 0) {
                    break;
                }
                iBinarySearch = i2;
            }
            i3 = z ? iBinarySearch : i2;
        }
        return z2 ? Math.max(0, i3) : i3;
    }

    public static int g0(Uri uri) {
        int iH0;
        String scheme = uri.getScheme();
        if (scheme != null && ui.a("rtsp", scheme)) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return 4;
        }
        int iLastIndexOf = lastPathSegment.lastIndexOf(46);
        if (iLastIndexOf >= 0 && (iH0 = h0(lastPathSegment.substring(iLastIndexOf + 1))) != 4) {
            return iH0;
        }
        Matcher matcher = j.matcher((CharSequence) zi.e(uri.getPath()));
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

    public static int h(int[] iArr, int i2, boolean z, boolean z2) {
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

    public static int h0(String str) {
        String strE = ui.e(str);
        strE.hashCode();
        switch (strE) {
            case "ism":
            case "isml":
                return 1;
            case "mpd":
                return 0;
            case "m3u8":
                return 2;
            default:
                return 4;
        }
    }

    public static int i(long[] jArr, long j2, boolean z, boolean z2) {
        int i2;
        int i3;
        int iBinarySearch = Arrays.binarySearch(jArr, j2);
        if (iBinarySearch < 0) {
            i3 = -(iBinarySearch + 2);
        } else {
            while (true) {
                i2 = iBinarySearch - 1;
                if (i2 < 0 || jArr[i2] != j2) {
                    break;
                }
                iBinarySearch = i2;
            }
            i3 = z ? iBinarySearch : i2;
        }
        return z2 ? Math.max(0, i3) : i3;
    }

    public static int i0(Uri uri, String str) {
        if (str == null) {
            return g0(uri);
        }
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

    public static Object j(Object obj) {
        return obj;
    }

    public static boolean j0(qw7 qw7Var, qw7 qw7Var2, Inflater inflater) {
        if (qw7Var.a() <= 0) {
            return false;
        }
        if (qw7Var2.b() < qw7Var.a()) {
            qw7Var2.c(qw7Var.a() * 2);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(qw7Var.d(), qw7Var.e(), qw7Var.a());
        int iInflate = 0;
        while (true) {
            try {
                iInflate += inflater.inflate(qw7Var2.d(), iInflate, qw7Var2.b() - iInflate);
                if (inflater.finished()) {
                    qw7Var2.N(iInflate);
                    inflater.reset();
                    return true;
                }
                if (!inflater.needsDictionary() && !inflater.needsInput()) {
                    if (iInflate == qw7Var2.b()) {
                        qw7Var2.c(qw7Var2.b() * 2);
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

    public static Object[] k(Object[] objArr) {
        return objArr;
    }

    public static boolean k0(Context context) {
        return a >= 23 && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
    }

    public static int l(int i2, int i3) {
        return ((i2 + i3) - 1) / i3;
    }

    public static boolean l0(int i2) {
        return i2 == 536870912 || i2 == 805306368 || i2 == 4;
    }

    public static void m(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static boolean m0(int i2) {
        return i2 == 3 || i2 == 2 || i2 == 268435456 || i2 == 536870912 || i2 == 805306368 || i2 == 4;
    }

    public static int n(long j2, long j3) {
        if (j2 < j3) {
            return -1;
        }
        return j2 == j3 ? 0 : 1;
    }

    public static boolean n0(int i2) {
        return i2 == 10 || i2 == 13;
    }

    public static float o(float f2, float f3, float f4) {
        return Math.max(f3, Math.min(f2, f4));
    }

    public static boolean o0(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || "file".equals(scheme);
    }

    public static int p(int i2, int i3, int i4) {
        return Math.max(i3, Math.min(i2, i4));
    }

    public static boolean p0(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    public static long q(long j2, long j3, long j4) {
        return Math.max(j3, Math.min(j2, j4));
    }

    public static Thread q0(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    public static int r(byte[] bArr, int i2, int i3, int i4) {
        while (i2 < i3) {
            i4 = n[((i4 >>> 24) ^ (bArr[i2] & 255)) & 255] ^ (i4 << 8);
            i2++;
        }
        return i4;
    }

    public static int r0(int[] iArr, int i2) {
        for (int i3 = 0; i3 < iArr.length; i3++) {
            if (iArr[i3] == i2) {
                return i3;
            }
        }
        return -1;
    }

    public static int s(byte[] bArr, int i2, int i3, int i4) {
        while (i2 < i3) {
            i4 = o[i4 ^ (bArr[i2] & 255)];
            i2++;
        }
        return i4;
    }

    public static String s0(String str) {
        int i2 = 0;
        while (true) {
            String[] strArr = m;
            if (i2 >= strArr.length) {
                return str;
            }
            if (str.startsWith(strArr[i2])) {
                return strArr[i2 + 1] + str.substring(strArr[i2].length());
            }
            i2 += 2;
        }
    }

    public static Handler t(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    public static long t0(long j2) {
        return (j2 == C.TIME_UNSET || j2 == Long.MIN_VALUE) ? j2 : j2 * 1000;
    }

    public static Handler u() {
        return v(null);
    }

    public static ExecutorService u0(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() {
            @Override
            public final Thread newThread(Runnable runnable) {
                return blb.q0(str, runnable);
            }
        });
    }

    public static Handler v(Handler.Callback callback) {
        return t((Looper) zi.i(Looper.myLooper()), callback);
    }

    public static String v0(String str) {
        if (str == null) {
            return null;
        }
        String strReplace = str.replace('_', '-');
        if (!strReplace.isEmpty() && !strReplace.equals(C.LANGUAGE_UNDETERMINED)) {
            str = strReplace;
        }
        String strE = ui.e(str);
        String str2 = G0(strE, "-")[0];
        if (k == null) {
            k = y();
        }
        String str3 = (String) k.get(str2);
        if (str3 != null) {
            strE = str3 + strE.substring(str2.length());
            str2 = str3;
        }
        return (BooleanUtils.NO.equals(str2) || CmcdData.OBJECT_TYPE_INIT_SEGMENT.equals(str2) || "zh".equals(str2)) ? s0(strE) : strE;
    }

    public static Handler w() {
        return x(null);
    }

    public static Object[] w0(Object[] objArr, Object[] objArr2) {
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length + objArr2.length);
        System.arraycopy(objArr2, 0, objArrCopyOf, objArr.length, objArr2.length);
        return objArrCopyOf;
    }

    public static Handler x(Handler.Callback callback) {
        return t(K(), callback);
    }

    public static Object[] x0(Object[] objArr, int i2) {
        zi.a(i2 <= objArr.length);
        return Arrays.copyOf(objArr, i2);
    }

    public static HashMap y() {
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap map = new HashMap(iSOLanguages.length + l.length);
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
            String[] strArr = l;
            if (i2 >= strArr.length) {
                return map;
            }
            map.put(strArr[i2], strArr[i2 + 1]);
            i2 += 2;
        }
    }

    public static Object[] y0(Object[] objArr, int i2, int i3) {
        zi.a(i2 >= 0);
        zi.a(i3 <= objArr.length);
        return Arrays.copyOfRange(objArr, i2, i3);
    }

    public static String z(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static boolean z0(Handler handler, Runnable runnable) {
        if (!handler.getLooper().getThread().isAlive()) {
            return false;
        }
        if (handler.getLooper() != Looper.myLooper()) {
            return handler.post(runnable);
        }
        runnable.run();
        return true;
    }
}
