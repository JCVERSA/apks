package j4;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.i0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class p implements o {

    private final RoomDatabase f62972a;

    private final androidx.room.h f62973b;

    class a extends androidx.room.h {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
        }

        @Override
        public void j(z3.h hVar, n nVar) {
            if (nVar.a() == null) {
                hVar.g(1);
            } else {
                hVar.V(1, nVar.a());
            }
            if (nVar.b() == null) {
                hVar.g(2);
            } else {
                hVar.V(2, nVar.b());
            }
        }
    }

    public p(RoomDatabase roomDatabase) {
        this.f62972a = roomDatabase;
        this.f62973b = new a(roomDatabase);
    }

    public static List c() {
        return Collections.emptyList();
    }

    @Override
    public List a(String str) {
        i0 i0VarF = i0.f("SELECT name FROM workname WHERE work_spec_id=?", 1);
        if (str == null) {
            i0VarF.g(1);
        } else {
            i0VarF.V(1, str);
        }
        this.f62972a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f62972a, i0VarF, false, null);
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
    public void b(n nVar) {
        this.f62972a.j();
        this.f62972a.k();
        try {
            this.f62973b.l(nVar);
            this.f62972a.e0();
        } finally {
            this.f62972a.t();
        }
    }
}
