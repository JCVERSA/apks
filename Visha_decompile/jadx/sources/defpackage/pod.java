package defpackage;

import android.database.Cursor;
import android.util.Log;
import androidx.room.Query;
import androidx.room.RoomSQLiteQuery;
import androidx.room.Transaction;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.hisavana.common.tracking.TrackingKey;

public interface pod {

    public static final class a {
        /* JADX WARN: Multi-variable type inference failed */
        @Transaction
        public static void a(xud xudVar, nvd nvdVar) {
            y45.j(nvdVar, "entity");
            long layerId = nvdVar.getLayerId();
            RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM hisavana_ab_room WHERE layer_id = ?", 1);
            roomSQLiteQueryAcquire.bindLong(1, layerId);
            xudVar.a.assertNotSuspendingTransaction();
            Object nvdVar2 = null;
            Cursor cursorQuery = DBUtil.query(xudVar.a, roomSQLiteQueryAcquire, false, null);
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, ClientABTestDTOKt.LAYER_ID);
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TrackingKey.REQUEST_TIME);
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "ab_info");
                if (cursorQuery.moveToFirst()) {
                    nvdVar2 = new nvd(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3));
                }
                cursorQuery.close();
                roomSQLiteQueryAcquire.release();
                if (Log.isLoggable("ADSDK", 3)) {
                    ja1.Log().i("ABTEST", "OnlineABDao Query whether the " + nvdVar.getLayerId() + " exists in the database = " + nvdVar2);
                }
                if (nvdVar2 == null) {
                    xudVar.a(nvdVar);
                    return;
                }
                long layerId2 = nvdVar.getLayerId();
                long requestTime = nvdVar.getRequestTime();
                xudVar.a.assertNotSuspendingTransaction();
                SupportSQLiteStatement supportSQLiteStatementAcquire = xudVar.e.acquire();
                supportSQLiteStatementAcquire.bindLong(1, requestTime);
                supportSQLiteStatementAcquire.bindLong(2, layerId2);
                try {
                    xudVar.a.beginTransaction();
                    try {
                        supportSQLiteStatementAcquire.executeUpdateDelete();
                        xudVar.a.setTransactionSuccessful();
                        xudVar.a.endTransaction();
                        xudVar.e.release(supportSQLiteStatementAcquire);
                    } catch (Throwable th) {
                        xudVar.a.endTransaction();
                        throw th;
                    }
                } catch (Throwable th2) {
                    xudVar.e.release(supportSQLiteStatementAcquire);
                    throw th2;
                }
            } catch (Throwable th3) {
                cursorQuery.close();
                roomSQLiteQueryAcquire.release();
                throw th3;
            }
        }

        @Transaction
        public static long b(xud xudVar, nvd nvdVar) {
            y45.j(nvdVar, "entity");
            xudVar.a.assertNotSuspendingTransaction();
            xudVar.a.beginTransaction();
            try {
                long jInsertAndReturnId = xudVar.b.insertAndReturnId(nvdVar);
                xudVar.a.setTransactionSuccessful();
                xudVar.a.endTransaction();
                int iExecuteUpdateDelete = 0;
                RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT COUNT(*) FROM hisavana_ab_room", 0);
                xudVar.a.assertNotSuspendingTransaction();
                Cursor cursorQuery = DBUtil.query(xudVar.a, roomSQLiteQueryAcquire, false, null);
                try {
                    int i = cursorQuery.moveToFirst() ? cursorQuery.getInt(0) : 0;
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                    if (i >= 20) {
                        xudVar.a.assertNotSuspendingTransaction();
                        SupportSQLiteStatement supportSQLiteStatementAcquire = xudVar.c.acquire();
                        supportSQLiteStatementAcquire.bindLong(1, i - 10);
                        try {
                            xudVar.a.beginTransaction();
                            try {
                                iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
                                xudVar.a.setTransactionSuccessful();
                                xudVar.a.endTransaction();
                                xudVar.c.release(supportSQLiteStatementAcquire);
                            } catch (Throwable th) {
                                xudVar.a.endTransaction();
                                throw th;
                            }
                        } catch (Throwable th2) {
                            xudVar.c.release(supportSQLiteStatementAcquire);
                            throw th2;
                        }
                    }
                    if (Log.isLoggable("ADSDK", 3)) {
                        ja1.Log().i("ABTEST", "OnlineABDao delCount = " + iExecuteUpdateDelete + " and upsertId = " + jInsertAndReturnId);
                    }
                    return jInsertAndReturnId;
                } catch (Throwable th3) {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                    throw th3;
                }
            } catch (Throwable th4) {
                xudVar.a.endTransaction();
                throw th4;
            }
        }
    }

    @Query("DELETE FROM hisavana_ab_room")
    int a();

    @Transaction
    long a(nvd nvdVar);

    @Query("SELECT * FROM hisavana_ab_room")
    Cursor b();

    @Transaction
    void b(nvd nvdVar);
}
