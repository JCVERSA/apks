package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.lzy.okgo.cookie.SerializableCookie;

public class tj1 extends t90 {
    public static Context e;
    public static volatile tj1 f;

    public tj1() {
        super(new jp1(e));
    }

    public static tj1 o() {
        if (f == null) {
            synchronized (tj1.class) {
                try {
                    if (f == null) {
                        f = new tj1();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f;
    }

    public static void p(Context context) {
        e = context;
    }

    @Override
    public String d() {
        return "cookie";
    }

    @Override
    public ContentValues c(SerializableCookie serializableCookie) {
        return SerializableCookie.getContentValues(serializableCookie);
    }

    @Override
    public SerializableCookie f(Cursor cursor) {
        return SerializableCookie.parseCursorToBean(cursor);
    }
}
