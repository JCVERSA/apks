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
import com.transsion.dbdata.beans.onlinevideo.HistoryUserBean;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;

public final class tg7 implements sg7 {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;
    public final EntityDeletionOrUpdateAdapter c;
    public final SharedSQLiteStatement d;
    public final SharedSQLiteStatement e;
    public final SharedSQLiteStatement f;
    public final SharedSQLiteStatement g;
    public final SharedSQLiteStatement h;

    public class a extends EntityInsertionAdapter {
        public a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, HistoryUserBean historyUserBean) {
            supportSQLiteStatement.bindLong(1, historyUserBean.isUploaded);
            supportSQLiteStatement.bindLong(2, historyUserBean.serialId);
            String str = historyUserBean.sourceId;
            if (str == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, str);
            }
            supportSQLiteStatement.bindLong(4, historyUserBean.videoId);
            String str2 = historyUserBean.videoName;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, str2);
            }
            supportSQLiteStatement.bindLong(6, historyUserBean.seriesId);
            String str3 = historyUserBean.description;
            if (str3 == null) {
                supportSQLiteStatement.bindNull(7);
            } else {
                supportSQLiteStatement.bindString(7, str3);
            }
            supportSQLiteStatement.bindLong(8, historyUserBean.lastPos);
            supportSQLiteStatement.bindLong(9, historyUserBean.duration);
            String str4 = historyUserBean.videoCover;
            if (str4 == null) {
                supportSQLiteStatement.bindNull(10);
            } else {
                supportSQLiteStatement.bindString(10, str4);
            }
            supportSQLiteStatement.bindLong(11, historyUserBean.lastWatchTime);
            byte[] bArr = historyUserBean.videoFrame;
            if (bArr == null) {
                supportSQLiteStatement.bindNull(12);
            } else {
                supportSQLiteStatement.bindBlob(12, bArr);
            }
            supportSQLiteStatement.bindDouble(13, historyUserBean.watchProgress);
            String str5 = historyUserBean.updateProgress;
            if (str5 == null) {
                supportSQLiteStatement.bindNull(14);
            } else {
                supportSQLiteStatement.bindString(14, str5);
            }
            supportSQLiteStatement.bindLong(15, historyUserBean.recordId);
            supportSQLiteStatement.bindLong(16, historyUserBean.userId);
            String str6 = historyUserBean.videoSerialName;
            if (str6 == null) {
                supportSQLiteStatement.bindNull(17);
            } else {
                supportSQLiteStatement.bindString(17, str6);
            }
            String str7 = historyUserBean.videoUrl;
            if (str7 == null) {
                supportSQLiteStatement.bindNull(18);
            } else {
                supportSQLiteStatement.bindString(18, str7);
            }
            String str8 = historyUserBean.sourceType;
            if (str8 == null) {
                supportSQLiteStatement.bindNull(19);
            } else {
                supportSQLiteStatement.bindString(19, str8);
            }
            supportSQLiteStatement.bindLong(20, historyUserBean.payType);
            supportSQLiteStatement.bindLong(21, historyUserBean.isIntact);
            supportSQLiteStatement.bindLong(22, historyUserBean.mIsYoutube);
            String str9 = historyUserBean.channelName;
            if (str9 == null) {
                supportSQLiteStatement.bindNull(23);
            } else {
                supportSQLiteStatement.bindString(23, str9);
            }
            String str10 = historyUserBean.channelCover;
            if (str10 == null) {
                supportSQLiteStatement.bindNull(24);
            } else {
                supportSQLiteStatement.bindString(24, str10);
            }
            String str11 = historyUserBean.videoBeanJson;
            if (str11 == null) {
                supportSQLiteStatement.bindNull(25);
            } else {
                supportSQLiteStatement.bindString(25, str11);
            }
            supportSQLiteStatement.bindLong(26, historyUserBean.playLet);
        }

        @Override
        public String createQuery() {
            return "INSERT OR REPLACE INTO `online_user_history` (`is_uploaded`,`serialId`,`source_id`,`video_id`,`video_name`,`series_id`,`video_description`,`last_play_postion`,`duration`,`video_cover`,`last_watch_time`,`last_frame_img`,`watch_progress`,`update_progress`,`record_id`,`user_id`,`video_serial_name`,`video_link`,`source_type`,`pay_type`,`is_intact`,`is_youtube`,`channel_name`,`channel_cover`,`video_bean_json`,`play_let`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }
    }

    public class b extends EntityDeletionOrUpdateAdapter {
        public b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, HistoryUserBean historyUserBean) {
            supportSQLiteStatement.bindLong(1, historyUserBean.serialId);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM `online_user_history` WHERE `serialId` = ?";
        }
    }

    public class c extends SharedSQLiteStatement {
        public c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM online_user_history where serialId=?";
        }
    }

    public class d extends SharedSQLiteStatement {
        public d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM online_user_history where user_id=?";
        }
    }

    public class e extends SharedSQLiteStatement {
        public e(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM online_user_history where is_uploaded == 0x00 or is_uploaded == 0x02";
        }
    }

    public class f extends SharedSQLiteStatement {
        public f(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM online_user_history";
        }
    }

    public class g extends SharedSQLiteStatement {
        public g(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "UPDATE online_user_history SET is_uploaded = 0";
        }
    }

    public class h implements Callable {
        public final RoomSQLiteQuery b;

        public h(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Cursor cursorQuery = DBUtil.query(tg7.this.a, this.b, false, null);
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_uploaded");
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialId");
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_VK_SOURCE_ID);
                int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
                int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_name");
                int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "series_id");
                int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_description");
                int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_postion");
                int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
                int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_cover");
                int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_watch_time");
                int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_frame_img");
                int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_progress");
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "update_progress");
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_id");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_serial_name");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_link");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "source_type");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pay_type");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_intact");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_youtube");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_name");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_cover");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_bean_json");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_let");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    HistoryUserBean historyUserBean = new HistoryUserBean();
                    ArrayList arrayList2 = arrayList;
                    historyUserBean.isUploaded = cursorQuery.getInt(columnIndexOrThrow);
                    int i2 = columnIndexOrThrow12;
                    int i3 = columnIndexOrThrow13;
                    historyUserBean.serialId = cursorQuery.getLong(columnIndexOrThrow2);
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        historyUserBean.sourceId = null;
                    } else {
                        historyUserBean.sourceId = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    historyUserBean.videoId = cursorQuery.getLong(columnIndexOrThrow4);
                    if (cursorQuery.isNull(columnIndexOrThrow5)) {
                        historyUserBean.videoName = null;
                    } else {
                        historyUserBean.videoName = cursorQuery.getString(columnIndexOrThrow5);
                    }
                    historyUserBean.seriesId = cursorQuery.getLong(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        historyUserBean.description = null;
                    } else {
                        historyUserBean.description = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    historyUserBean.lastPos = cursorQuery.getLong(columnIndexOrThrow8);
                    historyUserBean.duration = cursorQuery.getLong(columnIndexOrThrow9);
                    if (cursorQuery.isNull(columnIndexOrThrow10)) {
                        historyUserBean.videoCover = null;
                    } else {
                        historyUserBean.videoCover = cursorQuery.getString(columnIndexOrThrow10);
                    }
                    historyUserBean.lastWatchTime = cursorQuery.getLong(columnIndexOrThrow11);
                    if (cursorQuery.isNull(i2)) {
                        historyUserBean.videoFrame = null;
                    } else {
                        historyUserBean.videoFrame = cursorQuery.getBlob(i2);
                    }
                    historyUserBean.watchProgress = cursorQuery.getFloat(i3);
                    int i4 = i;
                    if (cursorQuery.isNull(i4)) {
                        historyUserBean.updateProgress = null;
                    } else {
                        historyUserBean.updateProgress = cursorQuery.getString(i4);
                    }
                    int i5 = columnIndexOrThrow15;
                    int i6 = columnIndexOrThrow2;
                    historyUserBean.recordId = cursorQuery.getLong(i5);
                    int i7 = columnIndexOrThrow16;
                    int i8 = columnIndexOrThrow3;
                    historyUserBean.userId = cursorQuery.getLong(i7);
                    int i9 = columnIndexOrThrow17;
                    if (cursorQuery.isNull(i9)) {
                        historyUserBean.videoSerialName = null;
                    } else {
                        historyUserBean.videoSerialName = cursorQuery.getString(i9);
                    }
                    int i10 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i10)) {
                        historyUserBean.videoUrl = null;
                    } else {
                        historyUserBean.videoUrl = cursorQuery.getString(i10);
                    }
                    int i11 = columnIndexOrThrow19;
                    if (cursorQuery.isNull(i11)) {
                        historyUserBean.sourceType = null;
                    } else {
                        historyUserBean.sourceType = cursorQuery.getString(i11);
                    }
                    columnIndexOrThrow19 = i11;
                    int i12 = columnIndexOrThrow20;
                    historyUserBean.payType = cursorQuery.getInt(i12);
                    columnIndexOrThrow20 = i12;
                    int i13 = columnIndexOrThrow21;
                    historyUserBean.isIntact = cursorQuery.getInt(i13);
                    columnIndexOrThrow21 = i13;
                    columnIndexOrThrow22 = columnIndexOrThrow22;
                    historyUserBean.mIsYoutube = cursorQuery.getInt(columnIndexOrThrow22);
                    columnIndexOrThrow23 = columnIndexOrThrow23;
                    if (cursorQuery.isNull(columnIndexOrThrow23)) {
                        historyUserBean.channelName = null;
                    } else {
                        historyUserBean.channelName = cursorQuery.getString(columnIndexOrThrow23);
                    }
                    columnIndexOrThrow24 = columnIndexOrThrow24;
                    if (cursorQuery.isNull(columnIndexOrThrow24)) {
                        historyUserBean.channelCover = null;
                    } else {
                        historyUserBean.channelCover = cursorQuery.getString(columnIndexOrThrow24);
                    }
                    int i14 = columnIndexOrThrow25;
                    if (cursorQuery.isNull(i14)) {
                        historyUserBean.videoBeanJson = null;
                    } else {
                        historyUserBean.videoBeanJson = cursorQuery.getString(i14);
                    }
                    columnIndexOrThrow25 = i14;
                    int i15 = columnIndexOrThrow26;
                    historyUserBean.playLet = cursorQuery.getInt(i15);
                    arrayList2.add(historyUserBean);
                    columnIndexOrThrow26 = i15;
                    columnIndexOrThrow2 = i6;
                    columnIndexOrThrow15 = i5;
                    columnIndexOrThrow17 = i9;
                    arrayList = arrayList2;
                    columnIndexOrThrow = columnIndexOrThrow;
                    i = i4;
                    columnIndexOrThrow13 = i3;
                    columnIndexOrThrow12 = i2;
                    columnIndexOrThrow18 = i10;
                    columnIndexOrThrow3 = i8;
                    columnIndexOrThrow16 = i7;
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

    public class i implements Callable {
        public final RoomSQLiteQuery b;

        public i(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Cursor cursorQuery = DBUtil.query(tg7.this.a, this.b, false, null);
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_uploaded");
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialId");
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_VK_SOURCE_ID);
                int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
                int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_name");
                int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "series_id");
                int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_description");
                int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_postion");
                int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
                int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_cover");
                int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_watch_time");
                int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_frame_img");
                int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_progress");
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "update_progress");
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_id");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_serial_name");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_link");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "source_type");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pay_type");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_intact");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_youtube");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_name");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_cover");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_bean_json");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_let");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    HistoryUserBean historyUserBean = new HistoryUserBean();
                    ArrayList arrayList2 = arrayList;
                    historyUserBean.isUploaded = cursorQuery.getInt(columnIndexOrThrow);
                    int i2 = columnIndexOrThrow12;
                    int i3 = columnIndexOrThrow13;
                    historyUserBean.serialId = cursorQuery.getLong(columnIndexOrThrow2);
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        historyUserBean.sourceId = null;
                    } else {
                        historyUserBean.sourceId = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    historyUserBean.videoId = cursorQuery.getLong(columnIndexOrThrow4);
                    if (cursorQuery.isNull(columnIndexOrThrow5)) {
                        historyUserBean.videoName = null;
                    } else {
                        historyUserBean.videoName = cursorQuery.getString(columnIndexOrThrow5);
                    }
                    historyUserBean.seriesId = cursorQuery.getLong(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        historyUserBean.description = null;
                    } else {
                        historyUserBean.description = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    historyUserBean.lastPos = cursorQuery.getLong(columnIndexOrThrow8);
                    historyUserBean.duration = cursorQuery.getLong(columnIndexOrThrow9);
                    if (cursorQuery.isNull(columnIndexOrThrow10)) {
                        historyUserBean.videoCover = null;
                    } else {
                        historyUserBean.videoCover = cursorQuery.getString(columnIndexOrThrow10);
                    }
                    historyUserBean.lastWatchTime = cursorQuery.getLong(columnIndexOrThrow11);
                    if (cursorQuery.isNull(i2)) {
                        historyUserBean.videoFrame = null;
                    } else {
                        historyUserBean.videoFrame = cursorQuery.getBlob(i2);
                    }
                    historyUserBean.watchProgress = cursorQuery.getFloat(i3);
                    int i4 = i;
                    if (cursorQuery.isNull(i4)) {
                        historyUserBean.updateProgress = null;
                    } else {
                        historyUserBean.updateProgress = cursorQuery.getString(i4);
                    }
                    int i5 = columnIndexOrThrow15;
                    int i6 = columnIndexOrThrow2;
                    historyUserBean.recordId = cursorQuery.getLong(i5);
                    int i7 = columnIndexOrThrow16;
                    int i8 = columnIndexOrThrow3;
                    historyUserBean.userId = cursorQuery.getLong(i7);
                    int i9 = columnIndexOrThrow17;
                    if (cursorQuery.isNull(i9)) {
                        historyUserBean.videoSerialName = null;
                    } else {
                        historyUserBean.videoSerialName = cursorQuery.getString(i9);
                    }
                    int i10 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(i10)) {
                        historyUserBean.videoUrl = null;
                    } else {
                        historyUserBean.videoUrl = cursorQuery.getString(i10);
                    }
                    int i11 = columnIndexOrThrow19;
                    if (cursorQuery.isNull(i11)) {
                        historyUserBean.sourceType = null;
                    } else {
                        historyUserBean.sourceType = cursorQuery.getString(i11);
                    }
                    columnIndexOrThrow19 = i11;
                    int i12 = columnIndexOrThrow20;
                    historyUserBean.payType = cursorQuery.getInt(i12);
                    columnIndexOrThrow20 = i12;
                    int i13 = columnIndexOrThrow21;
                    historyUserBean.isIntact = cursorQuery.getInt(i13);
                    columnIndexOrThrow21 = i13;
                    columnIndexOrThrow22 = columnIndexOrThrow22;
                    historyUserBean.mIsYoutube = cursorQuery.getInt(columnIndexOrThrow22);
                    columnIndexOrThrow23 = columnIndexOrThrow23;
                    if (cursorQuery.isNull(columnIndexOrThrow23)) {
                        historyUserBean.channelName = null;
                    } else {
                        historyUserBean.channelName = cursorQuery.getString(columnIndexOrThrow23);
                    }
                    columnIndexOrThrow24 = columnIndexOrThrow24;
                    if (cursorQuery.isNull(columnIndexOrThrow24)) {
                        historyUserBean.channelCover = null;
                    } else {
                        historyUserBean.channelCover = cursorQuery.getString(columnIndexOrThrow24);
                    }
                    int i14 = columnIndexOrThrow25;
                    if (cursorQuery.isNull(i14)) {
                        historyUserBean.videoBeanJson = null;
                    } else {
                        historyUserBean.videoBeanJson = cursorQuery.getString(i14);
                    }
                    columnIndexOrThrow25 = i14;
                    int i15 = columnIndexOrThrow26;
                    historyUserBean.playLet = cursorQuery.getInt(i15);
                    arrayList2.add(historyUserBean);
                    columnIndexOrThrow26 = i15;
                    columnIndexOrThrow2 = i6;
                    columnIndexOrThrow15 = i5;
                    columnIndexOrThrow17 = i9;
                    arrayList = arrayList2;
                    columnIndexOrThrow = columnIndexOrThrow;
                    i = i4;
                    columnIndexOrThrow13 = i3;
                    columnIndexOrThrow12 = i2;
                    columnIndexOrThrow18 = i10;
                    columnIndexOrThrow3 = i8;
                    columnIndexOrThrow16 = i7;
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

    public tg7(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new a(roomDatabase);
        this.c = new b(roomDatabase);
        this.d = new c(roomDatabase);
        this.e = new d(roomDatabase);
        this.f = new e(roomDatabase);
        this.g = new f(roomDatabase);
        this.h = new g(roomDatabase);
    }

    public static List b() {
        return Collections.emptyList();
    }

    @Override
    public void changeAllUploadStatus() {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.h.acquire();
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
    public int deleteAll() {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.g.acquire();
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
    public int deleteHistory(HistoryUserBean historyUserBean) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandle = this.c.handle(historyUserBean);
            this.a.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int deleteSyncUserHistory() {
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
    public int deleteUserHistory(long j) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.e.acquire();
        supportSQLiteStatementAcquire.bindLong(1, j);
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
    public int deleteUserHistoryVideo(long j) {
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
    public List getAllHistoryByVideoId(long j) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM online_user_history  where video_id=? ORDER BY last_watch_time DESC", 1);
        roomSQLiteQueryAcquire.bindLong(1, j);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_uploaded");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_VK_SOURCE_ID);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_name");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "series_id");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_description");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_postion");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_cover");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_watch_time");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_frame_img");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_progress");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "update_progress");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_id");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_serial_name");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_link");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "source_type");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pay_type");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_intact");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_youtube");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_name");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_cover");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_bean_json");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_let");
                int i2 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    HistoryUserBean historyUserBean = new HistoryUserBean();
                    ArrayList arrayList2 = arrayList;
                    historyUserBean.isUploaded = cursorQuery.getInt(columnIndexOrThrow);
                    int i3 = columnIndexOrThrow;
                    historyUserBean.serialId = cursorQuery.getLong(columnIndexOrThrow2);
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        historyUserBean.sourceId = null;
                    } else {
                        historyUserBean.sourceId = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    historyUserBean.videoId = cursorQuery.getLong(columnIndexOrThrow4);
                    if (cursorQuery.isNull(columnIndexOrThrow5)) {
                        historyUserBean.videoName = null;
                    } else {
                        historyUserBean.videoName = cursorQuery.getString(columnIndexOrThrow5);
                    }
                    historyUserBean.seriesId = cursorQuery.getLong(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        historyUserBean.description = null;
                    } else {
                        historyUserBean.description = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    historyUserBean.lastPos = cursorQuery.getLong(columnIndexOrThrow8);
                    historyUserBean.duration = cursorQuery.getLong(columnIndexOrThrow9);
                    if (cursorQuery.isNull(columnIndexOrThrow10)) {
                        historyUserBean.videoCover = null;
                    } else {
                        historyUserBean.videoCover = cursorQuery.getString(columnIndexOrThrow10);
                    }
                    historyUserBean.lastWatchTime = cursorQuery.getLong(columnIndexOrThrow11);
                    if (cursorQuery.isNull(columnIndexOrThrow12)) {
                        historyUserBean.videoFrame = null;
                    } else {
                        historyUserBean.videoFrame = cursorQuery.getBlob(columnIndexOrThrow12);
                    }
                    historyUserBean.watchProgress = cursorQuery.getFloat(columnIndexOrThrow13);
                    int i4 = i2;
                    if (cursorQuery.isNull(i4)) {
                        historyUserBean.updateProgress = null;
                    } else {
                        historyUserBean.updateProgress = cursorQuery.getString(i4);
                    }
                    int i5 = columnIndexOrThrow15;
                    int i6 = columnIndexOrThrow2;
                    int i7 = columnIndexOrThrow3;
                    historyUserBean.recordId = cursorQuery.getLong(i5);
                    int i8 = columnIndexOrThrow16;
                    historyUserBean.userId = cursorQuery.getLong(i8);
                    columnIndexOrThrow17 = columnIndexOrThrow17;
                    if (cursorQuery.isNull(columnIndexOrThrow17)) {
                        historyUserBean.videoSerialName = null;
                    } else {
                        historyUserBean.videoSerialName = cursorQuery.getString(columnIndexOrThrow17);
                    }
                    columnIndexOrThrow18 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(columnIndexOrThrow18)) {
                        historyUserBean.videoUrl = null;
                    } else {
                        historyUserBean.videoUrl = cursorQuery.getString(columnIndexOrThrow18);
                    }
                    int i9 = columnIndexOrThrow19;
                    if (cursorQuery.isNull(i9)) {
                        historyUserBean.sourceType = null;
                    } else {
                        historyUserBean.sourceType = cursorQuery.getString(i9);
                    }
                    columnIndexOrThrow19 = i9;
                    int i10 = columnIndexOrThrow20;
                    historyUserBean.payType = cursorQuery.getInt(i10);
                    columnIndexOrThrow20 = i10;
                    int i11 = columnIndexOrThrow21;
                    historyUserBean.isIntact = cursorQuery.getInt(i11);
                    columnIndexOrThrow21 = i11;
                    columnIndexOrThrow22 = columnIndexOrThrow22;
                    historyUserBean.mIsYoutube = cursorQuery.getInt(columnIndexOrThrow22);
                    columnIndexOrThrow23 = columnIndexOrThrow23;
                    if (cursorQuery.isNull(columnIndexOrThrow23)) {
                        historyUserBean.channelName = null;
                    } else {
                        historyUserBean.channelName = cursorQuery.getString(columnIndexOrThrow23);
                    }
                    columnIndexOrThrow24 = columnIndexOrThrow24;
                    if (cursorQuery.isNull(columnIndexOrThrow24)) {
                        historyUserBean.channelCover = null;
                    } else {
                        historyUserBean.channelCover = cursorQuery.getString(columnIndexOrThrow24);
                    }
                    int i12 = columnIndexOrThrow25;
                    if (cursorQuery.isNull(i12)) {
                        historyUserBean.videoBeanJson = null;
                    } else {
                        historyUserBean.videoBeanJson = cursorQuery.getString(i12);
                    }
                    columnIndexOrThrow25 = i12;
                    int i13 = columnIndexOrThrow26;
                    historyUserBean.playLet = cursorQuery.getInt(i13);
                    arrayList2.add(historyUserBean);
                    columnIndexOrThrow26 = i13;
                    arrayList = arrayList2;
                    columnIndexOrThrow = i3;
                    columnIndexOrThrow2 = i6;
                    columnIndexOrThrow15 = i5;
                    columnIndexOrThrow16 = i8;
                    i2 = i4;
                    columnIndexOrThrow3 = i7;
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
    public List getAllHistoryUserBean() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM online_user_history ORDER BY last_watch_time DESC", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_uploaded");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_VK_SOURCE_ID);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_name");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "series_id");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_description");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_postion");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_cover");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_watch_time");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_frame_img");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_progress");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "update_progress");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_id");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_serial_name");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_link");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "source_type");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pay_type");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_intact");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_youtube");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_name");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_cover");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_bean_json");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_let");
                int i2 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    HistoryUserBean historyUserBean = new HistoryUserBean();
                    ArrayList arrayList2 = arrayList;
                    historyUserBean.isUploaded = cursorQuery.getInt(columnIndexOrThrow);
                    int i3 = columnIndexOrThrow;
                    historyUserBean.serialId = cursorQuery.getLong(columnIndexOrThrow2);
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        historyUserBean.sourceId = null;
                    } else {
                        historyUserBean.sourceId = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    historyUserBean.videoId = cursorQuery.getLong(columnIndexOrThrow4);
                    if (cursorQuery.isNull(columnIndexOrThrow5)) {
                        historyUserBean.videoName = null;
                    } else {
                        historyUserBean.videoName = cursorQuery.getString(columnIndexOrThrow5);
                    }
                    historyUserBean.seriesId = cursorQuery.getLong(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        historyUserBean.description = null;
                    } else {
                        historyUserBean.description = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    historyUserBean.lastPos = cursorQuery.getLong(columnIndexOrThrow8);
                    historyUserBean.duration = cursorQuery.getLong(columnIndexOrThrow9);
                    if (cursorQuery.isNull(columnIndexOrThrow10)) {
                        historyUserBean.videoCover = null;
                    } else {
                        historyUserBean.videoCover = cursorQuery.getString(columnIndexOrThrow10);
                    }
                    historyUserBean.lastWatchTime = cursorQuery.getLong(columnIndexOrThrow11);
                    if (cursorQuery.isNull(columnIndexOrThrow12)) {
                        historyUserBean.videoFrame = null;
                    } else {
                        historyUserBean.videoFrame = cursorQuery.getBlob(columnIndexOrThrow12);
                    }
                    historyUserBean.watchProgress = cursorQuery.getFloat(columnIndexOrThrow13);
                    int i4 = i2;
                    if (cursorQuery.isNull(i4)) {
                        historyUserBean.updateProgress = null;
                    } else {
                        historyUserBean.updateProgress = cursorQuery.getString(i4);
                    }
                    int i5 = columnIndexOrThrow3;
                    int i6 = columnIndexOrThrow15;
                    int i7 = columnIndexOrThrow2;
                    historyUserBean.recordId = cursorQuery.getLong(i6);
                    int i8 = columnIndexOrThrow16;
                    historyUserBean.userId = cursorQuery.getLong(i8);
                    columnIndexOrThrow17 = columnIndexOrThrow17;
                    if (cursorQuery.isNull(columnIndexOrThrow17)) {
                        historyUserBean.videoSerialName = null;
                    } else {
                        historyUserBean.videoSerialName = cursorQuery.getString(columnIndexOrThrow17);
                    }
                    columnIndexOrThrow18 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(columnIndexOrThrow18)) {
                        historyUserBean.videoUrl = null;
                    } else {
                        historyUserBean.videoUrl = cursorQuery.getString(columnIndexOrThrow18);
                    }
                    int i9 = columnIndexOrThrow19;
                    if (cursorQuery.isNull(i9)) {
                        historyUserBean.sourceType = null;
                    } else {
                        historyUserBean.sourceType = cursorQuery.getString(i9);
                    }
                    columnIndexOrThrow19 = i9;
                    int i10 = columnIndexOrThrow20;
                    historyUserBean.payType = cursorQuery.getInt(i10);
                    columnIndexOrThrow20 = i10;
                    int i11 = columnIndexOrThrow21;
                    historyUserBean.isIntact = cursorQuery.getInt(i11);
                    columnIndexOrThrow21 = i11;
                    columnIndexOrThrow22 = columnIndexOrThrow22;
                    historyUserBean.mIsYoutube = cursorQuery.getInt(columnIndexOrThrow22);
                    columnIndexOrThrow23 = columnIndexOrThrow23;
                    if (cursorQuery.isNull(columnIndexOrThrow23)) {
                        historyUserBean.channelName = null;
                    } else {
                        historyUserBean.channelName = cursorQuery.getString(columnIndexOrThrow23);
                    }
                    columnIndexOrThrow24 = columnIndexOrThrow24;
                    if (cursorQuery.isNull(columnIndexOrThrow24)) {
                        historyUserBean.channelCover = null;
                    } else {
                        historyUserBean.channelCover = cursorQuery.getString(columnIndexOrThrow24);
                    }
                    int i12 = columnIndexOrThrow25;
                    if (cursorQuery.isNull(i12)) {
                        historyUserBean.videoBeanJson = null;
                    } else {
                        historyUserBean.videoBeanJson = cursorQuery.getString(i12);
                    }
                    columnIndexOrThrow25 = i12;
                    int i13 = columnIndexOrThrow26;
                    historyUserBean.playLet = cursorQuery.getInt(i13);
                    arrayList2.add(historyUserBean);
                    columnIndexOrThrow26 = i13;
                    arrayList = arrayList2;
                    columnIndexOrThrow = i3;
                    columnIndexOrThrow16 = i8;
                    columnIndexOrThrow2 = i7;
                    columnIndexOrThrow15 = i6;
                    i2 = i4;
                    columnIndexOrThrow3 = i5;
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
    public List getAllHistoryUserBeanByUserId(long j) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM online_user_history where user_id=?", 1);
        roomSQLiteQueryAcquire.bindLong(1, j);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_uploaded");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_VK_SOURCE_ID);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_name");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "series_id");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_description");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_postion");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_cover");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_watch_time");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_frame_img");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_progress");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "update_progress");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_id");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_serial_name");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_link");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "source_type");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pay_type");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_intact");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_youtube");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_name");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_cover");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_bean_json");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_let");
                int i2 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    HistoryUserBean historyUserBean = new HistoryUserBean();
                    ArrayList arrayList2 = arrayList;
                    historyUserBean.isUploaded = cursorQuery.getInt(columnIndexOrThrow);
                    int i3 = columnIndexOrThrow;
                    historyUserBean.serialId = cursorQuery.getLong(columnIndexOrThrow2);
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        historyUserBean.sourceId = null;
                    } else {
                        historyUserBean.sourceId = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    historyUserBean.videoId = cursorQuery.getLong(columnIndexOrThrow4);
                    if (cursorQuery.isNull(columnIndexOrThrow5)) {
                        historyUserBean.videoName = null;
                    } else {
                        historyUserBean.videoName = cursorQuery.getString(columnIndexOrThrow5);
                    }
                    historyUserBean.seriesId = cursorQuery.getLong(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        historyUserBean.description = null;
                    } else {
                        historyUserBean.description = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    historyUserBean.lastPos = cursorQuery.getLong(columnIndexOrThrow8);
                    historyUserBean.duration = cursorQuery.getLong(columnIndexOrThrow9);
                    if (cursorQuery.isNull(columnIndexOrThrow10)) {
                        historyUserBean.videoCover = null;
                    } else {
                        historyUserBean.videoCover = cursorQuery.getString(columnIndexOrThrow10);
                    }
                    historyUserBean.lastWatchTime = cursorQuery.getLong(columnIndexOrThrow11);
                    if (cursorQuery.isNull(columnIndexOrThrow12)) {
                        historyUserBean.videoFrame = null;
                    } else {
                        historyUserBean.videoFrame = cursorQuery.getBlob(columnIndexOrThrow12);
                    }
                    historyUserBean.watchProgress = cursorQuery.getFloat(columnIndexOrThrow13);
                    int i4 = i2;
                    if (cursorQuery.isNull(i4)) {
                        historyUserBean.updateProgress = null;
                    } else {
                        historyUserBean.updateProgress = cursorQuery.getString(i4);
                    }
                    int i5 = columnIndexOrThrow15;
                    int i6 = columnIndexOrThrow2;
                    int i7 = columnIndexOrThrow3;
                    historyUserBean.recordId = cursorQuery.getLong(i5);
                    int i8 = columnIndexOrThrow16;
                    historyUserBean.userId = cursorQuery.getLong(i8);
                    columnIndexOrThrow17 = columnIndexOrThrow17;
                    if (cursorQuery.isNull(columnIndexOrThrow17)) {
                        historyUserBean.videoSerialName = null;
                    } else {
                        historyUserBean.videoSerialName = cursorQuery.getString(columnIndexOrThrow17);
                    }
                    columnIndexOrThrow18 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(columnIndexOrThrow18)) {
                        historyUserBean.videoUrl = null;
                    } else {
                        historyUserBean.videoUrl = cursorQuery.getString(columnIndexOrThrow18);
                    }
                    int i9 = columnIndexOrThrow19;
                    if (cursorQuery.isNull(i9)) {
                        historyUserBean.sourceType = null;
                    } else {
                        historyUserBean.sourceType = cursorQuery.getString(i9);
                    }
                    columnIndexOrThrow19 = i9;
                    int i10 = columnIndexOrThrow20;
                    historyUserBean.payType = cursorQuery.getInt(i10);
                    columnIndexOrThrow20 = i10;
                    int i11 = columnIndexOrThrow21;
                    historyUserBean.isIntact = cursorQuery.getInt(i11);
                    columnIndexOrThrow21 = i11;
                    columnIndexOrThrow22 = columnIndexOrThrow22;
                    historyUserBean.mIsYoutube = cursorQuery.getInt(columnIndexOrThrow22);
                    columnIndexOrThrow23 = columnIndexOrThrow23;
                    if (cursorQuery.isNull(columnIndexOrThrow23)) {
                        historyUserBean.channelName = null;
                    } else {
                        historyUserBean.channelName = cursorQuery.getString(columnIndexOrThrow23);
                    }
                    columnIndexOrThrow24 = columnIndexOrThrow24;
                    if (cursorQuery.isNull(columnIndexOrThrow24)) {
                        historyUserBean.channelCover = null;
                    } else {
                        historyUserBean.channelCover = cursorQuery.getString(columnIndexOrThrow24);
                    }
                    int i12 = columnIndexOrThrow25;
                    if (cursorQuery.isNull(i12)) {
                        historyUserBean.videoBeanJson = null;
                    } else {
                        historyUserBean.videoBeanJson = cursorQuery.getString(i12);
                    }
                    columnIndexOrThrow25 = i12;
                    int i13 = columnIndexOrThrow26;
                    historyUserBean.playLet = cursorQuery.getInt(i13);
                    arrayList2.add(historyUserBean);
                    columnIndexOrThrow26 = i13;
                    arrayList = arrayList2;
                    columnIndexOrThrow = i3;
                    columnIndexOrThrow2 = i6;
                    columnIndexOrThrow15 = i5;
                    columnIndexOrThrow16 = i8;
                    i2 = i4;
                    columnIndexOrThrow3 = i7;
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
    public List getAllHistoryUserBeanData() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM online_user_history ORDER BY last_watch_time DESC", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_uploaded");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_VK_SOURCE_ID);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_name");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "series_id");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_description");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_postion");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_cover");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_watch_time");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_frame_img");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_progress");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "update_progress");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_id");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_serial_name");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_link");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "source_type");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pay_type");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_intact");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_youtube");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_name");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_cover");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_bean_json");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_let");
                int i2 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    HistoryUserBean historyUserBean = new HistoryUserBean();
                    ArrayList arrayList2 = arrayList;
                    historyUserBean.isUploaded = cursorQuery.getInt(columnIndexOrThrow);
                    int i3 = columnIndexOrThrow;
                    historyUserBean.serialId = cursorQuery.getLong(columnIndexOrThrow2);
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        historyUserBean.sourceId = null;
                    } else {
                        historyUserBean.sourceId = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    historyUserBean.videoId = cursorQuery.getLong(columnIndexOrThrow4);
                    if (cursorQuery.isNull(columnIndexOrThrow5)) {
                        historyUserBean.videoName = null;
                    } else {
                        historyUserBean.videoName = cursorQuery.getString(columnIndexOrThrow5);
                    }
                    historyUserBean.seriesId = cursorQuery.getLong(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        historyUserBean.description = null;
                    } else {
                        historyUserBean.description = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    historyUserBean.lastPos = cursorQuery.getLong(columnIndexOrThrow8);
                    historyUserBean.duration = cursorQuery.getLong(columnIndexOrThrow9);
                    if (cursorQuery.isNull(columnIndexOrThrow10)) {
                        historyUserBean.videoCover = null;
                    } else {
                        historyUserBean.videoCover = cursorQuery.getString(columnIndexOrThrow10);
                    }
                    historyUserBean.lastWatchTime = cursorQuery.getLong(columnIndexOrThrow11);
                    if (cursorQuery.isNull(columnIndexOrThrow12)) {
                        historyUserBean.videoFrame = null;
                    } else {
                        historyUserBean.videoFrame = cursorQuery.getBlob(columnIndexOrThrow12);
                    }
                    historyUserBean.watchProgress = cursorQuery.getFloat(columnIndexOrThrow13);
                    int i4 = i2;
                    if (cursorQuery.isNull(i4)) {
                        historyUserBean.updateProgress = null;
                    } else {
                        historyUserBean.updateProgress = cursorQuery.getString(i4);
                    }
                    int i5 = columnIndexOrThrow3;
                    int i6 = columnIndexOrThrow15;
                    int i7 = columnIndexOrThrow2;
                    historyUserBean.recordId = cursorQuery.getLong(i6);
                    int i8 = columnIndexOrThrow16;
                    historyUserBean.userId = cursorQuery.getLong(i8);
                    columnIndexOrThrow17 = columnIndexOrThrow17;
                    if (cursorQuery.isNull(columnIndexOrThrow17)) {
                        historyUserBean.videoSerialName = null;
                    } else {
                        historyUserBean.videoSerialName = cursorQuery.getString(columnIndexOrThrow17);
                    }
                    columnIndexOrThrow18 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(columnIndexOrThrow18)) {
                        historyUserBean.videoUrl = null;
                    } else {
                        historyUserBean.videoUrl = cursorQuery.getString(columnIndexOrThrow18);
                    }
                    int i9 = columnIndexOrThrow19;
                    if (cursorQuery.isNull(i9)) {
                        historyUserBean.sourceType = null;
                    } else {
                        historyUserBean.sourceType = cursorQuery.getString(i9);
                    }
                    columnIndexOrThrow19 = i9;
                    int i10 = columnIndexOrThrow20;
                    historyUserBean.payType = cursorQuery.getInt(i10);
                    columnIndexOrThrow20 = i10;
                    int i11 = columnIndexOrThrow21;
                    historyUserBean.isIntact = cursorQuery.getInt(i11);
                    columnIndexOrThrow21 = i11;
                    columnIndexOrThrow22 = columnIndexOrThrow22;
                    historyUserBean.mIsYoutube = cursorQuery.getInt(columnIndexOrThrow22);
                    columnIndexOrThrow23 = columnIndexOrThrow23;
                    if (cursorQuery.isNull(columnIndexOrThrow23)) {
                        historyUserBean.channelName = null;
                    } else {
                        historyUserBean.channelName = cursorQuery.getString(columnIndexOrThrow23);
                    }
                    columnIndexOrThrow24 = columnIndexOrThrow24;
                    if (cursorQuery.isNull(columnIndexOrThrow24)) {
                        historyUserBean.channelCover = null;
                    } else {
                        historyUserBean.channelCover = cursorQuery.getString(columnIndexOrThrow24);
                    }
                    int i12 = columnIndexOrThrow25;
                    if (cursorQuery.isNull(i12)) {
                        historyUserBean.videoBeanJson = null;
                    } else {
                        historyUserBean.videoBeanJson = cursorQuery.getString(i12);
                    }
                    columnIndexOrThrow25 = i12;
                    int i13 = columnIndexOrThrow26;
                    historyUserBean.playLet = cursorQuery.getInt(i13);
                    arrayList2.add(historyUserBean);
                    columnIndexOrThrow26 = i13;
                    arrayList = arrayList2;
                    columnIndexOrThrow = i3;
                    columnIndexOrThrow16 = i8;
                    columnIndexOrThrow2 = i7;
                    columnIndexOrThrow15 = i6;
                    i2 = i4;
                    columnIndexOrThrow3 = i5;
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
    public LiveData getAllLiveHistoryUserBean() {
        return this.a.getInvalidationTracker().createLiveData(new String[]{"online_user_history"}, false, new h(RoomSQLiteQuery.acquire("SELECT * FROM online_user_history ORDER BY last_watch_time DESC", 0)));
    }

    @Override
    public List getAllLiveHistoryUserBeanList() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM online_user_history ORDER BY last_watch_time DESC", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_uploaded");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_VK_SOURCE_ID);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_name");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "series_id");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_description");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_postion");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_cover");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_watch_time");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_frame_img");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_progress");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "update_progress");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_id");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_serial_name");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_link");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "source_type");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pay_type");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_intact");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_youtube");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_name");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_cover");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_bean_json");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_let");
                int i2 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    HistoryUserBean historyUserBean = new HistoryUserBean();
                    ArrayList arrayList2 = arrayList;
                    historyUserBean.isUploaded = cursorQuery.getInt(columnIndexOrThrow);
                    int i3 = columnIndexOrThrow;
                    historyUserBean.serialId = cursorQuery.getLong(columnIndexOrThrow2);
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        historyUserBean.sourceId = null;
                    } else {
                        historyUserBean.sourceId = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    historyUserBean.videoId = cursorQuery.getLong(columnIndexOrThrow4);
                    if (cursorQuery.isNull(columnIndexOrThrow5)) {
                        historyUserBean.videoName = null;
                    } else {
                        historyUserBean.videoName = cursorQuery.getString(columnIndexOrThrow5);
                    }
                    historyUserBean.seriesId = cursorQuery.getLong(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        historyUserBean.description = null;
                    } else {
                        historyUserBean.description = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    historyUserBean.lastPos = cursorQuery.getLong(columnIndexOrThrow8);
                    historyUserBean.duration = cursorQuery.getLong(columnIndexOrThrow9);
                    if (cursorQuery.isNull(columnIndexOrThrow10)) {
                        historyUserBean.videoCover = null;
                    } else {
                        historyUserBean.videoCover = cursorQuery.getString(columnIndexOrThrow10);
                    }
                    historyUserBean.lastWatchTime = cursorQuery.getLong(columnIndexOrThrow11);
                    if (cursorQuery.isNull(columnIndexOrThrow12)) {
                        historyUserBean.videoFrame = null;
                    } else {
                        historyUserBean.videoFrame = cursorQuery.getBlob(columnIndexOrThrow12);
                    }
                    historyUserBean.watchProgress = cursorQuery.getFloat(columnIndexOrThrow13);
                    int i4 = i2;
                    if (cursorQuery.isNull(i4)) {
                        historyUserBean.updateProgress = null;
                    } else {
                        historyUserBean.updateProgress = cursorQuery.getString(i4);
                    }
                    int i5 = columnIndexOrThrow3;
                    int i6 = columnIndexOrThrow15;
                    int i7 = columnIndexOrThrow2;
                    historyUserBean.recordId = cursorQuery.getLong(i6);
                    int i8 = columnIndexOrThrow16;
                    historyUserBean.userId = cursorQuery.getLong(i8);
                    columnIndexOrThrow17 = columnIndexOrThrow17;
                    if (cursorQuery.isNull(columnIndexOrThrow17)) {
                        historyUserBean.videoSerialName = null;
                    } else {
                        historyUserBean.videoSerialName = cursorQuery.getString(columnIndexOrThrow17);
                    }
                    columnIndexOrThrow18 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(columnIndexOrThrow18)) {
                        historyUserBean.videoUrl = null;
                    } else {
                        historyUserBean.videoUrl = cursorQuery.getString(columnIndexOrThrow18);
                    }
                    int i9 = columnIndexOrThrow19;
                    if (cursorQuery.isNull(i9)) {
                        historyUserBean.sourceType = null;
                    } else {
                        historyUserBean.sourceType = cursorQuery.getString(i9);
                    }
                    columnIndexOrThrow19 = i9;
                    int i10 = columnIndexOrThrow20;
                    historyUserBean.payType = cursorQuery.getInt(i10);
                    columnIndexOrThrow20 = i10;
                    int i11 = columnIndexOrThrow21;
                    historyUserBean.isIntact = cursorQuery.getInt(i11);
                    columnIndexOrThrow21 = i11;
                    columnIndexOrThrow22 = columnIndexOrThrow22;
                    historyUserBean.mIsYoutube = cursorQuery.getInt(columnIndexOrThrow22);
                    columnIndexOrThrow23 = columnIndexOrThrow23;
                    if (cursorQuery.isNull(columnIndexOrThrow23)) {
                        historyUserBean.channelName = null;
                    } else {
                        historyUserBean.channelName = cursorQuery.getString(columnIndexOrThrow23);
                    }
                    columnIndexOrThrow24 = columnIndexOrThrow24;
                    if (cursorQuery.isNull(columnIndexOrThrow24)) {
                        historyUserBean.channelCover = null;
                    } else {
                        historyUserBean.channelCover = cursorQuery.getString(columnIndexOrThrow24);
                    }
                    int i12 = columnIndexOrThrow25;
                    if (cursorQuery.isNull(i12)) {
                        historyUserBean.videoBeanJson = null;
                    } else {
                        historyUserBean.videoBeanJson = cursorQuery.getString(i12);
                    }
                    columnIndexOrThrow25 = i12;
                    int i13 = columnIndexOrThrow26;
                    historyUserBean.playLet = cursorQuery.getInt(i13);
                    arrayList2.add(historyUserBean);
                    columnIndexOrThrow26 = i13;
                    arrayList = arrayList2;
                    columnIndexOrThrow = i3;
                    columnIndexOrThrow16 = i8;
                    columnIndexOrThrow2 = i7;
                    columnIndexOrThrow15 = i6;
                    i2 = i4;
                    columnIndexOrThrow3 = i5;
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
    public LiveData getAllLiveHistoryUserBeanNotDelete() {
        return this.a.getInvalidationTracker().createLiveData(new String[]{"online_user_history"}, false, new i(RoomSQLiteQuery.acquire("SELECT * FROM online_user_history where is_uploaded <= 1  ORDER BY last_watch_time DESC", 0)));
    }

    @Override
    public List getHistoryUserBean(long j) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT `serialId`, `source_id`, `video_id`, `video_name`, `series_id`, `video_description`, `last_play_postion`, `duration`, `video_cover`, `last_watch_time`, `last_frame_img`, `watch_progress`, `update_progress`, `record_id`, `user_id`, `video_serial_name`, `video_link`, `source_type`, `pay_type`, `is_intact`, `is_youtube`, `channel_name`, `channel_cover`, `video_bean_json`, `play_let` FROM (SELECT * FROM online_user_history where serialId=?)", 1);
        roomSQLiteQueryAcquire.bindLong(1, j);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                HistoryBean historyBean = new HistoryBean();
                historyBean.serialId = cursorQuery.getLong(0);
                if (cursorQuery.isNull(1)) {
                    historyBean.sourceId = null;
                } else {
                    historyBean.sourceId = cursorQuery.getString(1);
                }
                historyBean.videoId = cursorQuery.getLong(2);
                if (cursorQuery.isNull(3)) {
                    historyBean.videoName = null;
                } else {
                    historyBean.videoName = cursorQuery.getString(3);
                }
                historyBean.seriesId = cursorQuery.getLong(4);
                if (cursorQuery.isNull(5)) {
                    historyBean.description = null;
                } else {
                    historyBean.description = cursorQuery.getString(5);
                }
                historyBean.lastPos = cursorQuery.getLong(6);
                historyBean.duration = cursorQuery.getLong(7);
                if (cursorQuery.isNull(8)) {
                    historyBean.videoCover = null;
                } else {
                    historyBean.videoCover = cursorQuery.getString(8);
                }
                historyBean.lastWatchTime = cursorQuery.getLong(9);
                if (cursorQuery.isNull(10)) {
                    historyBean.videoFrame = null;
                } else {
                    historyBean.videoFrame = cursorQuery.getBlob(10);
                }
                historyBean.watchProgress = cursorQuery.getFloat(11);
                if (cursorQuery.isNull(12)) {
                    historyBean.updateProgress = null;
                } else {
                    historyBean.updateProgress = cursorQuery.getString(12);
                }
                historyBean.recordId = cursorQuery.getLong(13);
                historyBean.userId = cursorQuery.getLong(14);
                if (cursorQuery.isNull(15)) {
                    historyBean.videoSerialName = null;
                } else {
                    historyBean.videoSerialName = cursorQuery.getString(15);
                }
                if (cursorQuery.isNull(16)) {
                    historyBean.videoUrl = null;
                } else {
                    historyBean.videoUrl = cursorQuery.getString(16);
                }
                if (cursorQuery.isNull(17)) {
                    historyBean.sourceType = null;
                } else {
                    historyBean.sourceType = cursorQuery.getString(17);
                }
                historyBean.payType = cursorQuery.getInt(18);
                historyBean.isIntact = cursorQuery.getInt(19);
                historyBean.mIsYoutube = cursorQuery.getInt(20);
                if (cursorQuery.isNull(21)) {
                    historyBean.channelName = null;
                } else {
                    historyBean.channelName = cursorQuery.getString(21);
                }
                if (cursorQuery.isNull(22)) {
                    historyBean.channelCover = null;
                } else {
                    historyBean.channelCover = cursorQuery.getString(22);
                }
                if (cursorQuery.isNull(23)) {
                    historyBean.videoBeanJson = null;
                } else {
                    historyBean.videoBeanJson = cursorQuery.getString(23);
                }
                historyBean.playLet = cursorQuery.getInt(24);
                arrayList.add(historyBean);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getHistoryUserBeanBySourceId(String str) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT `serialId`, `source_id`, `video_id`, `video_name`, `series_id`, `video_description`, `last_play_postion`, `duration`, `video_cover`, `last_watch_time`, `last_frame_img`, `watch_progress`, `update_progress`, `record_id`, `user_id`, `video_serial_name`, `video_link`, `source_type`, `pay_type`, `is_intact`, `is_youtube`, `channel_name`, `channel_cover`, `video_bean_json`, `play_let` FROM (SELECT * FROM online_user_history where source_id=?)", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                HistoryBean historyBean = new HistoryBean();
                historyBean.serialId = cursorQuery.getLong(0);
                if (cursorQuery.isNull(1)) {
                    historyBean.sourceId = null;
                } else {
                    historyBean.sourceId = cursorQuery.getString(1);
                }
                historyBean.videoId = cursorQuery.getLong(2);
                if (cursorQuery.isNull(3)) {
                    historyBean.videoName = null;
                } else {
                    historyBean.videoName = cursorQuery.getString(3);
                }
                historyBean.seriesId = cursorQuery.getLong(4);
                if (cursorQuery.isNull(5)) {
                    historyBean.description = null;
                } else {
                    historyBean.description = cursorQuery.getString(5);
                }
                historyBean.lastPos = cursorQuery.getLong(6);
                historyBean.duration = cursorQuery.getLong(7);
                if (cursorQuery.isNull(8)) {
                    historyBean.videoCover = null;
                } else {
                    historyBean.videoCover = cursorQuery.getString(8);
                }
                historyBean.lastWatchTime = cursorQuery.getLong(9);
                if (cursorQuery.isNull(10)) {
                    historyBean.videoFrame = null;
                } else {
                    historyBean.videoFrame = cursorQuery.getBlob(10);
                }
                historyBean.watchProgress = cursorQuery.getFloat(11);
                if (cursorQuery.isNull(12)) {
                    historyBean.updateProgress = null;
                } else {
                    historyBean.updateProgress = cursorQuery.getString(12);
                }
                historyBean.recordId = cursorQuery.getLong(13);
                historyBean.userId = cursorQuery.getLong(14);
                if (cursorQuery.isNull(15)) {
                    historyBean.videoSerialName = null;
                } else {
                    historyBean.videoSerialName = cursorQuery.getString(15);
                }
                if (cursorQuery.isNull(16)) {
                    historyBean.videoUrl = null;
                } else {
                    historyBean.videoUrl = cursorQuery.getString(16);
                }
                if (cursorQuery.isNull(17)) {
                    historyBean.sourceType = null;
                } else {
                    historyBean.sourceType = cursorQuery.getString(17);
                }
                historyBean.payType = cursorQuery.getInt(18);
                historyBean.isIntact = cursorQuery.getInt(19);
                historyBean.mIsYoutube = cursorQuery.getInt(20);
                if (cursorQuery.isNull(21)) {
                    historyBean.channelName = null;
                } else {
                    historyBean.channelName = cursorQuery.getString(21);
                }
                if (cursorQuery.isNull(22)) {
                    historyBean.channelCover = null;
                } else {
                    historyBean.channelCover = cursorQuery.getString(22);
                }
                if (cursorQuery.isNull(23)) {
                    historyBean.videoBeanJson = null;
                } else {
                    historyBean.videoBeanJson = cursorQuery.getString(23);
                }
                historyBean.playLet = cursorQuery.getInt(24);
                arrayList.add(historyBean);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getHistoryUserBeanByVideoId(long j) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT `serialId`, `source_id`, `video_id`, `video_name`, `series_id`, `video_description`, `last_play_postion`, `duration`, `video_cover`, `last_watch_time`, `last_frame_img`, `watch_progress`, `update_progress`, `record_id`, `user_id`, `video_serial_name`, `video_link`, `source_type`, `pay_type`, `is_intact`, `is_youtube`, `channel_name`, `channel_cover`, `video_bean_json`, `play_let` FROM (SELECT * FROM online_user_history where video_id=?)", 1);
        roomSQLiteQueryAcquire.bindLong(1, j);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                HistoryBean historyBean = new HistoryBean();
                historyBean.serialId = cursorQuery.getLong(0);
                if (cursorQuery.isNull(1)) {
                    historyBean.sourceId = null;
                } else {
                    historyBean.sourceId = cursorQuery.getString(1);
                }
                historyBean.videoId = cursorQuery.getLong(2);
                if (cursorQuery.isNull(3)) {
                    historyBean.videoName = null;
                } else {
                    historyBean.videoName = cursorQuery.getString(3);
                }
                historyBean.seriesId = cursorQuery.getLong(4);
                if (cursorQuery.isNull(5)) {
                    historyBean.description = null;
                } else {
                    historyBean.description = cursorQuery.getString(5);
                }
                historyBean.lastPos = cursorQuery.getLong(6);
                historyBean.duration = cursorQuery.getLong(7);
                if (cursorQuery.isNull(8)) {
                    historyBean.videoCover = null;
                } else {
                    historyBean.videoCover = cursorQuery.getString(8);
                }
                historyBean.lastWatchTime = cursorQuery.getLong(9);
                if (cursorQuery.isNull(10)) {
                    historyBean.videoFrame = null;
                } else {
                    historyBean.videoFrame = cursorQuery.getBlob(10);
                }
                historyBean.watchProgress = cursorQuery.getFloat(11);
                if (cursorQuery.isNull(12)) {
                    historyBean.updateProgress = null;
                } else {
                    historyBean.updateProgress = cursorQuery.getString(12);
                }
                historyBean.recordId = cursorQuery.getLong(13);
                historyBean.userId = cursorQuery.getLong(14);
                if (cursorQuery.isNull(15)) {
                    historyBean.videoSerialName = null;
                } else {
                    historyBean.videoSerialName = cursorQuery.getString(15);
                }
                if (cursorQuery.isNull(16)) {
                    historyBean.videoUrl = null;
                } else {
                    historyBean.videoUrl = cursorQuery.getString(16);
                }
                if (cursorQuery.isNull(17)) {
                    historyBean.sourceType = null;
                } else {
                    historyBean.sourceType = cursorQuery.getString(17);
                }
                historyBean.payType = cursorQuery.getInt(18);
                historyBean.isIntact = cursorQuery.getInt(19);
                historyBean.mIsYoutube = cursorQuery.getInt(20);
                if (cursorQuery.isNull(21)) {
                    historyBean.channelName = null;
                } else {
                    historyBean.channelName = cursorQuery.getString(21);
                }
                if (cursorQuery.isNull(22)) {
                    historyBean.channelCover = null;
                } else {
                    historyBean.channelCover = cursorQuery.getString(22);
                }
                if (cursorQuery.isNull(23)) {
                    historyBean.videoBeanJson = null;
                } else {
                    historyBean.videoBeanJson = cursorQuery.getString(23);
                }
                historyBean.playLet = cursorQuery.getInt(24);
                arrayList.add(historyBean);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getHistoryUserBeanByVideoIdIntact(long j) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM online_user_history where video_id=? and is_intact == 1", 1);
        roomSQLiteQueryAcquire.bindLong(1, j);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_uploaded");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_VK_SOURCE_ID);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_name");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "series_id");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_description");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_postion");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_cover");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_watch_time");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_frame_img");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_progress");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "update_progress");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_id");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_serial_name");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_link");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "source_type");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pay_type");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_intact");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_youtube");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_name");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_cover");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_bean_json");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_let");
                int i2 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    HistoryUserBean historyUserBean = new HistoryUserBean();
                    ArrayList arrayList2 = arrayList;
                    historyUserBean.isUploaded = cursorQuery.getInt(columnIndexOrThrow);
                    int i3 = columnIndexOrThrow;
                    historyUserBean.serialId = cursorQuery.getLong(columnIndexOrThrow2);
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        historyUserBean.sourceId = null;
                    } else {
                        historyUserBean.sourceId = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    historyUserBean.videoId = cursorQuery.getLong(columnIndexOrThrow4);
                    if (cursorQuery.isNull(columnIndexOrThrow5)) {
                        historyUserBean.videoName = null;
                    } else {
                        historyUserBean.videoName = cursorQuery.getString(columnIndexOrThrow5);
                    }
                    historyUserBean.seriesId = cursorQuery.getLong(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        historyUserBean.description = null;
                    } else {
                        historyUserBean.description = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    historyUserBean.lastPos = cursorQuery.getLong(columnIndexOrThrow8);
                    historyUserBean.duration = cursorQuery.getLong(columnIndexOrThrow9);
                    if (cursorQuery.isNull(columnIndexOrThrow10)) {
                        historyUserBean.videoCover = null;
                    } else {
                        historyUserBean.videoCover = cursorQuery.getString(columnIndexOrThrow10);
                    }
                    historyUserBean.lastWatchTime = cursorQuery.getLong(columnIndexOrThrow11);
                    if (cursorQuery.isNull(columnIndexOrThrow12)) {
                        historyUserBean.videoFrame = null;
                    } else {
                        historyUserBean.videoFrame = cursorQuery.getBlob(columnIndexOrThrow12);
                    }
                    historyUserBean.watchProgress = cursorQuery.getFloat(columnIndexOrThrow13);
                    int i4 = i2;
                    if (cursorQuery.isNull(i4)) {
                        historyUserBean.updateProgress = null;
                    } else {
                        historyUserBean.updateProgress = cursorQuery.getString(i4);
                    }
                    int i5 = columnIndexOrThrow15;
                    int i6 = columnIndexOrThrow2;
                    int i7 = columnIndexOrThrow3;
                    historyUserBean.recordId = cursorQuery.getLong(i5);
                    int i8 = columnIndexOrThrow16;
                    historyUserBean.userId = cursorQuery.getLong(i8);
                    columnIndexOrThrow17 = columnIndexOrThrow17;
                    if (cursorQuery.isNull(columnIndexOrThrow17)) {
                        historyUserBean.videoSerialName = null;
                    } else {
                        historyUserBean.videoSerialName = cursorQuery.getString(columnIndexOrThrow17);
                    }
                    columnIndexOrThrow18 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(columnIndexOrThrow18)) {
                        historyUserBean.videoUrl = null;
                    } else {
                        historyUserBean.videoUrl = cursorQuery.getString(columnIndexOrThrow18);
                    }
                    int i9 = columnIndexOrThrow19;
                    if (cursorQuery.isNull(i9)) {
                        historyUserBean.sourceType = null;
                    } else {
                        historyUserBean.sourceType = cursorQuery.getString(i9);
                    }
                    columnIndexOrThrow19 = i9;
                    int i10 = columnIndexOrThrow20;
                    historyUserBean.payType = cursorQuery.getInt(i10);
                    columnIndexOrThrow20 = i10;
                    int i11 = columnIndexOrThrow21;
                    historyUserBean.isIntact = cursorQuery.getInt(i11);
                    columnIndexOrThrow21 = i11;
                    columnIndexOrThrow22 = columnIndexOrThrow22;
                    historyUserBean.mIsYoutube = cursorQuery.getInt(columnIndexOrThrow22);
                    columnIndexOrThrow23 = columnIndexOrThrow23;
                    if (cursorQuery.isNull(columnIndexOrThrow23)) {
                        historyUserBean.channelName = null;
                    } else {
                        historyUserBean.channelName = cursorQuery.getString(columnIndexOrThrow23);
                    }
                    columnIndexOrThrow24 = columnIndexOrThrow24;
                    if (cursorQuery.isNull(columnIndexOrThrow24)) {
                        historyUserBean.channelCover = null;
                    } else {
                        historyUserBean.channelCover = cursorQuery.getString(columnIndexOrThrow24);
                    }
                    int i12 = columnIndexOrThrow25;
                    if (cursorQuery.isNull(i12)) {
                        historyUserBean.videoBeanJson = null;
                    } else {
                        historyUserBean.videoBeanJson = cursorQuery.getString(i12);
                    }
                    columnIndexOrThrow25 = i12;
                    int i13 = columnIndexOrThrow26;
                    historyUserBean.playLet = cursorQuery.getInt(i13);
                    arrayList2.add(historyUserBean);
                    columnIndexOrThrow26 = i13;
                    arrayList = arrayList2;
                    columnIndexOrThrow = i3;
                    columnIndexOrThrow2 = i6;
                    columnIndexOrThrow15 = i5;
                    columnIndexOrThrow16 = i8;
                    i2 = i4;
                    columnIndexOrThrow3 = i7;
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
    public List getHistoryUserBeanCount(int i2) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM online_user_history ORDER BY last_watch_time DESC LIMIT?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i2);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_uploaded");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, hb0.KEY_NAME_VK_SOURCE_ID);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_name");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "series_id");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_description");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_play_postion");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_cover");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_watch_time");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "last_frame_img");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_progress");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "update_progress");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "record_id");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_serial_name");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_link");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "source_type");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pay_type");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_intact");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_youtube");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_name");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "channel_cover");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_bean_json");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_let");
                int i3 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    HistoryUserBean historyUserBean = new HistoryUserBean();
                    ArrayList arrayList2 = arrayList;
                    historyUserBean.isUploaded = cursorQuery.getInt(columnIndexOrThrow);
                    int i4 = columnIndexOrThrow;
                    historyUserBean.serialId = cursorQuery.getLong(columnIndexOrThrow2);
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        historyUserBean.sourceId = null;
                    } else {
                        historyUserBean.sourceId = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    historyUserBean.videoId = cursorQuery.getLong(columnIndexOrThrow4);
                    if (cursorQuery.isNull(columnIndexOrThrow5)) {
                        historyUserBean.videoName = null;
                    } else {
                        historyUserBean.videoName = cursorQuery.getString(columnIndexOrThrow5);
                    }
                    historyUserBean.seriesId = cursorQuery.getLong(columnIndexOrThrow6);
                    if (cursorQuery.isNull(columnIndexOrThrow7)) {
                        historyUserBean.description = null;
                    } else {
                        historyUserBean.description = cursorQuery.getString(columnIndexOrThrow7);
                    }
                    historyUserBean.lastPos = cursorQuery.getLong(columnIndexOrThrow8);
                    historyUserBean.duration = cursorQuery.getLong(columnIndexOrThrow9);
                    if (cursorQuery.isNull(columnIndexOrThrow10)) {
                        historyUserBean.videoCover = null;
                    } else {
                        historyUserBean.videoCover = cursorQuery.getString(columnIndexOrThrow10);
                    }
                    historyUserBean.lastWatchTime = cursorQuery.getLong(columnIndexOrThrow11);
                    if (cursorQuery.isNull(columnIndexOrThrow12)) {
                        historyUserBean.videoFrame = null;
                    } else {
                        historyUserBean.videoFrame = cursorQuery.getBlob(columnIndexOrThrow12);
                    }
                    historyUserBean.watchProgress = cursorQuery.getFloat(columnIndexOrThrow13);
                    int i5 = i3;
                    if (cursorQuery.isNull(i5)) {
                        historyUserBean.updateProgress = null;
                    } else {
                        historyUserBean.updateProgress = cursorQuery.getString(i5);
                    }
                    int i6 = columnIndexOrThrow15;
                    int i7 = columnIndexOrThrow2;
                    int i8 = columnIndexOrThrow3;
                    historyUserBean.recordId = cursorQuery.getLong(i6);
                    int i9 = columnIndexOrThrow16;
                    historyUserBean.userId = cursorQuery.getLong(i9);
                    columnIndexOrThrow17 = columnIndexOrThrow17;
                    if (cursorQuery.isNull(columnIndexOrThrow17)) {
                        historyUserBean.videoSerialName = null;
                    } else {
                        historyUserBean.videoSerialName = cursorQuery.getString(columnIndexOrThrow17);
                    }
                    columnIndexOrThrow18 = columnIndexOrThrow18;
                    if (cursorQuery.isNull(columnIndexOrThrow18)) {
                        historyUserBean.videoUrl = null;
                    } else {
                        historyUserBean.videoUrl = cursorQuery.getString(columnIndexOrThrow18);
                    }
                    int i10 = columnIndexOrThrow19;
                    if (cursorQuery.isNull(i10)) {
                        historyUserBean.sourceType = null;
                    } else {
                        historyUserBean.sourceType = cursorQuery.getString(i10);
                    }
                    columnIndexOrThrow19 = i10;
                    int i11 = columnIndexOrThrow20;
                    historyUserBean.payType = cursorQuery.getInt(i11);
                    columnIndexOrThrow20 = i11;
                    int i12 = columnIndexOrThrow21;
                    historyUserBean.isIntact = cursorQuery.getInt(i12);
                    columnIndexOrThrow21 = i12;
                    columnIndexOrThrow22 = columnIndexOrThrow22;
                    historyUserBean.mIsYoutube = cursorQuery.getInt(columnIndexOrThrow22);
                    columnIndexOrThrow23 = columnIndexOrThrow23;
                    if (cursorQuery.isNull(columnIndexOrThrow23)) {
                        historyUserBean.channelName = null;
                    } else {
                        historyUserBean.channelName = cursorQuery.getString(columnIndexOrThrow23);
                    }
                    columnIndexOrThrow24 = columnIndexOrThrow24;
                    if (cursorQuery.isNull(columnIndexOrThrow24)) {
                        historyUserBean.channelCover = null;
                    } else {
                        historyUserBean.channelCover = cursorQuery.getString(columnIndexOrThrow24);
                    }
                    int i13 = columnIndexOrThrow25;
                    if (cursorQuery.isNull(i13)) {
                        historyUserBean.videoBeanJson = null;
                    } else {
                        historyUserBean.videoBeanJson = cursorQuery.getString(i13);
                    }
                    columnIndexOrThrow25 = i13;
                    int i14 = columnIndexOrThrow26;
                    historyUserBean.playLet = cursorQuery.getInt(i14);
                    arrayList2.add(historyUserBean);
                    columnIndexOrThrow26 = i14;
                    arrayList = arrayList2;
                    columnIndexOrThrow = i4;
                    columnIndexOrThrow2 = i7;
                    columnIndexOrThrow15 = i6;
                    columnIndexOrThrow16 = i9;
                    i3 = i5;
                    columnIndexOrThrow3 = i8;
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
    public long insertHistory(HistoryUserBean historyUserBean) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            long jInsertAndReturnId = this.b.insertAndReturnId(historyUserBean);
            this.a.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.a.endTransaction();
        }
    }
}
