package j4;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.i0;
import androidx.room.l0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class k implements j {

    private final RoomDatabase f62961a;

    private final androidx.room.h f62962b;

    private final l0 f62963c;

    private final l0 f62964d;

    class a extends androidx.room.h {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
        }

        @Override
        public void j(z3.h hVar, i iVar) {
            String str = iVar.f62958a;
            if (str == null) {
                hVar.g(1);
            } else {
                hVar.V(1, str);
            }
            hVar.c(2, iVar.a());
            hVar.c(3, iVar.f62960c);
        }
    }

    class b extends l0 {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM SystemIdInfo where work_spec_id=? AND generation=?";
        }
    }

    class c extends l0 {
        c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM SystemIdInfo where work_spec_id=?";
        }
    }

    public k(RoomDatabase roomDatabase) {
        this.f62961a = roomDatabase;
        this.f62962b = new a(roomDatabase);
        this.f62963c = new b(roomDatabase);
        this.f62964d = new c(roomDatabase);
    }

    public static List h() {
        return Collections.emptyList();
    }

    @Override
    public i a(m mVar) {
        return j.a.a(this, mVar);
    }

    @Override
    public void b(i iVar) {
        this.f62961a.j();
        this.f62961a.k();
        try {
            this.f62962b.l(iVar);
            this.f62961a.e0();
        } finally {
            this.f62961a.t();
        }
    }

    @Override
    public void c(m mVar) {
        j.a.b(this, mVar);
    }

    @Override
    public i d(String str, int i10) {
        i0 i0VarF = i0.f("SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?", 2);
        if (str == null) {
            i0VarF.g(1);
        } else {
            i0VarF.V(1, str);
        }
        i0VarF.c(2, i10);
        this.f62961a.j();
        i iVar = null;
        String string = null;
        Cursor cursorG = androidx.room.util.b.g(this.f62961a, i0VarF, false, null);
        try {
            int iE = androidx.room.util.a.e(cursorG, "work_spec_id");
            int iE2 = androidx.room.util.a.e(cursorG, "generation");
            int iE3 = androidx.room.util.a.e(cursorG, "system_id");
            if (cursorG.moveToFirst()) {
                if (!cursorG.isNull(iE)) {
                    string = cursorG.getString(iE);
                }
                iVar = new i(string, cursorG.getInt(iE2), cursorG.getInt(iE3));
            }
            return iVar;
        } finally {
            cursorG.close();
            i0VarF.release();
        }
    }

    @Override
    public List e() {
        i0 i0VarF = i0.f("SELECT DISTINCT work_spec_id FROM SystemIdInfo", 0);
        this.f62961a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f62961a, i0VarF, false, null);
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
    public void f(String str, int i10) {
        this.f62961a.j();
        z3.h hVarB = this.f62963c.b();
        if (str == null) {
            hVarB.g(1);
        } else {
            hVarB.V(1, str);
        }
        hVarB.c(2, i10);
        this.f62961a.k();
        try {
            hVarB.F();
            this.f62961a.e0();
        } finally {
            this.f62961a.t();
            this.f62963c.h(hVarB);
        }
    }

    @Override
    public void g(String str) {
        this.f62961a.j();
        z3.h hVarB = this.f62964d.b();
        if (str == null) {
            hVarB.g(1);
        } else {
            hVarB.V(1, str);
        }
        this.f62961a.k();
        try {
            hVarB.F();
            this.f62961a.e0();
        } finally {
            this.f62961a.t();
            this.f62964d.h(hVarB);
        }
    }
}
