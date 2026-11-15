package j4;

import androidx.room.RoomDatabase;
import androidx.room.l0;
import java.util.Collections;
import java.util.List;

public final class s implements r {

    private final RoomDatabase f62977a;

    private final androidx.room.h f62978b;

    private final l0 f62979c;

    private final l0 f62980d;

    class a extends androidx.room.h {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
        }

        @Override
        public void j(z3.h hVar, q qVar) throws Throwable {
            if (qVar.b() == null) {
                hVar.g(1);
            } else {
                hVar.V(1, qVar.b());
            }
            byte[] bArrK = androidx.work.d.k(qVar.a());
            if (bArrK == null) {
                hVar.g(2);
            } else {
                hVar.k0(2, bArrK);
            }
        }
    }

    class b extends l0 {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE from WorkProgress where work_spec_id=?";
        }
    }

    class c extends l0 {
        c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM WorkProgress";
        }
    }

    public s(RoomDatabase roomDatabase) {
        this.f62977a = roomDatabase;
        this.f62978b = new a(roomDatabase);
        this.f62979c = new b(roomDatabase);
        this.f62980d = new c(roomDatabase);
    }

    public static List d() {
        return Collections.emptyList();
    }

    @Override
    public void a(String str) {
        this.f62977a.j();
        z3.h hVarB = this.f62979c.b();
        if (str == null) {
            hVarB.g(1);
        } else {
            hVarB.V(1, str);
        }
        this.f62977a.k();
        try {
            hVarB.F();
            this.f62977a.e0();
        } finally {
            this.f62977a.t();
            this.f62979c.h(hVarB);
        }
    }

    @Override
    public void b(q qVar) {
        this.f62977a.j();
        this.f62977a.k();
        try {
            this.f62978b.l(qVar);
            this.f62977a.e0();
        } finally {
            this.f62977a.t();
        }
    }

    @Override
    public void c() {
        this.f62977a.j();
        z3.h hVarB = this.f62980d.b();
        this.f62977a.k();
        try {
            hVarB.F();
            this.f62977a.e0();
        } finally {
            this.f62977a.t();
            this.f62980d.h(hVarB);
        }
    }
}
