package com.transsion.sniffer_load.database;

import android.content.Context;
import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.transsion.dbdata.beans.sniff.Bookmark;
import com.transsion.sniffer_load.data.DownloadHistory;
import com.transsion.sniffer_load.data.ReviewHistory;
import com.transsion.sniffer_load.data.WebPreviewRecord;
import defpackage.dv8;
import defpackage.ig0;
import defpackage.jic;
import defpackage.nz2;

@Database(entities = {Bookmark.class, ReviewHistory.class, WebPreviewRecord.class, DownloadHistory.class}, exportSchema = false, version = 3)
public abstract class BookmarkDatabase extends RoomDatabase {
    public static BookmarkDatabase a;
    public static final Migration b = new a(1, 2);
    public static final Migration c = new b(2, 3);

    public class a extends Migration {
        public a(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE  IF NOT EXISTS WebPreviewRecord (id INTEGER  NOT NULL PRIMARY KEY, title TEXT, icon BLOB, previewBitmap BLOB, webUrl TEXT)");
        }
    }

    public class b extends Migration {
        public b(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE  IF NOT EXISTS DownloadHistory (mediaId TEXT  NOT NULL PRIMARY KEY, originSite TEXT, videoSite TEXT, timeStamp INTEGER NOT NULL)");
        }
    }

    public static synchronized BookmarkDatabase c(Context context) {
        try {
            if (a == null) {
                a = (BookmarkDatabase) Room.databaseBuilder(context.getApplicationContext(), BookmarkDatabase.class, "bookmark.db").addMigrations(b).addMigrations(c).allowMainThreadQueries().build();
            }
        } catch (Throwable th) {
            throw th;
        }
        return a;
    }

    public abstract ig0 a();

    public abstract nz2 b();

    public abstract dv8 d();

    public abstract jic e();
}
