package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class drb extends SQLiteOpenHelper {
    public drb(Context context) {
        super(context, "video_download_info.db", (SQLiteDatabase.CursorFactory) null, 5);
    }

    public final void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS video_download_info");
        sQLiteDatabase.execSQL("CREATE TABLE video_download_info(_id INTEGER PRIMARY KEY AUTOINCREMENT, video_url TEXT, mime_type TEXT, download_time BIGINT, percent REAL, task_state TEXT, video_type TINYINT, cached_length BIGINT, total_length BIGINT, cached_ts INTEGER, total_ts INTEGER , completed TINYINT, file_name TEXT Default 0, file_path TEXT, cover_url TEXT, cover_path TEXT,video_title TEXT,final_name TEXT,sniff_id TEXT,group_name TEXT);");
    }

    public final void b(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE video_download_info ADD COLUMN cover_url TEXT");
        sQLiteDatabase.execSQL("ALTER TABLE video_download_info ADD COLUMN cover_path TEXT");
    }

    public final void d(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE video_download_info ADD COLUMN video_title TEXT");
    }

    public final void e(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE video_download_info ADD COLUMN group_name TEXT");
    }

    public final void g(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE video_download_info ADD COLUMN sniff_id TEXT");
    }

    @Override
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        a(sQLiteDatabase);
    }

    @Override
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i == 1) {
            b(sQLiteDatabase);
        }
        if (i == 2) {
            d(sQLiteDatabase);
        }
        if (i == 3) {
            e(sQLiteDatabase);
        }
        if (i == 4) {
            g(sQLiteDatabase);
        }
    }
}
