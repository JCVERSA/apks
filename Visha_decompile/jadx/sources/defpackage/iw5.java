package defpackage;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.transsion.dbdata.beans.MIMediaLibraryCache;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class iw5 implements hw5 {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;
    public final SharedSQLiteStatement c;

    public class a extends EntityInsertionAdapter {
        public a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, MIMediaLibraryCache mIMediaLibraryCache) {
            if (mIMediaLibraryCache.getMediaLibraryId() == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, mIMediaLibraryCache.getMediaLibraryId());
            }
            if (mIMediaLibraryCache.getMediaLibraryName() == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, mIMediaLibraryCache.getMediaLibraryName());
            }
            Integer numValueOf = mIMediaLibraryCache.getMediaLibraryCollectFlag() == null ? null : Integer.valueOf(mIMediaLibraryCache.getMediaLibraryCollectFlag().booleanValue() ? 1 : 0);
            if (numValueOf == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindLong(3, numValueOf.intValue());
            }
            if (mIMediaLibraryCache.getVirtualPersonName() == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, mIMediaLibraryCache.getVirtualPersonName());
            }
            if (mIMediaLibraryCache.getVirtualPersonPhoto() == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, mIMediaLibraryCache.getVirtualPersonPhoto());
            }
            if (mIMediaLibraryCache.getMediaLibraryStatus() == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindLong(6, mIMediaLibraryCache.getMediaLibraryStatus().intValue());
            }
            if (mIMediaLibraryCache.getVideoListJson() == null) {
                supportSQLiteStatement.bindNull(7);
            } else {
                supportSQLiteStatement.bindString(7, mIMediaLibraryCache.getVideoListJson());
            }
            supportSQLiteStatement.bindLong(8, mIMediaLibraryCache.getCacheTime());
        }

        @Override
        public String createQuery() {
            return "INSERT OR REPLACE INTO `mi_media_library_cache` (`media_library_id`,`media_library_name`,`media_library_collect_flag`,`virtual_person_name`,`virtual_person_photo`,`media_library_status`,`video_list_json`,`cache_time`) VALUES (?,?,?,?,?,?,?,?)";
        }
    }

    public class b extends SharedSQLiteStatement {
        public b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM mi_media_library_cache";
        }
    }

    public iw5(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new a(roomDatabase);
        this.c = new b(roomDatabase);
    }

    public static List a() {
        return Collections.emptyList();
    }

    @Override
    public int deleteAllCaches() {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.c.acquire();
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
    public List getAllCaches() {
        Boolean boolValueOf;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM mi_media_library_cache", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_library_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_library_name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_library_collect_flag");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "virtual_person_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "virtual_person_photo");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_library_status");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_list_json");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cache_time");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                MIMediaLibraryCache mIMediaLibraryCache = new MIMediaLibraryCache();
                mIMediaLibraryCache.setMediaLibraryId(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow));
                mIMediaLibraryCache.setMediaLibraryName(cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2));
                Integer numValueOf = cursorQuery.isNull(columnIndexOrThrow3) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow3));
                if (numValueOf == null) {
                    boolValueOf = null;
                } else {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                mIMediaLibraryCache.setMediaLibraryCollectFlag(boolValueOf);
                mIMediaLibraryCache.setVirtualPersonName(cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4));
                mIMediaLibraryCache.setVirtualPersonPhoto(cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5));
                mIMediaLibraryCache.setMediaLibraryStatus(cursorQuery.isNull(columnIndexOrThrow6) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow6)));
                mIMediaLibraryCache.setVideoListJson(cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7));
                mIMediaLibraryCache.setCacheTime(cursorQuery.getLong(columnIndexOrThrow8));
                arrayList.add(mIMediaLibraryCache);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public MIMediaLibraryCache getCacheByMediaLibraryId(String str) {
        Boolean boolValueOf;
        boolean z = true;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM mi_media_library_cache WHERE media_library_id = ?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.a.assertNotSuspendingTransaction();
        MIMediaLibraryCache mIMediaLibraryCache = null;
        String string = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_library_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_library_name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_library_collect_flag");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "virtual_person_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "virtual_person_photo");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "media_library_status");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_list_json");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "cache_time");
            if (cursorQuery.moveToFirst()) {
                MIMediaLibraryCache mIMediaLibraryCache2 = new MIMediaLibraryCache();
                mIMediaLibraryCache2.setMediaLibraryId(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow));
                mIMediaLibraryCache2.setMediaLibraryName(cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2));
                Integer numValueOf = cursorQuery.isNull(columnIndexOrThrow3) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow3));
                if (numValueOf == null) {
                    boolValueOf = null;
                } else {
                    if (numValueOf.intValue() == 0) {
                        z = false;
                    }
                    boolValueOf = Boolean.valueOf(z);
                }
                mIMediaLibraryCache2.setMediaLibraryCollectFlag(boolValueOf);
                mIMediaLibraryCache2.setVirtualPersonName(cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4));
                mIMediaLibraryCache2.setVirtualPersonPhoto(cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5));
                mIMediaLibraryCache2.setMediaLibraryStatus(cursorQuery.isNull(columnIndexOrThrow6) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow6)));
                if (!cursorQuery.isNull(columnIndexOrThrow7)) {
                    string = cursorQuery.getString(columnIndexOrThrow7);
                }
                mIMediaLibraryCache2.setVideoListJson(string);
                mIMediaLibraryCache2.setCacheTime(cursorQuery.getLong(columnIndexOrThrow8));
                mIMediaLibraryCache = mIMediaLibraryCache2;
            }
            return mIMediaLibraryCache;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
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
}
