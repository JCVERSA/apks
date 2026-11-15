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
import androidx.sqlite.db.SupportSQLiteStatement;
import com.transsion.sniffer_load.data.WebPreviewRecord;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;

public final class kic implements jic {
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
        public void bind(SupportSQLiteStatement supportSQLiteStatement, WebPreviewRecord webPreviewRecord) {
            supportSQLiteStatement.bindLong(1, webPreviewRecord.id);
            String str = webPreviewRecord.title;
            if (str == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str);
            }
            byte[] bArr = webPreviewRecord.icon;
            if (bArr == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindBlob(3, bArr);
            }
            byte[] bArr2 = webPreviewRecord.previewBitmap;
            if (bArr2 == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindBlob(4, bArr2);
            }
            String str2 = webPreviewRecord.webUrl;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, str2);
            }
        }

        @Override
        public String createQuery() {
            return "INSERT OR ABORT INTO `WebPreviewRecord` (`id`,`title`,`icon`,`previewBitmap`,`webUrl`) VALUES (nullif(?, 0),?,?,?,?)";
        }
    }

    public class b extends EntityDeletionOrUpdateAdapter {
        public b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, WebPreviewRecord webPreviewRecord) {
            supportSQLiteStatement.bindLong(1, webPreviewRecord.id);
            String str = webPreviewRecord.title;
            if (str == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str);
            }
            byte[] bArr = webPreviewRecord.icon;
            if (bArr == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindBlob(3, bArr);
            }
            byte[] bArr2 = webPreviewRecord.previewBitmap;
            if (bArr2 == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindBlob(4, bArr2);
            }
            String str2 = webPreviewRecord.webUrl;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, str2);
            }
            supportSQLiteStatement.bindLong(6, webPreviewRecord.id);
        }

        @Override
        public String createQuery() {
            return "UPDATE OR ABORT `WebPreviewRecord` SET `id` = ?,`title` = ?,`icon` = ?,`previewBitmap` = ?,`webUrl` = ? WHERE `id` = ?";
        }
    }

    public class c extends SharedSQLiteStatement {
        public c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM WebPreviewRecord WHERE id =?";
        }
    }

    public class d extends SharedSQLiteStatement {
        public d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM WebPreviewRecord";
        }
    }

    public class e implements Callable {
        public final RoomSQLiteQuery b;

        public e(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Cursor cursorQuery = DBUtil.query(kic.this.a, this.b, false, null);
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "title");
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "icon");
                int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "previewBitmap");
                int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "webUrl");
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    WebPreviewRecord webPreviewRecord = new WebPreviewRecord();
                    webPreviewRecord.id = cursorQuery.getLong(columnIndexOrThrow);
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        webPreviewRecord.title = null;
                    } else {
                        webPreviewRecord.title = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        webPreviewRecord.icon = null;
                    } else {
                        webPreviewRecord.icon = cursorQuery.getBlob(columnIndexOrThrow3);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow4)) {
                        webPreviewRecord.previewBitmap = null;
                    } else {
                        webPreviewRecord.previewBitmap = cursorQuery.getBlob(columnIndexOrThrow4);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow5)) {
                        webPreviewRecord.webUrl = null;
                    } else {
                        webPreviewRecord.webUrl = cursorQuery.getString(columnIndexOrThrow5);
                    }
                    arrayList.add(webPreviewRecord);
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

    public kic(RoomDatabase roomDatabase) {
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
    public long addWebPreviewRecord(WebPreviewRecord webPreviewRecord) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            long jInsertAndReturnId = this.b.insertAndReturnId(webPreviewRecord);
            this.a.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void deleteAll() {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.e.acquire();
        try {
            this.a.beginTransaction();
            try {
                supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.e.release(supportSQLiteStatementAcquire);
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
    public void deleteItem(long j) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.d.acquire();
        supportSQLiteStatementAcquire.bindLong(1, j);
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
    public List getAllByAsc() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("select * FROM WebPreviewRecord ORDER BY id ASC", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "title");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "icon");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "previewBitmap");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "webUrl");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                WebPreviewRecord webPreviewRecord = new WebPreviewRecord();
                webPreviewRecord.id = cursorQuery.getLong(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    webPreviewRecord.title = null;
                } else {
                    webPreviewRecord.title = cursorQuery.getString(columnIndexOrThrow2);
                }
                if (cursorQuery.isNull(columnIndexOrThrow3)) {
                    webPreviewRecord.icon = null;
                } else {
                    webPreviewRecord.icon = cursorQuery.getBlob(columnIndexOrThrow3);
                }
                if (cursorQuery.isNull(columnIndexOrThrow4)) {
                    webPreviewRecord.previewBitmap = null;
                } else {
                    webPreviewRecord.previewBitmap = cursorQuery.getBlob(columnIndexOrThrow4);
                }
                if (cursorQuery.isNull(columnIndexOrThrow5)) {
                    webPreviewRecord.webUrl = null;
                } else {
                    webPreviewRecord.webUrl = cursorQuery.getString(columnIndexOrThrow5);
                }
                arrayList.add(webPreviewRecord);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getAllByDESC() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("select * FROM WebPreviewRecord ORDER BY id DESC", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "title");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "icon");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "previewBitmap");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "webUrl");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                WebPreviewRecord webPreviewRecord = new WebPreviewRecord();
                webPreviewRecord.id = cursorQuery.getLong(columnIndexOrThrow);
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    webPreviewRecord.title = null;
                } else {
                    webPreviewRecord.title = cursorQuery.getString(columnIndexOrThrow2);
                }
                if (cursorQuery.isNull(columnIndexOrThrow3)) {
                    webPreviewRecord.icon = null;
                } else {
                    webPreviewRecord.icon = cursorQuery.getBlob(columnIndexOrThrow3);
                }
                if (cursorQuery.isNull(columnIndexOrThrow4)) {
                    webPreviewRecord.previewBitmap = null;
                } else {
                    webPreviewRecord.previewBitmap = cursorQuery.getBlob(columnIndexOrThrow4);
                }
                if (cursorQuery.isNull(columnIndexOrThrow5)) {
                    webPreviewRecord.webUrl = null;
                } else {
                    webPreviewRecord.webUrl = cursorQuery.getString(columnIndexOrThrow5);
                }
                arrayList.add(webPreviewRecord);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public LiveData getAllWebPreviewRecordDESC() {
        return this.a.getInvalidationTracker().createLiveData(new String[]{"WebPreviewRecord"}, false, new e(RoomSQLiteQuery.acquire("SELECT * FROM WebPreviewRecord  ORDER BY id DESC", 0)));
    }

    @Override
    public void update(WebPreviewRecord webPreviewRecord) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.c.handle(webPreviewRecord);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void update(List list) {
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
