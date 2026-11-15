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
import com.transsion.dbdata.database.PlayListFolderItem;
import com.transsion.dbdata.database.PlayListMediaItem;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

public final class g68 implements f68 {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;
    public final EntityDeletionOrUpdateAdapter c;
    public final EntityDeletionOrUpdateAdapter d;
    public final SharedSQLiteStatement e;
    public final SharedSQLiteStatement f;
    public final SharedSQLiteStatement g;

    public class a implements Callable {
        public final RoomSQLiteQuery b;

        public a(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Cursor cursorQuery = DBUtil.query(g68.this.a, this.b, false, null);
            try {
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    arrayList.add(new PlayListFolderItem(cursorQuery.getLong(0), cursorQuery.isNull(1) ? null : cursorQuery.getString(1), cursorQuery.getInt(2), cursorQuery.getInt(3)));
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
        public PlayListFolderItem call() {
            PlayListFolderItem playListFolderItem = null;
            Cursor cursorQuery = DBUtil.query(g68.this.a, this.b, false, null);
            try {
                if (cursorQuery.moveToFirst()) {
                    playListFolderItem = new PlayListFolderItem(cursorQuery.getLong(0), cursorQuery.isNull(1) ? null : cursorQuery.getString(1), cursorQuery.getInt(2), cursorQuery.getInt(3));
                }
                return playListFolderItem;
            } finally {
                cursorQuery.close();
            }
        }

        public void finalize() {
            this.b.release();
        }
    }

    public class c implements Callable {
        public final RoomSQLiteQuery b;

        public c(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Cursor cursorQuery = DBUtil.query(g68.this.a, this.b, false, null);
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlist_id");
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
                int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_time");
                int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    arrayList.add(new PlayListMediaItem(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.getInt(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5)));
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

    public class d extends EntityInsertionAdapter {
        public d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, PlayListMediaItem playListMediaItem) {
            supportSQLiteStatement.bindLong(1, playListMediaItem.getId());
            supportSQLiteStatement.bindLong(2, playListMediaItem.getPlaylistId());
            supportSQLiteStatement.bindLong(3, playListMediaItem.getMediaId());
            supportSQLiteStatement.bindLong(4, playListMediaItem.getRecordTime());
            if (playListMediaItem.get_data() == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, playListMediaItem.get_data());
            }
        }

        @Override
        public String createQuery() {
            return "INSERT OR ABORT INTO `media_playlist_item` (`id`,`playlist_id`,`media_id`,`record_time`,`_data`) VALUES (nullif(?, 0),?,?,?,?)";
        }
    }

    public class e extends EntityDeletionOrUpdateAdapter {
        public e(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, PlayListMediaItem playListMediaItem) {
            supportSQLiteStatement.bindLong(1, playListMediaItem.getId());
        }

        @Override
        public String createQuery() {
            return "DELETE FROM `media_playlist_item` WHERE `id` = ?";
        }
    }

    public class f extends EntityDeletionOrUpdateAdapter {
        public f(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, PlayListMediaItem playListMediaItem) {
            supportSQLiteStatement.bindLong(1, playListMediaItem.getId());
            supportSQLiteStatement.bindLong(2, playListMediaItem.getPlaylistId());
            supportSQLiteStatement.bindLong(3, playListMediaItem.getMediaId());
            supportSQLiteStatement.bindLong(4, playListMediaItem.getRecordTime());
            if (playListMediaItem.get_data() == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, playListMediaItem.get_data());
            }
            supportSQLiteStatement.bindLong(6, playListMediaItem.getId());
        }

        @Override
        public String createQuery() {
            return "UPDATE OR REPLACE `media_playlist_item` SET `id` = ?,`playlist_id` = ?,`media_id` = ?,`record_time` = ?,`_data` = ? WHERE `id` = ?";
        }
    }

    public class g extends SharedSQLiteStatement {
        public g(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "UPDATE media_playlist_item SET media_id = ? WHERE _data = ?";
        }
    }

