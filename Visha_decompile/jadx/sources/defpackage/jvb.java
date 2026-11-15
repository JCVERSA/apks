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
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.transsion.dbdata.database.VideoPlayListMedia;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

public final class jvb implements ivb {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;
    public final EntityDeletionOrUpdateAdapter c;
    public final EntityDeletionOrUpdateAdapter d;
    public final SharedSQLiteStatement e;
    public final SharedSQLiteStatement f;
    public final SharedSQLiteStatement g;
    public final SharedSQLiteStatement h;
    public final SharedSQLiteStatement i;
    public final SharedSQLiteStatement j;

    public class a implements Callable {
        public final RoomSQLiteQuery b;

        public a(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Cursor cursorQuery = DBUtil.query(jvb.this.a, this.b, false, null);
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlist_id");
                int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
                int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlistFlag");
                int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
                int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_time");
                int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    VideoPlayListMedia videoPlayListMedia = new VideoPlayListMedia();
                    videoPlayListMedia.id = cursorQuery.getInt(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        videoPlayListMedia.name = null;
                    } else {
                        videoPlayListMedia.name = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    videoPlayListMedia.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                    videoPlayListMedia.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                    videoPlayListMedia.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                    videoPlayListMedia.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                    videoPlayListMedia.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                    if (cursorQuery.isNull(columnIndexOrThrow8)) {
                        videoPlayListMedia._data = null;
                    } else {
                        videoPlayListMedia._data = cursorQuery.getString(columnIndexOrThrow8);
                    }
                    arrayList.add(videoPlayListMedia);
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

    public class b implements Callable {
        public final RoomSQLiteQuery b;

        public b(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Cursor cursorQuery = DBUtil.query(jvb.this.a, this.b, false, null);
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlist_id");
                int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
                int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlistFlag");
                int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
                int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_time");
                int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    VideoPlayListMedia videoPlayListMedia = new VideoPlayListMedia();
                    videoPlayListMedia.id = cursorQuery.getInt(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        videoPlayListMedia.name = null;
                    } else {
                        videoPlayListMedia.name = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    videoPlayListMedia.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                    videoPlayListMedia.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                    videoPlayListMedia.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                    videoPlayListMedia.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                    videoPlayListMedia.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                    if (cursorQuery.isNull(columnIndexOrThrow8)) {
                        videoPlayListMedia._data = null;
                    } else {
                        videoPlayListMedia._data = cursorQuery.getString(columnIndexOrThrow8);
                    }
                    arrayList.add(videoPlayListMedia);
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

    public class c extends EntityInsertionAdapter {
        public c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, VideoPlayListMedia videoPlayListMedia) {
            supportSQLiteStatement.bindLong(1, videoPlayListMedia.id);
            String str = videoPlayListMedia.name;
            if (str == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str);
            }
            supportSQLiteStatement.bindLong(3, videoPlayListMedia.playlist_id);
            supportSQLiteStatement.bindLong(4, videoPlayListMedia.media_id);
            supportSQLiteStatement.bindLong(5, videoPlayListMedia.playlistFlag);
            supportSQLiteStatement.bindLong(6, videoPlayListMedia.play_count);
            supportSQLiteStatement.bindLong(7, videoPlayListMedia.record_time);
            String str2 = videoPlayListMedia._data;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(8);
            } else {
                supportSQLiteStatement.bindString(8, str2);
            }
        }

        @Override
        public String createQuery() {
            return "INSERT OR ABORT INTO `video_media_playList` (`id`,`name`,`playlist_id`,`media_id`,`playlistFlag`,`play_count`,`record_time`,`_data`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)";
        }
    }

    public class d extends EntityDeletionOrUpdateAdapter {
        public d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, VideoPlayListMedia videoPlayListMedia) {
            supportSQLiteStatement.bindLong(1, videoPlayListMedia.id);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM `video_media_playList` WHERE `id` = ?";
        }
    }

    public class e extends EntityDeletionOrUpdateAdapter {
        public e(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, VideoPlayListMedia videoPlayListMedia) {
            supportSQLiteStatement.bindLong(1, videoPlayListMedia.id);
            String str = videoPlayListMedia.name;
            if (str == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str);
            }
            supportSQLiteStatement.bindLong(3, videoPlayListMedia.playlist_id);
            supportSQLiteStatement.bindLong(4, videoPlayListMedia.media_id);
            supportSQLiteStatement.bindLong(5, videoPlayListMedia.playlistFlag);
            supportSQLiteStatement.bindLong(6, videoPlayListMedia.play_count);
            supportSQLiteStatement.bindLong(7, videoPlayListMedia.record_time);
            String str2 = videoPlayListMedia._data;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(8);
            } else {
                supportSQLiteStatement.bindString(8, str2);
            }
            supportSQLiteStatement.bindLong(9, videoPlayListMedia.id);
        }

