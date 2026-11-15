package defpackage;

import android.content.Context;
import android.content.SharedPreferences;

public final class sjd {
    public int a = 403;
    public Object b;

    public static void c(Context context, String str, Object obj) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences("qtsession", 0).edit();
            if (obj instanceof String) {
                editorEdit.putString(str, (String) obj);
            } else if (obj instanceof Integer) {
                editorEdit.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Boolean) {
                editorEdit.putBoolean(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Float) {
                editorEdit.putFloat(str, ((Float) obj).floatValue());
            } else if (obj instanceof Long) {
                editorEdit.putLong(str, ((Long) obj).longValue());
            } else {
                editorEdit.putString(str, obj.toString());
            }
            editorEdit.apply();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static Object f(Context context, String str, Object obj) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("qtsession", 0);
            if (obj instanceof String) {
                return sharedPreferences.getString(str, (String) obj);
            }
            if (obj instanceof Integer) {
                return Long.valueOf(sharedPreferences.getLong(str, ((Long) obj).longValue()));
            }
            if (obj instanceof Boolean) {
                return Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) obj).booleanValue()));
            }
            if (obj instanceof Float) {
                return Float.valueOf(sharedPreferences.getFloat(str, ((Float) obj).floatValue()));
            }
            if (obj instanceof Long) {
                return Long.valueOf(sharedPreferences.getLong(str, ((Long) obj).longValue()));
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final int a() {
        return this.a;
    }

    public final void b(int i) {
        this.a = i;
    }

    public final void d(Object obj) {
        this.b = obj;
    }

    public final Object e() {
        return this.b;
    }
}
