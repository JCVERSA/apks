package defpackage;

import android.database.Cursor;
import androidx.p004lifecycle.LiveData;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.EntityUpsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.transsion.dbdata.database.AudioPlayHistory;
import com.transsion.dbdata.database.MediaPlayCount;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

public final class jt implements ht {
    public final RoomDatabase a;
    public final EntityDeletionOrUpdateAdapter b;
    public final SharedSQLiteStatement c;
    public final SharedSQLiteStatement d;
    public final SharedSQLiteStatement e;
    public final SharedSQLiteStatement f;
    public final SharedSQLiteStatement g;
    public final SharedSQLiteStatement h;
    public final EntityUpsertionAdapter i;

    public class a implements Callable {
        public final RoomSQLiteQuery b;

        public a(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Cursor cursorQuery = DBUtil.query(jt.this.a, this.b, false, null);
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

    public class b extends EntityDeletionOrUpdateAdapter {
        public b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, AudioPlayHistory audioPlayHistory) {
            if (audioPlayHistory.get_data() == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, audioPlayHistory.get_data());
            }
        }

        @Override
        public String createQuery() {
            return "DELETE FROM `audio_play_history` WHERE `_data` = ?";
        }
    }

    public class c extends SharedSQLiteStatement {
        public c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "UPDATE audio_play_history SET play_count = 0 , update_time = ? WHERE media_id = ? ";
        }
    }

    public class d extends SharedSQLiteStatement {
        public d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "UPDATE audio_play_history SET play_count = play_count + 1, update_time = ? WHERE media_id = ?";
        }
    }

    public class e extends SharedSQLiteStatement {
        public e(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "UPDATE audio_play_history SET play_count = play_count + 1, update_time = ? WHERE _data = ?";
        }
    }

    public class f extends SharedSQLiteStatement {
        public f(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM audio_play_history";
        }
    }

    public class g extends SharedSQLiteStatement {
        public g(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM audio_play_history WHERE media_id = ?";
        }
    }

    public class h extends SharedSQLiteStatement {
        public h(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM audio_play_history WHERE _data = ?";
        }
    }

    public class i extends EntityInsertionAdapter {
        public i(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, AudioPlayHistory audioPlayHistory) {
            if (audioPlayHistory.get_data() == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, audioPlayHistory.get_data());
            }
            if (audioPlayHistory.getMediaId() == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindLong(2, audioPlayHistory.getMediaId().longValue());
            }
            supportSQLiteStatement.bindLong(3, audioPlayHistory.getPlayCount());
            supportSQLiteStatement.bindLong(4, audioPlayHistory.getCreateTime());
            supportSQLiteStatement.bindLong(5, audioPlayHistory.getUpdateTime());
        }

        @Override
        public String createQuery() {
            return "INSERT INTO `audio_play_history` (`_data`,`media_id`,`play_count`,`create_time`,`update_time`) VALUES (?,?,?,?,?)";
        }
    }

    public class j extends EntityDeletionOrUpdateAdapter {
        public j(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, AudioPlayHistory audioPlayHistory) {
            if (audioPlayHistory.get_data() == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, audioPlayHistory.get_data());
            }
            if (audioPlayHistory.getMediaId() == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindLong(2, audioPlayHistory.getMediaId().longValue());
            }
            supportSQLiteStatement.bindLong(3, audioPlayHistory.getPlayCount());
            supportSQLiteStatement.bindLong(4, audioPlayHistory.getCreateTime());
            supportSQLiteStatement.bindLong(5, audioPlayHistory.getUpdateTime());
            if (audioPlayHistory.get_data() == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindString(6, audioPlayHistory.get_data());
            }
        }

        @Override
        public String createQuery() {
            return "UPDATE `audio_play_history` SET `_data` = ?,`media_id` = ?,`play_count` = ?,`create_time` = ?,`update_time` = ? WHERE `_data` = ?";
        }
    }

    public jt(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new b(roomDatabase);
        this.c = new c(roomDatabase);
        this.d = new d(roomDatabase);
        this.e = new e(roomDatabase);
        this.f = new f(roomDatabase);
        this.g = new g(roomDatabase);
        this.h = new h(roomDatabase);
        this.i = new EntityUpsertionAdapter(new i(roomDatabase), new j(roomDatabase));
    }

    public static List b() {
        return Collections.emptyList();
    }

    @Override
    public int deleteAll() {
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
    public int deleteByMediaId(long j2) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.g.acquire();
        supportSQLiteStatementAcquire.bindLong(1, j2);
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
    public int deleteByMediaIds(List list) {
        this.a.assertNotSuspendingTransaction();
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("DELETE FROM audio_play_history WHERE media_id IN (");
        StringUtil.appendPlaceholders(sbNewStringBuilder, list.size());
        sbNewStringBuilder.append(")");
        SupportSQLiteStatement supportSQLiteStatementCompileStatement = this.a.compileStatement(sbNewStringBuilder.toString());
        Iterator it = list.iterator();
        int i2 = 1;
        while (it.hasNext()) {
            Long l = (Long) it.next();
            if (l == null) {
                supportSQLiteStatementCompileStatement.bindNull(i2);
            } else {
                supportSQLiteStatementCompileStatement.bindLong(i2, l.longValue());
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
    public int deleteByPath(long j2) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.h.acquire();
        supportSQLiteStatementAcquire.bindLong(1, j2);
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
    public int deleteByPaths(List list) {
        this.a.assertNotSuspendingTransaction();
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("DELETE FROM audio_play_history WHERE media_id IN (");
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
    public int deleteMultiple(List list) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandleMultiple = this.b.handleMultiple(list);
            this.a.setTransactionSuccessful();
            return iHandleMultiple;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int deleteSingle(AudioPlayHistory audioPlayHistory) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandle = this.b.handle(audioPlayHistory);
            this.a.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public List getAllAudioPlayCounts() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT _data, play_count FROM audio_play_history WHERE play_count > 0 AND _data IS NOT NULL AND _data != ''", 0);
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
    public List getAllByPlayCount() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM audio_play_history ORDER BY play_count DESC", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new AudioPlayHistory(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow2)), cursorQuery.getInt(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.getLong(columnIndexOrThrow5)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getAllByUpdateTime() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM audio_play_history ORDER BY update_time DESC", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new AudioPlayHistory(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow2)), cursorQuery.getInt(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.getLong(columnIndexOrThrow5)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getAllPlayRecordMediaIdSet(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT DISTINCT media_id FROM audio_play_history WHERE play_count >= 0 ORDER BY update_time DESC LIMIT ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(cursorQuery.isNull(0) ? null : Long.valueOf(cursorQuery.getLong(0)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getAllPlayRecordMediaIds(int i2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM audio_play_history WHERE play_count >= 0 ORDER BY update_time DESC LIMIT ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new AudioPlayHistory(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow2)), cursorQuery.getInt(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.getLong(columnIndexOrThrow5)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public AudioPlayHistory getByMediaId(long j2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM audio_play_history WHERE media_id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, j2);
        this.a.assertNotSuspendingTransaction();
        AudioPlayHistory audioPlayHistory = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
            if (cursorQuery.moveToFirst()) {
                audioPlayHistory = new AudioPlayHistory(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow2)), cursorQuery.getInt(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.getLong(columnIndexOrThrow5));
            }
            return audioPlayHistory;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getByMediaIds(List list) {
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("SELECT * FROM audio_play_history WHERE media_id IN (");
        int size = list.size();
        StringUtil.appendPlaceholders(sbNewStringBuilder, size);
        sbNewStringBuilder.append(")");
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire(sbNewStringBuilder.toString(), size);
        Iterator it = list.iterator();
        int i2 = 1;
        while (it.hasNext()) {
            Long l = (Long) it.next();
            if (l == null) {
                roomSQLiteQueryAcquire.bindNull(i2);
            } else {
                roomSQLiteQueryAcquire.bindLong(i2, l.longValue());
            }
            i2++;
        }
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new AudioPlayHistory(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow2)), cursorQuery.getInt(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.getLong(columnIndexOrThrow5)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public AudioPlayHistory getByPath(String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM audio_play_history WHERE _data = ?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.a.assertNotSuspendingTransaction();
        AudioPlayHistory audioPlayHistory = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
            if (cursorQuery.moveToFirst()) {
                audioPlayHistory = new AudioPlayHistory(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow2)), cursorQuery.getInt(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.getLong(columnIndexOrThrow5));
            }
            return audioPlayHistory;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getByPaths(List list) {
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("SELECT * FROM audio_play_history WHERE media_id IN (");
        int size = list.size();
        StringUtil.appendPlaceholders(sbNewStringBuilder, size);
        sbNewStringBuilder.append(")");
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire(sbNewStringBuilder.toString(), size);
        Iterator it = list.iterator();
        int i2 = 1;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str == null) {
                roomSQLiteQueryAcquire.bindNull(i2);
            } else {
                roomSQLiteQueryAcquire.bindString(i2, str);
            }
            i2++;
        }
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new AudioPlayHistory(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow2)), cursorQuery.getInt(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.getLong(columnIndexOrThrow5)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getFrequentPlayedMediaIds(int i2, int i3) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM audio_play_history WHERE play_count >= ? ORDER BY play_count DESC, update_time DESC LIMIT ?", 2);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        roomSQLiteQueryAcquire.bindLong(2, i3);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "_data");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_id");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_count");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_time");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PushConstants.PROVIDER_FIELD_UPDATE_TIME);
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new AudioPlayHistory(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow2)), cursorQuery.getInt(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.getLong(columnIndexOrThrow5)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public Integer getPlayCountByMediaId(long j2) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT play_count FROM audio_play_history WHERE media_id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, j2);
        this.a.assertNotSuspendingTransaction();
        Integer numValueOf = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            if (cursorQuery.moveToFirst() && !cursorQuery.isNull(0)) {
                numValueOf = Integer.valueOf(cursorQuery.getInt(0));
            }
            return numValueOf;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public Integer getPlayCountByPath(String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT play_count FROM audio_play_history WHERE _data = ?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.a.assertNotSuspendingTransaction();
        Integer numValueOf = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            if (cursorQuery.moveToFirst() && !cursorQuery.isNull(0)) {
                numValueOf = Integer.valueOf(cursorQuery.getInt(0));
            }
            return numValueOf;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public int incrementPlayCountByMediaId(long j2, long j3) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.d.acquire();
        supportSQLiteStatementAcquire.bindLong(1, j3);
        supportSQLiteStatementAcquire.bindLong(2, j2);
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
    public int incrementPlayCountByPath(String str, long j2) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.e.acquire();
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
    public LiveData observePlayHistory() {
        return this.a.getInvalidationTracker().createLiveData(new String[]{"audio_play_history"}, false, new a(RoomSQLiteQuery.acquire("SELECT _data, play_count FROM audio_play_history WHERE play_count > 0 AND _data IS NOT NULL AND _data != ''", 0)));
    }

    @Override
    public int resetPlayCount(long j2, long j3) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.c.acquire();
        supportSQLiteStatementAcquire.bindLong(1, j3);
        supportSQLiteStatementAcquire.bindLong(2, j2);
        try {
            this.a.beginTransaction();
            try {
                int iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.c.release(supportSQLiteStatementAcquire);
                return iExecuteUpdateDelete;
            } catch (Throwable th) {
                this.a.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.c.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public List upsertMultiple(List list) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            List<Long> listUpsertAndReturnIdsList = this.i.upsertAndReturnIdsList(list);
            this.a.setTransactionSuccessful();
            return listUpsertAndReturnIdsList;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public long upsertSingle(AudioPlayHistory audioPlayHistory) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            long jUpsertAndReturnId = this.i.upsertAndReturnId(audioPlayHistory);
            this.a.setTransactionSuccessful();
            return jUpsertAndReturnId;
        } finally {
            this.a.endTransaction();
        }
    }
}
