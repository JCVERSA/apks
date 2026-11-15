package defpackage;

import android.database.Cursor;
import androidx.room.RoomSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;
import com.cloud.hisavana.abtestkit.j;
import com.cloud.hisavana.abtestkit.k;
import com.cloud.hisavana.abtestkit.l;

public final class nnd implements jjd {
    public final ABRoomDatabase_Impl a;
    public final j b;
    public final k c;
    public final l d;

    public nnd(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        this.a = aBRoomDatabase_Impl;
        this.b = new j(aBRoomDatabase_Impl);
        this.c = new k(aBRoomDatabase_Impl);
        this.d = new l(aBRoomDatabase_Impl);
    }

    @Override
    public final int a(nod nodVar) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandle = this.c.handle(nodVar);
            this.a.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public final long b(nod nodVar) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            long jInsertAndReturnId = this.b.insertAndReturnId(nodVar);
            this.a.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public final int a() {
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
    public final Cursor a(long j) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM hisavana_local_ab_room WHERE LOCAL_AB_VERSION_CODE = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, j);
        return this.a.query(roomSQLiteQueryAcquire);
    }
}
