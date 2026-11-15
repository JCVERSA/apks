package j4;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.i0;
import java.util.Collections;
import java.util.List;

public final class f implements e {

    private final RoomDatabase f62954a;

    private final androidx.room.h f62955b;

    class a extends androidx.room.h {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
        }

        @Override
        public void j(z3.h hVar, d dVar) {
            if (dVar.a() == null) {
                hVar.g(1);
            } else {
                hVar.V(1, dVar.a());
            }
            if (dVar.b() == null) {
                hVar.g(2);
            } else {
                hVar.c(2, dVar.b().longValue());
            }
        }
    }

    public f(RoomDatabase roomDatabase) {
        this.f62954a = roomDatabase;
        this.f62955b = new a(roomDatabase);
    }

    public static List b() {
        return Collections.emptyList();
    }

    @Override
    public void a(d dVar) {
        this.f62954a.j();
        this.f62954a.k();
        try {
            this.f62955b.l(dVar);
            this.f62954a.e0();
        } finally {
            this.f62954a.t();
        }
    }

    @Override
    public Long getLongValue(String str) {
        i0 i0VarF = i0.f("SELECT long_value FROM Preference where `key`=?", 1);
        if (str == null) {
            i0VarF.g(1);
        } else {
            i0VarF.V(1, str);
        }
        this.f62954a.j();
        Long lValueOf = null;
        Cursor cursorG = androidx.room.util.b.g(this.f62954a, i0VarF, false, null);
        try {
            if (cursorG.moveToFirst() && !cursorG.isNull(0)) {
                lValueOf = Long.valueOf(cursorG.getLong(0));
            }
            return lValueOf;
        } finally {
            cursorG.close();
            i0VarF.release();
        }
    }
}
