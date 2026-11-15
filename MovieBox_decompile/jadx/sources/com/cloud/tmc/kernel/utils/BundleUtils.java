package com.cloud.tmc.kernel.utils;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.log.TmcLogger;
import java.util.HashMap;
import java.util.Map;

public class BundleUtils {
    private static final String TAG = "TmcKernel:BundleUtils";

    public static Bundle clone(Bundle bundle) {
        return bundle == null ? new Bundle() : (Bundle) bundle.clone();
    }

    public static boolean contains(Bundle bundle, String str) {
        if (bundle == null || TextUtils.isEmpty(str)) {
            return false;
        }
        return bundle.containsKey(str);
    }

    public static boolean getBoolean(Bundle bundle, String str, boolean z10) {
        return ((Boolean) getValue(bundle, str, Boolean.valueOf(z10))).booleanValue();
    }

    public static byte[] getByteArray(Bundle bundle, @Nullable String str) {
        if (bundle != null && !TextUtils.isEmpty(str)) {
            try {
                return bundle.getByteArray(str);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static int getInt(Bundle bundle, String str) {
        return getInt(bundle, str, 0);
    }

    public static long getLong(Bundle bundle, String str) {
        return getLong(bundle, str, 0L);
    }

    public static <T extends Parcelable> T getParcelable(Bundle bundle, @Nullable String str) {
        if (bundle != null && !TextUtils.isEmpty(str)) {
            try {
                return (T) bundle.getParcelable(str);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static Object getSerializable(Bundle bundle, @Nullable String str) {
        if (bundle != null && !TextUtils.isEmpty(str)) {
            try {
                return bundle.getSerializable(str);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static String getString(Bundle bundle, String str) {
        return getString(bundle, str, "");
    }

    public static <T> T getValue(Bundle bundle, String str, T t10) {
        T t11;
        if (bundle != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    return (t10 != null && bundle.containsKey(str) && (t11 = (T) bundle.get(str)) != null && t10.getClass().isAssignableFrom(t11.getClass())) ? t11 : t10;
                }
            } catch (Exception e10) {
                TmcLogger.e("get json value exception", e10);
            }
        }
        return t10;
    }

    @NonNull
    public static Map<String, Object> toHashMap(@Nullable Bundle bundle) {
        HashMap map = new HashMap();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                map.put(str, bundle.get(str));
            }
        }
        return map;
    }

    public static void tryUnparcel(Bundle bundle) {
        if (bundle != null) {
            try {
                bundle.get("aaa");
            } catch (Throwable th2) {
                TmcLogger.e(TAG, "unparcel exception!", th2);
            }
        }
    }

    public static int getInt(Bundle bundle, String str, int i10) {
        Integer num;
        if (bundle != null) {
            try {
                return (TextUtils.isEmpty(str) || !bundle.containsKey(str) || (num = (Integer) bundle.get(str)) == null) ? i10 : num.intValue();
            } catch (Exception e10) {
                TmcLogger.e("get json value exception", e10);
            }
        }
        return i10;
    }

    public static long getLong(Bundle bundle, String str, long j10) {
        Long l10;
        if (bundle != null) {
            try {
                return (TextUtils.isEmpty(str) || !bundle.containsKey(str) || (l10 = (Long) bundle.get(str)) == null) ? j10 : l10.longValue();
            } catch (Exception e10) {
                TmcLogger.e("get json value exception", e10);
            }
        }
        return j10;
    }

    public static String getString(Bundle bundle, String str, String str2) {
        String str3;
        if (str2 == null) {
            str2 = "";
        }
        if (bundle != null) {
            try {
                if (!TextUtils.isEmpty(str) && bundle.containsKey(str) && (str3 = (String) bundle.get(str)) != null) {
                    return str3;
                }
            } catch (Exception e10) {
                TmcLogger.e("get json value exception", e10);
            }
        }
        return str2;
    }
}
