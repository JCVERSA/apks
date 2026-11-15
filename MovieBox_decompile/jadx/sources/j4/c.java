package j4;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.i0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class c implements b {

    private final RoomDatabase f62949a;

    private final androidx.room.h f62950b;

    class a extends androidx.room.h {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
        }

        @Override
        public void j(z3.h hVar, j4.a aVar) {
            if (aVar.b() == null) {
                hVar.g(1);
            } else {
                hVar.V(1, aVar.b());
            }
            if (aVar.a() == null) {
                hVar.g(2);
            } else {
                hVar.V(2, aVar.a());
            }
        }
    }

    public c(RoomDatabase roomDatabase) {
        this.f62949a = roomDatabase;
        this.f62950b = new a(roomDatabase);
    }

    public static List e() {
        return Collections.emptyList();
    }

    @Override
    public List a(String str) {
        i0 i0VarF = i0.f("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            i0VarF.g(1);
        } else {
            i0VarF.V(1, str);
        }
        this.f62949a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f62949a, i0VarF, false, null);
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
    public boolean b(String str) {
        i0 i0VarF = i0.f("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (str == null) {
            i0VarF.g(1);
        } else {
            i0VarF.V(1, str);
        }
        this.f62949a.j();
        boolean z10 = false;
        Cursor cursorG = androidx.room.util.b.g(this.f62949a, i0VarF, false, null);
        try {
            if (cursorG.moveToFirst()) {
                z10 = cursorG.getInt(0) != 0;
            }
            return z10;
        } finally {
            cursorG.close();
            i0VarF.release();
        }
    }

    @Override
    public void c(j4.a aVar) {
        this.f62949a.j();
        this.f62949a.k();
        try {
            this.f62950b.l(aVar);
            this.f62949a.e0();
        } finally {
            this.f62949a.t();
        }
    }

    @Override
    public boolean d(String str) {
        i0 i0VarF = i0.f("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            i0VarF.g(1);
        } else {
            i0VarF.V(1, str);
        }
        this.f62949a.j();
        boolean z10 = false;
        Cursor cursorG = androidx.room.util.b.g(this.f62949a, i0VarF, false, null);
        try {
            if (cursorG.moveToFirst()) {
                z10 = cursorG.getInt(0) != 0;
            }
            return z10;
        } finally {
            cursorG.close();
            i0VarF.release();
        }
    }
}
