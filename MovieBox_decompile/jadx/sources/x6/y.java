package x6;

import android.database.Cursor;
import androidx.room.i0;
import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;

public final class y implements s {

    public final ABRoomDatabase_Impl f75125a;

    public final t f75126b;

    public final v f75127c;

    public final w f75128d;

    public final x f75129e;

    public y(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        this.f75125a = aBRoomDatabase_Impl;
        this.f75126b = new t(aBRoomDatabase_Impl);
        new u(aBRoomDatabase_Impl);
        this.f75127c = new v(aBRoomDatabase_Impl);
        this.f75128d = new w(aBRoomDatabase_Impl);
        this.f75129e = new x(aBRoomDatabase_Impl);
    }

    @Override
    public final void a(z zVar) {
        this.f75125a.k();
        try {
            s.a.a(this, zVar);
            this.f75125a.e0();
        } finally {
            this.f75125a.t();
        }
    }

    @Override
    public final long b(z zVar) {
        this.f75125a.k();
        try {
            long jB = s.a.b(this, zVar);
            this.f75125a.e0();
            return jB;
        } finally {
            this.f75125a.t();
        }
    }

    @Override
    public final int a() {
        this.f75125a.j();
        z3.h hVarB = this.f75128d.b();
        try {
            this.f75125a.k();
            try {
                int iF = hVarB.F();
                this.f75125a.e0();
                this.f75125a.t();
                this.f75128d.h(hVarB);
                return iF;
            } catch (Throwable th2) {
                this.f75125a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f75128d.h(hVarB);
            throw th3;
        }
    }

    @Override
    public final Cursor b() {
        return this.f75125a.V(i0.f("SELECT * FROM hisavana_ab_room", 0));
    }
}
