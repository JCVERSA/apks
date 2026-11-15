package defpackage;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.transsion.dbdata.beans.LyricData;
import java.util.Collections;
import java.util.List;

public final class bv5 implements av5 {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;

    public class a extends EntityInsertionAdapter {
        public a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, LyricData lyricData) {
            supportSQLiteStatement.bindLong(1, lyricData.media_id);
            String str = lyricData._data;
            if (str == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str);
            }
            supportSQLiteStatement.bindLong(3, lyricData.offset);
        }

        @Override
        public String createQuery() {
            return "INSERT OR REPLACE INTO `lyric_data` (`media_id`,`_data`,`delay`) VALUES (?,?,?)";
        }
    }

    public bv5(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new a(roomDatabase);
    }

    public static List a() {
        return Collections.emptyList();
    }

    @Override
    public void insert(LyricData lyricData) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.b.insert(lyricData);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public LyricData queryLyricData(int i) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM lyric_data WHERE media_id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i);
        this.a.assertNotSuspendingTransaction();
        LyricData lyricData = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "delay");
            if (cursorQuery.moveToFirst()) {
                LyricData lyricData2 = new LyricData();
                lyricData2.media_id = cursorQuery.getInt(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    lyricData2._data = null;
                } else {
                    lyricData2._data = cursorQuery.getString(columnIndexOrThrow2);
                }
                lyricData2.offset = cursorQuery.getInt(columnIndexOrThrow3);
                lyricData = lyricData2;
            }
            return lyricData;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }
}
