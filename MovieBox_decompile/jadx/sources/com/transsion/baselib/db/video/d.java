package com.transsion.baselib.db.video;

import androidx.room.RoomDatabase;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class d implements IShortTvFavoriteStateDao {

    private final RoomDatabase f42004a;

    private final androidx.room.g f42005b = new a();

    private final androidx.room.e f42006c = new b();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `ShortTvFavoriteState` (`subjectId`,`favoriteNum`,`hasFavorite`,`favoriteTime`) VALUES (?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, ShortTvFavoriteState shortTvFavoriteState) {
            if (shortTvFavoriteState.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, shortTvFavoriteState.getSubjectId());
            }
            if (shortTvFavoriteState.getFavoriteNum() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, shortTvFavoriteState.getFavoriteNum());
            }
            eVar.c(3, shortTvFavoriteState.getHasFavorite() ? 1L : 0L);
            if (shortTvFavoriteState.getFavoriteTime() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, shortTvFavoriteState.getFavoriteTime());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `ShortTvFavoriteState` SET `subjectId` = ?,`favoriteNum` = ?,`hasFavorite` = ?,`favoriteTime` = ? WHERE `subjectId` = ?";
        }

        @Override
        public void a(y3.e eVar, ShortTvFavoriteState shortTvFavoriteState) {
            if (shortTvFavoriteState.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, shortTvFavoriteState.getSubjectId());
            }
            if (shortTvFavoriteState.getFavoriteNum() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, shortTvFavoriteState.getFavoriteNum());
            }
            eVar.c(3, shortTvFavoriteState.getHasFavorite() ? 1L : 0L);
            if (shortTvFavoriteState.getFavoriteTime() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, shortTvFavoriteState.getFavoriteTime());
            }
            if (shortTvFavoriteState.getSubjectId() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, shortTvFavoriteState.getSubjectId());
            }
        }
    }

    public d(RoomDatabase roomDatabase) {
        this.f42004a = roomDatabase;
    }

    public static List h() {
        return Collections.emptyList();
    }

    public Unit i(ShortTvFavoriteState shortTvFavoriteState, y3.b bVar) throws Exception {
        this.f42005b.d(bVar, shortTvFavoriteState);
        return Unit.f64096a;
    }

    public static ShortTvFavoriteState j(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM ShortTvFavoriteState WHERE subjectId=?");
        boolean z10 = true;
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC2 = androidx.room.util.i.c(eVarF0, "favoriteNum");
            int iC3 = androidx.room.util.i.c(eVarF0, "hasFavorite");
            int iC4 = androidx.room.util.i.c(eVarF0, "favoriteTime");
            ShortTvFavoriteState shortTvFavoriteState = null;
            String strQ0 = null;
            if (eVarF0.C0()) {
                ShortTvFavoriteState shortTvFavoriteState2 = new ShortTvFavoriteState();
                shortTvFavoriteState2.setSubjectId(eVarF0.isNull(iC) ? null : eVarF0.q0(iC));
                shortTvFavoriteState2.setFavoriteNum(eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2));
                if (((int) eVarF0.getLong(iC3)) == 0) {
                    z10 = false;
                }
                shortTvFavoriteState2.setHasFavorite(z10);
                if (!eVarF0.isNull(iC4)) {
                    strQ0 = eVarF0.q0(iC4);
                }
                shortTvFavoriteState2.setFavoriteTime(strQ0);
                shortTvFavoriteState = shortTvFavoriteState2;
            }
            eVarF0.close();
            return shortTvFavoriteState;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public Unit k(ShortTvFavoriteState shortTvFavoriteState, y3.b bVar) throws Exception {
        this.f42006c.c(bVar, shortTvFavoriteState);
        return Unit.f64096a;
    }

    @Override
    public Object a(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f42004a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return d.j(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final ShortTvFavoriteState shortTvFavoriteState, Continuation continuation) {
        shortTvFavoriteState.getClass();
        return androidx.room.util.b.f(this.f42004a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f41990a.k(shortTvFavoriteState, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(final ShortTvFavoriteState shortTvFavoriteState, Continuation continuation) {
        shortTvFavoriteState.getClass();
        return androidx.room.util.b.f(this.f42004a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f42000a.i(shortTvFavoriteState, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object d(ShortTvFavoriteState shortTvFavoriteState, Continuation continuation) {
        return IShortTvFavoriteStateDao.DefaultImpls.a(this, shortTvFavoriteState, continuation);
    }
}
