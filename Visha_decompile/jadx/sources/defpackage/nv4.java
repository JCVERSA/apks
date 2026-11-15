package defpackage;

import android.database.Cursor;

public abstract class nv4 {
    public static void a(Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return;
        }
        cursor.close();
    }
}
