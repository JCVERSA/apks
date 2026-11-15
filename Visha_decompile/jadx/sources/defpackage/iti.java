package defpackage;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

public abstract class iti {
    public static HashMap f;
    public static Object k;
    public static boolean l;
    public static final Uri a = Uri.parse("content://com.google.android.gsf.gservices");
    public static final Uri b = Uri.parse("content://com.google.android.gsf.gservices/prefix");
    public static final Pattern c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    public static final Pattern d = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    public static final AtomicBoolean e = new AtomicBoolean();
    public static final HashMap g = new HashMap();
    public static final HashMap h = new HashMap();
    public static final HashMap i = new HashMap();
    public static final HashMap j = new HashMap();
    public static final String[] m = new String[0];

    public static String a(ContentResolver contentResolver, String str, String str2) {
        synchronized (iti.class) {
            try {
                String str3 = null;
                if (f == null) {
                    e.set(false);
                    f = new HashMap();
                    k = new Object();
                    l = false;
                    contentResolver.registerContentObserver(a, true, new qsi(null));
                } else if (e.getAndSet(false)) {
                    f.clear();
                    g.clear();
                    h.clear();
                    i.clear();
                    j.clear();
                    k = new Object();
                    l = false;
                }
                Object obj = k;
                if (f.containsKey(str)) {
                    String str4 = (String) f.get(str);
                    if (str4 != null) {
                        str3 = str4;
                    }
                    return str3;
                }
                int length = m.length;
                Cursor cursorQuery = contentResolver.query(a, null, null, new String[]{str}, null);
                if (cursorQuery == null) {
                    return null;
                }
                try {
                    if (!cursorQuery.moveToFirst()) {
                        c(obj, str, null);
                        return null;
                    }
                    String string = cursorQuery.getString(1);
                    if (string != null && string.equals(null)) {
                        string = null;
                    }
                    c(obj, str, string);
                    return string != null ? string : null;
                } finally {
                    cursorQuery.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void c(Object obj, String str, String str2) {
        synchronized (iti.class) {
            try {
                if (obj == k) {
                    f.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
