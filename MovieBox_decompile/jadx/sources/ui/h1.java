package ui;

import androidx.room.RoomDatabase;
import com.transsion.baselib.db.download.SubtitleLanguageMapBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class h1 implements d1 {

    private final RoomDatabase f73115a;

    private final androidx.room.g f73116b = new a();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `subtitle_language_map_table` (`lan`,`lanIOS3`,`lanName`,`inSearch`) VALUES (?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, SubtitleLanguageMapBean subtitleLanguageMapBean) {
            if (subtitleLanguageMapBean.getLan() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, subtitleLanguageMapBean.getLan());
            }
            if (subtitleLanguageMapBean.getLanIOS3() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, subtitleLanguageMapBean.getLanIOS3());
            }
            if (subtitleLanguageMapBean.getLanName() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, subtitleLanguageMapBean.getLanName());
            }
            eVar.c(4, subtitleLanguageMapBean.getInSearch() ? 1L : 0L);
        }
    }

    public h1(RoomDatabase roomDatabase) {
        this.f73115a = roomDatabase;
    }

    public static List g() {
        return Collections.emptyList();
    }

    public static List h(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM SUBTITLE_LANGUAGE_MAP_TABLE ");
        try {
            int iC = androidx.room.util.i.c(eVarF0, "lan");
            int iC2 = androidx.room.util.i.c(eVarF0, "lanIOS3");
            int iC3 = androidx.room.util.i.c(eVarF0, "lanName");
            int iC4 = androidx.room.util.i.c(eVarF0, "inSearch");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = null;
                String strQ1 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ2 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                if (!eVarF0.isNull(iC3)) {
                    strQ0 = eVarF0.q0(iC3);
                }
                arrayList.add(new SubtitleLanguageMapBean(strQ1, strQ2, strQ0, ((int) eVarF0.getLong(iC4)) != 0));
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public Unit i(SubtitleLanguageMapBean subtitleLanguageMapBean, y3.b bVar) throws Exception {
        this.f73116b.d(bVar, subtitleLanguageMapBean);
        return Unit.f64096a;
    }

    public static Unit j(boolean z10, String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("UPDATE SUBTITLE_LANGUAGE_MAP_TABLE SET inSearch = ?  WHERE lan = ?");
        try {
            eVarF0.c(1, z10 ? 1L : 0L);
            if (str == null) {
                eVarF0.g(2);
            } else {
                eVarF0.i(2, str);
            }
            eVarF0.C0();
            return Unit.f64096a;
        } finally {
            eVarF0.close();
        }
    }

    @Override
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f73115a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return h1.h((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final String str, final boolean z10, Continuation continuation) {
        return androidx.room.util.b.f(this.f73115a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return h1.j(z10, str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(final SubtitleLanguageMapBean subtitleLanguageMapBean, Continuation continuation) {
        subtitleLanguageMapBean.getClass();
        return androidx.room.util.b.f(this.f73115a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f73109a.i(subtitleLanguageMapBean, (y3.b) obj);
            }
        }, continuation);
    }
}
