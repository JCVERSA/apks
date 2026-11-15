package j4;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.i0;
import androidx.room.l0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

public final class a0 implements z {

    private final RoomDatabase f62939a;

    private final androidx.room.h f62940b;

    private final l0 f62941c;

    class a extends androidx.room.h {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
        }

        @Override
        public void j(z3.h hVar, y yVar) {
            if (yVar.a() == null) {
                hVar.g(1);
            } else {
                hVar.V(1, yVar.a());
            }
            if (yVar.b() == null) {
                hVar.g(2);
            } else {
                hVar.V(2, yVar.b());
            }
        }
    }

    class b extends l0 {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM worktag WHERE work_spec_id=?";
        }
    }

    public a0(RoomDatabase roomDatabase) {
        this.f62939a = roomDatabase;
        this.f62940b = new a(roomDatabase);
        this.f62941c = new b(roomDatabase);
    }

    public static List e() {
        return Collections.emptyList();
    }

    @Override
    public void a(y yVar) {
        this.f62939a.j();
        this.f62939a.k();
        try {
            this.f62940b.l(yVar);
            this.f62939a.e0();
        } finally {
            this.f62939a.t();
        }
    }

    @Override
    public List b(String str) {
        i0 i0VarF = i0.f("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", 1);
        if (str == null) {
            i0VarF.g(1);
        } else {
            i0VarF.V(1, str);
        }
        this.f62939a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f62939a, i0VarF, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorG.getCount());
            while (cursorG.moveToNext()) {
                arrayList.add(cursorG.isNull(0) ? null : cursorG.getString(0));
            }
            return arrayList;
        } finally {
            cursorG.close();
            i0VarF.release();
        }
    }

    @Override
    public void c(String str) {
        this.f62939a.j();
        z3.h hVarB = this.f62941c.b();
        if (str == null) {
            hVarB.g(1);
        } else {
            hVarB.V(1, str);
        }
        this.f62939a.k();
        try {
            hVarB.F();
            this.f62939a.e0();
        } finally {
            this.f62939a.t();
            this.f62941c.h(hVarB);
        }
    }

    @Override
    public void d(String str, Set set) {
        z.a.a(this, str, set);
    }
}
