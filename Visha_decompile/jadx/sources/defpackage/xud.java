package defpackage;

import android.database.Cursor;
import androidx.room.RoomSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.cloud.hisavana.abtestkit.C0519r;
import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;
import com.cloud.hisavana.abtestkit.p;
import com.cloud.hisavana.abtestkit.q;
import com.cloud.hisavana.abtestkit.s;
import com.cloud.hisavana.abtestkit.t;

public final class xud implements pod {
    public final ABRoomDatabase_Impl a;
    public final p b;
    public final C0519r c;
    public final s d;
    public final t e;

    public xud(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        this.a = aBRoomDatabase_Impl;
        this.b = new p(aBRoomDatabase_Impl);
        new q(aBRoomDatabase_Impl);
        this.c = new C0519r(aBRoomDatabase_Impl);
        this.d = new s(aBRoomDatabase_Impl);
        this.e = new t(aBRoomDatabase_Impl);
    }

    @Override
    public final long a(nvd nvdVar) {
        this.a.beginTransaction();
        try {
            long jB = pod.a.b(this, nvdVar);
            this.a.setTransactionSuccessful();
            return jB;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public final void b(nvd nvdVar) {
        this.a.beginTransaction();
        try {
            pod.a.a(this, nvdVar);
            this.a.setTransactionSuccessful();
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
    public final Cursor b() {
        return this.a.query(RoomSQLiteQuery.acquire("SELECT * FROM hisavana_ab_room", 0));
    }
}