    public class h extends SharedSQLiteStatement {
        public h(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM media_playlist_item WHERE media_id =?";
        }
    }

    public class i extends SharedSQLiteStatement {
        public i(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM media_playlist_item WHERE playlist_id =? AND media_id =?";
        }
    }

    public class j implements Callable {
        public final RoomSQLiteQuery b;

        public j(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Cursor cursorQuery = DBUtil.query(g68.this.a, this.b, false, null);
            try {
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    arrayList.add(new PlayListFolderItem(cursorQuery.getLong(0), cursorQuery.isNull(1) ? null : cursorQuery.getString(1), cursorQuery.getInt(2), cursorQuery.getInt(3)));
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

    public class k implements Callable {
        public final RoomSQLiteQuery b;

        public k(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Cursor cursorQuery = DBUtil.query(g68.this.a, this.b, false, null);
            try {
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    arrayList.add(new PlayListFolderItem(cursorQuery.getLong(0), cursorQuery.isNull(1) ? null : cursorQuery.getString(1), cursorQuery.getInt(2), cursorQuery.getInt(3)));
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

    public class l implements Callable {
        public final RoomSQLiteQuery b;

        public l(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Cursor cursorQuery = DBUtil.query(g68.this.a, this.b, false, null);
            try {
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    arrayList.add(new PlayListFolderItem(cursorQuery.getLong(0), cursorQuery.isNull(1) ? null : cursorQuery.getString(1), cursorQuery.getInt(2), cursorQuery.getInt(3)));
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

    public g68(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new d(roomDatabase);
        this.c = new e(roomDatabase);
        this.d = new f(roomDatabase);
        this.e = new g(roomDatabase);
        this.f = new h(roomDatabase);
        this.g = new i(roomDatabase);
    }

    public static List e() {
        return Collections.emptyList();
    }

    @Override
    public LiveData a(int i2) {
        return f68.a.a(this, i2);
    }

    @Override
    public LiveData b(long j2, int i2, int i3) {
        return f68.a.c(this, j2, i2, i3);
    }

    @Override
    public LiveData c(int i2) {
        return f68.a.b(this, i2);
    }

    @Override
    public int deleteByMediaId(int i2) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.f.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i2);
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
    public int deleteByMediaIds(List list) {
        this.a.assertNotSuspendingTransaction();
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("DELETE FROM media_playlist_item WHERE media_id IN (");
        StringUtil.appendPlaceholders(sbNewStringBuilder, list.size());
        sbNewStringBuilder.append(")");
        SupportSQLiteStatement supportSQLiteStatementCompileStatement = this.a.compileStatement(sbNewStringBuilder.toString());
        Iterator it = list.iterator();
        int i2 = 1;
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num == null) {
                supportSQLiteStatementCompileStatement.bindNull(i2);
            } else {
                supportSQLiteStatementCompileStatement.bindLong(i2, num.intValue());
            }
            i2++;
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
    public int deleteByPlayListId(int i2, int i3) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.g.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i2);
        supportSQLiteStatementAcquire.bindLong(2, i3);
        try {
            this.a.beginTransaction();
            try {
                int iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.g.release(supportSQLiteStatementAcquire);
                return iExecuteUpdateDelete;
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
    public int deleteByPlayListIds(int i2, List list) {
        this.a.assertNotSuspendingTransaction();
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("DELETE FROM media_playlist_item WHERE playlist_id =");
        sbNewStringBuilder.append("?");
        sbNewStringBuilder.append(" AND media_id IN (");
        StringUtil.appendPlaceholders(sbNewStringBuilder, list.size());
        sbNewStringBuilder.append(")");
        SupportSQLiteStatement supportSQLiteStatementCompileStatement = this.a.compileStatement(sbNewStringBuilder.toString());
        supportSQLiteStatementCompileStatement.bindLong(1, i2);
        Iterator it = list.iterator();
        int i3 = 2;
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num == null) {
                supportSQLiteStatementCompileStatement.bindNull(i3);
            } else {
                supportSQLiteStatementCompileStatement.bindLong(i3, num.intValue());
            }
            i3++;
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
    public int deleteMultiple(List list) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandleMultiple = this.c.handleMultiple(list);
            this.a.setTransactionSuccessful();
            return iHandleMultiple;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int deleteSingle(PlayListMediaItem playListMediaItem) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandle = this.c.handle(playListMediaItem);
            this.a.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public PlayListMediaItem getByIds(int i2, int i3) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM media_playlist_item WHERE playlist_id = ? AND media_id = ?", 2);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        roomSQLiteQueryAcquire.bindLong(2, i3);
        this.a.assertNotSuspendingTransaction();
        PlayListMediaItem playListMediaItem = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlist_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_time");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            if (cursorQuery.moveToFirst()) {
                playListMediaItem = new PlayListMediaItem(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.getInt(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5));
            }
            return playListMediaItem;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getByMediaId(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM media_playlist_item WHERE media_id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlist_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_time");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new PlayListMediaItem(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.getInt(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getByMediaIds(List list) {
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("SELECT * FROM media_playlist_item WHERE media_id IN (");
        int size = list.size();
        StringUtil.appendPlaceholders(sbNewStringBuilder, size);
        sbNewStringBuilder.append(")");
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire(sbNewStringBuilder.toString(), size);
        Iterator it = list.iterator();
        int i2 = 1;
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num == null) {
                roomSQLiteQueryAcquire.bindNull(i2);
            } else {
                roomSQLiteQueryAcquire.bindLong(i2, num.intValue());
            }
            i2++;
        }
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlist_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_time");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new PlayListMediaItem(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.getInt(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getByPlayListId(long j2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT media_id FROM media_playlist_item WHERE playlist_id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, j2);
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
    public List getByPlaylistId(int i2, int i3) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM media_playlist_item WHERE playlist_id = ? LIMIT ?", 2);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        roomSQLiteQueryAcquire.bindLong(2, i3);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlist_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_time");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new PlayListMediaItem(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.getInt(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getByPlaylistIds(List list, int i2) {
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("SELECT * FROM media_playlist_item WHERE playlist_id IN (");
        int size = list.size();
        StringUtil.appendPlaceholders(sbNewStringBuilder, size);
        sbNewStringBuilder.append(") LIMIT ");
        sbNewStringBuilder.append("?");
        int i3 = 1;
        int i4 = size + 1;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire(sbNewStringBuilder.toString(), i4);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Long l2 = (Long) it.next();
            if (l2 == null) {
                roomSQLiteQueryAcquire.bindNull(i3);
            } else {
                roomSQLiteQueryAcquire.bindLong(i3, l2.longValue());
            }
            i3++;
        }
        roomSQLiteQueryAcquire.bindLong(i4, i2);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlist_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_time");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new PlayListMediaItem(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.getInt(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getFavoriteAudioMediaPathsGroup() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("\n        SELECT \n            m.playlist_id, \n            m.media_id AS id, \n            m._data AS mediaPath \n        FROM \n            media_playlist_item m \n        INNER JOIN \n            playlist_item p \n        ON \n            m.playlist_id = p.id \n        WHERE \n            p.category = 2 AND p.create_type = 1\n        ", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new hp3(cursorQuery.getLong(0), cursorQuery.getInt(1), cursorQuery.isNull(2) ? null : cursorQuery.getString(2)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getFavoriteVideoMediaPathsGroup() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("\n        SELECT \n            m.playlist_id, \n            m.media_id AS id, \n            m._data AS mediaPath \n        FROM \n            media_playlist_item m \n        INNER JOIN \n            playlist_item p \n        ON \n            m.playlist_id = p.id \n        WHERE \n            p.category = 2 AND p.create_type = 2\n        ", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new hp3(cursorQuery.getLong(0), cursorQuery.getInt(1), cursorQuery.isNull(2) ? null : cursorQuery.getString(2)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public LiveData getNonFavoritePlayListsWithLiveData(int i2, int i3) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT p.id, p.name, COUNT(m.id) as count,p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON p.id = m.playlist_id WHERE p.create_type = ? AND p.category != 2 GROUP BY p.id ORDER BY CASE p.category WHEN 1 THEN 0 ELSE 2 END, p.create_time DESC LIMIT ?", 2);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        roomSQLiteQueryAcquire.bindLong(2, i3);
        return this.a.getInvalidationTracker().createLiveData(new String[]{"playlist_item", "media_playlist_item"}, false, new a(roomSQLiteQueryAcquire));
    }

    @Override
    public List getPlayListElementByCombine(long j2, String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM media_playlist_item WHERE playlist_id = ? AND _data = ? ", 2);
        roomSQLiteQueryAcquire.bindLong(1, j2);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(2);
        } else {
            roomSQLiteQueryAcquire.bindString(2, str);
        }
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "playlist_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_time");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new PlayListMediaItem(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.getInt(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getPlayListFolderSetConditional(int i2, boolean z, boolean z2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT p.id, p.name, COUNT(m.id) as count, p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON p.id = m.playlist_id WHERE p.create_type = ? AND (? = 1 OR p.category != 1) AND (? = 1 OR p.category != 2) GROUP BY p.id, p.name ORDER BY CASE WHEN p.category = 1 THEN 0 WHEN p.category = 2 THEN 1 ELSE 2 END, p.create_time DESC", 3);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        roomSQLiteQueryAcquire.bindLong(2, z ? 1L : 0L);
        roomSQLiteQueryAcquire.bindLong(3, z2 ? 1L : 0L);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new PlayListFolderItem(cursorQuery.getLong(0), cursorQuery.isNull(1) ? null : cursorQuery.getString(1), cursorQuery.getInt(2), cursorQuery.getInt(3)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public LiveData getPlayListFolderSetConditionalWithLiveData(int i2, boolean z, boolean z2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT p.id, p.name, COUNT(m.id) as count, p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON p.id = m.playlist_id WHERE p.create_type = ? AND (? = 1 OR p.category != 1) AND (? = 1 OR p.category != 2) GROUP BY p.id, p.name ORDER BY CASE WHEN p.category = 1 THEN 0 WHEN p.category = 2 THEN 1 ELSE 2 END, p.create_time DESC", 3);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        roomSQLiteQueryAcquire.bindLong(2, z ? 1L : 0L);
        roomSQLiteQueryAcquire.bindLong(3, z2 ? 1L : 0L);
        return this.a.getInvalidationTracker().createLiveData(new String[]{"playlist_item", "media_playlist_item"}, false, new j(roomSQLiteQueryAcquire));
    }

    @Override
    public LiveData getPlayListFolderSetWithLiveData(int i2, int i3) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT p.id, p.name, COUNT(m.id) as count, p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON m.playlist_id = p.id WHERE p.create_type = ? GROUP BY p.id ORDER BY (CASE p.category WHEN 1 THEN 0 WHEN 2 THEN 1 ELSE 2 END), p.create_time DESC LIMIT ?", 2);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        roomSQLiteQueryAcquire.bindLong(2, i3);
        return this.a.getInvalidationTracker().createLiveData(new String[]{"playlist_item", "media_playlist_item"}, false, new k(roomSQLiteQueryAcquire));
    }

    @Override
    public LiveData getPlayListFolderWithLiveData(int i2, long j2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT p.id, p.name, COUNT(m.id) as count, p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON p.id = m.playlist_id WHERE p.id = ? AND p.create_type = ? GROUP BY p.id", 2);
        roomSQLiteQueryAcquire.bindLong(1, j2);
        roomSQLiteQueryAcquire.bindLong(2, i2);
        return this.a.getInvalidationTracker().createLiveData(new String[]{"playlist_item", "media_playlist_item"}, false, new b(roomSQLiteQueryAcquire));
    }

    @Override
    public LiveData getPlayListMediaItemsLiveData(Integer num, Long l2, Boolean bool, int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT m.* FROM media_playlist_item m INNER JOIN playlist_item p ON m.playlist_id = p.id WHERE (? IS NULL OR p.create_type = ?) AND (? IS NULL OR p.id = ?) AND (? IS NULL OR (p.category = 2) = ?) ORDER BY m.record_time DESC LIMIT ?", 7);
        if (num == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindLong(1, num.intValue());
        }
        if (num == null) {
            roomSQLiteQueryAcquire.bindNull(2);
        } else {
            roomSQLiteQueryAcquire.bindLong(2, num.intValue());
        }
        if (l2 == null) {
            roomSQLiteQueryAcquire.bindNull(3);
        } else {
            roomSQLiteQueryAcquire.bindLong(3, l2.longValue());
        }
        if (l2 == null) {
            roomSQLiteQueryAcquire.bindNull(4);
        } else {
            roomSQLiteQueryAcquire.bindLong(4, l2.longValue());
        }
        Integer numValueOf = bool == null ? null : Integer.valueOf(bool.booleanValue() ? 1 : 0);
        if (numValueOf == null) {
            roomSQLiteQueryAcquire.bindNull(5);
        } else {
            roomSQLiteQueryAcquire.bindLong(5, numValueOf.intValue());
        }
        Integer numValueOf2 = bool != null ? Integer.valueOf(bool.booleanValue() ? 1 : 0) : null;
        if (numValueOf2 == null) {
            roomSQLiteQueryAcquire.bindNull(6);
        } else {
            roomSQLiteQueryAcquire.bindLong(6, numValueOf2.intValue());
        }
        roomSQLiteQueryAcquire.bindLong(7, i2);
        return this.a.getInvalidationTracker().createLiveData(new String[]{"media_playlist_item", "playlist_item"}, false, new c(roomSQLiteQueryAcquire));
    }

    @Override
    public List getPlayListWithCount(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT p.id, p.name, COUNT(m.id) as count, p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON p.id = m.playlist_id WHERE p.create_type = ? GROUP BY p.id, p.name ORDER BY CASE WHEN p.category = 1 THEN 0 WHEN p.category = 2 THEN 1 ELSE 2 END, p.create_time DESC", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new PlayListFolderItem(cursorQuery.getLong(0), cursorQuery.isNull(1) ? null : cursorQuery.getString(1), cursorQuery.getInt(2), cursorQuery.getInt(3)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List insertMultiple(List list) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            List<Long> listInsertAndReturnIdsList = this.b.insertAndReturnIdsList(list);
            this.a.setTransactionSuccessful();
            return listInsertAndReturnIdsList;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public long insertSingle(PlayListMediaItem playListMediaItem) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            long jInsertAndReturnId = this.b.insertAndReturnId(playListMediaItem);
            this.a.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int updateMultiple(List list) {
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
    public int updatePath(int i2, String str) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.e.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i2);
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(2);
        } else {
            supportSQLiteStatementAcquire.bindString(2, str);
        }
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
    public int updateSingle(PlayListMediaItem playListMediaItem) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandle = this.d.handle(playListMediaItem);
            this.a.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public LiveData getPlayListFolderSetWithLiveData(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT p.id, p.name, COUNT(m.id) as count, p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON p.id = m.playlist_id WHERE p.create_type = ? GROUP BY p.id, p.name ORDER BY CASE WHEN p.category = 1 THEN 0 WHEN p.category = 2 THEN 1 ELSE 2 END, p.create_time DESC", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        return this.a.getInvalidationTracker().createLiveData(new String[]{"playlist_item", "media_playlist_item"}, false, new l(roomSQLiteQueryAcquire));
    }
}
