package th;

import androidx.room.RoomDatabase;
import androidx.room.g;
import androidx.room.util.i;
import com.transsion.ad.db.mcc.LocalMcc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class f implements th.a {

    private final RoomDatabase f72748a;

    private final g f72749b = new a();

    class a extends g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `local_mcc` (`id`,`Country`,`Mcc`,`Iso`,`CountryCode`) VALUES (nullif(?, 0),?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, LocalMcc localMcc) {
            eVar.c(1, localMcc.getId());
            if (localMcc.getCountry() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, localMcc.getCountry());
            }
            if (localMcc.getMcc() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, localMcc.getMcc());
            }
            if (localMcc.getIso() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, localMcc.getIso());
            }
            if (localMcc.getCountryCode() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, localMcc.getCountryCode());
            }
        }
    }

    public f(RoomDatabase roomDatabase) {
        this.f72748a = roomDatabase;
    }

    public static List i() {
        return Collections.emptyList();
    }

    public static List j(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM local_mcc");
        try {
            int iC = i.c(eVarF0, "id");
            int iC2 = i.c(eVarF0, "Country");
            int iC3 = i.c(eVarF0, "Mcc");
            int iC4 = i.c(eVarF0, "Iso");
            int iC5 = i.c(eVarF0, "CountryCode");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                arrayList.add(new LocalMcc((int) eVarF0.getLong(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5)));
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public static LocalMcc k(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM local_mcc LIMIT 1");
        try {
            int iC = i.c(eVarF0, "id");
            int iC2 = i.c(eVarF0, "Country");
            int iC3 = i.c(eVarF0, "Mcc");
            int iC4 = i.c(eVarF0, "Iso");
            int iC5 = i.c(eVarF0, "CountryCode");
            LocalMcc localMcc = null;
            if (eVarF0.C0()) {
                localMcc = new LocalMcc((int) eVarF0.getLong(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5));
            }
            return localMcc;
        } finally {
            eVarF0.close();
        }
    }

    public static List l(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM local_mcc WHERE Iso = ?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = i.c(eVarF0, "id");
            int iC2 = i.c(eVarF0, "Country");
            int iC3 = i.c(eVarF0, "Mcc");
            int iC4 = i.c(eVarF0, "Iso");
            int iC5 = i.c(eVarF0, "CountryCode");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                arrayList.add(new LocalMcc((int) eVarF0.getLong(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5)));
            }
            eVarF0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public Unit m(List list, y3.b bVar) throws Exception {
        this.f72749b.c(bVar, list);
        return Unit.f64096a;
    }

    @Override
    public Object a(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f72748a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return f.l(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final List list, Continuation continuation) {
        list.getClass();
        return androidx.room.util.b.f(this.f72748a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f72746a.m(list, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(Continuation continuation) {
        return androidx.room.util.b.f(this.f72748a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return f.j((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object d(Continuation continuation) {
        return androidx.room.util.b.f(this.f72748a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return f.k((y3.b) obj);
            }
        }, continuation);
    }
}
