package org.proninyaroslav.libretorrent.core.storage.dao;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.Collections;
import java.util.List;
import org.proninyaroslav.libretorrent.core.model.data.entity.FastResume;

public final class FastResumeDao_Impl implements FastResumeDao {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;

    public FastResumeDao_Impl(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new EntityInsertionAdapter<FastResume>(roomDatabase) {
            @Override
            public void bind(SupportSQLiteStatement supportSQLiteStatement, FastResume fastResume) {
                String str = fastResume.a;
                if (str == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, str);
                }
                byte[] bArr = fastResume.b;
                if (bArr == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindBlob(2, bArr);
                }
            }

            @Override
            public String createQuery() {
                return "INSERT OR REPLACE INTO `FastResume` (`torrentId`,`data`) VALUES (?,?)";
            }
        };
    }

    public static List a() {
        return Collections.emptyList();
    }

    @Override
    public void add(FastResume fastResume) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.b.insert(fastResume);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public FastResume getByTorrentId(String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM FastResume WHERE torrentId = ?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.a.assertNotSuspendingTransaction();
        FastResume fastResume = null;
        byte[] blob = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "torrentId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "data");
            if (cursorQuery.moveToFirst()) {
                String string = cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow);
                if (!cursorQuery.isNull(columnIndexOrThrow2)) {
                    blob = cursorQuery.getBlob(columnIndexOrThrow2);
                }
                fastResume = new FastResume(string, blob);
            }
            return fastResume;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }
}
