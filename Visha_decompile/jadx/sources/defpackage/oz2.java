package defpackage;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.transsion.sniffer_load.data.DownloadHistory;
import java.util.Collections;
import java.util.List;

public final class oz2 implements nz2 {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;

    public class a extends EntityInsertionAdapter {
        public a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, DownloadHistory downloadHistory) {
            String str = downloadHistory.mediaId;
            if (str == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, str);
            }
            String str2 = downloadHistory.originSite;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str2);
            }
            String str3 = downloadHistory.videoSite;
            if (str3 == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, str3);
            }
            supportSQLiteStatement.bindLong(4, downloadHistory.timeStamp);
        }

        @Override
        public String createQuery() {
            return "INSERT OR REPLACE INTO `DownloadHistory` (`mediaId`,`originSite`,`videoSite`,`timeStamp`) VALUES (?,?,?,?)";
        }
    }

    public oz2(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new a(roomDatabase);
    }

    public static List a() {
        return Collections.emptyList();
    }

    @Override
    public void addDownloadHistory(DownloadHistory downloadHistory) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.b.insert(downloadHistory);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public DownloadHistory getDownloadHistory(String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("select * FROM DownloadHistory WHERE mediaId=?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.a.assertNotSuspendingTransaction();
        DownloadHistory downloadHistory = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mediaId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "originSite");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "videoSite");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "timeStamp");
            if (cursorQuery.moveToFirst()) {
                DownloadHistory downloadHistory2 = new DownloadHistory();
                if (cursorQuery.isNull(columnIndexOrThrow)) {
                    downloadHistory2.mediaId = null;
                } else {
                    downloadHistory2.mediaId = cursorQuery.getString(columnIndexOrThrow);
                }
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    downloadHistory2.originSite = null;
                } else {
                    downloadHistory2.originSite = cursorQuery.getString(columnIndexOrThrow2);
                }
                if (cursorQuery.isNull(columnIndexOrThrow3)) {
                    downloadHistory2.videoSite = null;
                } else {
                    downloadHistory2.videoSite = cursorQuery.getString(columnIndexOrThrow3);
                }
                downloadHistory2.timeStamp = cursorQuery.getLong(columnIndexOrThrow4);
                downloadHistory = downloadHistory2;
            }
            return downloadHistory;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }
}
