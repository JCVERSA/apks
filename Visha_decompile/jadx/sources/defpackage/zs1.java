package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import java.io.Closeable;

public interface zs1 {

    public interface a {
        void a(b bVar);
    }

    public interface b extends Closeable {
        void beginTransaction();

        SQLiteStatement compileStatement(String str);

        void endTransaction();

        void execSQL(String str);

        Cursor rawQuery(String str, String[] strArr);

        void setTransactionSuccessful();
    }

    public interface c {
        void a(b bVar, int i, int i2);
    }

    b getReadableDatabase();

    b getWritableDatabase();
}
