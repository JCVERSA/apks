package defpackage;

import android.database.Cursor;
import androidx.core.provider.FontsContractCompat;
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
import com.transsion.dbdata.beans.VideoCloudCache;
import com.transsion.dbdata.beans.media.PlayAudioData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

public final class bpb implements apb {
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
        public void bind(SupportSQLiteStatement supportSQLiteStatement, VideoCloudCache videoCloudCache) {
            supportSQLiteStatement.bindLong(1, videoCloudCache.getId());
            if (videoCloudCache.getFileId() == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, videoCloudCache.getFileId());
            }
            if (videoCloudCache.getFileName() == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, videoCloudCache.getFileName());
            }
            if (videoCloudCache.getSize() == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindLong(4, videoCloudCache.getSize().longValue());
            }
            if (videoCloudCache.getDuration() == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindLong(5, videoCloudCache.getDuration().longValue());
            }
            if (videoCloudCache.getHeight() == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindLong(6, videoCloudCache.getHeight().longValue());
            }
            if (videoCloudCache.getWidth() == null) {
                supportSQLiteStatement.bindNull(7);
            } else {
                supportSQLiteStatement.bindLong(7, videoCloudCache.getWidth().longValue());
            }
            if (videoCloudCache.getWatchStatus() == null) {
                supportSQLiteStatement.bindNull(8);
            } else {
                supportSQLiteStatement.bindLong(8, videoCloudCache.getWatchStatus().intValue());
            }
            if (videoCloudCache.getCreateAt() == null) {
                supportSQLiteStatement.bindNull(9);
            } else {
                supportSQLiteStatement.bindString(9, videoCloudCache.getCreateAt());
            }
            if (videoCloudCache.getSharerNickname() == null) {
                supportSQLiteStatement.bindNull(10);
            } else {
                supportSQLiteStatement.bindString(10, videoCloudCache.getSharerNickname());
            }
            if (videoCloudCache.getPlayDuration() == null) {
                supportSQLiteStatement.bindNull(11);
            } else {
                supportSQLiteStatement.bindLong(11, videoCloudCache.getPlayDuration().longValue());
            }
            if (videoCloudCache.getFileCoverPath() == null) {
                supportSQLiteStatement.bindNull(12);
            } else {
                supportSQLiteStatement.bindString(12, videoCloudCache.getFileCoverPath());
            }
            if (videoCloudCache.getPreviewUrl() == null) {
                supportSQLiteStatement.bindNull(13);
            } else {
                supportSQLiteStatement.bindString(13, videoCloudCache.getPreviewUrl());
            }
            if (videoCloudCache.getParentFileId() == null) {
                supportSQLiteStatement.bindNull(14);
            } else {
                supportSQLiteStatement.bindString(14, videoCloudCache.getParentFileId());
            }
            Integer numValueOf = videoCloudCache.getIsExitLocal() == null ? null : Integer.valueOf(videoCloudCache.getIsExitLocal().booleanValue() ? 1 : 0);
            if (numValueOf == null) {
                supportSQLiteStatement.bindNull(15);
            } else {
                supportSQLiteStatement.bindLong(15, numValueOf.intValue());
            }
            supportSQLiteStatement.bindLong(16, videoCloudCache.getCacheTime());
            Integer numValueOf2 = videoCloudCache.getIsRecentData() != null ? Integer.valueOf(videoCloudCache.getIsRecentData().booleanValue() ? 1 : 0) : null;
            if (numValueOf2 == null) {
                supportSQLiteStatement.bindNull(17);
            } else {
                supportSQLiteStatement.bindLong(17, numValueOf2.intValue());
            }
            supportSQLiteStatement.bindLong(18, videoCloudCache.getDataType());
            if (videoCloudCache.getMediaLibraryId() == null) {
                supportSQLiteStatement.bindNull(19);
            } else {
                supportSQLiteStatement.bindString(19, videoCloudCache.getMediaLibraryId());
            }
            if (videoCloudCache.getCover() == null) {
                supportSQLiteStatement.bindNull(20);
            } else {
                supportSQLiteStatement.bindString(20, videoCloudCache.getCover());
            }
        }

        @Override
        public String createQuery() {
            return "INSERT OR REPLACE INTO `video_cloud_cache` (`mId`,`file_id`,`file_name`,`size`,`duration`,`height`,`width`,`watch_status`,`create_at`,`sharer_nickname`,`play_duration`,`file_cover_path`,`preview_url`,`parent_file_id`,`is_exit_local`,`cache_time`,`is_recent_data`,`data_type`,`mediaLibrary_id`,`cover`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }
    }

    public class b extends EntityDeletionOrUpdateAdapter {
        public b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, VideoCloudCache videoCloudCache) {
            supportSQLiteStatement.bindLong(1, videoCloudCache.getId());
            if (videoCloudCache.getFileId() == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, videoCloudCache.getFileId());
            }
            if (videoCloudCache.getFileName() == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, videoCloudCache.getFileName());
            }
            if (videoCloudCache.getSize() == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindLong(4, videoCloudCache.getSize().longValue());
            }
            if (videoCloudCache.getDuration() == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindLong(5, videoCloudCache.getDuration().longValue());
            }
            if (videoCloudCache.getHeight() == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindLong(6, videoCloudCache.getHeight().longValue());
            }
            if (videoCloudCache.getWidth() == null) {
                supportSQLiteStatement.bindNull(7);
            } else {
                supportSQLiteStatement.bindLong(7, videoCloudCache.getWidth().longValue());
            }
            if (videoCloudCache.getWatchStatus() == null) {
                supportSQLiteStatement.bindNull(8);
            } else {
                supportSQLiteStatement.bindLong(8, videoCloudCache.getWatchStatus().intValue());
            }
            if (videoCloudCache.getCreateAt() == null) {
                supportSQLiteStatement.bindNull(9);
            } else {
                supportSQLiteStatement.bindString(9, videoCloudCache.getCreateAt());
            }
            if (videoCloudCache.getSharerNickname() == null) {
                supportSQLiteStatement.bindNull(10);
            } else {
                supportSQLiteStatement.bindString(10, videoCloudCache.getSharerNickname());
            }
            if (videoCloudCache.getPlayDuration() == null) {
                supportSQLiteStatement.bindNull(11);
            } else {
                supportSQLiteStatement.bindLong(11, videoCloudCache.getPlayDuration().longValue());
            }
            if (videoCloudCache.getFileCoverPath() == null) {
                supportSQLiteStatement.bindNull(12);
            } else {
                supportSQLiteStatement.bindString(12, videoCloudCache.getFileCoverPath());
            }
            if (videoCloudCache.getPreviewUrl() == null) {
                supportSQLiteStatement.bindNull(13);
            } else {
                supportSQLiteStatement.bindString(13, videoCloudCache.getPreviewUrl());
            }
            if (videoCloudCache.getParentFileId() == null) {
                supportSQLiteStatement.bindNull(14);
            } else {
                supportSQLiteStatement.bindString(14, videoCloudCache.getParentFileId());
            }
            Integer numValueOf = videoCloudCache.getIsExitLocal() == null ? null : Integer.valueOf(videoCloudCache.getIsExitLocal().booleanValue() ? 1 : 0);
            if (numValueOf == null) {
                supportSQLiteStatement.bindNull(15);
            } else {
                supportSQLiteStatement.bindLong(15, numValueOf.intValue());
            }
            supportSQLiteStatement.bindLong(16, videoCloudCache.getCacheTime());
            Integer numValueOf2 = videoCloudCache.getIsRecentData() != null ? Integer.valueOf(videoCloudCache.getIsRecentData().booleanValue() ? 1 : 0) : null;
            if (numValueOf2 == null) {
                supportSQLiteStatement.bindNull(17);
            } else {
                supportSQLiteStatement.bindLong(17, numValueOf2.intValue());
            }
            supportSQLiteStatement.bindLong(18, videoCloudCache.getDataType());
            if (videoCloudCache.getMediaLibraryId() == null) {
                supportSQLiteStatement.bindNull(19);
            } else {
                supportSQLiteStatement.bindString(19, videoCloudCache.getMediaLibraryId());
            }
            if (videoCloudCache.getCover() == null) {
                supportSQLiteStatement.bindNull(20);
            } else {
                supportSQLiteStatement.bindString(20, videoCloudCache.getCover());
            }
            if (videoCloudCache.getFileId() == null) {
                supportSQLiteStatement.bindNull(21);
            } else {
                supportSQLiteStatement.bindString(21, videoCloudCache.getFileId());
            }
        }

        @Override
        public String createQuery() {
            return "UPDATE OR ABORT `video_cloud_cache` SET `mId` = ?,`file_id` = ?,`file_name` = ?,`size` = ?,`duration` = ?,`height` = ?,`width` = ?,`watch_status` = ?,`create_at` = ?,`sharer_nickname` = ?,`play_duration` = ?,`file_cover_path` = ?,`preview_url` = ?,`parent_file_id` = ?,`is_exit_local` = ?,`cache_time` = ?,`is_recent_data` = ?,`data_type` = ?,`mediaLibrary_id` = ?,`cover` = ? WHERE `file_id` = ?";
        }
    }

    public class c extends SharedSQLiteStatement {
        public c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM video_cloud_cache";
        }
    }

    public class d extends SharedSQLiteStatement {
        public d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM video_cloud_cache WHERE is_recent_data = 1";
        }
    }

    public class e extends SharedSQLiteStatement {
        public e(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM video_cloud_cache WHERE is_recent_data = 0";
        }
    }

    public class f extends SharedSQLiteStatement {
        public f(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM video_cloud_cache WHERE file_id = ?";
        }
    }

    public class g extends SharedSQLiteStatement {
        public g(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "UPDATE video_cloud_cache SET file_name = ? WHERE file_id = ?";
        }
    }

    public class h implements Callable {
        public final RoomSQLiteQuery b;

        public h(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Boolean boolValueOf;
            Boolean boolValueOf2;
            Cursor cursorQuery = DBUtil.query(bpb.this.a, this.b, false, null);
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mId");
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, FontsContractCompat.Columns.FILE_ID);
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_name");
                int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayAudioData.TAG_SIZE);
                int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
                int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "height");
                int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "width");
                int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_status");
                int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_at");
                int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sharer_nickname");
                int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_duration");
                int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_cover_path");
                int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "preview_url");
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "parent_file_id");
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_exit_local");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cache_time");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_recent_data");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "data_type");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mediaLibrary_id");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cover");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    VideoCloudCache videoCloudCache = new VideoCloudCache();
                    int i2 = columnIndexOrThrow12;
                    int i3 = columnIndexOrThrow13;
                    videoCloudCache.setId(cursorQuery.getLong(columnIndexOrThrow));
                    videoCloudCache.setFileId(cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2));
                    videoCloudCache.setFileName(cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3));
                    videoCloudCache.setSize(cursorQuery.isNull(columnIndexOrThrow4) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow4)));
                    videoCloudCache.setDuration(cursorQuery.isNull(columnIndexOrThrow5) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow5)));
                    videoCloudCache.setHeight(cursorQuery.isNull(columnIndexOrThrow6) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow6)));
                    videoCloudCache.setWidth(cursorQuery.isNull(columnIndexOrThrow7) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow7)));
                    videoCloudCache.setWatchStatus(cursorQuery.isNull(columnIndexOrThrow8) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow8)));
                    videoCloudCache.setCreateAt(cursorQuery.isNull(columnIndexOrThrow9) ? null : cursorQuery.getString(columnIndexOrThrow9));
                    videoCloudCache.setSharerNickname(cursorQuery.isNull(columnIndexOrThrow10) ? null : cursorQuery.getString(columnIndexOrThrow10));
                    videoCloudCache.setPlayDuration(cursorQuery.isNull(columnIndexOrThrow11) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow11)));
                    columnIndexOrThrow12 = i2;
                    videoCloudCache.setFileCoverPath(cursorQuery.isNull(columnIndexOrThrow12) ? null : cursorQuery.getString(columnIndexOrThrow12));
                    columnIndexOrThrow13 = i3;
                    videoCloudCache.setPreviewUrl(cursorQuery.isNull(columnIndexOrThrow13) ? null : cursorQuery.getString(columnIndexOrThrow13));
                    int i4 = i;
                    videoCloudCache.setParentFileId(cursorQuery.isNull(i4) ? null : cursorQuery.getString(i4));
                    int i5 = columnIndexOrThrow15;
                    Integer numValueOf = cursorQuery.isNull(i5) ? null : Integer.valueOf(cursorQuery.getInt(i5));
                    boolean z = true;
                    if (numValueOf == null) {
                        boolValueOf = null;
                    } else {
                        boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                    }
                    videoCloudCache.setIsExitLocal(boolValueOf);
                    int i6 = columnIndexOrThrow2;
                    int i7 = columnIndexOrThrow16;
                    int i8 = columnIndexOrThrow3;
                    videoCloudCache.setCacheTime(cursorQuery.getLong(i7));
                    int i9 = columnIndexOrThrow17;
                    Integer numValueOf2 = cursorQuery.isNull(i9) ? null : Integer.valueOf(cursorQuery.getInt(i9));
                    if (numValueOf2 == null) {
                        boolValueOf2 = null;
                    } else {
                        if (numValueOf2.intValue() == 0) {
                            z = false;
                        }
                        boolValueOf2 = Boolean.valueOf(z);
                    }
                    videoCloudCache.setIsRecentData(boolValueOf2);
                    int i10 = columnIndexOrThrow18;
                    videoCloudCache.setDataType(cursorQuery.getInt(i10));
                    columnIndexOrThrow19 = columnIndexOrThrow19;
                    videoCloudCache.setMediaLibraryId(cursorQuery.isNull(columnIndexOrThrow19) ? null : cursorQuery.getString(columnIndexOrThrow19));
                    columnIndexOrThrow20 = columnIndexOrThrow20;
                    videoCloudCache.setCover(cursorQuery.isNull(columnIndexOrThrow20) ? null : cursorQuery.getString(columnIndexOrThrow20));
                    arrayList.add(videoCloudCache);
                    columnIndexOrThrow18 = i10;
                    columnIndexOrThrow3 = i8;
                    columnIndexOrThrow16 = i7;
                    i = i4;
                    columnIndexOrThrow = columnIndexOrThrow;
                    columnIndexOrThrow17 = i9;
                    columnIndexOrThrow2 = i6;
                    columnIndexOrThrow15 = i5;
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

    public bpb(RoomDatabase roomDatabase) {
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
    public int deleteAllCaches() {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.d.acquire();
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
    public int deleteByFileId(String str) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.g.acquire();
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
    public int deleteByFileIds(List list) {
        this.a.assertNotSuspendingTransaction();
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("DELETE FROM video_cloud_cache WHERE file_id IN (");
        int i = 1;
        StringUtil.appendPlaceholders(sbNewStringBuilder, list == null ? 1 : list.size());
        sbNewStringBuilder.append(")");
        SupportSQLiteStatement supportSQLiteStatementCompileStatement = this.a.compileStatement(sbNewStringBuilder.toString());
        if (list == null) {
            supportSQLiteStatementCompileStatement.bindNull(1);
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (str == null) {
                    supportSQLiteStatementCompileStatement.bindNull(i);
                } else {
                    supportSQLiteStatementCompileStatement.bindString(i, str);
                }
                i++;
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
    public int deleteCommonData() {
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
    public int deleteRecentData() {
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
    public List getVideoCloud() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        Boolean boolValueOf;
        Boolean boolValueOf2;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM video_cloud_cache", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, FontsContractCompat.Columns.FILE_ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayAudioData.TAG_SIZE);
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "height");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "width");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_status");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_at");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sharer_nickname");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_duration");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_cover_path");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "preview_url");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "parent_file_id");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_exit_local");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cache_time");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_recent_data");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "data_type");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mediaLibrary_id");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cover");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    VideoCloudCache videoCloudCache = new VideoCloudCache();
                    ArrayList arrayList2 = arrayList;
                    int i2 = columnIndexOrThrow13;
                    videoCloudCache.setId(cursorQuery.getLong(columnIndexOrThrow));
                    videoCloudCache.setFileId(cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2));
                    videoCloudCache.setFileName(cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3));
                    videoCloudCache.setSize(cursorQuery.isNull(columnIndexOrThrow4) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow4)));
                    videoCloudCache.setDuration(cursorQuery.isNull(columnIndexOrThrow5) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow5)));
                    videoCloudCache.setHeight(cursorQuery.isNull(columnIndexOrThrow6) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow6)));
                    videoCloudCache.setWidth(cursorQuery.isNull(columnIndexOrThrow7) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow7)));
                    videoCloudCache.setWatchStatus(cursorQuery.isNull(columnIndexOrThrow8) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow8)));
                    videoCloudCache.setCreateAt(cursorQuery.isNull(columnIndexOrThrow9) ? null : cursorQuery.getString(columnIndexOrThrow9));
                    videoCloudCache.setSharerNickname(cursorQuery.isNull(columnIndexOrThrow10) ? null : cursorQuery.getString(columnIndexOrThrow10));
                    videoCloudCache.setPlayDuration(cursorQuery.isNull(columnIndexOrThrow11) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow11)));
                    videoCloudCache.setFileCoverPath(cursorQuery.isNull(columnIndexOrThrow12) ? null : cursorQuery.getString(columnIndexOrThrow12));
                    videoCloudCache.setPreviewUrl(cursorQuery.isNull(i2) ? null : cursorQuery.getString(i2));
                    int i3 = i;
                    videoCloudCache.setParentFileId(cursorQuery.isNull(i3) ? null : cursorQuery.getString(i3));
                    int i4 = columnIndexOrThrow15;
                    Integer numValueOf = cursorQuery.isNull(i4) ? null : Integer.valueOf(cursorQuery.getInt(i4));
                    boolean z = true;
                    if (numValueOf == null) {
                        boolValueOf = null;
                    } else {
                        boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                    }
                    videoCloudCache.setIsExitLocal(boolValueOf);
                    int i5 = columnIndexOrThrow16;
                    videoCloudCache.setCacheTime(cursorQuery.getLong(i5));
                    int i6 = columnIndexOrThrow17;
                    Integer numValueOf2 = cursorQuery.isNull(i6) ? null : Integer.valueOf(cursorQuery.getInt(i6));
                    if (numValueOf2 == null) {
                        boolValueOf2 = null;
                    } else {
                        if (numValueOf2.intValue() == 0) {
                            z = false;
                        }
                        boolValueOf2 = Boolean.valueOf(z);
                    }
                    videoCloudCache.setIsRecentData(boolValueOf2);
                    int i7 = columnIndexOrThrow18;
                    videoCloudCache.setDataType(cursorQuery.getInt(i7));
                    columnIndexOrThrow19 = columnIndexOrThrow19;
                    videoCloudCache.setMediaLibraryId(cursorQuery.isNull(columnIndexOrThrow19) ? null : cursorQuery.getString(columnIndexOrThrow19));
                    columnIndexOrThrow20 = columnIndexOrThrow20;
                    videoCloudCache.setCover(cursorQuery.isNull(columnIndexOrThrow20) ? null : cursorQuery.getString(columnIndexOrThrow20));
                    arrayList2.add(videoCloudCache);
                    columnIndexOrThrow18 = i7;
                    columnIndexOrThrow13 = i2;
                    i = i3;
                    columnIndexOrThrow16 = i5;
                    columnIndexOrThrow15 = i4;
                    columnIndexOrThrow17 = i6;
                    arrayList = arrayList2;
                    columnIndexOrThrow = columnIndexOrThrow;
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
    public List getVideoCloudDataByPage(int i, int i2, String str, String str2, int i3) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        Boolean boolValueOf;
        Boolean boolValueOf2;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM video_cloud_cache WHERE (? = 0 OR (CASE ? WHEN 1 THEN is_recent_data = 1 WHEN 2 THEN is_recent_data = 0 END)) ORDER BY CASE WHEN ? = 'DESC' THEN CASE ? WHEN 'createAt' THEN create_at WHEN 'duration' THEN duration WHEN 'size' THEN size ELSE create_at END END DESC, CASE WHEN ? = 'ASC' THEN CASE ? WHEN 'createAt' THEN create_at WHEN 'duration' THEN duration WHEN 'size' THEN size ELSE create_at END END ASC LIMIT ? OFFSET (? - 1) * ?", 9);
        long j = i3;
        roomSQLiteQueryAcquire.bindLong(1, j);
        roomSQLiteQueryAcquire.bindLong(2, j);
        if (str2 == null) {
            roomSQLiteQueryAcquire.bindNull(3);
        } else {
            roomSQLiteQueryAcquire.bindString(3, str2);
        }
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(4);
        } else {
            roomSQLiteQueryAcquire.bindString(4, str);
        }
        if (str2 == null) {
            roomSQLiteQueryAcquire.bindNull(5);
        } else {
            roomSQLiteQueryAcquire.bindString(5, str2);
        }
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(6);
        } else {
            roomSQLiteQueryAcquire.bindString(6, str);
        }
        long j2 = i2;
        roomSQLiteQueryAcquire.bindLong(7, j2);
        roomSQLiteQueryAcquire.bindLong(8, i);
        roomSQLiteQueryAcquire.bindLong(9, j2);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mId");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, FontsContractCompat.Columns.FILE_ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayAudioData.TAG_SIZE);
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "height");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "width");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "watch_status");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "create_at");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sharer_nickname");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "play_duration");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "file_cover_path");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "preview_url");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "parent_file_id");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_exit_local");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cache_time");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "is_recent_data");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "data_type");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mediaLibrary_id");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cover");
                int i4 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    VideoCloudCache videoCloudCache = new VideoCloudCache();
                    int i5 = columnIndexOrThrow13;
                    ArrayList arrayList2 = arrayList;
                    videoCloudCache.setId(cursorQuery.getLong(columnIndexOrThrow));
                    videoCloudCache.setFileId(cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2));
                    videoCloudCache.setFileName(cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3));
                    videoCloudCache.setSize(cursorQuery.isNull(columnIndexOrThrow4) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow4)));
                    videoCloudCache.setDuration(cursorQuery.isNull(columnIndexOrThrow5) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow5)));
                    videoCloudCache.setHeight(cursorQuery.isNull(columnIndexOrThrow6) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow6)));
                    videoCloudCache.setWidth(cursorQuery.isNull(columnIndexOrThrow7) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow7)));
                    videoCloudCache.setWatchStatus(cursorQuery.isNull(columnIndexOrThrow8) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow8)));
                    videoCloudCache.setCreateAt(cursorQuery.isNull(columnIndexOrThrow9) ? null : cursorQuery.getString(columnIndexOrThrow9));
                    videoCloudCache.setSharerNickname(cursorQuery.isNull(columnIndexOrThrow10) ? null : cursorQuery.getString(columnIndexOrThrow10));
                    videoCloudCache.setPlayDuration(cursorQuery.isNull(columnIndexOrThrow11) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow11)));
                    videoCloudCache.setFileCoverPath(cursorQuery.isNull(columnIndexOrThrow12) ? null : cursorQuery.getString(columnIndexOrThrow12));
                    videoCloudCache.setPreviewUrl(cursorQuery.isNull(i5) ? null : cursorQuery.getString(i5));
                    int i6 = i4;
                    videoCloudCache.setParentFileId(cursorQuery.isNull(i6) ? null : cursorQuery.getString(i6));
                    columnIndexOrThrow15 = columnIndexOrThrow15;
                    Integer numValueOf = cursorQuery.isNull(columnIndexOrThrow15) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow15));
                    if (numValueOf == null) {
                        boolValueOf = null;
                    } else {
                        boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                    }
                    videoCloudCache.setIsExitLocal(boolValueOf);
                    int i7 = columnIndexOrThrow16;
                    int i8 = columnIndexOrThrow12;
                    videoCloudCache.setCacheTime(cursorQuery.getLong(i7));
                    int i9 = columnIndexOrThrow17;
                    Integer numValueOf2 = cursorQuery.isNull(i9) ? null : Integer.valueOf(cursorQuery.getInt(i9));
                    if (numValueOf2 == null) {
                        boolValueOf2 = null;
                    } else {
                        boolValueOf2 = Boolean.valueOf(numValueOf2.intValue() != 0);
                    }
                    videoCloudCache.setIsRecentData(boolValueOf2);
                    int i10 = columnIndexOrThrow18;
                    videoCloudCache.setDataType(cursorQuery.getInt(i10));
                    int i11 = columnIndexOrThrow19;
                    videoCloudCache.setMediaLibraryId(cursorQuery.isNull(i11) ? null : cursorQuery.getString(i11));
                    columnIndexOrThrow20 = columnIndexOrThrow20;
                    videoCloudCache.setCover(cursorQuery.isNull(columnIndexOrThrow20) ? null : cursorQuery.getString(columnIndexOrThrow20));
                    arrayList2.add(videoCloudCache);
                    columnIndexOrThrow19 = i11;
                    columnIndexOrThrow17 = i9;
                    columnIndexOrThrow12 = i8;
                    columnIndexOrThrow16 = i7;
                    columnIndexOrThrow18 = i10;
                    columnIndexOrThrow13 = i5;
                    i4 = i6;
                    arrayList = arrayList2;
                    columnIndexOrThrow = columnIndexOrThrow;
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
    public LiveData getVideoCloudLiveData() {
        return this.a.getInvalidationTracker().createLiveData(new String[]{"video_cloud_cache"}, false, new h(RoomSQLiteQuery.acquire("SELECT * FROM video_cloud_cache", 0)));
    }

    @Override
    public long insertCache(VideoCloudCache videoCloudCache) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            long jInsertAndReturnId = this.b.insertAndReturnId(videoCloudCache);
            this.a.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public List insertCaches(List list) {
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
    public int updateCache(VideoCloudCache videoCloudCache) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandle = this.c.handle(videoCloudCache);
            this.a.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int updateFileNameByFileId(String str, String str2) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.h.acquire();
        if (str2 == null) {
            supportSQLiteStatementAcquire.bindNull(1);
        } else {
            supportSQLiteStatementAcquire.bindString(1, str2);
        }
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
}
