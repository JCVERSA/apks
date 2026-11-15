package androidx.room;

import android.database.Cursor;
import com.mbridge.msdk.MBridgeConstans;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public class h0 extends z3.e.a {

    public static final a f14347h = new a(null);

    private androidx.room.c f14348c;

    private final List f14349d;

    private final b f14350e;

    private final String f14351f;

    private final String f14352g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(z3.d db2) {
            Intrinsics.h(db2, "db");
            Cursor cursorM0 = db2.m0("SELECT name, type FROM sqlite_master WHERE type = 'table' OR type = 'view'");
            try {
                List listC = CollectionsKt.c();
                while (cursorM0.moveToNext()) {
                    String string = cursorM0.getString(0);
                    Intrinsics.e(string);
                    if (!StringsKt.W(string, "sqlite_", false, 2, null) && !Intrinsics.c(string, "android_metadata")) {
                        listC.add(TuplesKt.a(string, Boolean.valueOf(Intrinsics.c(cursorM0.getString(1), MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW))));
                    }
                }
                List<Pair> listA = CollectionsKt.a(listC);
                CloseableKt.a(cursorM0, null);
                for (Pair pair : listA) {
                    String str = (String) pair.component1();
                    if (((Boolean) pair.component2()).booleanValue()) {
                        db2.E("DROP VIEW IF EXISTS " + str);
                    } else {
                        db2.E("DROP TABLE IF EXISTS " + str);
                    }
                }
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(cursorM0, th2);
                    throw th3;
                }
            }
        }

        public final boolean b(z3.d db2) {
            Intrinsics.h(db2, "db");
            Cursor cursorM0 = db2.m0("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
            try {
                boolean z10 = false;
                if (cursorM0.moveToFirst() && cursorM0.getInt(0) == 0) {
                    z10 = true;
                }
                CloseableKt.a(cursorM0, null);
                return z10;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(cursorM0, th2);
                    throw th3;
                }
            }
        }

        public final boolean c(z3.d db2) {
            Intrinsics.h(db2, "db");
            Cursor cursorM0 = db2.m0("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
            try {
                boolean z10 = false;
                if (cursorM0.moveToFirst() && cursorM0.getInt(0) != 0) {
                    z10 = true;
                }
                CloseableKt.a(cursorM0, null);
                return z10;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(cursorM0, th2);
                    throw th3;
                }
            }
        }

        private a() {
        }
    }

    public static abstract class b {

        public final int f14353a;

        public b(int i10) {
            this.f14353a = i10;
        }

        public abstract void a(z3.d dVar);

        public abstract void b(z3.d dVar);

        public abstract void c(z3.d dVar);

        public abstract void d(z3.d dVar);

        public abstract void e(z3.d dVar);

        public abstract void f(z3.d dVar);

        public abstract c g(z3.d dVar);
    }

    public static class c {

        public final boolean f14354a;

        public final String f14355b;

        public c(boolean z10, String str) {
            this.f14354a = z10;
            this.f14355b = str;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h0(androidx.room.c configuration, b delegate, String identityHash, String legacyHash) {
        super(delegate.f14353a);
        Intrinsics.h(configuration, "configuration");
        Intrinsics.h(delegate, "delegate");
        Intrinsics.h(identityHash, "identityHash");
        Intrinsics.h(legacyHash, "legacyHash");
        this.f14349d = configuration.f14253e;
        this.f14348c = configuration;
        this.f14350e = delegate;
        this.f14351f = identityHash;
        this.f14352g = legacyHash;
    }

    private final void h(z3.d dVar) {
        if (!f14347h.c(dVar)) {
            c cVarG = this.f14350e.g(dVar);
            if (cVarG.f14354a) {
                this.f14350e.e(dVar);
                j(dVar);
                return;
            } else {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + cVarG.f14355b);
            }
        }
        Cursor cursorB0 = dVar.b0(new z3.a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
        try {
            String string = cursorB0.moveToFirst() ? cursorB0.getString(0) : null;
            CloseableKt.a(cursorB0, null);
            if (Intrinsics.c(this.f14351f, string) || Intrinsics.c(this.f14352g, string)) {
                return;
            }
            throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: " + this.f14351f + ", found: " + string);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(cursorB0, th2);
                throw th3;
            }
        }
    }

    private final void i(z3.d dVar) {
        dVar.E("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    private final void j(z3.d dVar) {
        i(dVar);
        dVar.E(e0.a(this.f14351f));
    }

    @Override
    public void b(z3.d db2) {
        Intrinsics.h(db2, "db");
        super.b(db2);
    }

    @Override
    public void d(z3.d db2) {
        Intrinsics.h(db2, "db");
        boolean zB = f14347h.b(db2);
        this.f14350e.a(db2);
        if (!zB) {
            c cVarG = this.f14350e.g(db2);
            if (!cVarG.f14354a) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + cVarG.f14355b);
            }
        }
        j(db2);
        this.f14350e.c(db2);
        List list = this.f14349d;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((RoomDatabase.b) it.next()).b(db2);
            }
        }
    }

    @Override
    public void e(z3.d db2, int i10, int i11) {
        Intrinsics.h(db2, "db");
        g(db2, i10, i11);
    }

    @Override
    public void f(z3.d db2) {
        Intrinsics.h(db2, "db");
        super.f(db2);
        h(db2);
        this.f14350e.d(db2);
        List list = this.f14349d;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((RoomDatabase.b) it.next()).f(db2);
            }
        }
        this.f14348c = null;
    }

    @Override
    public void g(z3.d db2, int i10, int i11) {
        List listD;
        Intrinsics.h(db2, "db");
        androidx.room.c cVar = this.f14348c;
        if (cVar != null && (listD = cVar.f14252d.d(i10, i11)) != null) {
            this.f14350e.f(db2);
            Iterator it = listD.iterator();
            while (it.hasNext()) {
                ((x3.b) it.next()).a(new androidx.room.driver.a(db2));
            }
            c cVarG = this.f14350e.g(db2);
            if (cVarG.f14354a) {
                this.f14350e.e(db2);
                j(db2);
                return;
            } else {
                throw new IllegalStateException("Migration didn't properly handle: " + cVarG.f14355b);
            }
        }
        androidx.room.c cVar2 = this.f14348c;
        if (cVar2 == null || cVar2.e(i10, i11)) {
            throw new IllegalStateException("A migration from " + i10 + " to " + i11 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
        }
        if (cVar2.f14268t) {
            f14347h.a(db2);
        } else {
            this.f14350e.b(db2);
        }
        List list = this.f14349d;
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ((RoomDatabase.b) it2.next()).d(db2);
            }
        }
        this.f14350e.a(db2);
    }
}
