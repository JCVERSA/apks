package defpackage;

import android.database.Cursor;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.transsion.dbdata.beans.media.SubtitleRecord;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class n5a implements m5a {
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
        public void bind(SupportSQLiteStatement supportSQLiteStatement, SubtitleRecord subtitleRecord) {
            supportSQLiteStatement.bindLong(1, subtitleRecord.id);
            supportSQLiteStatement.bindLong(2, subtitleRecord._id);
            String str = subtitleRecord.sub_id;
            if (str == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, str);
            }
            String str2 = subtitleRecord.subtitle_path;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, str2);
            }
            supportSQLiteStatement.bindLong(5, subtitleRecord.sub_track);
            supportSQLiteStatement.bindDouble(6, subtitleRecord.sub_track_delay_time);
            supportSQLiteStatement.bindLong(7, subtitleRecord.sub_track_time);
            supportSQLiteStatement.bindLong(8, subtitleRecord.sub_type);
            supportSQLiteStatement.bindLong(9, subtitleRecord.sub_format);
            supportSQLiteStatement.bindLong(10, subtitleRecord.sub_inner_id);
            String str3 = subtitleRecord.sub_inner_name;
            if (str3 == null) {
                supportSQLiteStatement.bindNull(11);
            } else {
                supportSQLiteStatement.bindString(11, str3);
            }
            String str4 = subtitleRecord.sub_local_lang_to;
            if (str4 == null) {
                supportSQLiteStatement.bindNull(12);
            } else {
                supportSQLiteStatement.bindString(12, str4);
            }
        }

        @Override
        public String createQuery() {
            return "INSERT OR ABORT INTO `SubtitleRecord` (`id`,`_id`,`sub_id`,`subtitle_path`,`sub_track`,`sub_track_delay_time`,`sub_track_time`,`sub_type`,`sub_format`,`sub_inner_id`,`sub_inner_name`,`sub_local_lang_to`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?)";
        }
    }

    public class b extends EntityDeletionOrUpdateAdapter {
        public b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, SubtitleRecord subtitleRecord) {
            supportSQLiteStatement.bindLong(1, subtitleRecord.id);
            supportSQLiteStatement.bindLong(2, subtitleRecord._id);
            String str = subtitleRecord.sub_id;
            if (str == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, str);
            }
            String str2 = subtitleRecord.subtitle_path;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, str2);
            }
            supportSQLiteStatement.bindLong(5, subtitleRecord.sub_track);
            supportSQLiteStatement.bindDouble(6, subtitleRecord.sub_track_delay_time);
            supportSQLiteStatement.bindLong(7, subtitleRecord.sub_track_time);
            supportSQLiteStatement.bindLong(8, subtitleRecord.sub_type);
            supportSQLiteStatement.bindLong(9, subtitleRecord.sub_format);
            supportSQLiteStatement.bindLong(10, subtitleRecord.sub_inner_id);
            String str3 = subtitleRecord.sub_inner_name;
            if (str3 == null) {
                supportSQLiteStatement.bindNull(11);
            } else {
                supportSQLiteStatement.bindString(11, str3);
            }
            String str4 = subtitleRecord.sub_local_lang_to;
            if (str4 == null) {
                supportSQLiteStatement.bindNull(12);
            } else {
                supportSQLiteStatement.bindString(12, str4);
            }
            supportSQLiteStatement.bindLong(13, subtitleRecord.id);
        }

        @Override
        public String createQuery() {
            return "UPDATE OR ABORT `SubtitleRecord` SET `id` = ?,`_id` = ?,`sub_id` = ?,`subtitle_path` = ?,`sub_track` = ?,`sub_track_delay_time` = ?,`sub_track_time` = ?,`sub_type` = ?,`sub_format` = ?,`sub_inner_id` = ?,`sub_inner_name` = ?,`sub_local_lang_to` = ? WHERE `id` = ?";
        }
    }

    public class c extends SharedSQLiteStatement {
        public c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM SubtitleRecord WHERE _id =?";
        }
    }

    public class d extends SharedSQLiteStatement {
        public d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM SubtitleRecord WHERE _id =? AND subtitle_path =?";
        }
    }

    public class e extends SharedSQLiteStatement {
        public e(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM SubtitleRecord WHERE subtitle_path =?";
        }
    }

    public class f extends SharedSQLiteStatement {
        public f(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM SubtitleRecord WHERE _id =? AND sub_track =?";
        }
    }

    public n5a(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new a(roomDatabase);
        this.c = new b(roomDatabase);
        this.d = new c(roomDatabase);
        this.e = new d(roomDatabase);
        this.f = new e(roomDatabase);
        this.g = new f(roomDatabase);
    }

    public static List a() {
        return Collections.emptyList();
    }

    @Override
    public int deleteSubtitleRecordByMediaId(int i) {
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
    public int deleteSubtitleRecordByMediaIdAndPath(int i, String str) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.e.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i);
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
    public int deleteSubtitleRecordByPath(String str) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.f.acquire();
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
    public int deleteSubtitleRecordByTrackAndId(int i, int i2) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.g.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i);
        supportSQLiteStatementAcquire.bindLong(2, i2);
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
    public List getAllDataByMediaId(int i) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM SubtitleRecord WHERE _id =? ORDER BY id ASC ", 1);
        roomSQLiteQueryAcquire.bindLong(1, i);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "subtitle_path");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track_delay_time");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track_time");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_type");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_format");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_inner_id");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_inner_name");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_local_lang_to");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                SubtitleRecord subtitleRecord = new SubtitleRecord();
                roomSQLiteQuery = roomSQLiteQueryAcquire;
                try {
                    subtitleRecord.id = cursorQuery.getInt(columnIndexOrThrow);
                    subtitleRecord._id = cursorQuery.getInt(columnIndexOrThrow2);
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        subtitleRecord.sub_id = null;
                    } else {
                        subtitleRecord.sub_id = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow4)) {
                        subtitleRecord.subtitle_path = null;
                    } else {
                        subtitleRecord.subtitle_path = cursorQuery.getString(columnIndexOrThrow4);
                    }
                    subtitleRecord.sub_track = cursorQuery.getInt(columnIndexOrThrow5);
                    subtitleRecord.sub_track_delay_time = cursorQuery.getFloat(columnIndexOrThrow6);
                    int i2 = columnIndexOrThrow;
                    subtitleRecord.sub_track_time = cursorQuery.getLong(columnIndexOrThrow7);
                    subtitleRecord.sub_type = cursorQuery.getInt(columnIndexOrThrow8);
                    subtitleRecord.sub_format = cursorQuery.getInt(columnIndexOrThrow9);
                    subtitleRecord.sub_inner_id = cursorQuery.getInt(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        subtitleRecord.sub_inner_name = null;
                    } else {
                        subtitleRecord.sub_inner_name = cursorQuery.getString(columnIndexOrThrow11);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow12)) {
                        subtitleRecord.sub_local_lang_to = null;
                    } else {
                        subtitleRecord.sub_local_lang_to = cursorQuery.getString(columnIndexOrThrow12);
                    }
                    arrayList.add(subtitleRecord);
                    columnIndexOrThrow = i2;
                    roomSQLiteQueryAcquire = roomSQLiteQuery;
                } catch (Throwable th) {
                    th = th;
                    cursorQuery.close();
                    roomSQLiteQuery.release();
                    throw th;
                }
            }
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public List getAllDataByMediaIdAndTrack(int i, int i2) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM SubtitleRecord WHERE _id =? AND sub_track =? ORDER BY sub_track_time DESC", 2);
        roomSQLiteQueryAcquire.bindLong(1, i);
        roomSQLiteQueryAcquire.bindLong(2, i2);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "subtitle_path");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track_delay_time");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track_time");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_type");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_format");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_inner_id");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_inner_name");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_local_lang_to");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                SubtitleRecord subtitleRecord = new SubtitleRecord();
                roomSQLiteQuery = roomSQLiteQueryAcquire;
                try {
                    subtitleRecord.id = cursorQuery.getInt(columnIndexOrThrow);
                    subtitleRecord._id = cursorQuery.getInt(columnIndexOrThrow2);
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        subtitleRecord.sub_id = null;
                    } else {
                        subtitleRecord.sub_id = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow4)) {
                        subtitleRecord.subtitle_path = null;
                    } else {
                        subtitleRecord.subtitle_path = cursorQuery.getString(columnIndexOrThrow4);
                    }
                    subtitleRecord.sub_track = cursorQuery.getInt(columnIndexOrThrow5);
                    subtitleRecord.sub_track_delay_time = cursorQuery.getFloat(columnIndexOrThrow6);
                    int i3 = columnIndexOrThrow;
                    subtitleRecord.sub_track_time = cursorQuery.getLong(columnIndexOrThrow7);
                    subtitleRecord.sub_type = cursorQuery.getInt(columnIndexOrThrow8);
                    subtitleRecord.sub_format = cursorQuery.getInt(columnIndexOrThrow9);
                    subtitleRecord.sub_inner_id = cursorQuery.getInt(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        subtitleRecord.sub_inner_name = null;
                    } else {
                        subtitleRecord.sub_inner_name = cursorQuery.getString(columnIndexOrThrow11);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow12)) {
                        subtitleRecord.sub_local_lang_to = null;
                    } else {
                        subtitleRecord.sub_local_lang_to = cursorQuery.getString(columnIndexOrThrow12);
                    }
                    arrayList.add(subtitleRecord);
                    columnIndexOrThrow = i3;
                    roomSQLiteQueryAcquire = roomSQLiteQuery;
                } catch (Throwable th) {
                    th = th;
                    cursorQuery.close();
                    roomSQLiteQuery.release();
                    throw th;
                }
            }
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public List getAllDataByMediaIdAndTrackByDesc(int i, int i2) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM SubtitleRecord WHERE _id =? AND sub_track =? ORDER BY sub_track_time DESC", 2);
        roomSQLiteQueryAcquire.bindLong(1, i);
        roomSQLiteQueryAcquire.bindLong(2, i2);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "subtitle_path");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track_delay_time");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track_time");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_type");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_format");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_inner_id");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_inner_name");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_local_lang_to");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                SubtitleRecord subtitleRecord = new SubtitleRecord();
                roomSQLiteQuery = roomSQLiteQueryAcquire;
                try {
                    subtitleRecord.id = cursorQuery.getInt(columnIndexOrThrow);
                    subtitleRecord._id = cursorQuery.getInt(columnIndexOrThrow2);
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        subtitleRecord.sub_id = null;
                    } else {
                        subtitleRecord.sub_id = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow4)) {
                        subtitleRecord.subtitle_path = null;
                    } else {
                        subtitleRecord.subtitle_path = cursorQuery.getString(columnIndexOrThrow4);
                    }
                    subtitleRecord.sub_track = cursorQuery.getInt(columnIndexOrThrow5);
                    subtitleRecord.sub_track_delay_time = cursorQuery.getFloat(columnIndexOrThrow6);
                    int i3 = columnIndexOrThrow;
                    subtitleRecord.sub_track_time = cursorQuery.getLong(columnIndexOrThrow7);
                    subtitleRecord.sub_type = cursorQuery.getInt(columnIndexOrThrow8);
                    subtitleRecord.sub_format = cursorQuery.getInt(columnIndexOrThrow9);
                    subtitleRecord.sub_inner_id = cursorQuery.getInt(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        subtitleRecord.sub_inner_name = null;
                    } else {
                        subtitleRecord.sub_inner_name = cursorQuery.getString(columnIndexOrThrow11);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow12)) {
                        subtitleRecord.sub_local_lang_to = null;
                    } else {
                        subtitleRecord.sub_local_lang_to = cursorQuery.getString(columnIndexOrThrow12);
                    }
                    arrayList.add(subtitleRecord);
                    columnIndexOrThrow = i3;
                    roomSQLiteQueryAcquire = roomSQLiteQuery;
                } catch (Throwable th) {
                    th = th;
                    cursorQuery.close();
                    roomSQLiteQuery.release();
                    throw th;
                }
            }
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public List getAllDataByMediaPathAndTrack(String str, int i) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM SubtitleRecord WHERE subtitle_path =? AND sub_track =? ", 2);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        roomSQLiteQueryAcquire.bindLong(2, i);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "subtitle_path");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track_delay_time");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track_time");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_type");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_format");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_inner_id");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_inner_name");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_local_lang_to");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                SubtitleRecord subtitleRecord = new SubtitleRecord();
                roomSQLiteQuery = roomSQLiteQueryAcquire;
                try {
                    subtitleRecord.id = cursorQuery.getInt(columnIndexOrThrow);
                    subtitleRecord._id = cursorQuery.getInt(columnIndexOrThrow2);
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        subtitleRecord.sub_id = null;
                    } else {
                        subtitleRecord.sub_id = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow4)) {
                        subtitleRecord.subtitle_path = null;
                    } else {
                        subtitleRecord.subtitle_path = cursorQuery.getString(columnIndexOrThrow4);
                    }
                    subtitleRecord.sub_track = cursorQuery.getInt(columnIndexOrThrow5);
                    subtitleRecord.sub_track_delay_time = cursorQuery.getFloat(columnIndexOrThrow6);
                    int i2 = columnIndexOrThrow2;
                    int i3 = columnIndexOrThrow3;
                    subtitleRecord.sub_track_time = cursorQuery.getLong(columnIndexOrThrow7);
                    subtitleRecord.sub_type = cursorQuery.getInt(columnIndexOrThrow8);
                    subtitleRecord.sub_format = cursorQuery.getInt(columnIndexOrThrow9);
                    subtitleRecord.sub_inner_id = cursorQuery.getInt(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        subtitleRecord.sub_inner_name = null;
                    } else {
                        subtitleRecord.sub_inner_name = cursorQuery.getString(columnIndexOrThrow11);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow12)) {
                        subtitleRecord.sub_local_lang_to = null;
                    } else {
                        subtitleRecord.sub_local_lang_to = cursorQuery.getString(columnIndexOrThrow12);
                    }
                    arrayList.add(subtitleRecord);
                    columnIndexOrThrow2 = i2;
                    columnIndexOrThrow3 = i3;
                    roomSQLiteQueryAcquire = roomSQLiteQuery;
                } catch (Throwable th) {
                    th = th;
                    cursorQuery.close();
                    roomSQLiteQuery.release();
                    throw th;
                }
            }
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public List getAllExternalRecordByMediaIdAndTrack(int i, int i2) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM SubtitleRecord WHERE _id =? AND sub_track =? AND sub_type = 0  ORDER BY sub_track_time DESC", 2);
        roomSQLiteQueryAcquire.bindLong(1, i);
        roomSQLiteQueryAcquire.bindLong(2, i2);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "subtitle_path");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track_delay_time");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track_time");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_type");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_format");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_inner_id");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_inner_name");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_local_lang_to");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                SubtitleRecord subtitleRecord = new SubtitleRecord();
                roomSQLiteQuery = roomSQLiteQueryAcquire;
                try {
                    subtitleRecord.id = cursorQuery.getInt(columnIndexOrThrow);
                    subtitleRecord._id = cursorQuery.getInt(columnIndexOrThrow2);
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        subtitleRecord.sub_id = null;
                    } else {
                        subtitleRecord.sub_id = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow4)) {
                        subtitleRecord.subtitle_path = null;
                    } else {
                        subtitleRecord.subtitle_path = cursorQuery.getString(columnIndexOrThrow4);
                    }
                    subtitleRecord.sub_track = cursorQuery.getInt(columnIndexOrThrow5);
                    subtitleRecord.sub_track_delay_time = cursorQuery.getFloat(columnIndexOrThrow6);
                    int i3 = columnIndexOrThrow;
                    subtitleRecord.sub_track_time = cursorQuery.getLong(columnIndexOrThrow7);
                    subtitleRecord.sub_type = cursorQuery.getInt(columnIndexOrThrow8);
                    subtitleRecord.sub_format = cursorQuery.getInt(columnIndexOrThrow9);
                    subtitleRecord.sub_inner_id = cursorQuery.getInt(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        subtitleRecord.sub_inner_name = null;
                    } else {
                        subtitleRecord.sub_inner_name = cursorQuery.getString(columnIndexOrThrow11);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow12)) {
                        subtitleRecord.sub_local_lang_to = null;
                    } else {
                        subtitleRecord.sub_local_lang_to = cursorQuery.getString(columnIndexOrThrow12);
                    }
                    arrayList.add(subtitleRecord);
                    columnIndexOrThrow = i3;
                    roomSQLiteQueryAcquire = roomSQLiteQuery;
                } catch (Throwable th) {
                    th = th;
                    cursorQuery.close();
                    roomSQLiteQuery.release();
                    throw th;
                }
            }
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public long insertSubtitleRecord(SubtitleRecord subtitleRecord) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            long jInsertAndReturnId = this.b.insertAndReturnId(subtitleRecord);
            this.a.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public SubtitleRecord queryInnerSubtitleByMediaAndTrack(int i, int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM SubtitleRecord WHERE _id =? AND sub_track =? AND sub_type = 1", 2);
        roomSQLiteQueryAcquire.bindLong(1, i);
        roomSQLiteQueryAcquire.bindLong(2, i2);
        this.a.assertNotSuspendingTransaction();
        SubtitleRecord subtitleRecord = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "subtitle_path");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track_delay_time");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track_time");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_type");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_format");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_inner_id");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_inner_name");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_local_lang_to");
            if (cursorQuery.moveToFirst()) {
                SubtitleRecord subtitleRecord2 = new SubtitleRecord();
                subtitleRecord2.id = cursorQuery.getInt(columnIndexOrThrow);
                subtitleRecord2._id = cursorQuery.getInt(columnIndexOrThrow2);
                if (cursorQuery.isNull(columnIndexOrThrow3)) {
                    subtitleRecord2.sub_id = null;
                } else {
                    subtitleRecord2.sub_id = cursorQuery.getString(columnIndexOrThrow3);
                }
                if (cursorQuery.isNull(columnIndexOrThrow4)) {
                    subtitleRecord2.subtitle_path = null;
                } else {
                    subtitleRecord2.subtitle_path = cursorQuery.getString(columnIndexOrThrow4);
                }
                subtitleRecord2.sub_track = cursorQuery.getInt(columnIndexOrThrow5);
                subtitleRecord2.sub_track_delay_time = cursorQuery.getFloat(columnIndexOrThrow6);
                subtitleRecord2.sub_track_time = cursorQuery.getLong(columnIndexOrThrow7);
                subtitleRecord2.sub_type = cursorQuery.getInt(columnIndexOrThrow8);
                subtitleRecord2.sub_format = cursorQuery.getInt(columnIndexOrThrow9);
                subtitleRecord2.sub_inner_id = cursorQuery.getInt(columnIndexOrThrow10);
                if (cursorQuery.isNull(columnIndexOrThrow11)) {
                    subtitleRecord2.sub_inner_name = null;
                } else {
                    subtitleRecord2.sub_inner_name = cursorQuery.getString(columnIndexOrThrow11);
                }
                if (cursorQuery.isNull(columnIndexOrThrow12)) {
                    subtitleRecord2.sub_local_lang_to = null;
                } else {
                    subtitleRecord2.sub_local_lang_to = cursorQuery.getString(columnIndexOrThrow12);
                }
                subtitleRecord = subtitleRecord2;
            }
            return subtitleRecord;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public SubtitleRecord querySubtitleByMediaAndSid(int i, String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM SubtitleRecord WHERE _id =? AND sub_id =?", 2);
        roomSQLiteQueryAcquire.bindLong(1, i);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(2);
        } else {
            roomSQLiteQueryAcquire.bindString(2, str);
        }
        this.a.assertNotSuspendingTransaction();
        SubtitleRecord subtitleRecord = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "subtitle_path");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track_delay_time");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track_time");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_type");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_format");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_inner_id");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_inner_name");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_local_lang_to");
            if (cursorQuery.moveToFirst()) {
                SubtitleRecord subtitleRecord2 = new SubtitleRecord();
                subtitleRecord2.id = cursorQuery.getInt(columnIndexOrThrow);
                subtitleRecord2._id = cursorQuery.getInt(columnIndexOrThrow2);
                if (cursorQuery.isNull(columnIndexOrThrow3)) {
                    subtitleRecord2.sub_id = null;
                } else {
                    subtitleRecord2.sub_id = cursorQuery.getString(columnIndexOrThrow3);
                }
                if (cursorQuery.isNull(columnIndexOrThrow4)) {
                    subtitleRecord2.subtitle_path = null;
                } else {
                    subtitleRecord2.subtitle_path = cursorQuery.getString(columnIndexOrThrow4);
                }
                subtitleRecord2.sub_track = cursorQuery.getInt(columnIndexOrThrow5);
                subtitleRecord2.sub_track_delay_time = cursorQuery.getFloat(columnIndexOrThrow6);
                subtitleRecord2.sub_track_time = cursorQuery.getLong(columnIndexOrThrow7);
                subtitleRecord2.sub_type = cursorQuery.getInt(columnIndexOrThrow8);
                subtitleRecord2.sub_format = cursorQuery.getInt(columnIndexOrThrow9);
                subtitleRecord2.sub_inner_id = cursorQuery.getInt(columnIndexOrThrow10);
                if (cursorQuery.isNull(columnIndexOrThrow11)) {
                    subtitleRecord2.sub_inner_name = null;
                } else {
                    subtitleRecord2.sub_inner_name = cursorQuery.getString(columnIndexOrThrow11);
                }
                if (cursorQuery.isNull(columnIndexOrThrow12)) {
                    subtitleRecord2.sub_local_lang_to = null;
                } else {
                    subtitleRecord2.sub_local_lang_to = cursorQuery.getString(columnIndexOrThrow12);
                }
                subtitleRecord = subtitleRecord2;
            }
            return subtitleRecord;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public SubtitleRecord querySubtitleByMediaAndTrackAndPath(int i, int i2, String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM SubtitleRecord WHERE _id =? AND sub_track =? AND subtitle_path =?", 3);
        roomSQLiteQueryAcquire.bindLong(1, i);
        roomSQLiteQueryAcquire.bindLong(2, i2);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(3);
        } else {
            roomSQLiteQueryAcquire.bindString(3, str);
        }
        this.a.assertNotSuspendingTransaction();
        SubtitleRecord subtitleRecord = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "subtitle_path");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track_delay_time");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track_time");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_type");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_format");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_inner_id");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_inner_name");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_local_lang_to");
            if (cursorQuery.moveToFirst()) {
                SubtitleRecord subtitleRecord2 = new SubtitleRecord();
                subtitleRecord2.id = cursorQuery.getInt(columnIndexOrThrow);
                subtitleRecord2._id = cursorQuery.getInt(columnIndexOrThrow2);
                if (cursorQuery.isNull(columnIndexOrThrow3)) {
                    subtitleRecord2.sub_id = null;
                } else {
                    subtitleRecord2.sub_id = cursorQuery.getString(columnIndexOrThrow3);
                }
                if (cursorQuery.isNull(columnIndexOrThrow4)) {
                    subtitleRecord2.subtitle_path = null;
                } else {
                    subtitleRecord2.subtitle_path = cursorQuery.getString(columnIndexOrThrow4);
                }
                subtitleRecord2.sub_track = cursorQuery.getInt(columnIndexOrThrow5);
                subtitleRecord2.sub_track_delay_time = cursorQuery.getFloat(columnIndexOrThrow6);
                subtitleRecord2.sub_track_time = cursorQuery.getLong(columnIndexOrThrow7);
                subtitleRecord2.sub_type = cursorQuery.getInt(columnIndexOrThrow8);
                subtitleRecord2.sub_format = cursorQuery.getInt(columnIndexOrThrow9);
                subtitleRecord2.sub_inner_id = cursorQuery.getInt(columnIndexOrThrow10);
                if (cursorQuery.isNull(columnIndexOrThrow11)) {
                    subtitleRecord2.sub_inner_name = null;
                } else {
                    subtitleRecord2.sub_inner_name = cursorQuery.getString(columnIndexOrThrow11);
                }
                if (cursorQuery.isNull(columnIndexOrThrow12)) {
                    subtitleRecord2.sub_local_lang_to = null;
                } else {
                    subtitleRecord2.sub_local_lang_to = cursorQuery.getString(columnIndexOrThrow12);
                }
                subtitleRecord = subtitleRecord2;
            }
            return subtitleRecord;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public SubtitleRecord querySubtitleByMediaAndTrackAndSid(int i, int i2, String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM SubtitleRecord WHERE _id =? AND sub_track =? AND sub_id =?", 3);
        roomSQLiteQueryAcquire.bindLong(1, i);
        roomSQLiteQueryAcquire.bindLong(2, i2);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(3);
        } else {
            roomSQLiteQueryAcquire.bindString(3, str);
        }
        this.a.assertNotSuspendingTransaction();
        SubtitleRecord subtitleRecord = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "subtitle_path");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track_delay_time");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_track_time");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_type");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_format");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_inner_id");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_inner_name");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_local_lang_to");
            if (cursorQuery.moveToFirst()) {
                SubtitleRecord subtitleRecord2 = new SubtitleRecord();
                subtitleRecord2.id = cursorQuery.getInt(columnIndexOrThrow);
                subtitleRecord2._id = cursorQuery.getInt(columnIndexOrThrow2);
                if (cursorQuery.isNull(columnIndexOrThrow3)) {
                    subtitleRecord2.sub_id = null;
                } else {
                    subtitleRecord2.sub_id = cursorQuery.getString(columnIndexOrThrow3);
                }
                if (cursorQuery.isNull(columnIndexOrThrow4)) {
                    subtitleRecord2.subtitle_path = null;
                } else {
                    subtitleRecord2.subtitle_path = cursorQuery.getString(columnIndexOrThrow4);
                }
                subtitleRecord2.sub_track = cursorQuery.getInt(columnIndexOrThrow5);
                subtitleRecord2.sub_track_delay_time = cursorQuery.getFloat(columnIndexOrThrow6);
                subtitleRecord2.sub_track_time = cursorQuery.getLong(columnIndexOrThrow7);
                subtitleRecord2.sub_type = cursorQuery.getInt(columnIndexOrThrow8);
                subtitleRecord2.sub_format = cursorQuery.getInt(columnIndexOrThrow9);
                subtitleRecord2.sub_inner_id = cursorQuery.getInt(columnIndexOrThrow10);
                if (cursorQuery.isNull(columnIndexOrThrow11)) {
                    subtitleRecord2.sub_inner_name = null;
                } else {
                    subtitleRecord2.sub_inner_name = cursorQuery.getString(columnIndexOrThrow11);
                }
                if (cursorQuery.isNull(columnIndexOrThrow12)) {
                    subtitleRecord2.sub_local_lang_to = null;
                } else {
                    subtitleRecord2.sub_local_lang_to = cursorQuery.getString(columnIndexOrThrow12);
                }
                subtitleRecord = subtitleRecord2;
            }
            return subtitleRecord;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public void updateSubtitleRecord(SubtitleRecord subtitleRecord) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.c.handle(subtitleRecord);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public long[] insertSubtitleRecord(List list) {
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
    public void updateSubtitleRecord(List list) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.c.handleMultiple(list);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }
}
