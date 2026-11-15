package h9;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.exoplayer2.util.s;

public class b extends SQLiteOpenHelper implements a {
    public b(Context context) {
        super(context.getApplicationContext(), "exoplayer_internal.db", (SQLiteDatabase.CursorFactory) null, 1);
    }

    private static void b(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorQuery = sQLiteDatabase.query("sqlite_master", new String[]{NativeComponentConstants.KEY_COMPONENT_TYPE, "name"}, null, null, null, null, null);
        while (cursorQuery.moveToNext()) {
            try {
                String string = cursorQuery.getString(0);
                String string2 = cursorQuery.getString(1);
                if (!"sqlite_sequence".equals(string2)) {
                    String str = "DROP " + string + " IF EXISTS " + string2;
                    try {
                        sQLiteDatabase.execSQL(str);
                    } catch (SQLException e10) {
                        s.d("SADatabaseProvider", "Error executing " + str, e10);
                    }
                }
            } catch (Throwable th2) {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
        cursorQuery.close();
    }

    @Override
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        b(sQLiteDatabase);
    }

    @Override
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
    }

    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
    }
}
