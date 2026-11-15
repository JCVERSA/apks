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
import com.transsion.dbdata.database.VideoPlayList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;

public final class kub implements jub {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;
    public final EntityDeletionOrUpdateAdapter c;
    public final EntityDeletionOrUpdateAdapter d;
    public final SharedSQLiteStatement e;
    public final SharedSQLiteStatement f;

    public class a extends EntityInsertionAdapter {
        public a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, VideoPlayList videoPlayList) {
            supportSQLiteStatement.bindLong(1, videoPlayList.id);
            String str = videoPlayList.name;
            if (str == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str);
            }
            supportSQLiteStatement.bindLong(3, videoPlayList.setup_time);
            supportSQLiteStatement.bindLong(4, videoPlayList.last_play_time);
        }

        @Override
        public String createQuery() {
            return "INSERT OR ABORT INTO `video_playlist` (`id`,`name`,`setup_time`,`last_play_time`) VALUES (nullif(?, 0),?,?,?)";
        }
    }

    public class b extends EntityDeletionOrUpdateAdapter {
        public b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, VideoPlayList videoPlayList) {
            supportSQLiteStatement.bindLong(1, videoPlayList.id);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM `video_playlist` WHERE `id` = ?";
        }
    }

    public class c extends EntityDeletionOrUpdateAdapter {
        public c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, VideoPlayList videoPlayList) {
            supportSQLiteStatement.bindLong(1, videoPlayList.id);
            String str = videoPlayList.name;
            if (str == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str);
            }
            supportSQLiteStatement.bindLong(3, videoPlayList.setup_time);
            supportSQLiteStatement.bindLong(4, videoPlayList.last_play_time);
            supportSQLiteStatement.bindLong(5, videoPlayList.id);
        }

        @Override
        public String createQuery() {
            return "UPDATE OR ABORT `video_playlist` SET `id` = ?,`name` = ?,`setup_time` = ?,`last_play_time` = ? WHERE `id` = ?";
        }
    }

    public class d extends SharedSQLiteStatement {
        public d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM video_playlist WHERE id =?";
        }
    }

    public class e extends SharedSQLiteStatement {
        public e(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM video_playlist";
        }
    }

    public class f implements Callable {
        public final RoomSQLiteQuery b;

        public f(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Cursor cursorQuery = DBUtil.query(kub.this.a, this.b, false, null);
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "setup_time");
                int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_time");
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    VideoPlayList videoPlayList = new VideoPlayList();
                    videoPlayList.id = cursorQuery.getInt(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        videoPlayList.name = null;
                    } else {
                        videoPlayList.name = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    videoPlayList.setup_time = cursorQuery.getLong(columnIndexOrThrow3);
                    videoPlayList.last_play_time = cursorQuery.getLong(columnIndexOrThrow4);
                    arrayList.add(videoPlayList);
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

    public kub(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new a(roomDatabase);
        this.c = new b(roomDatabase);
        this.d = new c(roomDatabase);
        this.e = new d(roomDatabase);
        this.f = new e(roomDatabase);
    }

    public static List b() {
        return Collections.emptyList();
    }

    @Override
    public int deleteAllPlayList() {
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
    public int deletePlayList(VideoPlayList videoPlayList) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandle = this.c.handle(videoPlayList);
            this.a.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int deletePlayListById(int i) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.e.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i);
        try {
            this.a.beginTransaction();
            try {
                int iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.e.release(supportSQLiteStatementAcquire);
                return iExecuteUpdateDelete;
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
    public List getPlayList(int i) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM video_playlist  ORDER BY setup_time DESC  LIMIT ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "setup_time");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_time");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                VideoPlayList videoPlayList = new VideoPlayList();
                videoPlayList.id = cursorQuery.getInt(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    videoPlayList.name = null;
                } else {
                    videoPlayList.name = cursorQuery.getString(columnIndexOrThrow2);
                }
                videoPlayList.setup_time = cursorQuery.getLong(columnIndexOrThrow3);
                videoPlayList.last_play_time = cursorQuery.getLong(columnIndexOrThrow4);
                arrayList.add(videoPlayList);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public LiveData getPlayListList(int i) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM video_playlist ORDER BY setup_time DESC LIMIT ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i);
        return this.a.getInvalidationTracker().createLiveData(new String[]{"video_playlist"}, false, new f(roomSQLiteQueryAcquire));
    }

    @Override
    public long insertPlayList(VideoPlayList videoPlayList) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            long jInsertAndReturnId = this.b.insertAndReturnId(videoPlayList);
            this.a.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int updatePlayList(VideoPlayList videoPlayList) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandle = this.d.handle(videoPlayList);
            this.a.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.a.endTransaction();
        }
    }
}
