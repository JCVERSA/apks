package com.transsion.ad.db.scene;

import androidx.room.RoomDatabase;
import androidx.room.util.i;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class g implements AdSceneLimitDao {

    private final RoomDatabase f41085a;

    private final androidx.room.g f41086b = new a();

    private final androidx.room.e f41087c = new b();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `ad_scene_limit_table` (`sceneId`,`lastDisplayAdDate`,`lastDisplayAdTimestamp`,`displayTimes`) VALUES (?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, AdSceneLimit adSceneLimit) {
            if (adSceneLimit.getSceneId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, adSceneLimit.getSceneId());
            }
            if (adSceneLimit.getLastDisplayAdDate() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, adSceneLimit.getLastDisplayAdDate());
            }
            eVar.c(3, adSceneLimit.getLastDisplayAdTimestamp());
            eVar.c(4, adSceneLimit.getDisplayTimes());
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `ad_scene_limit_table` SET `sceneId` = ?,`lastDisplayAdDate` = ?,`lastDisplayAdTimestamp` = ?,`displayTimes` = ? WHERE `sceneId` = ?";
        }

        @Override
        public void a(y3.e eVar, AdSceneLimit adSceneLimit) {
            if (adSceneLimit.getSceneId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, adSceneLimit.getSceneId());
            }
            if (adSceneLimit.getLastDisplayAdDate() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, adSceneLimit.getLastDisplayAdDate());
            }
            eVar.c(3, adSceneLimit.getLastDisplayAdTimestamp());
            eVar.c(4, adSceneLimit.getDisplayTimes());
            if (adSceneLimit.getSceneId() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, adSceneLimit.getSceneId());
            }
        }
    }

    public g(RoomDatabase roomDatabase) {
        this.f41085a = roomDatabase;
    }

    public static List m() {
        return Collections.emptyList();
    }

    public Object n(String str, String str2, long j10, long j11, int i10, Continuation continuation) {
        return AdSceneLimitDao.DefaultImpls.a(this, str, str2, j10, j11, i10, continuation);
    }

    public Object o(String str, String str2, Continuation continuation) {
        return AdSceneLimitDao.DefaultImpls.b(this, str, str2, continuation);
    }

    public static AdSceneLimit p(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM ad_scene_limit_table WHERE sceneId = ? LIMIT 1");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = i.c(eVarF0, "sceneId");
            int iC2 = i.c(eVarF0, "lastDisplayAdDate");
            int iC3 = i.c(eVarF0, "lastDisplayAdTimestamp");
            int iC4 = i.c(eVarF0, "displayTimes");
            AdSceneLimit adSceneLimit = null;
            if (eVarF0.C0()) {
                adSceneLimit = new AdSceneLimit(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.getLong(iC3), (int) eVarF0.getLong(iC4));
            }
            eVarF0.close();
            return adSceneLimit;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public Unit q(AdSceneLimit adSceneLimit, y3.b bVar) throws Exception {
        this.f41086b.d(bVar, adSceneLimit);
        return Unit.f64096a;
    }

    public Object r(String str, String str2, long j10, Continuation continuation) {
        return AdSceneLimitDao.DefaultImpls.c(this, str, str2, j10, continuation);
    }

    public Unit s(AdSceneLimit adSceneLimit, y3.b bVar) throws Exception {
        this.f41087c.c(bVar, adSceneLimit);
        return Unit.f64096a;
    }

    @Override
    public Object a(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f41085a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return g.p(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final String str, final String str2, final long j10, final long j11, final int i10, Continuation continuation) {
        return androidx.room.util.b.e(this.f41085a, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f41067a.n(str, str2, j10, j11, i10, (Continuation) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(final String str, final String str2, final long j10, Continuation continuation) {
        return androidx.room.util.b.e(this.f41085a, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f41073a.r(str, str2, j10, (Continuation) obj);
            }
        }, continuation);
    }

    @Override
    public Object d(final String str, final String str2, Continuation continuation) {
        return androidx.room.util.b.e(this.f41085a, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f41079a.o(str, str2, (Continuation) obj);
            }
        }, continuation);
    }

    @Override
    public Object e(final AdSceneLimit adSceneLimit, Continuation continuation) {
        adSceneLimit.getClass();
        return androidx.room.util.b.f(this.f41085a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f41083a.q(adSceneLimit, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object f(final AdSceneLimit adSceneLimit, Continuation continuation) {
        adSceneLimit.getClass();
        return androidx.room.util.b.f(this.f41085a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f41077a.s(adSceneLimit, (y3.b) obj);
            }
        }, continuation);
    }
}
