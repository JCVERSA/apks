package defpackage;

import android.util.Log;
import com.tencent.mmkv.MMKV;

public abstract class fec {
    public static boolean a() {
        return MMKV.p().e("auto_pip", true);
    }

    public static int b(String str, int i) {
        try {
            return MMKV.p().g(str, i);
        } catch (Exception e) {
            Log.e("VishaMMKVUtils", "Failed to get int with key: " + str, e);
            return i;
        }
    }

    public static long c(String str, long j) {
        try {
            return MMKV.p().i(str, j);
        } catch (Exception e) {
            Log.e("VishaMMKVUtils", "Failed to get long with key: " + str, e);
            return j;
        }
    }

    public static boolean d(String str, int i) {
        try {
            return MMKV.p().t(str, i);
        } catch (Exception e) {
            Log.e("VishaMMKVUtils", "Failed to put int with key: " + str, e);
            return false;
        }
    }

    public static boolean e(String str, long j) {
        try {
            return MMKV.p().u(str, j);
        } catch (Exception e) {
            Log.e("VishaMMKVUtils", "Failed to put long with key: " + str, e);
            return false;
        }
    }
}