        @Override
        public String createQuery() {
            return "UPDATE OR ABORT `video_media_playList` SET `id` = ?,`name` = ?,`playlist_id` = ?,`media_id` = ?,`playlistFlag` = ?,`play_count` = ?,`record_time` = ?,`_data` = ? WHERE `id` = ?";
        }
    }

    public class f extends SharedSQLiteStatement {
        public f(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM video_media_playList WHERE playlist_id =? AND media_id =?";
        }
    }

    public class g extends SharedSQLiteStatement {
        public g(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM video_media_playList WHERE id =?";
        }
    }

    public class h extends SharedSQLiteStatement {
        public h(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM video_media_playList WHERE media_id =?";
        }
    }

    public class i extends SharedSQLiteStatement {
        public i(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM video_media_playList WHERE playlist_id =?";
        }
    }

    public class j extends SharedSQLiteStatement {
        public j(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM video_media_playList";
        }
    }

    public class k extends SharedSQLiteStatement {
        public k(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM video_media_playList WHERE playlistFlag = 2 AND _data =?";
        }
    }

    public jvb(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new c(roomDatabase);
        this.c = new d(roomDatabase);
        this.d = new e(roomDatabase);
        this.e = new f(roomDatabase);
        this.f = new g(roomDatabase);
        this.g = new h(roomDatabase);
        this.h = new i(roomDatabase);
        this.i = new j(roomDatabase);
        this.j = new k(roomDatabase);
    }

    public static List b() {
        return Collections.emptyList();
    }

