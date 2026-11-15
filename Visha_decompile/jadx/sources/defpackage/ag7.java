package defpackage;

import android.database.Cursor;
import androidx.p004lifecycle.LiveData;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.transsion.dbdata.beans.onlinevideo.HistoryBean;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;

public final class ag7 implements zf7 {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;
    public final EntityDeletionOrUpdateAdapter c;
    public final SharedSQLiteStatement d;
    public final SharedSQLiteStatement e;

    public class a extends EntityInsertionAdapter {
        public a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, HistoryBean historyBean) {
            supportSQLiteStatement.bindLong(1, historyBean.serialId);
            String str = historyBean.sourceId;
            if (str == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str);
            }
            supportSQLiteStatement.bindLong(3, historyBean.videoId);
            String str2 = historyBean.videoName;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, str2);
            }
            supportSQLiteStatement.bindLong(5, historyBean.seriesId);
            String str3 = historyBean.description;
            if (str3 == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindString(6, str3);
            }
            supportSQLiteStatement.bindLong(7, historyBean.lastPos);
            supportSQLiteStatement.bindLong(8, historyBean.duration);
            String str4 = historyBean.videoCover;
            if (str4 == null) {
                supportSQLiteStatement.bindNull(9);
            } else {
                supportSQLiteStatement.bindString(9, str4);
            }
            supportSQLiteStatement.bindLong(10, historyBean.lastWatchTime);
            byte[] bArr = historyBean.videoFrame;
            if (bArr == null) {
                supportSQLiteStatement.bindNull(11);
            } else {
                supportSQLiteStatement.bindBlob(11, bArr);
            }
            supportSQLiteStatement.bindDouble(12, historyBean.watchProgress);
            String str5 = historyBean.updateProgress;
            if (str5 == null) {
                supportSQLiteStatement.bindNull(13);
            } else {
                supportSQLiteStatement.bindString(13, str5);
            }
            supportSQLiteStatement.bindLong(14, historyBean.recordId);
            supportSQLiteStatement.bindLong(15, historyBean.userId);
            String str6 = historyBean.videoSerialName;
            if (str6 == null) {
                supportSQLiteStatement.bindNull(16);
            } else {
                supportSQLiteStatement.bindString(16, str6);
            }
            String str7 = historyBean.videoUrl;
            if (str7 == null) {
                supportSQLiteStatement.bindNull(17);
            } else {
                supportSQLiteStatement.bindString(17, str7);
            }
            String str8 = historyBean.sourceType;
            if (str8 == null) {
                supportSQLiteStatement.bindNull(18);
            } else {
                supportSQLiteStatement.bindString(18, str8);
            }
            supportSQLiteStatement.bindLong(19, historyBean.payType);
            supportSQLiteStatement.bindLong(20, historyBean.isIntact);
            supportSQLiteStatement.bindLong(21, historyBean.mIsYoutube);
            String str9 = historyBean.channelName;
            if (str9 == null) {
                supportSQLiteStatement.bindNull(22);
            } else {
                supportSQLiteStatement.bindString(22, str9);
            }
            String str10 = historyBean.channelCover;
            if (str10 == null) {
                supportSQLiteStatement.bindNull(23);
            } else {
                supportSQLiteStatement.bindString(23, str10);
            }
            String str11 = historyBean.videoBeanJson;
            if (str11 == null) {
                supportSQLiteStatement.bindNull(24);
            } else {
                supportSQLiteStatement.bindString(24, str11);
            }
            supportSQLiteStatement.bindLong(25, historyBean.playLet);
        }

        @Override
        public String createQuery() {
            return "INSERT OR REPLACE INTO `online_history` (`serialId`,`source_id`,`video_id`,`video_name`,`series_id`,`video_description`,`last_play_postion`,`duration`,`video_cover`,`last_watch_time`,`last_frame_img`,`watch_progress`,`update_progress`,`record_id`,`user_id`,`video_serial_name`,`video_link`,`source_type`,`pay_type`,`is_intact`,`is_youtube`,`channel_name`,`channel_cover`,`video_bean_json`,`play_let`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }
    }

    public class b extends EntityDeletionOrUpdateAdapter {
        public b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, HistoryBean historyBean) {
            supportSQLiteStatement.bindLong(1, historyBean.serialId);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM `online_history` WHERE `serialId` = ?";
        }
    }

    public class c extends SharedSQLiteStatement {
        public c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM online_history where user_id=?";
        }
    }

    public class d extends SharedSQLiteStatement {
        public d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM online_history";
        }
    }

    public class e implements Callable {
        public final RoomSQLiteQuery b;

        public e(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Cursor cursorQuery = DBUtil.query(ag7.this.a, this.b, false, null);
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialId");
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_VK_SOURCE_ID);
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
                int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_name");
                int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "series_id");
                int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_description");
                int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_postion");
                int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
                int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_cover");
                int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_watch_time");
                int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_frame_img");
                int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_progress");
                int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "update_progress");
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_id");
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID);
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_serial_name");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_link");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "source_type");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pay_type");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_intact");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_youtube");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_name");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_cover");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_bean_json");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_let");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    HistoryBean historyBean = new HistoryBean();
                    int i2 = columnIndexOrThrow12;
                    int i3 = columnIndexOrThrow13;
                    historyBean.serialId = cursorQuery.getLong(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        historyBean.sourceId = null;
                    } else {
                        historyBean.sourceId = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    historyBean.videoId = cursorQuery.getLong(columnIndexOrThrow3);
                    if (cursorQuery.isNull(columnIndexOrThrow4)) {
                        historyBean.videoName = null;
                    } else {
                        historyBean.videoName = cursorQuery.getString(columnIndexOrThrow4);
                    }
                    historyBean.seriesId = cursorQuery.getLong(columnIndexOrThrow5);
                    if (cursorQuery.isNull(columnIndexOrThrow6)) {
                        historyBean.description = null;
                    } else {
                        historyBean.description = cursorQuery.getString(columnIndexOrThrow6);
                    }
                    historyBean.lastPos = cursorQuery.getLong(columnIndexOrThrow7);
                    historyBean.duration = cursorQuery.getLong(columnIndexOrThrow8);
                    if (cursorQuery.isNull(columnIndexOrThrow9)) {
                        historyBean.videoCover = null;
                    } else {
                        historyBean.videoCover = cursorQuery.getString(columnIndexOrThrow9);
                    }
                    historyBean.lastWatchTime = cursorQuery.getLong(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        historyBean.videoFrame = null;
                    } else {
                        historyBean.videoFrame = cursorQuery.getBlob(columnIndexOrThrow11);
                    }
                    columnIndexOrThrow12 = i2;
                    historyBean.watchProgress = cursorQuery.getFloat(columnIndexOrThrow12);
                    columnIndexOrThrow13 = i3;
                    if (cursorQuery.isNull(columnIndexOrThrow13)) {
                        historyBean.updateProgress = null;
                    } else {
                        historyBean.updateProgress = cursorQuery.getString(columnIndexOrThrow13);
                    }
                    int i4 = columnIndexOrThrow4;
                    int i5 = i;
                    int i6 = columnIndexOrThrow3;
                    historyBean.recordId = cursorQuery.getLong(i5);
                    int i7 = columnIndexOrThrow15;
                    int i8 = columnIndexOrThrow5;
                    historyBean.userId = cursorQuery.getLong(i7);
                    int i9 = columnIndexOrThrow16;
                    if (cursorQuery.isNull(i9)) {
                        historyBean.videoSerialName = null;
                    } else {
                        historyBean.videoSerialName = cursorQuery.getString(i9);
                    }
                    int i10 = columnIndexOrThrow17;
                    if (cursorQuery.isNull(i10)) {
                        historyBean.videoUrl = null;
                    } else {
                        historyBean.videoUrl = cursorQuery.getString(i10);
                    }
                    int i11 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i11)) {
                        historyBean.sourceType = null;
                    } else {
                        historyBean.sourceType = cursorQuery.getString(i11);
                    }
                    columnIndexOrThrow18 = i11;
                    int i12 = columnIndexOrThrow19;
                    historyBean.payType = cursorQuery.getInt(i12);
                    columnIndexOrThrow19 = i12;
                    int i13 = columnIndexOrThrow20;
                    historyBean.isIntact = cursorQuery.getInt(i13);
                    columnIndexOrThrow20 = i13;
                    columnIndexOrThrow21 = columnIndexOrThrow21;
                    historyBean.mIsYoutube = cursorQuery.getInt(columnIndexOrThrow21);
                    columnIndexOrThrow22 = columnIndexOrThrow22;
                    if (cursorQuery.isNull(columnIndexOrThrow22)) {
                        historyBean.channelName = null;
                    } else {
                        historyBean.channelName = cursorQuery.getString(columnIndexOrThrow22);
                    }
                    columnIndexOrThrow23 = columnIndexOrThrow23;
                    if (cursorQuery.isNull(columnIndexOrThrow23)) {
                        historyBean.channelCover = null;
                    } else {
                        historyBean.channelCover = cursorQuery.getString(columnIndexOrThrow23);
                    }
                    int i14 = columnIndexOrThrow24;
                    if (cursorQuery.isNull(i14)) {
                        historyBean.videoBeanJson = null;
                    } else {
                        historyBean.videoBeanJson = cursorQuery.getString(i14);
                    }
                    columnIndexOrThrow24 = i14;
                    int i15 = columnIndexOrThrow25;
                    historyBean.playLet = cursorQuery.getInt(i15);
                    arrayList.add(historyBean);
                    columnIndexOrThrow25 = i15;
                    columnIndexOrThrow2 = columnIndexOrThrow2;
                    columnIndexOrThrow = columnIndexOrThrow;
                    columnIndexOrThrow17 = i10;
                    columnIndexOrThrow5 = i8;
                    columnIndexOrThrow15 = i7;
                    columnIndexOrThrow3 = i6;
                    i = i5;
                    columnIndexOrThrow16 = i9;
                    columnIndexOrThrow4 = i4;
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

    public ag7(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new a(roomDatabase);
        this.c = new b(roomDatabase);
        this.d = new c(roomDatabase);
        this.e = new d(roomDatabase);
    }

    public static List b() {
        return Collections.emptyList();
    }

    @Override
    public int deleteAll() {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.e.acquire();
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
    public int deleteHistories(List list) {
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
    public int deleteHistory(HistoryBean historyBean) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandle = this.c.handle(historyBean);
            this.a.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int deleteUserHistory(long j) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.d.acquire();
        supportSQLiteStatementAcquire.bindLong(1, j);
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
    public List getAllHistoryBean() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM online_history ORDER BY last_watch_time DESC", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_VK_SOURCE_ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "series_id");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_description");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_postion");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_cover");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_watch_time");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_frame_img");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_progress");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "update_progress");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_id");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID);
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_serial_name");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_link");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "source_type");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pay_type");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_intact");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_youtube");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_name");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_cover");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_bean_json");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_let");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    HistoryBean historyBean = new HistoryBean();
                    int i2 = columnIndexOrThrow12;
                    int i3 = columnIndexOrThrow13;
                    historyBean.serialId = cursorQuery.getLong(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        historyBean.sourceId = null;
                    } else {
                        historyBean.sourceId = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    historyBean.videoId = cursorQuery.getLong(columnIndexOrThrow3);
                    if (cursorQuery.isNull(columnIndexOrThrow4)) {
                        historyBean.videoName = null;
                    } else {
                        historyBean.videoName = cursorQuery.getString(columnIndexOrThrow4);
                    }
                    historyBean.seriesId = cursorQuery.getLong(columnIndexOrThrow5);
                    if (cursorQuery.isNull(columnIndexOrThrow6)) {
                        historyBean.description = null;
                    } else {
                        historyBean.description = cursorQuery.getString(columnIndexOrThrow6);
                    }
                    historyBean.lastPos = cursorQuery.getLong(columnIndexOrThrow7);
                    historyBean.duration = cursorQuery.getLong(columnIndexOrThrow8);
                    if (cursorQuery.isNull(columnIndexOrThrow9)) {
                        historyBean.videoCover = null;
                    } else {
                        historyBean.videoCover = cursorQuery.getString(columnIndexOrThrow9);
                    }
                    historyBean.lastWatchTime = cursorQuery.getLong(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        historyBean.videoFrame = null;
                    } else {
                        historyBean.videoFrame = cursorQuery.getBlob(columnIndexOrThrow11);
                    }
                    columnIndexOrThrow12 = i2;
                    historyBean.watchProgress = cursorQuery.getFloat(columnIndexOrThrow12);
                    columnIndexOrThrow13 = i3;
                    if (cursorQuery.isNull(columnIndexOrThrow13)) {
                        historyBean.updateProgress = null;
                    } else {
                        historyBean.updateProgress = cursorQuery.getString(columnIndexOrThrow13);
                    }
                    int i4 = columnIndexOrThrow3;
                    int i5 = i;
                    int i6 = columnIndexOrThrow2;
                    historyBean.recordId = cursorQuery.getLong(i5);
                    int i7 = columnIndexOrThrow15;
                    int i8 = columnIndexOrThrow4;
                    historyBean.userId = cursorQuery.getLong(i7);
                    int i9 = columnIndexOrThrow16;
                    if (cursorQuery.isNull(i9)) {
                        historyBean.videoSerialName = null;
                    } else {
                        historyBean.videoSerialName = cursorQuery.getString(i9);
                    }
                    int i10 = columnIndexOrThrow17;
                    if (cursorQuery.isNull(i10)) {
                        historyBean.videoUrl = null;
                    } else {
                        historyBean.videoUrl = cursorQuery.getString(i10);
                    }
                    int i11 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i11)) {
                        historyBean.sourceType = null;
                    } else {
                        historyBean.sourceType = cursorQuery.getString(i11);
                    }
                    columnIndexOrThrow18 = i11;
                    int i12 = columnIndexOrThrow19;
                    historyBean.payType = cursorQuery.getInt(i12);
                    columnIndexOrThrow19 = i12;
                    int i13 = columnIndexOrThrow20;
                    historyBean.isIntact = cursorQuery.getInt(i13);
                    columnIndexOrThrow20 = i13;
                    columnIndexOrThrow21 = columnIndexOrThrow21;
                    historyBean.mIsYoutube = cursorQuery.getInt(columnIndexOrThrow21);
                    columnIndexOrThrow22 = columnIndexOrThrow22;
                    if (cursorQuery.isNull(columnIndexOrThrow22)) {
                        historyBean.channelName = null;
                    } else {
                        historyBean.channelName = cursorQuery.getString(columnIndexOrThrow22);
                    }
                    columnIndexOrThrow23 = columnIndexOrThrow23;
                    if (cursorQuery.isNull(columnIndexOrThrow23)) {
                        historyBean.channelCover = null;
                    } else {
                        historyBean.channelCover = cursorQuery.getString(columnIndexOrThrow23);
                    }
                    int i14 = columnIndexOrThrow24;
                    if (cursorQuery.isNull(i14)) {
                        historyBean.videoBeanJson = null;
                    } else {
                        historyBean.videoBeanJson = cursorQuery.getString(i14);
                    }
                    columnIndexOrThrow24 = i14;
                    int i15 = columnIndexOrThrow25;
                    historyBean.playLet = cursorQuery.getInt(i15);
                    arrayList.add(historyBean);
                    columnIndexOrThrow25 = i15;
                    columnIndexOrThrow2 = i6;
                    columnIndexOrThrow = columnIndexOrThrow;
                    i = i5;
                    columnIndexOrThrow16 = i9;
                    columnIndexOrThrow3 = i4;
                    columnIndexOrThrow17 = i10;
                    columnIndexOrThrow4 = i8;
                    columnIndexOrThrow15 = i7;
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
    public List getAllHistoryBeanData() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM online_history ORDER BY last_watch_time DESC", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_VK_SOURCE_ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "series_id");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_description");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_postion");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_cover");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_watch_time");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_frame_img");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_progress");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "update_progress");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_id");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID);
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_serial_name");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_link");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "source_type");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pay_type");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_intact");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_youtube");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_name");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_cover");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_bean_json");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_let");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    HistoryBean historyBean = new HistoryBean();
                    int i2 = columnIndexOrThrow12;
                    int i3 = columnIndexOrThrow13;
                    historyBean.serialId = cursorQuery.getLong(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        historyBean.sourceId = null;
                    } else {
                        historyBean.sourceId = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    historyBean.videoId = cursorQuery.getLong(columnIndexOrThrow3);
                    if (cursorQuery.isNull(columnIndexOrThrow4)) {
                        historyBean.videoName = null;
                    } else {
                        historyBean.videoName = cursorQuery.getString(columnIndexOrThrow4);
                    }
                    historyBean.seriesId = cursorQuery.getLong(columnIndexOrThrow5);
                    if (cursorQuery.isNull(columnIndexOrThrow6)) {
                        historyBean.description = null;
                    } else {
                        historyBean.description = cursorQuery.getString(columnIndexOrThrow6);
                    }
                    historyBean.lastPos = cursorQuery.getLong(columnIndexOrThrow7);
                    historyBean.duration = cursorQuery.getLong(columnIndexOrThrow8);
                    if (cursorQuery.isNull(columnIndexOrThrow9)) {
                        historyBean.videoCover = null;
                    } else {
                        historyBean.videoCover = cursorQuery.getString(columnIndexOrThrow9);
                    }
                    historyBean.lastWatchTime = cursorQuery.getLong(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        historyBean.videoFrame = null;
                    } else {
                        historyBean.videoFrame = cursorQuery.getBlob(columnIndexOrThrow11);
                    }
                    columnIndexOrThrow12 = i2;
                    historyBean.watchProgress = cursorQuery.getFloat(columnIndexOrThrow12);
                    columnIndexOrThrow13 = i3;
                    if (cursorQuery.isNull(columnIndexOrThrow13)) {
                        historyBean.updateProgress = null;
                    } else {
                        historyBean.updateProgress = cursorQuery.getString(columnIndexOrThrow13);
                    }
                    int i4 = columnIndexOrThrow3;
                    int i5 = i;
                    int i6 = columnIndexOrThrow2;
                    historyBean.recordId = cursorQuery.getLong(i5);
                    int i7 = columnIndexOrThrow15;
                    int i8 = columnIndexOrThrow4;
                    historyBean.userId = cursorQuery.getLong(i7);
                    int i9 = columnIndexOrThrow16;
                    if (cursorQuery.isNull(i9)) {
                        historyBean.videoSerialName = null;
                    } else {
                        historyBean.videoSerialName = cursorQuery.getString(i9);
                    }
                    int i10 = columnIndexOrThrow17;
                    if (cursorQuery.isNull(i10)) {
                        historyBean.videoUrl = null;
                    } else {
                        historyBean.videoUrl = cursorQuery.getString(i10);
                    }
                    int i11 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i11)) {
                        historyBean.sourceType = null;
                    } else {
                        historyBean.sourceType = cursorQuery.getString(i11);
                    }
                    columnIndexOrThrow18 = i11;
                    int i12 = columnIndexOrThrow19;
                    historyBean.payType = cursorQuery.getInt(i12);
                    columnIndexOrThrow19 = i12;
                    int i13 = columnIndexOrThrow20;
                    historyBean.isIntact = cursorQuery.getInt(i13);
                    columnIndexOrThrow20 = i13;
                    columnIndexOrThrow21 = columnIndexOrThrow21;
                    historyBean.mIsYoutube = cursorQuery.getInt(columnIndexOrThrow21);
                    columnIndexOrThrow22 = columnIndexOrThrow22;
                    if (cursorQuery.isNull(columnIndexOrThrow22)) {
                        historyBean.channelName = null;
                    } else {
                        historyBean.channelName = cursorQuery.getString(columnIndexOrThrow22);
                    }
                    columnIndexOrThrow23 = columnIndexOrThrow23;
                    if (cursorQuery.isNull(columnIndexOrThrow23)) {
                        historyBean.channelCover = null;
                    } else {
                        historyBean.channelCover = cursorQuery.getString(columnIndexOrThrow23);
                    }
                    int i14 = columnIndexOrThrow24;
                    if (cursorQuery.isNull(i14)) {
                        historyBean.videoBeanJson = null;
                    } else {
                        historyBean.videoBeanJson = cursorQuery.getString(i14);
                    }
                    columnIndexOrThrow24 = i14;
                    int i15 = columnIndexOrThrow25;
                    historyBean.playLet = cursorQuery.getInt(i15);
                    arrayList.add(historyBean);
                    columnIndexOrThrow25 = i15;
                    columnIndexOrThrow2 = i6;
                    columnIndexOrThrow = columnIndexOrThrow;
                    i = i5;
                    columnIndexOrThrow16 = i9;
                    columnIndexOrThrow3 = i4;
                    columnIndexOrThrow17 = i10;
                    columnIndexOrThrow4 = i8;
                    columnIndexOrThrow15 = i7;
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
    public List getAllHistoryByVideoId(long j) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM online_history  where video_id=? ORDER BY last_watch_time DESC", 1);
        roomSQLiteQueryAcquire.bindLong(1, j);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_VK_SOURCE_ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "series_id");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_description");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_postion");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_cover");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_watch_time");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_frame_img");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_progress");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "update_progress");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_id");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID);
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_serial_name");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_link");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "source_type");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pay_type");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_intact");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_youtube");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_name");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_cover");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_bean_json");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_let");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    HistoryBean historyBean = new HistoryBean();
                    int i2 = columnIndexOrThrow12;
                    int i3 = columnIndexOrThrow13;
                    historyBean.serialId = cursorQuery.getLong(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        historyBean.sourceId = null;
                    } else {
                        historyBean.sourceId = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    historyBean.videoId = cursorQuery.getLong(columnIndexOrThrow3);
                    if (cursorQuery.isNull(columnIndexOrThrow4)) {
                        historyBean.videoName = null;
                    } else {
                        historyBean.videoName = cursorQuery.getString(columnIndexOrThrow4);
                    }
                    historyBean.seriesId = cursorQuery.getLong(columnIndexOrThrow5);
                    if (cursorQuery.isNull(columnIndexOrThrow6)) {
                        historyBean.description = null;
                    } else {
                        historyBean.description = cursorQuery.getString(columnIndexOrThrow6);
                    }
                    historyBean.lastPos = cursorQuery.getLong(columnIndexOrThrow7);
                    historyBean.duration = cursorQuery.getLong(columnIndexOrThrow8);
                    if (cursorQuery.isNull(columnIndexOrThrow9)) {
                        historyBean.videoCover = null;
                    } else {
                        historyBean.videoCover = cursorQuery.getString(columnIndexOrThrow9);
                    }
                    historyBean.lastWatchTime = cursorQuery.getLong(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        historyBean.videoFrame = null;
                    } else {
                        historyBean.videoFrame = cursorQuery.getBlob(columnIndexOrThrow11);
                    }
                    columnIndexOrThrow12 = i2;
                    historyBean.watchProgress = cursorQuery.getFloat(columnIndexOrThrow12);
                    columnIndexOrThrow13 = i3;
                    if (cursorQuery.isNull(columnIndexOrThrow13)) {
                        historyBean.updateProgress = null;
                    } else {
                        historyBean.updateProgress = cursorQuery.getString(columnIndexOrThrow13);
                    }
                    int i4 = columnIndexOrThrow3;
                    int i5 = i;
                    int i6 = columnIndexOrThrow2;
                    historyBean.recordId = cursorQuery.getLong(i5);
                    int i7 = columnIndexOrThrow15;
                    int i8 = columnIndexOrThrow4;
                    historyBean.userId = cursorQuery.getLong(i7);
                    int i9 = columnIndexOrThrow16;
                    if (cursorQuery.isNull(i9)) {
                        historyBean.videoSerialName = null;
                    } else {
                        historyBean.videoSerialName = cursorQuery.getString(i9);
                    }
                    int i10 = columnIndexOrThrow17;
                    if (cursorQuery.isNull(i10)) {
                        historyBean.videoUrl = null;
                    } else {
                        historyBean.videoUrl = cursorQuery.getString(i10);
                    }
                    int i11 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i11)) {
                        historyBean.sourceType = null;
                    } else {
                        historyBean.sourceType = cursorQuery.getString(i11);
                    }
                    int i12 = columnIndexOrThrow19;
                    historyBean.payType = cursorQuery.getInt(i12);
                    int i13 = columnIndexOrThrow20;
                    historyBean.isIntact = cursorQuery.getInt(i13);
                    int i14 = columnIndexOrThrow21;
                    historyBean.mIsYoutube = cursorQuery.getInt(i14);
                    int i15 = columnIndexOrThrow22;
                    if (cursorQuery.isNull(i15)) {
                        historyBean.channelName = null;
                    } else {
                        historyBean.channelName = cursorQuery.getString(i15);
                    }
                    int i16 = columnIndexOrThrow23;
                    if (cursorQuery.isNull(i16)) {
                        historyBean.channelCover = null;
                    } else {
                        historyBean.channelCover = cursorQuery.getString(i16);
                    }
                    int i17 = columnIndexOrThrow24;
                    if (cursorQuery.isNull(i17)) {
                        historyBean.videoBeanJson = null;
                    } else {
                        historyBean.videoBeanJson = cursorQuery.getString(i17);
                    }
                    int i18 = columnIndexOrThrow25;
                    historyBean.playLet = cursorQuery.getInt(i18);
                    arrayList.add(historyBean);
                    columnIndexOrThrow16 = i9;
                    columnIndexOrThrow = columnIndexOrThrow;
                    columnIndexOrThrow3 = i4;
                    columnIndexOrThrow4 = i8;
                    columnIndexOrThrow15 = i7;
                    columnIndexOrThrow18 = i11;
                    columnIndexOrThrow19 = i12;
                    columnIndexOrThrow20 = i13;
                    columnIndexOrThrow21 = i14;
                    columnIndexOrThrow22 = i15;
                    columnIndexOrThrow23 = i16;
                    columnIndexOrThrow24 = i17;
                    columnIndexOrThrow25 = i18;
                    columnIndexOrThrow2 = i6;
                    i = i5;
                    columnIndexOrThrow17 = i10;
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
    public List getAllHistoryByVideoIdIntact(long j) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM online_history  where video_id=? and is_intact = 1 ORDER BY last_watch_time DESC", 1);
        roomSQLiteQueryAcquire.bindLong(1, j);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_VK_SOURCE_ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "series_id");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_description");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_postion");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_cover");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_watch_time");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_frame_img");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_progress");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "update_progress");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_id");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID);
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_serial_name");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_link");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "source_type");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pay_type");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_intact");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_youtube");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_name");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_cover");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_bean_json");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_let");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    HistoryBean historyBean = new HistoryBean();
                    int i2 = columnIndexOrThrow12;
                    int i3 = columnIndexOrThrow13;
                    historyBean.serialId = cursorQuery.getLong(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        historyBean.sourceId = null;
                    } else {
                        historyBean.sourceId = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    historyBean.videoId = cursorQuery.getLong(columnIndexOrThrow3);
                    if (cursorQuery.isNull(columnIndexOrThrow4)) {
                        historyBean.videoName = null;
                    } else {
                        historyBean.videoName = cursorQuery.getString(columnIndexOrThrow4);
                    }
                    historyBean.seriesId = cursorQuery.getLong(columnIndexOrThrow5);
                    if (cursorQuery.isNull(columnIndexOrThrow6)) {
                        historyBean.description = null;
                    } else {
                        historyBean.description = cursorQuery.getString(columnIndexOrThrow6);
                    }
                    historyBean.lastPos = cursorQuery.getLong(columnIndexOrThrow7);
                    historyBean.duration = cursorQuery.getLong(columnIndexOrThrow8);
                    if (cursorQuery.isNull(columnIndexOrThrow9)) {
                        historyBean.videoCover = null;
                    } else {
                        historyBean.videoCover = cursorQuery.getString(columnIndexOrThrow9);
                    }
                    historyBean.lastWatchTime = cursorQuery.getLong(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        historyBean.videoFrame = null;
                    } else {
                        historyBean.videoFrame = cursorQuery.getBlob(columnIndexOrThrow11);
                    }
                    columnIndexOrThrow12 = i2;
                    historyBean.watchProgress = cursorQuery.getFloat(columnIndexOrThrow12);
                    columnIndexOrThrow13 = i3;
                    if (cursorQuery.isNull(columnIndexOrThrow13)) {
                        historyBean.updateProgress = null;
                    } else {
                        historyBean.updateProgress = cursorQuery.getString(columnIndexOrThrow13);
                    }
                    int i4 = columnIndexOrThrow3;
                    int i5 = i;
                    int i6 = columnIndexOrThrow2;
                    historyBean.recordId = cursorQuery.getLong(i5);
                    int i7 = columnIndexOrThrow15;
                    int i8 = columnIndexOrThrow4;
                    historyBean.userId = cursorQuery.getLong(i7);
                    int i9 = columnIndexOrThrow16;
                    if (cursorQuery.isNull(i9)) {
                        historyBean.videoSerialName = null;
                    } else {
                        historyBean.videoSerialName = cursorQuery.getString(i9);
                    }
                    int i10 = columnIndexOrThrow17;
                    if (cursorQuery.isNull(i10)) {
                        historyBean.videoUrl = null;
                    } else {
                        historyBean.videoUrl = cursorQuery.getString(i10);
                    }
                    int i11 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i11)) {
                        historyBean.sourceType = null;
                    } else {
                        historyBean.sourceType = cursorQuery.getString(i11);
                    }
                    int i12 = columnIndexOrThrow19;
                    historyBean.payType = cursorQuery.getInt(i12);
                    int i13 = columnIndexOrThrow20;
                    historyBean.isIntact = cursorQuery.getInt(i13);
                    int i14 = columnIndexOrThrow21;
                    historyBean.mIsYoutube = cursorQuery.getInt(i14);
                    int i15 = columnIndexOrThrow22;
                    if (cursorQuery.isNull(i15)) {
                        historyBean.channelName = null;
                    } else {
                        historyBean.channelName = cursorQuery.getString(i15);
                    }
                    int i16 = columnIndexOrThrow23;
                    if (cursorQuery.isNull(i16)) {
                        historyBean.channelCover = null;
                    } else {
                        historyBean.channelCover = cursorQuery.getString(i16);
                    }
                    int i17 = columnIndexOrThrow24;
                    if (cursorQuery.isNull(i17)) {
                        historyBean.videoBeanJson = null;
                    } else {
                        historyBean.videoBeanJson = cursorQuery.getString(i17);
                    }
                    int i18 = columnIndexOrThrow25;
                    historyBean.playLet = cursorQuery.getInt(i18);
                    arrayList.add(historyBean);
                    columnIndexOrThrow16 = i9;
                    columnIndexOrThrow = columnIndexOrThrow;
                    columnIndexOrThrow3 = i4;
                    columnIndexOrThrow4 = i8;
                    columnIndexOrThrow15 = i7;
                    columnIndexOrThrow18 = i11;
                    columnIndexOrThrow19 = i12;
                    columnIndexOrThrow20 = i13;
                    columnIndexOrThrow21 = i14;
                    columnIndexOrThrow22 = i15;
                    columnIndexOrThrow23 = i16;
                    columnIndexOrThrow24 = i17;
                    columnIndexOrThrow25 = i18;
                    columnIndexOrThrow2 = i6;
                    i = i5;
                    columnIndexOrThrow17 = i10;
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
    public LiveData getAllLiveHistoryBean() {
        return this.a.getInvalidationTracker().createLiveData(new String[]{"online_history"}, false, new e(RoomSQLiteQuery.acquire("SELECT * FROM online_history ORDER BY last_watch_time DESC", 0)));
    }

    @Override
    public List getHistoryBean(long j) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM online_history where serialId=?", 1);
        roomSQLiteQueryAcquire.bindLong(1, j);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_VK_SOURCE_ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "series_id");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_description");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_postion");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_cover");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_watch_time");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_frame_img");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_progress");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "update_progress");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_id");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID);
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_serial_name");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_link");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "source_type");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pay_type");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_intact");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_youtube");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_name");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_cover");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_bean_json");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_let");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    HistoryBean historyBean = new HistoryBean();
                    int i2 = columnIndexOrThrow12;
                    int i3 = columnIndexOrThrow13;
                    historyBean.serialId = cursorQuery.getLong(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        historyBean.sourceId = null;
                    } else {
                        historyBean.sourceId = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    historyBean.videoId = cursorQuery.getLong(columnIndexOrThrow3);
                    if (cursorQuery.isNull(columnIndexOrThrow4)) {
                        historyBean.videoName = null;
                    } else {
                        historyBean.videoName = cursorQuery.getString(columnIndexOrThrow4);
                    }
                    historyBean.seriesId = cursorQuery.getLong(columnIndexOrThrow5);
                    if (cursorQuery.isNull(columnIndexOrThrow6)) {
                        historyBean.description = null;
                    } else {
                        historyBean.description = cursorQuery.getString(columnIndexOrThrow6);
                    }
                    historyBean.lastPos = cursorQuery.getLong(columnIndexOrThrow7);
                    historyBean.duration = cursorQuery.getLong(columnIndexOrThrow8);
                    if (cursorQuery.isNull(columnIndexOrThrow9)) {
                        historyBean.videoCover = null;
                    } else {
                        historyBean.videoCover = cursorQuery.getString(columnIndexOrThrow9);
                    }
                    historyBean.lastWatchTime = cursorQuery.getLong(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        historyBean.videoFrame = null;
                    } else {
                        historyBean.videoFrame = cursorQuery.getBlob(columnIndexOrThrow11);
                    }
                    columnIndexOrThrow12 = i2;
                    historyBean.watchProgress = cursorQuery.getFloat(columnIndexOrThrow12);
                    columnIndexOrThrow13 = i3;
                    if (cursorQuery.isNull(columnIndexOrThrow13)) {
                        historyBean.updateProgress = null;
                    } else {
                        historyBean.updateProgress = cursorQuery.getString(columnIndexOrThrow13);
                    }
                    int i4 = columnIndexOrThrow3;
                    int i5 = i;
                    int i6 = columnIndexOrThrow2;
                    historyBean.recordId = cursorQuery.getLong(i5);
                    int i7 = columnIndexOrThrow15;
                    int i8 = columnIndexOrThrow4;
                    historyBean.userId = cursorQuery.getLong(i7);
                    int i9 = columnIndexOrThrow16;
                    if (cursorQuery.isNull(i9)) {
                        historyBean.videoSerialName = null;
                    } else {
                        historyBean.videoSerialName = cursorQuery.getString(i9);
                    }
                    int i10 = columnIndexOrThrow17;
                    if (cursorQuery.isNull(i10)) {
                        historyBean.videoUrl = null;
                    } else {
                        historyBean.videoUrl = cursorQuery.getString(i10);
                    }
                    int i11 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i11)) {
                        historyBean.sourceType = null;
                    } else {
                        historyBean.sourceType = cursorQuery.getString(i11);
                    }
                    int i12 = columnIndexOrThrow19;
                    historyBean.payType = cursorQuery.getInt(i12);
                    int i13 = columnIndexOrThrow20;
                    historyBean.isIntact = cursorQuery.getInt(i13);
                    int i14 = columnIndexOrThrow21;
                    historyBean.mIsYoutube = cursorQuery.getInt(i14);
                    int i15 = columnIndexOrThrow22;
                    if (cursorQuery.isNull(i15)) {
                        historyBean.channelName = null;
                    } else {
                        historyBean.channelName = cursorQuery.getString(i15);
                    }
                    int i16 = columnIndexOrThrow23;
                    if (cursorQuery.isNull(i16)) {
                        historyBean.channelCover = null;
                    } else {
                        historyBean.channelCover = cursorQuery.getString(i16);
                    }
                    int i17 = columnIndexOrThrow24;
                    if (cursorQuery.isNull(i17)) {
                        historyBean.videoBeanJson = null;
                    } else {
                        historyBean.videoBeanJson = cursorQuery.getString(i17);
                    }
                    int i18 = columnIndexOrThrow25;
                    historyBean.playLet = cursorQuery.getInt(i18);
                    arrayList.add(historyBean);
                    columnIndexOrThrow16 = i9;
                    columnIndexOrThrow = columnIndexOrThrow;
                    columnIndexOrThrow3 = i4;
                    columnIndexOrThrow4 = i8;
                    columnIndexOrThrow15 = i7;
                    columnIndexOrThrow18 = i11;
                    columnIndexOrThrow19 = i12;
                    columnIndexOrThrow20 = i13;
                    columnIndexOrThrow21 = i14;
                    columnIndexOrThrow22 = i15;
                    columnIndexOrThrow23 = i16;
                    columnIndexOrThrow24 = i17;
                    columnIndexOrThrow25 = i18;
                    columnIndexOrThrow2 = i6;
                    i = i5;
                    columnIndexOrThrow17 = i10;
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
    public List getHistoryBeanCount(int i) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM online_history ORDER BY last_watch_time DESC LIMIT?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_VK_SOURCE_ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "series_id");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_description");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_postion");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_cover");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_watch_time");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_frame_img");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_progress");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "update_progress");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_id");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID);
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_serial_name");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_link");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "source_type");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pay_type");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_intact");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_youtube");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_name");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_cover");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_bean_json");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_let");
                int i2 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    HistoryBean historyBean = new HistoryBean();
                    int i3 = columnIndexOrThrow12;
                    int i4 = columnIndexOrThrow13;
                    historyBean.serialId = cursorQuery.getLong(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        historyBean.sourceId = null;
                    } else {
                        historyBean.sourceId = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    historyBean.videoId = cursorQuery.getLong(columnIndexOrThrow3);
                    if (cursorQuery.isNull(columnIndexOrThrow4)) {
                        historyBean.videoName = null;
                    } else {
                        historyBean.videoName = cursorQuery.getString(columnIndexOrThrow4);
                    }
                    historyBean.seriesId = cursorQuery.getLong(columnIndexOrThrow5);
                    if (cursorQuery.isNull(columnIndexOrThrow6)) {
                        historyBean.description = null;
                    } else {
                        historyBean.description = cursorQuery.getString(columnIndexOrThrow6);
                    }
                    historyBean.lastPos = cursorQuery.getLong(columnIndexOrThrow7);
                    historyBean.duration = cursorQuery.getLong(columnIndexOrThrow8);
                    if (cursorQuery.isNull(columnIndexOrThrow9)) {
                        historyBean.videoCover = null;
                    } else {
                        historyBean.videoCover = cursorQuery.getString(columnIndexOrThrow9);
                    }
                    historyBean.lastWatchTime = cursorQuery.getLong(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        historyBean.videoFrame = null;
                    } else {
                        historyBean.videoFrame = cursorQuery.getBlob(columnIndexOrThrow11);
                    }
                    columnIndexOrThrow12 = i3;
                    historyBean.watchProgress = cursorQuery.getFloat(columnIndexOrThrow12);
                    columnIndexOrThrow13 = i4;
                    if (cursorQuery.isNull(columnIndexOrThrow13)) {
                        historyBean.updateProgress = null;
                    } else {
                        historyBean.updateProgress = cursorQuery.getString(columnIndexOrThrow13);
                    }
                    int i5 = columnIndexOrThrow3;
                    int i6 = i2;
                    int i7 = columnIndexOrThrow2;
                    historyBean.recordId = cursorQuery.getLong(i6);
                    int i8 = columnIndexOrThrow15;
                    int i9 = columnIndexOrThrow4;
                    historyBean.userId = cursorQuery.getLong(i8);
                    int i10 = columnIndexOrThrow16;
                    if (cursorQuery.isNull(i10)) {
                        historyBean.videoSerialName = null;
                    } else {
                        historyBean.videoSerialName = cursorQuery.getString(i10);
                    }
                    int i11 = columnIndexOrThrow17;
                    if (cursorQuery.isNull(i11)) {
                        historyBean.videoUrl = null;
                    } else {
                        historyBean.videoUrl = cursorQuery.getString(i11);
                    }
                    int i12 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i12)) {
                        historyBean.sourceType = null;
                    } else {
                        historyBean.sourceType = cursorQuery.getString(i12);
                    }
                    columnIndexOrThrow18 = i12;
                    int i13 = columnIndexOrThrow19;
                    historyBean.payType = cursorQuery.getInt(i13);
                    columnIndexOrThrow19 = i13;
                    int i14 = columnIndexOrThrow20;
                    historyBean.isIntact = cursorQuery.getInt(i14);
                    columnIndexOrThrow20 = i14;
                    columnIndexOrThrow21 = columnIndexOrThrow21;
                    historyBean.mIsYoutube = cursorQuery.getInt(columnIndexOrThrow21);
                    columnIndexOrThrow22 = columnIndexOrThrow22;
                    if (cursorQuery.isNull(columnIndexOrThrow22)) {
                        historyBean.channelName = null;
                    } else {
                        historyBean.channelName = cursorQuery.getString(columnIndexOrThrow22);
                    }
                    columnIndexOrThrow23 = columnIndexOrThrow23;
                    if (cursorQuery.isNull(columnIndexOrThrow23)) {
                        historyBean.channelCover = null;
                    } else {
                        historyBean.channelCover = cursorQuery.getString(columnIndexOrThrow23);
                    }
                    int i15 = columnIndexOrThrow24;
                    if (cursorQuery.isNull(i15)) {
                        historyBean.videoBeanJson = null;
                    } else {
                        historyBean.videoBeanJson = cursorQuery.getString(i15);
                    }
                    columnIndexOrThrow24 = i15;
                    int i16 = columnIndexOrThrow25;
                    historyBean.playLet = cursorQuery.getInt(i16);
                    arrayList.add(historyBean);
                    columnIndexOrThrow25 = i16;
                    columnIndexOrThrow2 = i7;
                    columnIndexOrThrow = columnIndexOrThrow;
                    i2 = i6;
                    columnIndexOrThrow16 = i10;
                    columnIndexOrThrow3 = i5;
                    columnIndexOrThrow4 = i9;
                    columnIndexOrThrow15 = i8;
                    columnIndexOrThrow17 = i11;
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
    public List getHistoryUserBeanBySourceId(String str) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM online_history where source_id=?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_VK_SOURCE_ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "series_id");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_description");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_postion");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_cover");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_watch_time");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_frame_img");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_progress");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "update_progress");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_id");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID);
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_serial_name");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_link");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "source_type");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pay_type");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_intact");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_youtube");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_name");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_cover");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_bean_json");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_let");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    HistoryBean historyBean = new HistoryBean();
                    int i2 = columnIndexOrThrow12;
                    int i3 = columnIndexOrThrow13;
                    historyBean.serialId = cursorQuery.getLong(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        historyBean.sourceId = null;
                    } else {
                        historyBean.sourceId = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    historyBean.videoId = cursorQuery.getLong(columnIndexOrThrow3);
                    if (cursorQuery.isNull(columnIndexOrThrow4)) {
                        historyBean.videoName = null;
                    } else {
                        historyBean.videoName = cursorQuery.getString(columnIndexOrThrow4);
                    }
                    historyBean.seriesId = cursorQuery.getLong(columnIndexOrThrow5);
                    if (cursorQuery.isNull(columnIndexOrThrow6)) {
                        historyBean.description = null;
                    } else {
                        historyBean.description = cursorQuery.getString(columnIndexOrThrow6);
                    }
                    historyBean.lastPos = cursorQuery.getLong(columnIndexOrThrow7);
                    historyBean.duration = cursorQuery.getLong(columnIndexOrThrow8);
                    if (cursorQuery.isNull(columnIndexOrThrow9)) {
                        historyBean.videoCover = null;
                    } else {
                        historyBean.videoCover = cursorQuery.getString(columnIndexOrThrow9);
                    }
                    historyBean.lastWatchTime = cursorQuery.getLong(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        historyBean.videoFrame = null;
                    } else {
                        historyBean.videoFrame = cursorQuery.getBlob(columnIndexOrThrow11);
                    }
                    columnIndexOrThrow12 = i2;
                    historyBean.watchProgress = cursorQuery.getFloat(columnIndexOrThrow12);
                    columnIndexOrThrow13 = i3;
                    if (cursorQuery.isNull(columnIndexOrThrow13)) {
                        historyBean.updateProgress = null;
                    } else {
                        historyBean.updateProgress = cursorQuery.getString(columnIndexOrThrow13);
                    }
                    int i4 = columnIndexOrThrow3;
                    int i5 = i;
                    int i6 = columnIndexOrThrow2;
                    historyBean.recordId = cursorQuery.getLong(i5);
                    int i7 = columnIndexOrThrow15;
                    int i8 = columnIndexOrThrow4;
                    historyBean.userId = cursorQuery.getLong(i7);
                    int i9 = columnIndexOrThrow16;
                    if (cursorQuery.isNull(i9)) {
                        historyBean.videoSerialName = null;
                    } else {
                        historyBean.videoSerialName = cursorQuery.getString(i9);
                    }
                    int i10 = columnIndexOrThrow17;
                    if (cursorQuery.isNull(i10)) {
                        historyBean.videoUrl = null;
                    } else {
                        historyBean.videoUrl = cursorQuery.getString(i10);
                    }
                    int i11 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i11)) {
                        historyBean.sourceType = null;
                    } else {
                        historyBean.sourceType = cursorQuery.getString(i11);
                    }
                    columnIndexOrThrow18 = i11;
                    int i12 = columnIndexOrThrow19;
                    historyBean.payType = cursorQuery.getInt(i12);
                    columnIndexOrThrow19 = i12;
                    int i13 = columnIndexOrThrow20;
                    historyBean.isIntact = cursorQuery.getInt(i13);
                    columnIndexOrThrow20 = i13;
                    columnIndexOrThrow21 = columnIndexOrThrow21;
                    historyBean.mIsYoutube = cursorQuery.getInt(columnIndexOrThrow21);
                    columnIndexOrThrow22 = columnIndexOrThrow22;
                    if (cursorQuery.isNull(columnIndexOrThrow22)) {
                        historyBean.channelName = null;
                    } else {
                        historyBean.channelName = cursorQuery.getString(columnIndexOrThrow22);
                    }
                    columnIndexOrThrow23 = columnIndexOrThrow23;
                    if (cursorQuery.isNull(columnIndexOrThrow23)) {
                        historyBean.channelCover = null;
                    } else {
                        historyBean.channelCover = cursorQuery.getString(columnIndexOrThrow23);
                    }
                    int i14 = columnIndexOrThrow24;
                    if (cursorQuery.isNull(i14)) {
                        historyBean.videoBeanJson = null;
                    } else {
                        historyBean.videoBeanJson = cursorQuery.getString(i14);
                    }
                    columnIndexOrThrow24 = i14;
                    int i15 = columnIndexOrThrow25;
                    historyBean.playLet = cursorQuery.getInt(i15);
                    arrayList.add(historyBean);
                    columnIndexOrThrow25 = i15;
                    columnIndexOrThrow2 = i6;
                    columnIndexOrThrow = columnIndexOrThrow;
                    i = i5;
                    columnIndexOrThrow16 = i9;
                    columnIndexOrThrow3 = i4;
                    columnIndexOrThrow4 = i8;
                    columnIndexOrThrow15 = i7;
                    columnIndexOrThrow17 = i10;
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
    public List getYoutubeHistoryBeans() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM online_history where is_youtube=1", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_VK_SOURCE_ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "series_id");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_description");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_postion");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_cover");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_watch_time");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_frame_img");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_progress");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "update_progress");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_id");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID);
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_serial_name");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_link");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "source_type");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pay_type");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_intact");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_youtube");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_name");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_cover");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_bean_json");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_let");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    HistoryBean historyBean = new HistoryBean();
                    int i2 = columnIndexOrThrow12;
                    int i3 = columnIndexOrThrow13;
                    historyBean.serialId = cursorQuery.getLong(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        historyBean.sourceId = null;
                    } else {
                        historyBean.sourceId = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    historyBean.videoId = cursorQuery.getLong(columnIndexOrThrow3);
                    if (cursorQuery.isNull(columnIndexOrThrow4)) {
                        historyBean.videoName = null;
                    } else {
                        historyBean.videoName = cursorQuery.getString(columnIndexOrThrow4);
                    }
                    historyBean.seriesId = cursorQuery.getLong(columnIndexOrThrow5);
                    if (cursorQuery.isNull(columnIndexOrThrow6)) {
                        historyBean.description = null;
                    } else {
                        historyBean.description = cursorQuery.getString(columnIndexOrThrow6);
                    }
                    historyBean.lastPos = cursorQuery.getLong(columnIndexOrThrow7);
                    historyBean.duration = cursorQuery.getLong(columnIndexOrThrow8);
                    if (cursorQuery.isNull(columnIndexOrThrow9)) {
                        historyBean.videoCover = null;
                    } else {
                        historyBean.videoCover = cursorQuery.getString(columnIndexOrThrow9);
                    }
                    historyBean.lastWatchTime = cursorQuery.getLong(columnIndexOrThrow10);
                    if (cursorQuery.isNull(columnIndexOrThrow11)) {
                        historyBean.videoFrame = null;
                    } else {
                        historyBean.videoFrame = cursorQuery.getBlob(columnIndexOrThrow11);
                    }
                    columnIndexOrThrow12 = i2;
                    historyBean.watchProgress = cursorQuery.getFloat(columnIndexOrThrow12);
                    columnIndexOrThrow13 = i3;
                    if (cursorQuery.isNull(columnIndexOrThrow13)) {
                        historyBean.updateProgress = null;
                    } else {
                        historyBean.updateProgress = cursorQuery.getString(columnIndexOrThrow13);
                    }
                    int i4 = columnIndexOrThrow3;
                    int i5 = i;
                    int i6 = columnIndexOrThrow2;
                    historyBean.recordId = cursorQuery.getLong(i5);
                    int i7 = columnIndexOrThrow15;
                    int i8 = columnIndexOrThrow4;
                    historyBean.userId = cursorQuery.getLong(i7);
                    int i9 = columnIndexOrThrow16;
                    if (cursorQuery.isNull(i9)) {
                        historyBean.videoSerialName = null;
                    } else {
                        historyBean.videoSerialName = cursorQuery.getString(i9);
                    }
                    int i10 = columnIndexOrThrow17;
                    if (cursorQuery.isNull(i10)) {
                        historyBean.videoUrl = null;
                    } else {
                        historyBean.videoUrl = cursorQuery.getString(i10);
                    }
                    int i11 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i11)) {
                        historyBean.sourceType = null;
                    } else {
                        historyBean.sourceType = cursorQuery.getString(i11);
                    }
                    columnIndexOrThrow18 = i11;
                    int i12 = columnIndexOrThrow19;
                    historyBean.payType = cursorQuery.getInt(i12);
                    columnIndexOrThrow19 = i12;
                    int i13 = columnIndexOrThrow20;
                    historyBean.isIntact = cursorQuery.getInt(i13);
                    columnIndexOrThrow20 = i13;
                    columnIndexOrThrow21 = columnIndexOrThrow21;
                    historyBean.mIsYoutube = cursorQuery.getInt(columnIndexOrThrow21);
                    columnIndexOrThrow22 = columnIndexOrThrow22;
                    if (cursorQuery.isNull(columnIndexOrThrow22)) {
                        historyBean.channelName = null;
                    } else {
                        historyBean.channelName = cursorQuery.getString(columnIndexOrThrow22);
                    }
                    columnIndexOrThrow23 = columnIndexOrThrow23;
                    if (cursorQuery.isNull(columnIndexOrThrow23)) {
                        historyBean.channelCover = null;
                    } else {
                        historyBean.channelCover = cursorQuery.getString(columnIndexOrThrow23);
                    }
                    int i14 = columnIndexOrThrow24;
                    if (cursorQuery.isNull(i14)) {
                        historyBean.videoBeanJson = null;
                    } else {
                        historyBean.videoBeanJson = cursorQuery.getString(i14);
                    }
                    columnIndexOrThrow24 = i14;
                    int i15 = columnIndexOrThrow25;
                    historyBean.playLet = cursorQuery.getInt(i15);
                    arrayList.add(historyBean);
                    columnIndexOrThrow25 = i15;
                    columnIndexOrThrow2 = i6;
                    columnIndexOrThrow = columnIndexOrThrow;
                    i = i5;
                    columnIndexOrThrow16 = i9;
                    columnIndexOrThrow3 = i4;
                    columnIndexOrThrow17 = i10;
                    columnIndexOrThrow4 = i8;
                    columnIndexOrThrow15 = i7;
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
    public void insertHistories(List list) {
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
    public long insertHistory(HistoryBean historyBean) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            long jInsertAndReturnId = this.b.insertAndReturnId(historyBean);
            this.a.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.a.endTransaction();
        }
    }
}
