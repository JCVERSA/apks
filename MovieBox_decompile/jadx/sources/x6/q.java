package x6;

import android.database.Cursor;
import androidx.room.i0;
import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;

public final class q implements m {

    public final ABRoomDatabase_Impl f75119a;

    public final n f75120b;

    public final o f75121c;

    public final p f75122d;

    public q(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        this.f75119a = aBRoomDatabase_Impl;
        this.f75120b = new n(aBRoomDatabase_Impl);
        this.f75121c = new o(aBRoomDatabase_Impl);
        this.f75122d = new p(aBRoomDatabase_Impl);
    }

    @Override
    public final long a(r rVar) {
        this.f75119a.j();
        this.f75119a.k();
        try {
            long jM = this.f75120b.m(rVar);
            this.f75119a.e0();
            return jM;
        } finally {
            this.f75119a.t();
        }
    }

    @Override
    public final int b(r rVar) {
        this.f75119a.j();
        this.f75119a.k();
        try {
            int iK = this.f75121c.k(rVar);
            this.f75119a.e0();
            return iK;
        } finally {
            this.f75119a.t();
        }
    }

    @Override
    public final int a() {
        this.f75119a.j();
        z3.h hVarB = this.f75122d.b();
        try {
            this.f75119a.k();
            try {
                int iF = hVarB.F();
                this.f75119a.e0();
                this.f75119a.t();
                this.f75122d.h(hVarB);
                return iF;
            } catch (Throwable th2) {
                this.f75119a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f75122d.h(hVarB);
            throw th3;
        }
    }

    @Override
    public final Cursor a(long j10) {
        i0 i0VarF = i0.f("SELECT * FROM hisavana_local_ab_room WHERE LOCAL_AB_VERSION_CODE = ?", 1);
        i0VarF.c(1, j10);
        return this.f75119a.V(i0VarF);
    }
}
