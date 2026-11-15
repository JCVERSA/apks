package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import com.blankj.utilcode.util.b;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public abstract class w6c {
    public static final String a = "has_online_fragment" + b.a;
    public static final String b = "has_download_fragment" + b.a;
    public static final String c = "new_feature_dialog_show_by_pause" + b.a;
    public static final String d = "new_feature_dialog_show_by_end" + b.a;
    public static final String e = "default_tab_position" + b.a;

    public static void A(Context context, float f) {
        SharedPreferences.Editor editorEdit = j(context).edit();
        editorEdit.putFloat("audio_play_speed", f);
        editorEdit.apply();
    }

    public static void B(Context context, float f) {
        SharedPreferences.Editor editorEdit = j(context).edit();
        editorEdit.putFloat("play_speed", f);
        editorEdit.apply();
    }

    public static void C(Context context, boolean z) {
        SharedPreferences.Editor editorEdit = j(context).edit();
        editorEdit.putBoolean("PLAYER_NEW_FEATURES_BUBBLEWND_CLICK" + b.a, z);
        editorEdit.apply();
    }

    public static void D(Context context, boolean z) {
        SharedPreferences.Editor editorEdit = j(context).edit();
        editorEdit.putBoolean("show_player_new_features" + b.a, z);
        editorEdit.apply();
    }

    public static void E(Context context, boolean z) {
        SharedPreferences.Editor editorEdit = j(context).edit();
        editorEdit.putBoolean("SPLASH_ACTIVTIY_STARTED", z);
        editorEdit.apply();
    }

    public static void F(Context context, long j) {
        SharedPreferences.Editor editorEdit = j(context).edit();
        editorEdit.putLong("play_timer", j);
        editorEdit.apply();
    }

    public static void G(Context context, int i) {
        SharedPreferences.Editor editorEdit = j(context).edit();
        editorEdit.putInt("play_timer_status", i);
        editorEdit.apply();
    }

    public static void H(Context context, SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        j(context).unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    public static int a(Context context) {
        int iH = h(context);
        if (iH != 3) {
            return iH;
        }
        u(context, "play_repeat_mode", 1);
        return 1;
    }

    public static float b(Context context) {
        return j(context).getFloat("audio_play_speed", 1.0f);
    }

    public static boolean c(Context context, String str, boolean z) {
        return j(context).getBoolean(str, z);
    }

    public static int d(Context context, String str, int i) {
        return j(context).getInt(str, i);
    }

    public static long e(Context context, String str, long j) {
        return j(context).getLong(str, j);
    }

    public static Object f(Context context, String str) {
        if ("skin_theme".equals(str)) {
            return g(context, str);
        }
        try {
            String string = j(context).getString(str, "");
            if ("".equals(string)) {
                return null;
            }
            return new ObjectInputStream(new ByteArrayInputStream(Base64.decode(string.getBytes(), 1))).readObject();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static Object g(Context context, String str) {
        try {
            String string = j(context).getString(str, "");
            if ("".equals(string)) {
                return null;
            }
            return new fb1(new ByteArrayInputStream(Base64.decode(string.getBytes(), 1))).readObject();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static int h(Context context) {
        return j(context).getInt("play_repeat_mode", 1);
    }

    public static float i(Context context) {
        return j(context).getFloat("play_speed", 1.0f);
    }

    public static SharedPreferences j(Context context) {
        return context == null ? se.a().getSharedPreferences("video_settings", 0) : context.getSharedPreferences("video_settings", 0);
    }

    public static String k(Context context, String str) {
        return j(context).getString(str, null);
    }

    public static long l(Context context) {
        return j(context).getLong("play_timer", 0L);
    }

    public static int m(Context context) {
        return j(context).getInt("play_timer_status", 0);
    }

    public static int n(Context context) {
        return d(context, "video_sort_list_mode_type", -3);
    }

    public static boolean o(Context context) {
        return j(context).getBoolean("PLAYER_NEW_FEATURES_BUBBLEWND_CLICK" + b.a, false);
    }

    public static boolean p(Context context) {
        return j(context).getBoolean("show_player_new_features" + b.a, false);
    }

    public static boolean q(Context context) {
        return j(context).getBoolean("SPLASH_ACTIVTIY_STARTED", false);
    }

    public static void r(Context context, String str, boolean z) {
        SharedPreferences.Editor editorEdit = j(context).edit();
        editorEdit.putBoolean(str, z);
        editorEdit.apply();
    }

    public static boolean s(Context context, String str, boolean z) {
        SharedPreferences.Editor editorEdit = j(context).edit();
        editorEdit.putBoolean(str, z);
        return editorEdit.commit();
    }

    public static void t(Context context, String str, int i) {
        SharedPreferences.Editor editorEdit = j(context).edit();
        editorEdit.putInt(str, i);
        editorEdit.apply();
    }

    public static boolean u(Context context, String str, int i) {
        SharedPreferences.Editor editorEdit = j(context).edit();
        editorEdit.putInt(str, i);
        return editorEdit.commit();
    }

    public static void v(Context context, String str, long j) {
        SharedPreferences.Editor editorEdit = j(context).edit();
        editorEdit.putLong(str, j);
        editorEdit.apply();
    }

    public static boolean w(Context context, String str, Object obj) {
        if (obj instanceof Serializable) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                new ObjectOutputStream(byteArrayOutputStream).writeObject(obj);
                return j(context).edit().putString(str, new String(Base64.encode(byteArrayOutputStream.toByteArray(), 0))).commit();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        } else {
            Log.e("VideoSharedPreferencesUtils", "the obj must implement Serializble");
        }
        return false;
    }

    public static void x(Context context, String str, String str2) {
        SharedPreferences.Editor editorEdit = j(context).edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }

    public static void y(Context context, SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        j(context).registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    public static boolean z(Context context, String str) {
        SharedPreferences.Editor editorEdit = j(context).edit();
        editorEdit.remove(str);
        return editorEdit.commit();
    }
}
