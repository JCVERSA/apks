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
import com.transsion.dbdata.database.PlayListMedia;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

public final class e68 implements d68 {
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
    public final SharedSQLiteStatement k;
    public final SharedSQLiteStatement l;
    public final SharedSQLiteStatement m;

    public class a extends SharedSQLiteStatement {
        public a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM media_playList WHERE playlistFlag == 1";
        }
    }

    public class b extends SharedSQLiteStatement {
        public b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM media_playList WHERE media_id =? AND playlistFlag == 2";
        }
    }

    public class c extends SharedSQLiteStatement {
        public c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM media_playList WHERE playlistFlag == 2";
        }
    }

    public class d implements Callable {
        public final RoomSQLiteQuery b;

        public d(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Cursor cursorQuery = DBUtil.query(e68.this.a, this.b, false, null);
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
                    PlayListMedia playListMedia = new PlayListMedia();
                    playListMedia.id = cursorQuery.getInt(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        playListMedia.name = null;
                    } else {
                        playListMedia.name = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    playListMedia.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                    playListMedia.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                    playListMedia.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                    playListMedia.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                    playListMedia.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                    if (cursorQuery.isNull(columnIndexOrThrow8)) {
                        playListMedia._data = null;
                    } else {
                        playListMedia._data = cursorQuery.getString(columnIndexOrThrow8);
                    }
                    arrayList.add(playListMedia);
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

    public class e implements Callable {
        public final RoomSQLiteQuery b;

        public e(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Cursor cursorQuery = DBUtil.query(e68.this.a, this.b, false, null);
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
                    PlayListMedia playListMedia = new PlayListMedia();
                    playListMedia.id = cursorQuery.getInt(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        playListMedia.name = null;
                    } else {
                        playListMedia.name = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    playListMedia.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                    playListMedia.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                    playListMedia.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                    playListMedia.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                    playListMedia.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                    if (cursorQuery.isNull(columnIndexOrThrow8)) {
                        playListMedia._data = null;
                    } else {
                        playListMedia._data = cursorQuery.getString(columnIndexOrThrow8);
                    }
                    arrayList.add(playListMedia);
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

    public class f implements Callable {
        public final RoomSQLiteQuery b;

        public f(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Cursor cursorQuery = DBUtil.query(e68.this.a, this.b, false, null);
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
                    PlayListMedia playListMedia = new PlayListMedia();
                    playListMedia.id = cursorQuery.getInt(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        playListMedia.name = null;
                    } else {
                        playListMedia.name = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    playListMedia.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                    playListMedia.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                    playListMedia.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                    playListMedia.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                    playListMedia.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                    if (cursorQuery.isNull(columnIndexOrThrow8)) {
                        playListMedia._data = null;
                    } else {
                        playListMedia._data = cursorQuery.getString(columnIndexOrThrow8);
                    }
                    arrayList.add(playListMedia);
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

    public class g extends EntityInsertionAdapter {
        public g(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, PlayListMedia playListMedia) {
            supportSQLiteStatement.bindLong(1, playListMedia.id);
            String str = playListMedia.name;
            if (str == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str);
            }
            supportSQLiteStatement.bindLong(3, playListMedia.playlist_id);
            supportSQLiteStatement.bindLong(4, playListMedia.media_id);
            supportSQLiteStatement.bindLong(5, playListMedia.playlistFlag);
            supportSQLiteStatement.bindLong(6, playListMedia.play_count);
            supportSQLiteStatement.bindLong(7, playListMedia.record_time);
            String str2 = playListMedia._data;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(8);
            } else {
                supportSQLiteStatement.bindString(8, str2);
            }
        }

        @Override
        public String createQuery() {
            return "INSERT OR ABORT INTO `media_playList` (`id`,`name`,`playlist_id`,`media_id`,`playlistFlag`,`play_count`,`record_time`,`_data`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)";
        }
    }

    public class h extends EntityDeletionOrUpdateAdapter {
        public h(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, PlayListMedia playListMedia) {
            supportSQLiteStatement.bindLong(1, playListMedia.id);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM `media_playList` WHERE `id` = ?";
        }
    }

    public class i extends EntityDeletionOrUpdateAdapter {
        public i(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, PlayListMedia playListMedia) {
            supportSQLiteStatement.bindLong(1, playListMedia.id);
            String str = playListMedia.name;
            if (str == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str);
            }
            supportSQLiteStatement.bindLong(3, playListMedia.playlist_id);
            supportSQLiteStatement.bindLong(4, playListMedia.media_id);
            supportSQLiteStatement.bindLong(5, playListMedia.playlistFlag);
            supportSQLiteStatement.bindLong(6, playListMedia.play_count);
            supportSQLiteStatement.bindLong(7, playListMedia.record_time);
            String str2 = playListMedia._data;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(8);
            } else {
                supportSQLiteStatement.bindString(8, str2);
            }
            supportSQLiteStatement.bindLong(9, playListMedia.id);
        }

        @Override
        public String createQuery() {
            return "UPDATE OR ABORT `media_playList` SET `id` = ?,`name` = ?,`playlist_id` = ?,`media_id` = ?,`playlistFlag` = ?,`play_count` = ?,`record_time` = ?,`_data` = ? WHERE `id` = ?";
        }
    }

    public class j extends SharedSQLiteStatement {
        public j(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM media_playList WHERE playlist_id =? AND media_id =?";
        }
    }

    public class k extends SharedSQLiteStatement {
        public k(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM media_playList WHERE id =?";
        }
    }

    public class l extends SharedSQLiteStatement {
        public l(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM media_playList WHERE playlist_id =?";
        }
    }

    public class m extends SharedSQLiteStatement {
        public m(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM media_playList WHERE media_id =?";
        }
    }

    public class n extends SharedSQLiteStatement {
        public n(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM media_playList";
        }
    }

    public class o extends SharedSQLiteStatement {
        public o(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM media_playList WHERE media_id =? AND playlistFlag == 1";
        }
    }

    public e68(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new g(roomDatabase);
        this.c = new h(roomDatabase);
        this.d = new i(roomDatabase);
        this.e = new j(roomDatabase);
        this.f = new k(roomDatabase);
        this.g = new l(roomDatabase);
        this.h = new m(roomDatabase);
        this.i = new n(roomDatabase);
        this.j = new o(roomDatabase);
        this.k = new a(roomDatabase);
        this.l = new b(roomDatabase);
        this.m = new c(roomDatabase);
    }

    public static List b() {
        return Collections.emptyList();
    }

    @Override
    public int deleteAllAudioPlayRecord() {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.k.acquire();
        try {
            this.a.beginTransaction();
            try {
                int iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.k.release(supportSQLiteStatementAcquire);
                return iExecuteUpdateDelete;
            } catch (Throwable th) {
                this.a.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.k.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public int deleteAllFavoriteItemRecord() {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.m.acquire();
        try {
            this.a.beginTransaction();
            try {
                int iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.m.release(supportSQLiteStatementAcquire);
                return iExecuteUpdateDelete;
            } catch (Throwable th) {
                this.a.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.m.release(supportSQLiteStatementAcquire);
            throw th2;
        }
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
    public int deleteAudioPlayRecordById(int i2) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.j.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i2);
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
    public int deleteAudioPlayRecordByIds(int[] iArr) {
        this.a.assertNotSuspendingTransaction();
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("DELETE FROM media_playList WHERE media_id IN (");
        StringUtil.appendPlaceholders(sbNewStringBuilder, iArr == null ? 1 : iArr.length);
        sbNewStringBuilder.append(") AND playlistFlag == 1");
        SupportSQLiteStatement supportSQLiteStatementCompileStatement = this.a.compileStatement(sbNewStringBuilder.toString());
        if (iArr == null) {
            supportSQLiteStatementCompileStatement.bindNull(1);
        } else {
            int i2 = 1;
            for (int i3 : iArr) {
                supportSQLiteStatementCompileStatement.bindLong(i2, i3);
                i2++;
            }
        }
        this.a.beginTransaction();
        try {
            int iExecuteUpdateDelete = supportSQLiteStatementCompileStatement.executeUpdateDelete();
            this.a.setTransactionSuccessful();
            return iExecuteUpdateDelete;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int deleteFavoriteItemById(int i2) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.l.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i2);
        try {
            this.a.beginTransaction();
            try {
                int iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.l.release(supportSQLiteStatementAcquire);
                return iExecuteUpdateDelete;
            } catch (Throwable th) {
                this.a.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.l.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public void deletePlayListMedia(PlayListMedia playListMedia) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.c.handle(playListMedia);
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
    public void deletePlayListMediaByPlayListId(int i2) {
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
    public List getAllAudioViewRecord(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM media_playList WHERE playlistFlag == 1 ORDER BY record_time DESC  LIMIT ?", 1);
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
                PlayListMedia playListMedia = new PlayListMedia();
                playListMedia.id = cursorQuery.getInt(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    playListMedia.name = null;
                } else {
                    playListMedia.name = cursorQuery.getString(columnIndexOrThrow2);
                }
                playListMedia.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                playListMedia.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                playListMedia.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                playListMedia.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                playListMedia.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                if (cursorQuery.isNull(columnIndexOrThrow8)) {
                    playListMedia._data = null;
                } else {
                    playListMedia._data = cursorQuery.getString(columnIndexOrThrow8);
                }
                arrayList.add(playListMedia);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getAllFavoriteItem(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM media_playList WHERE playlistFlag == 2 LIMIT ?", 1);
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
                PlayListMedia playListMedia = new PlayListMedia();
                playListMedia.id = cursorQuery.getInt(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    playListMedia.name = null;
                } else {
                    playListMedia.name = cursorQuery.getString(columnIndexOrThrow2);
                }
                playListMedia.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                playListMedia.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                playListMedia.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                playListMedia.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                playListMedia.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                if (cursorQuery.isNull(columnIndexOrThrow8)) {
                    playListMedia._data = null;
                } else {
                    playListMedia._data = cursorQuery.getString(columnIndexOrThrow8);
                }
                arrayList.add(playListMedia);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getAllPlayListMedia() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM media_playList", 0);
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
                PlayListMedia playListMedia = new PlayListMedia();
                playListMedia.id = cursorQuery.getInt(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    playListMedia.name = null;
                } else {
                    playListMedia.name = cursorQuery.getString(columnIndexOrThrow2);
                }
                playListMedia.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                playListMedia.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                playListMedia.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                playListMedia.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                playListMedia.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                if (cursorQuery.isNull(columnIndexOrThrow8)) {
                    playListMedia._data = null;
                } else {
                    playListMedia._data = cursorQuery.getString(columnIndexOrThrow8);
                }
                arrayList.add(playListMedia);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public LiveData getAllPlayListMediaLiveData(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM media_playList WHERE playlistFlag != 1 AND playlistFlag != 2  LIMIT ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        return this.a.getInvalidationTracker().createLiveData(new String[]{"media_playList"}, false, new f(roomSQLiteQueryAcquire));
    }

    @Override
    public PlayListMedia getAudioPlayRecordById(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM media_playList WHERE media_id = ? AND playlistFlag == 1", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        this.a.assertNotSuspendingTransaction();
        PlayListMedia playListMedia = null;
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
                PlayListMedia playListMedia2 = new PlayListMedia();
                playListMedia2.id = cursorQuery.getInt(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    playListMedia2.name = null;
                } else {
                    playListMedia2.name = cursorQuery.getString(columnIndexOrThrow2);
                }
                playListMedia2.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                playListMedia2.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                playListMedia2.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                playListMedia2.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                playListMedia2.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                if (cursorQuery.isNull(columnIndexOrThrow8)) {
                    playListMedia2._data = null;
                } else {
                    playListMedia2._data = cursorQuery.getString(columnIndexOrThrow8);
                }
                playListMedia = playListMedia2;
            }
            return playListMedia;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public LiveData getAudioPlayRecordList(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM media_playList WHERE playlistFlag == 1 ORDER BY record_time DESC LIMIT ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        return this.a.getInvalidationTracker().createLiveData(new String[]{"media_playList"}, false, new d(roomSQLiteQueryAcquire));
    }

    @Override
    public List getAudioPlayRecordMediaIds(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT media_id FROM media_playList WHERE playlistFlag == 1 ORDER BY record_time DESC LIMIT ?", 1);
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
    public PlayListMedia getFavoriteItemById(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM media_playList WHERE media_id = ? AND playlistFlag == 2", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        this.a.assertNotSuspendingTransaction();
        PlayListMedia playListMedia = null;
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
                PlayListMedia playListMedia2 = new PlayListMedia();
                playListMedia2.id = cursorQuery.getInt(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    playListMedia2.name = null;
                } else {
                    playListMedia2.name = cursorQuery.getString(columnIndexOrThrow2);
                }
                playListMedia2.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                playListMedia2.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                playListMedia2.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                playListMedia2.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                playListMedia2.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                if (cursorQuery.isNull(columnIndexOrThrow8)) {
                    playListMedia2._data = null;
                } else {
                    playListMedia2._data = cursorQuery.getString(columnIndexOrThrow8);
                }
                playListMedia = playListMedia2;
            }
            return playListMedia;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public LiveData getFavoriteItemList(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM media_playList WHERE playlistFlag == 2 LIMIT ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        return this.a.getInvalidationTracker().createLiveData(new String[]{"media_playList"}, false, new e(roomSQLiteQueryAcquire));
    }

    @Override
    public List getFavoriteItemMediaIds(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT media_id FROM media_playList WHERE playlistFlag == 2 LIMIT ?", 1);
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
    public List getPlayListMediaById(int i2, int i3) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM media_playList WHERE playlist_id = ? LIMIT ?", 2);
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
                PlayListMedia playListMedia = new PlayListMedia();
                playListMedia.id = cursorQuery.getInt(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    playListMedia.name = null;
                } else {
                    playListMedia.name = cursorQuery.getString(columnIndexOrThrow2);
                }
                playListMedia.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                playListMedia.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                playListMedia.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                playListMedia.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                playListMedia.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                if (cursorQuery.isNull(columnIndexOrThrow8)) {
                    playListMedia._data = null;
                } else {
                    playListMedia._data = cursorQuery.getString(columnIndexOrThrow8);
                }
                arrayList.add(playListMedia);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getPlayListMediaByIds(int i2, int i3) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM media_playList WHERE playlist_id = ? AND media_id = ?", 2);
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
                PlayListMedia playListMedia = new PlayListMedia();
                playListMedia.id = cursorQuery.getInt(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    playListMedia.name = null;
                } else {
                    playListMedia.name = cursorQuery.getString(columnIndexOrThrow2);
                }
                playListMedia.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                playListMedia.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                playListMedia.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                playListMedia.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                playListMedia.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                if (cursorQuery.isNull(columnIndexOrThrow8)) {
                    playListMedia._data = null;
                } else {
                    playListMedia._data = cursorQuery.getString(columnIndexOrThrow8);
                }
                arrayList.add(playListMedia);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public PlayListMedia getPlayListMediaByIdsInList(int i2, int i3) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM media_playList WHERE playlist_id = ? AND media_id = ?", 2);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        roomSQLiteQueryAcquire.bindLong(2, i3);
        this.a.assertNotSuspendingTransaction();
        PlayListMedia playListMedia = null;
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
                PlayListMedia playListMedia2 = new PlayListMedia();
                playListMedia2.id = cursorQuery.getInt(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    playListMedia2.name = null;
                } else {
                    playListMedia2.name = cursorQuery.getString(columnIndexOrThrow2);
                }
                playListMedia2.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                playListMedia2.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                playListMedia2.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                playListMedia2.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                playListMedia2.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                if (cursorQuery.isNull(columnIndexOrThrow8)) {
                    playListMedia2._data = null;
                } else {
                    playListMedia2._data = cursorQuery.getString(columnIndexOrThrow8);
                }
                playListMedia = playListMedia2;
            }
            return playListMedia;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public Cursor getPlayListMediaCountById(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM media_playList WHERE playlist_id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        return this.a.query(roomSQLiteQueryAcquire);
    }

    @Override
    public Cursor getPlayListMediaCursor() {
        return this.a.query(RoomSQLiteQuery.acquire("SELECT * FROM media_playList", 0));
    }

    @Override
    public List getPlayListMediaIdByPlayListId(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT media_id FROM media_playList WHERE playlist_id = ?", 1);
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
    public List getPlayedMediaList() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM media_playList WHERE play_count > 0", 0);
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
                PlayListMedia playListMedia = new PlayListMedia();
                playListMedia.id = cursorQuery.getInt(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    playListMedia.name = null;
                } else {
                    playListMedia.name = cursorQuery.getString(columnIndexOrThrow2);
                }
                playListMedia.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                playListMedia.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                playListMedia.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                playListMedia.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                playListMedia.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                if (cursorQuery.isNull(columnIndexOrThrow8)) {
                    playListMedia._data = null;
                } else {
                    playListMedia._data = cursorQuery.getString(columnIndexOrThrow8);
                }
                arrayList.add(playListMedia);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public long insertPlayListMedia(PlayListMedia playListMedia) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            long jInsertAndReturnId = this.b.insertAndReturnId(playListMedia);
            this.a.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int updateAudioPlayRecord(PlayListMedia playListMedia) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandle = this.d.handle(playListMedia);
            this.a.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int updatePlayListMedia(PlayListMedia playListMedia) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandle = this.d.handle(playListMedia);
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
    public int deleteFavoriteItemById(int[] iArr) {
        this.a.assertNotSuspendingTransaction();
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("DELETE FROM media_playList WHERE media_id IN (");
        StringUtil.appendPlaceholders(sbNewStringBuilder, iArr == null ? 1 : iArr.length);
        sbNewStringBuilder.append(") AND playlistFlag == 2");
        SupportSQLiteStatement supportSQLiteStatementCompileStatement = this.a.compileStatement(sbNewStringBuilder.toString());
        if (iArr == null) {
            supportSQLiteStatementCompileStatement.bindNull(1);
        } else {
            int i2 = 1;
            for (int i3 : iArr) {
                supportSQLiteStatementCompileStatement.bindLong(i2, i3);
                i2++;
            }
        }
        this.a.beginTransaction();
        try {
            int iExecuteUpdateDelete = supportSQLiteStatementCompileStatement.executeUpdateDelete();
            this.a.setTransactionSuccessful();
            return iExecuteUpdateDelete;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void deletePlayListMediaByMediaId(List list) {
        this.a.assertNotSuspendingTransaction();
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("DELETE FROM media_playList WHERE media_id IN (");
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
    public int deletePlayListMedia(int i2, int[] iArr) {
        this.a.assertNotSuspendingTransaction();
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("DELETE FROM media_playList WHERE playlist_id =");
        sbNewStringBuilder.append("?");
        sbNewStringBuilder.append(" AND media_id IN (");
        StringUtil.appendPlaceholders(sbNewStringBuilder, iArr == null ? 1 : iArr.length);
        sbNewStringBuilder.append(")");
        SupportSQLiteStatement supportSQLiteStatementCompileStatement = this.a.compileStatement(sbNewStringBuilder.toString());
        supportSQLiteStatementCompileStatement.bindLong(1, i2);
        int i3 = 2;
        if (iArr == null) {
            supportSQLiteStatementCompileStatement.bindNull(2);
        } else {
            for (int i4 : iArr) {
                supportSQLiteStatementCompileStatement.bindLong(i3, i4);
                i3++;
            }
        }
        this.a.beginTransaction();
        try {
            int iExecuteUpdateDelete = supportSQLiteStatementCompileStatement.executeUpdateDelete();
            this.a.setTransactionSuccessful();
            return iExecuteUpdateDelete;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public List getPlayListMediaByIds(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM media_playList WHERE media_id = ?", 1);
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
                PlayListMedia playListMedia = new PlayListMedia();
                playListMedia.id = cursorQuery.getInt(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    playListMedia.name = null;
                } else {
                    playListMedia.name = cursorQuery.getString(columnIndexOrThrow2);
                }
                playListMedia.playlist_id = cursorQuery.getInt(columnIndexOrThrow3);
                playListMedia.media_id = cursorQuery.getInt(columnIndexOrThrow4);
                playListMedia.playlistFlag = cursorQuery.getInt(columnIndexOrThrow5);
                playListMedia.play_count = cursorQuery.getInt(columnIndexOrThrow6);
                playListMedia.record_time = cursorQuery.getLong(columnIndexOrThrow7);
                if (cursorQuery.isNull(columnIndexOrThrow8)) {
                    playListMedia._data = null;
                } else {
                    playListMedia._data = cursorQuery.getString(columnIndexOrThrow8);
                }
                arrayList.add(playListMedia);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }
}
