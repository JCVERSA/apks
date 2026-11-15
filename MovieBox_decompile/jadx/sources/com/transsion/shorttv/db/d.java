package com.transsion.shorttv.db;

import androidx.room.RoomDatabase;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class d implements ShortTvAdUnlockDao {

    private final RoomDatabase f51009a;

    private final androidx.room.g f51010b = new a();

    private final androidx.room.e f51011c = new b();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `short_tv_ad_unlock_state` (`subjectId`,`unlockedEps`) VALUES (?,?)";
        }

        @Override
        public void a(y3.e eVar, e eVar2) {
            if (eVar2.a() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, eVar2.a());
            }
            if (eVar2.b() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, eVar2.b());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `short_tv_ad_unlock_state` SET `subjectId` = ?,`unlockedEps` = ? WHERE `subjectId` = ?";
        }

        @Override
        public void a(y3.e eVar, e eVar2) {
            if (eVar2.a() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, eVar2.a());
            }
            if (eVar2.b() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, eVar2.b());
            }
            if (eVar2.a() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, eVar2.a());
            }
        }
    }

    public d(RoomDatabase roomDatabase) {
        this.f51009a = roomDatabase;
    }

    public static List h() {
        return Collections.emptyList();
    }

    public Unit i(e eVar, y3.b bVar) throws Exception {
        this.f51010b.d(bVar, eVar);
        return Unit.f64096a;
    }

    public static e j(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM short_tv_ad_unlock_state WHERE subjectId=?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC2 = androidx.room.util.i.c(eVarF0, "unlockedEps");
            e eVar = null;
            String strQ0 = null;
            if (eVarF0.C0()) {
                String strQ1 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                if (!eVarF0.isNull(iC2)) {
                    strQ0 = eVarF0.q0(iC2);
                }
                eVar = new e(strQ1, strQ0);
            }
            eVarF0.close();
            return eVar;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public Unit k(e eVar, y3.b bVar) throws Exception {
        this.f51011c.c(bVar, eVar);
        return Unit.f64096a;
    }

    @Override
    public Object a(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f51009a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return d.j(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(e eVar, Continuation continuation) {
        return ShortTvAdUnlockDao.DefaultImpls.a(this, eVar, continuation);
    }

    @Override
    public Object c(final e eVar, Continuation continuation) {
        eVar.getClass();
        return androidx.room.util.b.f(this.f51009a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f51005a.k(eVar, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object d(final e eVar, Continuation continuation) {
        eVar.getClass();
        return androidx.room.util.b.f(this.f51009a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f51007a.i(eVar, (y3.b) obj);
            }
        }, continuation);
    }
}
