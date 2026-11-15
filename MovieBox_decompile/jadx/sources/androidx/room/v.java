package androidx.room;

import androidx.room.coroutines.ConnectionPool;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public final class v extends androidx.room.a {

    private final androidx.room.c f14483d;

    private final f0 f14484e;

    private final List f14485f;

    private final ConnectionPool f14486g;

    private z3.d f14487h;

    private static final class a extends f0 {
        public a() {
            super(-1, "", "");
        }

        @Override
        public void a(y3.b connection) {
            Intrinsics.h(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override
        public void b(y3.b connection) {
            Intrinsics.h(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override
        public void f(y3.b connection) {
            Intrinsics.h(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override
        public void g(y3.b connection) {
            Intrinsics.h(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override
        public void h(y3.b connection) {
            Intrinsics.h(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override
        public void i(y3.b connection) {
            Intrinsics.h(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override
        public f0.a j(y3.b connection) {
            Intrinsics.h(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }
    }

    public final class b extends z3.e.a {
        public b(int i10) {
            super(i10);
        }

        @Override
        public void d(z3.d db2) {
            Intrinsics.h(db2, "db");
            v.this.x(new androidx.room.driver.a(db2));
        }

        @Override
        public void e(z3.d db2, int i10, int i11) {
            Intrinsics.h(db2, "db");
            g(db2, i10, i11);
        }

        @Override
        public void f(z3.d db2) {
            Intrinsics.h(db2, "db");
            v.this.z(new androidx.room.driver.a(db2));
            v.this.f14487h = db2;
        }

        @Override
        public void g(z3.d db2, int i10, int i11) {
            Intrinsics.h(db2, "db");
            v.this.y(new androidx.room.driver.a(db2), i10, i11);
        }
    }

    public static final class c extends RoomDatabase.b {

        final Function1 f14489a;

        c(Function1 function1) {
            this.f14489a = function1;
        }

        @Override
        public void f(z3.d db2) {
            Intrinsics.h(db2, "db");
            this.f14489a.invoke(db2);
        }
    }

    public v(androidx.room.c config, f0 openDelegate) {
        ConnectionPool connectionPoolB;
        Intrinsics.h(config, "config");
        Intrinsics.h(openDelegate, "openDelegate");
        this.f14483d = config;
        this.f14484e = openDelegate;
        List list = config.f14253e;
        this.f14485f = list == null ? CollectionsKt.l() : list;
        y3.c cVar = config.f14269u;
        if (cVar != null) {
            if (cVar instanceof b4.b) {
                androidx.room.a.b bVar = new androidx.room.a.b(this, cVar);
                String str = config.f14250b;
                connectionPoolB = new androidx.room.coroutines.b(bVar, str != null ? str : ":memory:");
            } else {
                connectionPoolB = config.f14250b == null ? androidx.room.coroutines.h.b(new androidx.room.a.b(this, cVar), ":memory:") : androidx.room.coroutines.h.a(new androidx.room.a.b(this, cVar), config.f14250b, p(config.f14255g), q(config.f14255g));
            }
            this.f14486g = connectionPoolB;
        } else {
            if (config.f14251c == null) {
                throw new IllegalArgumentException("SQLiteManager was constructed with both null driver and open helper factory!");
            }
            this.f14486g = new androidx.room.driver.b(new androidx.room.driver.c(config.f14251c.a(z3.e.b.f76615f.a(config.f14249a).d(config.f14250b).c(new b(openDelegate.e())).b())));
        }
        H();
    }

    public static final Unit D(v vVar, z3.d db2) {
        Intrinsics.h(db2, "db");
        vVar.f14487h = db2;
        return Unit.f64096a;
    }

    private final void H() {
        boolean z10 = o().f14255g == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING;
        z3.e eVarG = G();
        if (eVarG != null) {
            eVarG.setWriteAheadLoggingEnabled(z10);
        }
    }

    private final androidx.room.c I(androidx.room.c cVar, Function1 function1) {
        List listL = cVar.f14253e;
        if (listL == null) {
            listL = CollectionsKt.l();
        }
        return androidx.room.c.b(cVar, null, null, null, null, CollectionsKt.C0(listL, new c(function1)), false, null, null, null, null, false, false, null, null, null, null, null, null, null, false, null, null, 4194287, null);
    }

    @Override
    public String A(String fileName) {
        Intrinsics.h(fileName, "fileName");
        if (Intrinsics.c(fileName, ":memory:")) {
            return fileName;
        }
        String absolutePath = o().f14249a.getDatabasePath(fileName).getAbsolutePath();
        Intrinsics.e(absolutePath);
        return absolutePath;
    }

    public final void F() {
        this.f14486g.close();
    }

    public final z3.e G() {
        androidx.room.driver.c cVarH;
        ConnectionPool connectionPool = this.f14486g;
        androidx.room.driver.b bVar = connectionPool instanceof androidx.room.driver.b ? (androidx.room.driver.b) connectionPool : null;
        if (bVar == null || (cVarH = bVar.h()) == null) {
            return null;
        }
        return cVarH.a();
    }

    public final boolean J() {
        z3.d dVar = this.f14487h;
        if (dVar != null) {
            return dVar.isOpen();
        }
        return false;
    }

    public Object K(boolean z10, Function2 function2, Continuation continuation) {
        return this.f14486g.e(z10, function2, continuation);
    }

    @Override
    protected List n() {
        return this.f14485f;
    }

    @Override
    protected androidx.room.c o() {
        return this.f14483d;
    }

    @Override
    protected f0 r() {
        return this.f14484e;
    }

    public v(androidx.room.c config, Function1 supportOpenHelperFactory) {
        Intrinsics.h(config, "config");
        Intrinsics.h(supportOpenHelperFactory, "supportOpenHelperFactory");
        this.f14483d = config;
        this.f14484e = new a();
        List list = config.f14253e;
        this.f14485f = list == null ? CollectionsKt.l() : list;
        this.f14486g = new androidx.room.driver.b(new androidx.room.driver.c((z3.e) supportOpenHelperFactory.invoke(I(config, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return v.D(this.f14451a, (z3.d) obj);
            }
        }))));
        H();
    }
}
