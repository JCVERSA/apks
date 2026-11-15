package defpackage;

import android.database.Cursor;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.LiveData;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.transsion.dbdata.database.ConvertingVideo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;

public final class rj1 implements qj1 {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;
    public final EntityDeletionOrUpdateAdapter c;
    public final SharedSQLiteStatement d;
    public final SharedSQLiteStatement e;
    public final SharedSQLiteStatement f;
    public final SharedSQLiteStatement g;

    public class a extends EntityInsertionAdapter {
        public a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, ConvertingVideo convertingVideo) {
            supportSQLiteStatement.bindLong(1, convertingVideo.id);
            Integer num = convertingVideo.mediaId;
            if (num == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindLong(2, num.intValue());
            }
            String str = convertingVideo.data;
            if (str == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, str);
            }
            supportSQLiteStatement.bindLong(4, convertingVideo.add_time);
            supportSQLiteStatement.bindLong(5, convertingVideo.converted_status);
        }

        @Override
        public String createQuery() {
            return "INSERT OR REPLACE INTO `converting_video` (`id`,`mediaId`,`data`,`add_time`,`converted_status`) VALUES (nullif(?, 0),?,?,?,?)";
        }
    }

    public class b extends EntityDeletionOrUpdateAdapter {
        public b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, ConvertingVideo convertingVideo) {
            supportSQLiteStatement.bindLong(1, convertingVideo.id);
            Integer num = convertingVideo.mediaId;
            if (num == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindLong(2, num.intValue());
            }
            String str = convertingVideo.data;
            if (str == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, str);
            }
            supportSQLiteStatement.bindLong(4, convertingVideo.add_time);
            supportSQLiteStatement.bindLong(5, convertingVideo.converted_status);
            supportSQLiteStatement.bindLong(6, convertingVideo.id);
        }

        @Override
        public String createQuery() {
            return "UPDATE OR ABORT `converting_video` SET `id` = ?,`mediaId` = ?,`data` = ?,`add_time` = ?,`converted_status` = ? WHERE `id` = ?";
        }
    }

    public class c extends SharedSQLiteStatement {
        public c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM converting_video WHERE mediaId =?";
        }
    }

    public class d extends SharedSQLiteStatement {
        public d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM converting_video WHERE converted_status =?";
        }
    }

    public class e extends SharedSQLiteStatement {
        public e(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM converting_video";
        }
    }

    public class f extends SharedSQLiteStatement {
        public f(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM converting_video WHERE mediaId =?";
        }
    }

    public class g implements Callable {
        public final RoomSQLiteQuery b;

        public g(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Cursor cursorQuery = DBUtil.query(rj1.this.a, this.b, false, null);
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mediaId");
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "data");
                int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "add_time");
                int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "converted_status");
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    Integer numValueOf = cursorQuery.isNull(columnIndexOrThrow2) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow2));
                    ConvertingVideo convertingVideo = new ConvertingVideo(numValueOf.intValue(), cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4));
                    convertingVideo.id = cursorQuery.getInt(columnIndexOrThrow);
                    convertingVideo.converted_status = cursorQuery.getInt(columnIndexOrThrow5);
                    arrayList.add(convertingVideo);
                }
                return arrayList;
            } finally {
                cursorQuery.close();
            }
        }

        public void finalize() {
            this.b.release();
        }
    }

    public rj1(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new a(roomDatabase);
        this.c = new b(roomDatabase);
        this.d = new c(roomDatabase);
        this.e = new d(roomDatabase);
        this.f = new e(roomDatabase);
        this.g = new f(roomDatabase);
    }

    public static List b() {
        return Collections.emptyList();
    }

    @Override
    public void deleteAllConvertFailedVideo(int i) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.e.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i);
        try {
            this.a.beginTransaction();
            try {
                supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.e.release(supportSQLiteStatementAcquire);
            } catch (Throwable th) {
                this.a.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.e.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public int deleteAllConvertingVideo() {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.f.acquire();
        try {
            this.a.beginTransaction();
            try {
                int iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.f.release(supportSQLiteStatementAcquire);
                return iExecuteUpdateDelete;
            } catch (Throwable th) {
                this.a.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.f.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public void deleteConvertingVideoById(int i) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.g.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i);
        try {
            this.a.beginTransaction();
            try {
                supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.g.release(supportSQLiteStatementAcquire);
            } catch (Throwable th) {
                this.a.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.g.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public int deleteVideoByMediaId(int i) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.d.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i);
        try {
            this.a.beginTransaction();
            try {
                int iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.d.release(supportSQLiteStatementAcquire);
                return iExecuteUpdateDelete;
            } catch (Throwable th) {
                this.a.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.d.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public LiveData getAll(int i) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM converting_video ORDER BY add_time DESC LIMIT ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i);
        return this.a.getInvalidationTracker().createLiveData(new String[]{"converting_video"}, false, new g(roomSQLiteQueryAcquire));
    }

    @Override
    public List getAllConvertingVideo(int i) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM converting_video ORDER BY add_time DESC LIMIT ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mediaId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "data");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "add_time");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "converted_status");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                ConvertingVideo convertingVideo = new ConvertingVideo((cursorQuery.isNull(columnIndexOrThrow2) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow2))).intValue(), cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4));
                convertingVideo.id = cursorQuery.getInt(columnIndexOrThrow);
                convertingVideo.converted_status = cursorQuery.getInt(columnIndexOrThrow5);
                arrayList.add(convertingVideo);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getConvertMediaIdsOrderTime(int i) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT mediaId FROM converting_video ORDER BY add_time DESC LIMIT ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(cursorQuery.isNull(0) ? null : Integer.valueOf(cursorQuery.getInt(0)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public ConvertingVideo getConvertingVideoByMediaId(int i) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM converting_video WHERE mediaId=?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i);
        this.a.assertNotSuspendingTransaction();
        ConvertingVideo convertingVideo = null;
        String string = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mediaId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "data");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "add_time");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "converted_status");
            if (cursorQuery.moveToFirst()) {
                Integer numValueOf = cursorQuery.isNull(columnIndexOrThrow2) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow2));
                if (!cursorQuery.isNull(columnIndexOrThrow3)) {
                    string = cursorQuery.getString(columnIndexOrThrow3);
                }
                ConvertingVideo convertingVideo2 = new ConvertingVideo(numValueOf.intValue(), string, cursorQuery.getLong(columnIndexOrThrow4));
                convertingVideo2.id = cursorQuery.getInt(columnIndexOrThrow);
                convertingVideo2.converted_status = cursorQuery.getInt(columnIndexOrThrow5);
                convertingVideo = convertingVideo2;
            }
            return convertingVideo;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public long insert(ConvertingVideo convertingVideo) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            long jInsertAndReturnId = this.b.insertAndReturnId(convertingVideo);
            this.a.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void insertVideos(List list) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.b.insert((Iterable) list);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int updateConvertingVideo(ConvertingVideo convertingVideo) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandle = this.c.handle(convertingVideo);
            this.a.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.a.endTransaction();
        }
    }
}
