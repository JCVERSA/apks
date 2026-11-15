package org.proninyaroslav.libretorrent.core.storage.dao;

import android.database.Cursor;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.RxRoom;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import defpackage.r14;
import defpackage.xm9;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import org.proninyaroslav.libretorrent.core.model.data.entity.TagInfo;

public final class TagInfoDao_Impl implements TagInfoDao {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;
    public final EntityDeletionOrUpdateAdapter c;
    public final EntityDeletionOrUpdateAdapter d;

    class AnonymousClass1 extends EntityInsertionAdapter<TagInfo> {
        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, TagInfo tagInfo) {
            supportSQLiteStatement.bindLong(1, tagInfo.id);
            String str = tagInfo.name;
            if (str == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str);
            }
            supportSQLiteStatement.bindLong(3, tagInfo.color);
        }

        @Override
        public String createQuery() {
            return "INSERT OR REPLACE INTO `TagInfo` (`id`,`name`,`color`) VALUES (nullif(?, 0),?,?)";
        }
    }

    class AnonymousClass2 extends EntityDeletionOrUpdateAdapter<TagInfo> {
        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, TagInfo tagInfo) {
            supportSQLiteStatement.bindLong(1, tagInfo.id);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM `TagInfo` WHERE `id` = ?";
        }
    }

    class AnonymousClass3 extends EntityDeletionOrUpdateAdapter<TagInfo> {
        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, TagInfo tagInfo) {
            supportSQLiteStatement.bindLong(1, tagInfo.id);
            String str = tagInfo.name;
            if (str == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str);
            }
            supportSQLiteStatement.bindLong(3, tagInfo.color);
            supportSQLiteStatement.bindLong(4, tagInfo.id);
        }

        @Override
        public String createQuery() {
            return "UPDATE OR ABORT `TagInfo` SET `id` = ?,`name` = ?,`color` = ? WHERE `id` = ?";
        }
    }

    public static List b() {
        return Collections.emptyList();
    }

    @Override
    public void delete(TagInfo tagInfo) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.c.handle(tagInfo);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public TagInfo getByName(String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM TagInfo WHERE name = ?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.a.assertNotSuspendingTransaction();
        TagInfo tagInfo = null;
        String string = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "color");
            if (cursorQuery.moveToFirst()) {
                long j = cursorQuery.getLong(columnIndexOrThrow);
                if (!cursorQuery.isNull(columnIndexOrThrow2)) {
                    string = cursorQuery.getString(columnIndexOrThrow2);
                }
                tagInfo = new TagInfo(j, string, cursorQuery.getInt(columnIndexOrThrow3));
            }
            return tagInfo;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getByTorrentId(String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM TagInfo WHERE id IN (SELECT tagId FROM TorrentTagInfo WHERE torrentId = ?)", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "color");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new TagInfo(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getInt(columnIndexOrThrow3)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public xm9 getByTorrentIdAsync(String str) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM TagInfo WHERE id IN (SELECT tagId FROM TorrentTagInfo WHERE torrentId = ?)", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        return RxRoom.createSingle(new Callable<List<TagInfo>>() {
            @Override
            public List call() {
                Cursor cursorQuery = DBUtil.query(TagInfoDao_Impl.this.a, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "color");
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        arrayList.add(new TagInfo(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getInt(columnIndexOrThrow3)));
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                }
            }

            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override
    public void insert(TagInfo tagInfo) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.b.insert(tagInfo);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public r14 observeAll() {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM TagInfo", 0);
        return RxRoom.createFlowable(this.a, false, new String[]{"TagInfo"}, new Callable<List<TagInfo>>() {
            @Override
            public List call() {
                Cursor cursorQuery = DBUtil.query(TagInfoDao_Impl.this.a, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "color");
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        arrayList.add(new TagInfo(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getInt(columnIndexOrThrow3)));
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                }
            }

            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override
    public r14 observeByTorrentId(String str) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM TagInfo WHERE id IN (SELECT tagId FROM TorrentTagInfo WHERE torrentId = ?)", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        return RxRoom.createFlowable(this.a, false, new String[]{"TagInfo", "TorrentTagInfo"}, new Callable<List<TagInfo>>() {
            @Override
            public List call() {
                Cursor cursorQuery = DBUtil.query(TagInfoDao_Impl.this.a, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "color");
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        arrayList.add(new TagInfo(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getInt(columnIndexOrThrow3)));
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                }
            }

            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override
    public void update(TagInfo tagInfo) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.d.handle(tagInfo);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }
}
