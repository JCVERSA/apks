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
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.database.MediaPlayCount;
import com.transsion.dbdata.database.VideoRecord;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

public final class h5c implements g5c {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;
    public final EntityDeletionOrUpdateAdapter c;
    public final SharedSQLiteStatement d;
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
            Cursor cursorQuery = DBUtil.query(h5c.this.a, this.b, false, null);
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "position");
                int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
                int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isPlayCompleted");
                int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayVideoData.TAG_VIRTUAL_FOLDER);
                int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "virtualFolder_path");
                int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayVideoData.TAG_VIRTUAL_FOLDER_MATCH_NAME);
                int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucket_id");
                int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_id");
                int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "date_modified");
                int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_date_modified");
                int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayVideoData.TAG_SUBTITLE_INDEX);
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    VideoRecord videoRecord = new VideoRecord();
                    ArrayList arrayList2 = arrayList;
                    videoRecord.id = cursorQuery.getInt(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        videoRecord.data = null;
                    } else {
                        videoRecord.data = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    videoRecord.position = cursorQuery.getInt(columnIndexOrThrow3);
                    videoRecord.duration = cursorQuery.getInt(columnIndexOrThrow4);
                    videoRecord.isPlayCompleted = cursorQuery.getInt(columnIndexOrThrow5);
                    videoRecord.isVirtualFolder = cursorQuery.getInt(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        videoRecord.virtualFolder_path = null;
                    } else {
                        videoRecord.virtualFolder_path = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow8)) {
                        videoRecord.virtualFolder_matchName = null;
                    } else {
                        videoRecord.virtualFolder_matchName = cursorQuery.getString(columnIndexOrThrow8);
                    }
                    videoRecord.bucket_id = cursorQuery.getInt(columnIndexOrThrow9);
                    videoRecord._id = cursorQuery.getInt(columnIndexOrThrow10);
                    int i = columnIndexOrThrow2;
                    videoRecord.date_modified = cursorQuery.getLong(columnIndexOrThrow11);
                    videoRecord.record_date_modified = cursorQuery.getLong(columnIndexOrThrow12);
                    videoRecord.subtitle_index = cursorQuery.getInt(columnIndexOrThrow13);
                    int i2 = columnIndexOrThrow14;
                    videoRecord.playCount = cursorQuery.getInt(i2);
                    arrayList = arrayList2;
                    arrayList.add(videoRecord);
                    columnIndexOrThrow14 = i2;
                    columnIndexOrThrow2 = i;
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
            Cursor cursorQuery = DBUtil.query(h5c.this.a, this.b, false, null);
            try {
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    arrayList.add(new MediaPlayCount(cursorQuery.isNull(0) ? null : cursorQuery.getString(0), cursorQuery.getInt(1)));
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
        public void bind(SupportSQLiteStatement supportSQLiteStatement, VideoRecord videoRecord) {
            supportSQLiteStatement.bindLong(1, videoRecord.id);
            String str = videoRecord.data;
            if (str == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str);
            }
            supportSQLiteStatement.bindLong(3, videoRecord.position);
            supportSQLiteStatement.bindLong(4, videoRecord.duration);
            supportSQLiteStatement.bindLong(5, videoRecord.isPlayCompleted);
            supportSQLiteStatement.bindLong(6, videoRecord.isVirtualFolder);
            String str2 = videoRecord.virtualFolder_path;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(7);
            } else {
                supportSQLiteStatement.bindString(7, str2);
            }
            String str3 = videoRecord.virtualFolder_matchName;
            if (str3 == null) {
                supportSQLiteStatement.bindNull(8);
            } else {
                supportSQLiteStatement.bindString(8, str3);
            }
            supportSQLiteStatement.bindLong(9, videoRecord.bucket_id);
            supportSQLiteStatement.bindLong(10, videoRecord._id);
            supportSQLiteStatement.bindLong(11, videoRecord.date_modified);
            supportSQLiteStatement.bindLong(12, videoRecord.record_date_modified);
            supportSQLiteStatement.bindLong(13, videoRecord.subtitle_index);
            supportSQLiteStatement.bindLong(14, videoRecord.playCount);
        }

        @Override
        public String createQuery() {
            return "INSERT OR ABORT INTO `VideoStates` (`id`,`_data`,`position`,`duration`,`isPlayCompleted`,`isVirtualFolder`,`virtualFolder_path`,`virtualFolder_matchName`,`bucket_id`,`_id`,`date_modified`,`record_date_modified`,`subtitle_index`,`play_count`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }
    }

    public class d extends EntityDeletionOrUpdateAdapter {
        public d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, VideoRecord videoRecord) {
            supportSQLiteStatement.bindLong(1, videoRecord.id);
            String str = videoRecord.data;
            if (str == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str);
            }
            supportSQLiteStatement.bindLong(3, videoRecord.position);
            supportSQLiteStatement.bindLong(4, videoRecord.duration);
            supportSQLiteStatement.bindLong(5, videoRecord.isPlayCompleted);
            supportSQLiteStatement.bindLong(6, videoRecord.isVirtualFolder);
            String str2 = videoRecord.virtualFolder_path;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(7);
            } else {
                supportSQLiteStatement.bindString(7, str2);
            }
            String str3 = videoRecord.virtualFolder_matchName;
            if (str3 == null) {
                supportSQLiteStatement.bindNull(8);
            } else {
                supportSQLiteStatement.bindString(8, str3);
            }
            supportSQLiteStatement.bindLong(9, videoRecord.bucket_id);
            supportSQLiteStatement.bindLong(10, videoRecord._id);
            supportSQLiteStatement.bindLong(11, videoRecord.date_modified);
            supportSQLiteStatement.bindLong(12, videoRecord.record_date_modified);
            supportSQLiteStatement.bindLong(13, videoRecord.subtitle_index);
            supportSQLiteStatement.bindLong(14, videoRecord.playCount);
            supportSQLiteStatement.bindLong(15, videoRecord.id);
        }

        @Override
        public String createQuery() {
            return "UPDATE OR ABORT `VideoStates` SET `id` = ?,`_data` = ?,`position` = ?,`duration` = ?,`isPlayCompleted` = ?,`isVirtualFolder` = ?,`virtualFolder_path` = ?,`virtualFolder_matchName` = ?,`bucket_id` = ?,`_id` = ?,`date_modified` = ?,`record_date_modified` = ?,`subtitle_index` = ?,`play_count` = ? WHERE `id` = ?";
        }
    }

    public class e extends SharedSQLiteStatement {
        public e(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "UPDATE VideoStates SET play_count = ? WHERE _data = ?";
        }
    }

    public class f extends SharedSQLiteStatement {
        public f(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM VideoStates WHERE _id =?";
        }
    }

    public class g extends SharedSQLiteStatement {
        public g(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM VideoStates";
        }
    }

    public class h extends SharedSQLiteStatement {
        public h(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM VideoStates WHERE _id =? AND _data =?";
        }
    }

    public class i extends SharedSQLiteStatement {
        public i(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM VideoStates WHERE _data =?";
        }
    }

    public class j extends SharedSQLiteStatement {
        public j(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "UPDATE VideoStates SET play_count = play_count + 1, record_date_modified = ? WHERE _id = ?";
        }
    }

    public class k extends SharedSQLiteStatement {
        public k(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "UPDATE VideoStates SET play_count = play_count + 1, record_date_modified = ? WHERE _data = ?";
        }
    }

    public h5c(RoomDatabase roomDatabase) {
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
    public void batchUpdatePlayCounts(Map map) {
        this.a.beginTransaction();
        try {
            super.batchUpdatePlayCounts(map);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int deleteAllVideoRecord() {
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
    public int deleteBatchVideoRecordsByMediaIds(List list) {
        this.a.assertNotSuspendingTransaction();
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("DELETE FROM VideoStates WHERE _id IN (");
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
            int iExecuteUpdateDelete = supportSQLiteStatementCompileStatement.executeUpdateDelete();
            this.a.setTransactionSuccessful();
            return iExecuteUpdateDelete;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int deleteVideoRecordByData(String str) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.h.acquire();
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
                this.h.release(supportSQLiteStatementAcquire);
                return iExecuteUpdateDelete;
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
    public int deleteVideoRecordByMediaId(int i2) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.e.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i2);
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
    public int deleteVideoRecordByMediaIdAndData(String str, int i2) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.g.acquire();
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
    public List getAllRecordOrderRecordDate() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM VideoStates ORDER BY record_date_modified DESC", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "position");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isPlayCompleted");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayVideoData.TAG_VIRTUAL_FOLDER);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "virtualFolder_path");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayVideoData.TAG_VIRTUAL_FOLDER_MATCH_NAME);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucket_id");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_id");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "date_modified");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_date_modified");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayVideoData.TAG_SUBTITLE_INDEX);
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    VideoRecord videoRecord = new VideoRecord();
                    ArrayList arrayList2 = arrayList;
                    videoRecord.id = cursorQuery.getInt(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        videoRecord.data = null;
                    } else {
                        videoRecord.data = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    videoRecord.position = cursorQuery.getInt(columnIndexOrThrow3);
                    videoRecord.duration = cursorQuery.getInt(columnIndexOrThrow4);
                    videoRecord.isPlayCompleted = cursorQuery.getInt(columnIndexOrThrow5);
                    videoRecord.isVirtualFolder = cursorQuery.getInt(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        videoRecord.virtualFolder_path = null;
                    } else {
                        videoRecord.virtualFolder_path = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow8)) {
                        videoRecord.virtualFolder_matchName = null;
                    } else {
                        videoRecord.virtualFolder_matchName = cursorQuery.getString(columnIndexOrThrow8);
                    }
                    videoRecord.bucket_id = cursorQuery.getInt(columnIndexOrThrow9);
                    videoRecord._id = cursorQuery.getInt(columnIndexOrThrow10);
                    int i2 = columnIndexOrThrow;
                    videoRecord.date_modified = cursorQuery.getLong(columnIndexOrThrow11);
                    videoRecord.record_date_modified = cursorQuery.getLong(columnIndexOrThrow12);
                    videoRecord.subtitle_index = cursorQuery.getInt(columnIndexOrThrow13);
                    int i3 = columnIndexOrThrow14;
                    videoRecord.playCount = cursorQuery.getInt(i3);
                    arrayList = arrayList2;
                    arrayList.add(videoRecord);
                    columnIndexOrThrow14 = i3;
                    columnIndexOrThrow = i2;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public List getAllVideoPlayCounts() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT _data, play_count FROM VideoStates WHERE play_count > 0 AND _data IS NOT NULL AND _data != ''", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new MediaPlayCount(cursorQuery.isNull(0) ? null : cursorQuery.getString(0), cursorQuery.getInt(1)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public LiveData getAllVideoRecordList(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM VideoStates ORDER BY record_date_modified DESC LIMIT ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        return this.a.getInvalidationTracker().createLiveData(new String[]{"VideoStates"}, false, new a(roomSQLiteQueryAcquire));
    }

    @Override
    public List getRecordListForBucketList(int i2, int i3, String str) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM VideoStates WHERE bucket_id = ? AND isVirtualFolder =? AND virtualFolder_matchName =? ORDER BY id DESC", 3);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        roomSQLiteQueryAcquire.bindLong(2, i3);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(3);
        } else {
            roomSQLiteQueryAcquire.bindString(3, str);
        }
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "position");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isPlayCompleted");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayVideoData.TAG_VIRTUAL_FOLDER);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "virtualFolder_path");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayVideoData.TAG_VIRTUAL_FOLDER_MATCH_NAME);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucket_id");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_id");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "date_modified");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_date_modified");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayVideoData.TAG_SUBTITLE_INDEX);
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    VideoRecord videoRecord = new VideoRecord();
                    ArrayList arrayList2 = arrayList;
                    videoRecord.id = cursorQuery.getInt(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        videoRecord.data = null;
                    } else {
                        videoRecord.data = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    videoRecord.position = cursorQuery.getInt(columnIndexOrThrow3);
                    videoRecord.duration = cursorQuery.getInt(columnIndexOrThrow4);
                    videoRecord.isPlayCompleted = cursorQuery.getInt(columnIndexOrThrow5);
                    videoRecord.isVirtualFolder = cursorQuery.getInt(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        videoRecord.virtualFolder_path = null;
                    } else {
                        videoRecord.virtualFolder_path = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow8)) {
                        videoRecord.virtualFolder_matchName = null;
                    } else {
                        videoRecord.virtualFolder_matchName = cursorQuery.getString(columnIndexOrThrow8);
                    }
                    videoRecord.bucket_id = cursorQuery.getInt(columnIndexOrThrow9);
                    videoRecord._id = cursorQuery.getInt(columnIndexOrThrow10);
                    int i4 = columnIndexOrThrow2;
                    int i5 = columnIndexOrThrow3;
                    videoRecord.date_modified = cursorQuery.getLong(columnIndexOrThrow11);
                    videoRecord.record_date_modified = cursorQuery.getLong(columnIndexOrThrow12);
                    videoRecord.subtitle_index = cursorQuery.getInt(columnIndexOrThrow13);
                    int i6 = columnIndexOrThrow14;
                    videoRecord.playCount = cursorQuery.getInt(i6);
                    arrayList2.add(videoRecord);
                    columnIndexOrThrow14 = i6;
                    columnIndexOrThrow2 = i4;
                    columnIndexOrThrow3 = i5;
                    arrayList = arrayList2;
                }
                ArrayList arrayList3 = arrayList;
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList3;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public List getRecordMediaIdsOrderRecordDate(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT _id FROM VideoStates ORDER BY record_date_modified DESC LIMIT?", 1);
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
    public VideoRecord getTheVideoRecordMediaCountByData(String str) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        VideoRecord videoRecord;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM VideoStates WHERE _data =?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "position");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isPlayCompleted");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayVideoData.TAG_VIRTUAL_FOLDER);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "virtualFolder_path");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayVideoData.TAG_VIRTUAL_FOLDER_MATCH_NAME);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucket_id");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_id");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "date_modified");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_date_modified");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayVideoData.TAG_SUBTITLE_INDEX);
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
            if (cursorQuery.moveToFirst()) {
                roomSQLiteQuery = roomSQLiteQueryAcquire;
                try {
                    VideoRecord videoRecord2 = new VideoRecord();
                    videoRecord2.id = cursorQuery.getInt(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        videoRecord2.data = null;
                    } else {
                        videoRecord2.data = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    videoRecord2.position = cursorQuery.getInt(columnIndexOrThrow3);
                    videoRecord2.duration = cursorQuery.getInt(columnIndexOrThrow4);
                    videoRecord2.isPlayCompleted = cursorQuery.getInt(columnIndexOrThrow5);
                    videoRecord2.isVirtualFolder = cursorQuery.getInt(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        videoRecord2.virtualFolder_path = null;
                    } else {
                        videoRecord2.virtualFolder_path = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow8)) {
                        videoRecord2.virtualFolder_matchName = null;
                    } else {
                        videoRecord2.virtualFolder_matchName = cursorQuery.getString(columnIndexOrThrow8);
                    }
                    videoRecord2.bucket_id = cursorQuery.getInt(columnIndexOrThrow9);
                    videoRecord2._id = cursorQuery.getInt(columnIndexOrThrow10);
                    videoRecord2.date_modified = cursorQuery.getLong(columnIndexOrThrow11);
                    videoRecord2.record_date_modified = cursorQuery.getLong(columnIndexOrThrow12);
                    videoRecord2.subtitle_index = cursorQuery.getInt(columnIndexOrThrow13);
                    videoRecord2.playCount = cursorQuery.getInt(columnIndexOrThrow14);
                    videoRecord = videoRecord2;
                } catch (Throwable th) {
                    th = th;
                    cursorQuery.close();
                    roomSQLiteQuery.release();
                    throw th;
                }
            } else {
                roomSQLiteQuery = roomSQLiteQueryAcquire;
                videoRecord = null;
            }
            cursorQuery.close();
            roomSQLiteQuery.release();
            return videoRecord;
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public VideoRecord getTheVideoRecordMediaCountById(int i2) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        VideoRecord videoRecord;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM VideoStates WHERE _id = ? ORDER BY record_date_modified DESC", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "position");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isPlayCompleted");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayVideoData.TAG_VIRTUAL_FOLDER);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "virtualFolder_path");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayVideoData.TAG_VIRTUAL_FOLDER_MATCH_NAME);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucket_id");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_id");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "date_modified");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_date_modified");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayVideoData.TAG_SUBTITLE_INDEX);
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
            if (cursorQuery.moveToFirst()) {
                roomSQLiteQuery = roomSQLiteQueryAcquire;
                try {
                    VideoRecord videoRecord2 = new VideoRecord();
                    videoRecord2.id = cursorQuery.getInt(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        videoRecord2.data = null;
                    } else {
                        videoRecord2.data = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    videoRecord2.position = cursorQuery.getInt(columnIndexOrThrow3);
                    videoRecord2.duration = cursorQuery.getInt(columnIndexOrThrow4);
                    videoRecord2.isPlayCompleted = cursorQuery.getInt(columnIndexOrThrow5);
                    videoRecord2.isVirtualFolder = cursorQuery.getInt(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        videoRecord2.virtualFolder_path = null;
                    } else {
                        videoRecord2.virtualFolder_path = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow8)) {
                        videoRecord2.virtualFolder_matchName = null;
                    } else {
                        videoRecord2.virtualFolder_matchName = cursorQuery.getString(columnIndexOrThrow8);
                    }
                    videoRecord2.bucket_id = cursorQuery.getInt(columnIndexOrThrow9);
                    videoRecord2._id = cursorQuery.getInt(columnIndexOrThrow10);
                    videoRecord2.date_modified = cursorQuery.getLong(columnIndexOrThrow11);
                    videoRecord2.record_date_modified = cursorQuery.getLong(columnIndexOrThrow12);
                    videoRecord2.subtitle_index = cursorQuery.getInt(columnIndexOrThrow13);
                    videoRecord2.playCount = cursorQuery.getInt(columnIndexOrThrow14);
                    videoRecord = videoRecord2;
                } catch (Throwable th) {
                    th = th;
                    cursorQuery.close();
                    roomSQLiteQuery.release();
                    throw th;
                }
            } else {
                roomSQLiteQuery = roomSQLiteQueryAcquire;
                videoRecord = null;
            }
            cursorQuery.close();
            roomSQLiteQuery.release();
            return videoRecord;
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public Cursor getVideoRecordByMediaIdAndBuickId(int i2, int i3) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM VideoStates WHERE _id = ? AND bucket_id =?", 2);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        roomSQLiteQueryAcquire.bindLong(2, i3);
        return this.a.query(roomSQLiteQueryAcquire);
    }

    @Override
    public List getVideoRecordListByMediaIdAndBuickId(int i2, int i3) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM VideoStates WHERE _id = ? AND bucket_id =?", 2);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        roomSQLiteQueryAcquire.bindLong(2, i3);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "position");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isPlayCompleted");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayVideoData.TAG_VIRTUAL_FOLDER);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "virtualFolder_path");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayVideoData.TAG_VIRTUAL_FOLDER_MATCH_NAME);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucket_id");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_id");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "date_modified");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_date_modified");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayVideoData.TAG_SUBTITLE_INDEX);
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    VideoRecord videoRecord = new VideoRecord();
                    ArrayList arrayList2 = arrayList;
                    videoRecord.id = cursorQuery.getInt(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        videoRecord.data = null;
                    } else {
                        videoRecord.data = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    videoRecord.position = cursorQuery.getInt(columnIndexOrThrow3);
                    videoRecord.duration = cursorQuery.getInt(columnIndexOrThrow4);
                    videoRecord.isPlayCompleted = cursorQuery.getInt(columnIndexOrThrow5);
                    videoRecord.isVirtualFolder = cursorQuery.getInt(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        videoRecord.virtualFolder_path = null;
                    } else {
                        videoRecord.virtualFolder_path = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow8)) {
                        videoRecord.virtualFolder_matchName = null;
                    } else {
                        videoRecord.virtualFolder_matchName = cursorQuery.getString(columnIndexOrThrow8);
                    }
                    videoRecord.bucket_id = cursorQuery.getInt(columnIndexOrThrow9);
                    videoRecord._id = cursorQuery.getInt(columnIndexOrThrow10);
                    int i4 = columnIndexOrThrow;
                    videoRecord.date_modified = cursorQuery.getLong(columnIndexOrThrow11);
                    videoRecord.record_date_modified = cursorQuery.getLong(columnIndexOrThrow12);
                    videoRecord.subtitle_index = cursorQuery.getInt(columnIndexOrThrow13);
                    int i5 = columnIndexOrThrow14;
                    videoRecord.playCount = cursorQuery.getInt(i5);
                    arrayList = arrayList2;
                    arrayList.add(videoRecord);
                    columnIndexOrThrow14 = i5;
                    columnIndexOrThrow = i4;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public Cursor getVideoRecordMediaCountById(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM VideoStates WHERE _id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        return this.a.query(roomSQLiteQueryAcquire);
    }

    @Override
    public List getVideoRecordSubtitleIndexByMediaId(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT subtitle_index FROM VideoStates WHERE _id = ?", 1);
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
    public int incrementPlayCountByMediaId(long j2, long j3) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.i.acquire();
        supportSQLiteStatementAcquire.bindLong(1, j3);
        supportSQLiteStatementAcquire.bindLong(2, j2);
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
    public int incrementPlayCountByPath(String str, long j2) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.j.acquire();
        supportSQLiteStatementAcquire.bindLong(1, j2);
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
    public long insertVideoRecord(VideoRecord videoRecord) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            long jInsertAndReturnId = this.b.insertAndReturnId(videoRecord);
            this.a.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public LiveData observePlayHistory() {
        return this.a.getInvalidationTracker().createLiveData(new String[]{"VideoStates"}, false, new b(RoomSQLiteQuery.acquire("SELECT _data, play_count FROM VideoStates WHERE play_count > 0 AND _data IS NOT NULL AND _data != ''", 0)));
    }

    @Override
    public void updatePlayCountByPath(String str, int i2) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.d.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i2);
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(2);
        } else {
            supportSQLiteStatementAcquire.bindString(2, str);
        }
        try {
            this.a.beginTransaction();
            try {
                supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.d.release(supportSQLiteStatementAcquire);
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
    public int updateVideoRecord(VideoRecord videoRecord) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandle = this.c.handle(videoRecord);
            this.a.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public long[] insertVideoRecord(List list) {
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
}