    @Override
    public int deleteAllPlayListMedia() {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.i.acquire();
        try {
            this.a.beginTransaction();
            try {
                int iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.i.release(supportSQLiteStatementAcquire);
                return iExecuteUpdateDelete;
            } catch (Throwable th) {
                this.a.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.i.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public int deleteFavoriteListMedia(String str) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.j.acquire();
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(1);
        } else {
            supportSQLiteStatementAcquire.bindString(1, str);
        }
        try {
            this.a.beginTransaction();
            try {
                int iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.j.release(supportSQLiteStatementAcquire);
                return iExecuteUpdateDelete;
            } catch (Throwable th) {
                this.a.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.j.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public void deletePlayListMedia(VideoPlayListMedia videoPlayListMedia) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.c.handle(videoPlayListMedia);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void deletePlayListMediaById(int i2) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.f.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i2);
        try {
            this.a.beginTransaction();
            try {
                supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.f.release(supportSQLiteStatementAcquire);
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
    public void deletePlayListMediaByMediaId(int i2) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.g.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i2);
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
    public void deletePlayListMediaByPlayListId(int i2) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.h.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i2);
        try {
            this.a.beginTransaction();
            try {
                supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.h.release(supportSQLiteStatementAcquire);
            } catch (Throwable th) {
                this.a.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.h.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public List getAllPlayListMedia() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM video_media_playList", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlist_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlistFlag");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_time");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                VideoPlayListMedia videoPlayListMedia = new VideoPlayListMedia();
                videoPlayListMedia.id = cursorQuery.getInt(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    videoPlayListMedia.name = null;
                } else {
                    videoPlayListMedia.name = cursorQuery.getString(columnIndexOrThrow2);
                }
                videoPlayListMedia.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                videoPlayListMedia.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                videoPlayListMedia.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                videoPlayListMedia.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                videoPlayListMedia.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                if (cursorQuery.isNull(columnIndexOrThrow8)) {
                    videoPlayListMedia._data = null;
                } else {
                    videoPlayListMedia._data = cursorQuery.getString(columnIndexOrThrow8);
                }
                arrayList.add(videoPlayListMedia);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public LiveData getAllVideoPlayListMedia(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM video_media_playList LIMIT ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        return this.a.getInvalidationTracker().createLiveData(new String[]{"video_media_playList"}, false, new a(roomSQLiteQueryAcquire));
    }

    @Override
    public VideoPlayListMedia getFavoriteItem(String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM video_media_playList WHERE playlistFlag = 2 AND _data = ? ", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.a.assertNotSuspendingTransaction();
        VideoPlayListMedia videoPlayListMedia = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlist_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlistFlag");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_time");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            if (cursorQuery.moveToFirst()) {
                VideoPlayListMedia videoPlayListMedia2 = new VideoPlayListMedia();
                videoPlayListMedia2.id = cursorQuery.getInt(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    videoPlayListMedia2.name = null;
                } else {
                    videoPlayListMedia2.name = cursorQuery.getString(columnIndexOrThrow2);
                }
                videoPlayListMedia2.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                videoPlayListMedia2.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                videoPlayListMedia2.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                videoPlayListMedia2.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                videoPlayListMedia2.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                if (cursorQuery.isNull(columnIndexOrThrow8)) {
                    videoPlayListMedia2._data = null;
                } else {
                    videoPlayListMedia2._data = cursorQuery.getString(columnIndexOrThrow8);
                }
                videoPlayListMedia = videoPlayListMedia2;
            }
            return videoPlayListMedia;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public LiveData getFavoriteItemList(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM video_media_playList WHERE playlistFlag = 2 LIMIT ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        return this.a.getInvalidationTracker().createLiveData(new String[]{"video_media_playList"}, false, new b(roomSQLiteQueryAcquire));
    }

    @Override
    public List getPlayListMediaById(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM video_media_playList WHERE playlist_id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlist_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlistFlag");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_time");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                VideoPlayListMedia videoPlayListMedia = new VideoPlayListMedia();
                videoPlayListMedia.id = cursorQuery.getInt(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    videoPlayListMedia.name = null;
                } else {
                    videoPlayListMedia.name = cursorQuery.getString(columnIndexOrThrow2);
                }
                videoPlayListMedia.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                videoPlayListMedia.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                videoPlayListMedia.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                videoPlayListMedia.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                videoPlayListMedia.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                if (cursorQuery.isNull(columnIndexOrThrow8)) {
                    videoPlayListMedia._data = null;
                } else {
                    videoPlayListMedia._data = cursorQuery.getString(columnIndexOrThrow8);
                }
                arrayList.add(videoPlayListMedia);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getPlayListMediaByIds(int i2, int i3) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM video_media_playList WHERE playlist_id = ? AND media_id = ?", 2);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        roomSQLiteQueryAcquire.bindLong(2, i3);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlist_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlistFlag");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_time");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                VideoPlayListMedia videoPlayListMedia = new VideoPlayListMedia();
                videoPlayListMedia.id = cursorQuery.getInt(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    videoPlayListMedia.name = null;
                } else {
                    videoPlayListMedia.name = cursorQuery.getString(columnIndexOrThrow2);
                }
                videoPlayListMedia.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                videoPlayListMedia.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                videoPlayListMedia.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                videoPlayListMedia.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                videoPlayListMedia.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                if (cursorQuery.isNull(columnIndexOrThrow8)) {
                    videoPlayListMedia._data = null;
                } else {
                    videoPlayListMedia._data = cursorQuery.getString(columnIndexOrThrow8);
                }
                arrayList.add(videoPlayListMedia);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getPlayListMediaByPlaylistFlag(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM video_media_playList WHERE playlistFlag = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlist_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlistFlag");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_time");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                VideoPlayListMedia videoPlayListMedia = new VideoPlayListMedia();
                videoPlayListMedia.id = cursorQuery.getInt(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    videoPlayListMedia.name = null;
                } else {
                    videoPlayListMedia.name = cursorQuery.getString(columnIndexOrThrow2);
                }
                videoPlayListMedia.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                videoPlayListMedia.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                videoPlayListMedia.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                videoPlayListMedia.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                videoPlayListMedia.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                if (cursorQuery.isNull(columnIndexOrThrow8)) {
                    videoPlayListMedia._data = null;
                } else {
                    videoPlayListMedia._data = cursorQuery.getString(columnIndexOrThrow8);
                }
                arrayList.add(videoPlayListMedia);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public Cursor getPlayListMediaCountById(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM video_media_playList WHERE playlist_id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        return this.a.query(roomSQLiteQueryAcquire);
    }

    @Override
    public Cursor getPlayListMediaCursor() {
        return this.a.query(RoomSQLiteQuery.acquire("SELECT * FROM video_media_playList", 0));
    }

    @Override
    public List getPlayListMediaIdByPlayListFlag(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT media_id FROM video_media_playList WHERE playlistFlag = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
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
    public List getPlayListMediaIdByPlayListId(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT media_id FROM video_media_playList WHERE playlist_id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
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
    public long insertPlayListMedia(VideoPlayListMedia videoPlayListMedia) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            long jInsertAndReturnId = this.b.insertAndReturnId(videoPlayListMedia);
            this.a.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int updatePlayListMedia(VideoPlayListMedia videoPlayListMedia) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandle = this.d.handle(videoPlayListMedia);
            this.a.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int updatePlayListMedias(List list) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandleMultiple = this.d.handleMultiple(list);
            this.a.setTransactionSuccessful();
            return iHandleMultiple;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int deletePlayListMedia(int i2, int i3) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.e.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i2);
        supportSQLiteStatementAcquire.bindLong(2, i3);
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
    public long[] insertPlayListMedia(List list) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            long[] jArrInsertAndReturnIdsArray = this.b.insertAndReturnIdsArray(list);
            this.a.setTransactionSuccessful();
            return jArrInsertAndReturnIdsArray;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void deletePlayListMediaByMediaId(List list) {
        this.a.assertNotSuspendingTransaction();
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("DELETE FROM video_media_playList WHERE media_id IN (");
        int i2 = 1;
        StringUtil.appendPlaceholders(sbNewStringBuilder, list == null ? 1 : list.size());
        sbNewStringBuilder.append(")");
        SupportSQLiteStatement supportSQLiteStatementCompileStatement = this.a.compileStatement(sbNewStringBuilder.toString());
        if (list == null) {
            supportSQLiteStatementCompileStatement.bindNull(1);
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                if (num == null) {
                    supportSQLiteStatementCompileStatement.bindNull(i2);
                } else {
                    supportSQLiteStatementCompileStatement.bindLong(i2, num.intValue());
                }
                i2++;
            }
        }
        this.a.beginTransaction();
        try {
            supportSQLiteStatementCompileStatement.executeUpdateDelete();
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public List getPlayListMediaByIds(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM video_media_playList WHERE media_id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlist_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlistFlag");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_time");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                VideoPlayListMedia videoPlayListMedia = new VideoPlayListMedia();
                videoPlayListMedia.id = cursorQuery.getInt(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    videoPlayListMedia.name = null;
                } else {
                    videoPlayListMedia.name = cursorQuery.getString(columnIndexOrThrow2);
                }
                videoPlayListMedia.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                videoPlayListMedia.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                videoPlayListMedia.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                videoPlayListMedia.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                videoPlayListMedia.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                if (cursorQuery.isNull(columnIndexOrThrow8)) {
                    videoPlayListMedia._data = null;
                } else {
                    videoPlayListMedia._data = cursorQuery.getString(columnIndexOrThrow8);
                }
                arrayList.add(videoPlayListMedia);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }
}
