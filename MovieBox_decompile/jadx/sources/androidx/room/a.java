package androidx.room;

import com.mbridge.msdk.MBridgeConstans;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public abstract class a {

    public static final C0108a f14237c = new C0108a(null);

    private boolean f14238a;

    private boolean f14239b;

    public static final class C0108a {
        public C0108a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0108a() {
        }
    }

    protected final class b implements y3.c {

        private final y3.c f14240a;

        final a f14241b;

        static final class C0109a implements Function1 {

            final String f14242a;

            C0109a(String str) {
                this.f14242a = str;
            }

            @Override
            public final Void invoke(Throwable error) {
                Intrinsics.h(error, "error");
                throw new IllegalStateException("Unable to open database '" + this.f14242a + "'. Was a proper path / name used in Room's database builder?", error);
            }
        }

        public b(a aVar, y3.c actual) {
            Intrinsics.h(actual, "actual");
            this.f14241b = aVar;
            this.f14240a = actual;
        }

        private final y3.b b(final String str) {
            w3.b bVar = new w3.b(str, (this.f14241b.f14238a || this.f14241b.f14239b || Intrinsics.c(str, ":memory:")) ? false : true);
            final a aVar = this.f14241b;
            return (y3.b) bVar.b(new Function0() {
                @Override
                public final Object invoke() {
                    return a.b.c(aVar, this, str);
                }
            }, new C0109a(str));
        }

        public static final y3.b c(a aVar, b bVar, String str) throws Exception {
            if (aVar.f14239b) {
                throw new IllegalStateException("Recursive database initialization detected. Did you try to use the database instance during initialization? Maybe in one of the callbacks?");
            }
            y3.b bVarOpen = bVar.f14240a.open(str);
            if (aVar.f14238a) {
                aVar.g(bVarOpen);
            } else {
                try {
                    aVar.f14239b = true;
                    aVar.i(bVarOpen);
                } finally {
                    aVar.f14239b = false;
                }
            }
            return bVarOpen;
        }

        @Override
        public y3.b open(String fileName) {
            Intrinsics.h(fileName, "fileName");
            return b(this.f14241b.A(fileName));
        }
    }

    public class c {

        public static final int[] f14243a;

        static {
            int[] iArr = new int[RoomDatabase.JournalMode.values().length];
            try {
                iArr[RoomDatabase.JournalMode.TRUNCATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f14243a = iArr;
        }
    }

    private final void B(y3.b bVar) throws Exception {
        l(bVar);
        y3.a.a(bVar, e0.a(r().c()));
    }

    private final void f(y3.b bVar) throws Exception {
        Object objM453constructorimpl;
        if (t(bVar)) {
            y3.e eVarF0 = bVar.F0("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1");
            try {
                String strQ0 = eVarF0.C0() ? eVarF0.q0(0) : null;
                AutoCloseableKt.a(eVarF0, null);
                if (Intrinsics.c(r().c(), strQ0) || Intrinsics.c(r().d(), strQ0)) {
                    return;
                }
                throw new IllegalStateException(("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: " + r().c() + ", found: " + strQ0).toString());
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    AutoCloseableKt.a(eVarF0, th2);
                    throw th3;
                }
            }
        }
        y3.a.a(bVar, "BEGIN EXCLUSIVE TRANSACTION");
        try {
            Result.Companion companion = Result.INSTANCE;
            f0.a aVarJ = r().j(bVar);
            if (!aVarJ.f14345a) {
                throw new IllegalStateException(("Pre-packaged database has an invalid schema: " + aVarJ.f14346b).toString());
            }
            r().h(bVar);
            B(bVar);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            if (Result.m460isSuccessimpl(objM453constructorimpl)) {
                y3.a.a(bVar, "END TRANSACTION");
            }
            Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
            if (thM456exceptionOrNullimpl == null) {
                Result.m452boximpl(objM453constructorimpl);
            } else {
                y3.a.a(bVar, "ROLLBACK TRANSACTION");
                throw thM456exceptionOrNullimpl;
            }
        } catch (Throwable th4) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th4));
        }
    }

    public final void g(y3.b bVar) throws Exception {
        k(bVar);
        h(bVar);
        r().g(bVar);
    }

    private final void h(y3.b bVar) throws Exception {
        y3.e eVarF0 = bVar.F0("PRAGMA busy_timeout");
        try {
            eVarF0.C0();
            long j10 = eVarF0.getLong(0);
            AutoCloseableKt.a(eVarF0, null);
            if (j10 < 3000) {
                y3.a.a(bVar, "PRAGMA busy_timeout = 3000");
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarF0, th2);
                throw th3;
            }
        }
    }

    public final void i(y3.b bVar) throws Exception {
        Object objM453constructorimpl;
        j(bVar);
        k(bVar);
        h(bVar);
        y3.e eVarF0 = bVar.F0("PRAGMA user_version");
        try {
            eVarF0.C0();
            int i10 = (int) eVarF0.getLong(0);
            AutoCloseableKt.a(eVarF0, null);
            if (i10 != r().e()) {
                y3.a.a(bVar, "BEGIN EXCLUSIVE TRANSACTION");
                try {
                    Result.Companion companion = Result.INSTANCE;
                    if (i10 == 0) {
                        x(bVar);
                    } else {
                        y(bVar, i10, r().e());
                    }
                    y3.a.a(bVar, "PRAGMA user_version = " + r().e());
                    objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
                }
                if (Result.m460isSuccessimpl(objM453constructorimpl)) {
                    y3.a.a(bVar, "END TRANSACTION");
                }
                Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                if (thM456exceptionOrNullimpl != null) {
                    y3.a.a(bVar, "ROLLBACK TRANSACTION");
                    throw thM456exceptionOrNullimpl;
                }
            }
            z(bVar);
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                AutoCloseableKt.a(eVarF0, th3);
                throw th4;
            }
        }
    }

    private final void j(y3.b bVar) throws Exception {
        if (o().f14255g == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING) {
            y3.a.a(bVar, "PRAGMA journal_mode = WAL");
        } else {
            y3.a.a(bVar, "PRAGMA journal_mode = TRUNCATE");
        }
    }

    private final void k(y3.b bVar) throws Exception {
        if (o().f14255g == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING) {
            y3.a.a(bVar, "PRAGMA synchronous = NORMAL");
        } else {
            y3.a.a(bVar, "PRAGMA synchronous = FULL");
        }
    }

    private final void l(y3.b bVar) throws Exception {
        y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    private final void m(y3.b bVar) throws Exception {
        if (!o().f14268t) {
            r().b(bVar);
            return;
        }
        y3.e eVarF0 = bVar.F0("SELECT name, type FROM sqlite_master WHERE type = 'table' OR type = 'view'");
        try {
            List listC = CollectionsKt.c();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.q0(0);
                if (!StringsKt.W(strQ0, "sqlite_", false, 2, null) && !Intrinsics.c(strQ0, "android_metadata")) {
                    listC.add(TuplesKt.a(strQ0, Boolean.valueOf(Intrinsics.c(eVarF0.q0(1), MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW))));
                }
            }
            List<Pair> listA = CollectionsKt.a(listC);
            AutoCloseableKt.a(eVarF0, null);
            for (Pair pair : listA) {
                String str = (String) pair.component1();
                if (((Boolean) pair.component2()).booleanValue()) {
                    y3.a.a(bVar, "DROP VIEW IF EXISTS " + str);
                } else {
                    y3.a.a(bVar, "DROP TABLE IF EXISTS " + str);
                }
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarF0, th2);
                throw th3;
            }
        }
    }

    private final boolean s(y3.b bVar) throws Exception {
        y3.e eVarF0 = bVar.F0("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z10 = false;
            if (eVarF0.C0() && eVarF0.getLong(0) == 0) {
                z10 = true;
            }
            AutoCloseableKt.a(eVarF0, null);
            return z10;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarF0, th2);
                throw th3;
            }
        }
    }

    private final boolean t(y3.b bVar) throws Exception {
        y3.e eVarF0 = bVar.F0("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name = 'room_master_table'");
        try {
            boolean z10 = false;
            if (eVarF0.C0() && eVarF0.getLong(0) != 0) {
                z10 = true;
            }
            AutoCloseableKt.a(eVarF0, null);
            return z10;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarF0, th2);
                throw th3;
            }
        }
    }

    private final void u(y3.b bVar) {
        Iterator it = n().iterator();
        while (it.hasNext()) {
            ((RoomDatabase.b) it.next()).a(bVar);
        }
    }

    private final void v(y3.b bVar) {
        Iterator it = n().iterator();
        while (it.hasNext()) {
            ((RoomDatabase.b) it.next()).c(bVar);
        }
    }

    private final void w(y3.b bVar) {
        Iterator it = n().iterator();
        while (it.hasNext()) {
            ((RoomDatabase.b) it.next()).e(bVar);
        }
    }

    public String A(String fileName) {
        Intrinsics.h(fileName, "fileName");
        return fileName;
    }

    protected abstract List n();

    protected abstract androidx.room.c o();

    protected final int p(RoomDatabase.JournalMode journalMode) {
        Intrinsics.h(journalMode, "<this>");
        int i10 = c.f14243a[journalMode.ordinal()];
        if (i10 == 1) {
            return 1;
        }
        if (i10 == 2) {
            return 4;
        }
        throw new IllegalStateException(("Can't get max number of reader for journal mode '" + journalMode + '\'').toString());
    }

    protected final int q(RoomDatabase.JournalMode journalMode) {
        Intrinsics.h(journalMode, "<this>");
        int i10 = c.f14243a[journalMode.ordinal()];
        if (i10 == 1 || i10 == 2) {
            return 1;
        }
        throw new IllegalStateException(("Can't get max number of writers for journal mode '" + journalMode + '\'').toString());
    }

    protected abstract f0 r();

    protected final void x(y3.b connection) {
        Intrinsics.h(connection, "connection");
        boolean zS = s(connection);
        r().a(connection);
        if (!zS) {
            f0.a aVarJ = r().j(connection);
            if (!aVarJ.f14345a) {
                throw new IllegalStateException(("Pre-packaged database has an invalid schema: " + aVarJ.f14346b).toString());
            }
        }
        B(connection);
        r().f(connection);
        u(connection);
    }

    protected final void y(y3.b connection, int i10, int i11) {
        Intrinsics.h(connection, "connection");
        List listB = androidx.room.util.g.b(o().f14252d, i10, i11);
        if (listB == null) {
            if (!androidx.room.util.g.d(o(), i10, i11)) {
                m(connection);
                v(connection);
                r().a(connection);
                return;
            } else {
                throw new IllegalStateException(("A migration from " + i10 + " to " + i11 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* functions.").toString());
            }
        }
        r().i(connection);
        Iterator it = listB.iterator();
        while (it.hasNext()) {
            ((x3.b) it.next()).a(connection);
        }
        f0.a aVarJ = r().j(connection);
        if (aVarJ.f14345a) {
            r().h(connection);
            B(connection);
        } else {
            throw new IllegalStateException(("Migration didn't properly handle: " + aVarJ.f14346b).toString());
        }
    }

    protected final void z(y3.b connection) {
        Intrinsics.h(connection, "connection");
        f(connection);
        r().g(connection);
        w(connection);
        this.f14238a = true;
    }
}
