package vi;

import androidx.room.RoomDatabase;
import androidx.room.g;
import androidx.room.util.i;
import com.transsion.baselib.db.home.HomePreferencesIntervalTimeDbBean;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import y3.e;

public final class d implements vi.a {

    private final RoomDatabase f73649a;

    private final g f73650b = new a();

    class a extends g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `home_preferences_interval_time` (`id`,`showTime`,`closeTime`,`chooseTime`,`showIntervalSeconds`,`closeIntervalSeconds`,`chooseIntervalSeconds`) VALUES (?,?,?,?,?,?,?)";
        }

        @Override
        public void a(e eVar, HomePreferencesIntervalTimeDbBean homePreferencesIntervalTimeDbBean) {
            if (homePreferencesIntervalTimeDbBean.getId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, homePreferencesIntervalTimeDbBean.getId());
            }
            eVar.c(2, homePreferencesIntervalTimeDbBean.getShowTime());
            eVar.c(3, homePreferencesIntervalTimeDbBean.getCloseTime());
            eVar.c(4, homePreferencesIntervalTimeDbBean.getChooseTime());
            eVar.c(5, homePreferencesIntervalTimeDbBean.getShowIntervalSeconds());
            eVar.c(6, homePreferencesIntervalTimeDbBean.getCloseIntervalSeconds());
            eVar.c(7, homePreferencesIntervalTimeDbBean.getChooseIntervalSeconds());
        }
    }

    public d(RoomDatabase roomDatabase) {
        this.f73649a = roomDatabase;
    }

    public static List e() {
        return Collections.emptyList();
    }

    public Unit f(HomePreferencesIntervalTimeDbBean homePreferencesIntervalTimeDbBean, y3.b bVar) throws Exception {
        this.f73650b.d(bVar, homePreferencesIntervalTimeDbBean);
        return Unit.f64096a;
    }

    public static HomePreferencesIntervalTimeDbBean g(String str, y3.b bVar) {
        e eVarF0 = bVar.F0("\n        SELECT * FROM home_preferences_interval_time\n        WHERE id = ?\n        LIMIT 1\n    ");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = i.c(eVarF0, "id");
            int iC2 = i.c(eVarF0, "showTime");
            int iC3 = i.c(eVarF0, "closeTime");
            int iC4 = i.c(eVarF0, "chooseTime");
            int iC5 = i.c(eVarF0, "showIntervalSeconds");
            int iC6 = i.c(eVarF0, "closeIntervalSeconds");
            int iC7 = i.c(eVarF0, "chooseIntervalSeconds");
            HomePreferencesIntervalTimeDbBean homePreferencesIntervalTimeDbBean = null;
            if (eVarF0.C0()) {
                homePreferencesIntervalTimeDbBean = new HomePreferencesIntervalTimeDbBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.getLong(iC2), eVarF0.getLong(iC3), eVarF0.getLong(iC4), eVarF0.getLong(iC5), eVarF0.getLong(iC6), eVarF0.getLong(iC7));
            }
            eVarF0.close();
            return homePreferencesIntervalTimeDbBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    @Override
    public Object a(final HomePreferencesIntervalTimeDbBean homePreferencesIntervalTimeDbBean, Continuation continuation) {
        homePreferencesIntervalTimeDbBean.getClass();
        return androidx.room.util.b.f(this.f73649a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f73646a.f(homePreferencesIntervalTimeDbBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73649a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return d.g(str, (y3.b) obj);
            }
        }, continuation);
    }
}
