package o;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.snaptube.ad.guardian.TrackConstant;
import com.snaptube.base.BaseApplication;
import com.vungle.ads.internal.protos.Sdk;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import net.pubnative.mediation.config.model.RequestTimeModel;
import net.pubnative.mediation.request.model.PubnativeAdModel;

public class od {
    public static final int a;
    public static final int b;

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        a = (int) timeUnit.toMillis(5L);
        b = (int) timeUnit.toMillis(2L);
    }

    public static String a(String str, String... strArr) {
        return o(strArr) + str;
    }

    public static boolean b(String str) {
        return p().getBoolean("/pre_init_sdk/" + str, true);
    }

    public static boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return p().getBoolean("/preload_switch/" + str, false);
    }

    public static long d(String str) {
        return p().getInt(String.format("/selfbuild/%s/ad_video_log_position", str), 2000);
    }

    public static long e() {
        return p().getInt("/bannerad/close_timeout", 5000);
    }

    public static long f() {
        return p().getInt("/nativead/close_timeout", 5000);
    }

    public static int g(String str) {
        return Math.max(Math.max(p().getInt(a("ad_pos_full_screen_impression_interval", str), Sdk.SDKError.Reason.NATIVE_ASSET_ERROR_VALUE), l()), TrackConstant.SCAN_MAX_COUNT);
    }

    public static long h() {
        return p().getInt("/selfbuild/adx_banner/impression_timeout", a);
    }

    public static long i() {
        return p().getInt("/selfbuild/adx_banner/impression_valid_time", b);
    }

    public static String j() {
        return p().getString("/selfbuild/adx_banner/mraid_regex", "[^a-zA-Z0-9]mraid\\.js[^a-zA-Z0-9]");
    }

    public static Set k() {
        String string = p().getString("/ad_policy/browsers", "");
        HashSet hashSet = new HashSet();
        if (!TextUtils.isEmpty(string)) {
            String[] strArrSplit = string.split(RequestTimeModel.DELIMITER);
            if (strArrSplit != null) {
                for (String str : strArrSplit) {
                    hashSet.add(str);
                }
            } else {
                hashSet = new HashSet(1);
                hashSet.add(string);
            }
        }
        return hashSet;
    }

    public static int l() {
        return Math.max(p().getInt("/global/full_screen_impression_interval", Sdk.SDKError.Reason.NATIVE_ASSET_ERROR_VALUE), TrackConstant.SCAN_MAX_COUNT);
    }

    public static int m(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        return p().getInt("/" + str + "/min_valid_impression_duration", -1);
    }

    public static int n(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        return p().getInt("/" + str + "/min_valid_impression_area_percentage", -1);
    }

    public static String o(String... strArr) {
        if (strArr != null && strArr.length != 0) {
            StringBuilder sb = new StringBuilder("/");
            for (String str : strArr) {
                sb.append(str);
                sb.append("/");
            }
            return sb.toString();
        }
        return "";
    }

    public static SharedPreferences p() {
        return BaseApplication.e().getSharedPreferences(PubnativeAdModel.PREF_NAME, 0);
    }

    public static int q() {
        return p().getInt("/selfbuild/skip_debug_index", -1);
    }

    public static int r(String str) {
        return p().getInt(String.format("/%s/auto_close_duration", str), 0);
    }

    public static boolean s(String str) {
        return p().getBoolean(String.format("/%s/full_screen_clickable", str), false);
    }

    public static boolean t(String str) {
        return p().getBoolean(String.format("/selfbuild/%s/ad_video_loop_play", str), true);
    }

    public static boolean u(String str) {
        return p().getBoolean(String.format("/selfbuild/%s/ad_video_volume_mute", str), true);
    }

    public static boolean v(String str) {
        return p().getBoolean(a("enabled", str), true);
    }

    public static boolean w(String str) {
        String string = p().getString("/selfbuild/adx_banner/impression_url_regex", null);
        if (!TextUtils.isEmpty(string)) {
            try {
                return Pattern.matches(string, str);
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
