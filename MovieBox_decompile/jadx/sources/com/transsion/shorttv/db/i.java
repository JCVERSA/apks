package com.transsion.shorttv.db;

import androidx.room.RoomDatabase;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class i implements ShortTvFavoriteDao {

    private final RoomDatabase f51021a;

    private final androidx.room.g f51022b = new a();

    private final androidx.room.e f51023c = new b();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `short_tv_favorite_state` (`subjectId`,`favoriteNum`,`hasFavorite`,`favoriteTime`) VALUES (?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, ShortTvFavoriteStateBean shortTvFavoriteStateBean) {
            if (shortTvFavoriteStateBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, shortTvFavoriteStateBean.getSubjectId());
            }
            if (shortTvFavoriteStateBean.getFavoriteNum() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, shortTvFavoriteStateBean.getFavoriteNum());
            }
            eVar.c(3, shortTvFavoriteStateBean.getHasFavorite() ? 1L : 0L);
            if (shortTvFavoriteStateBean.getFavoriteTime() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, shortTvFavoriteStateBean.getFavoriteTime());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `short_tv_favorite_state` SET `subjectId` = ?,`favoriteNum` = ?,`hasFavorite` = ?,`favoriteTime` = ? WHERE `subjectId` = ?";
        }

        @Override
        public void a(y3.e eVar, ShortTvFavoriteStateBean shortTvFavoriteStateBean) {
            if (shortTvFavoriteStateBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, shortTvFavoriteStateBean.getSubjectId());
            }
            if (shortTvFavoriteStateBean.getFavoriteNum() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, shortTvFavoriteStateBean.getFavoriteNum());
            }
            eVar.c(3, shortTvFavoriteStateBean.getHasFavorite() ? 1L : 0L);
            if (shortTvFavoriteStateBean.getFavoriteTime() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, shortTvFavoriteStateBean.getFavoriteTime());
            }
            if (shortTvFavoriteStateBean.getSubjectId() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, shortTvFavoriteStateBean.getSubjectId());
            }
        }
    }

    public i(RoomDatabase roomDatabase) {
        this.f51021a = roomDatabase;
    }

    public static List h() {
        return Collections.emptyList();
    }

    public Unit i(ShortTvFavoriteStateBean shortTvFavoriteStateBean, y3.b bVar) throws Exception {
        this.f51022b.d(bVar, shortTvFavoriteStateBean);
        return Unit.f64096a;
    }

    public static ShortTvFavoriteStateBean j(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM short_tv_favorite_state WHERE subjectId=?");
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
            ShortTvFavoriteStateBean shortTvFavoriteStateBean = null;
            String strQ0 = null;
            if (eVarF0.C0()) {
                String strQ1 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ2 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                if (((int) eVarF0.getLong(iC3)) == 0) {
                    z10 = false;
                }
                if (!eVarF0.isNull(iC4)) {
                    strQ0 = eVarF0.q0(iC4);
                }
                shortTvFavoriteStateBean = new ShortTvFavoriteStateBean(strQ1, strQ2, z10, strQ0);
            }
            eVarF0.close();
            return shortTvFavoriteStateBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public Unit k(ShortTvFavoriteStateBean shortTvFavoriteStateBean, y3.b bVar) throws Exception {
        this.f51023c.c(bVar, shortTvFavoriteStateBean);
        return Unit.f64096a;
    }

    @Override
    public Object a(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f51021a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return i.j(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final ShortTvFavoriteStateBean shortTvFavoriteStateBean, Continuation continuation) {
        shortTvFavoriteStateBean.getClass();
        return androidx.room.util.b.f(this.f51021a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f51017a.k(shortTvFavoriteStateBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(final ShortTvFavoriteStateBean shortTvFavoriteStateBean, Continuation continuation) {
        shortTvFavoriteStateBean.getClass();
        return androidx.room.util.b.f(this.f51021a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f51019a.i(shortTvFavoriteStateBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object d(ShortTvFavoriteStateBean shortTvFavoriteStateBean, Continuation continuation) {
        return ShortTvFavoriteDao.DefaultImpls.a(this, shortTvFavoriteStateBean, continuation);
    }
}
