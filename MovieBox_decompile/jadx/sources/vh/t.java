package vh;

import androidx.room.RoomDatabase;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.ad.db.pslink.PsLinkAdPlan;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class t implements l {

    private final RoomDatabase f73641a;

    private final androidx.room.g f73642b = new a();

    private final androidx.room.e f73643c = new b();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `ps_link_ad` (`id`,`nonId`,`adSource`,`extAdSlot`,`rank`,`psPlanId`,`psLinkAdInfoStr`,`psInfoJson`,`updateTimestamp`,`showMax`,`clickMax`,`showHours`,`showedTimes`,`clickedTimes`,`showDate`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, PsLinkAdPlan psLinkAdPlan) {
            eVar.c(1, psLinkAdPlan.getId());
            if (psLinkAdPlan.getNonId() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, psLinkAdPlan.getNonId());
            }
            if (psLinkAdPlan.getAdSource() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, psLinkAdPlan.getAdSource());
            }
            if (psLinkAdPlan.getExtAdSlot() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, psLinkAdPlan.getExtAdSlot());
            }
            eVar.c(5, psLinkAdPlan.getRank());
            if (psLinkAdPlan.getPsPlanId() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, psLinkAdPlan.getPsPlanId());
            }
            if (psLinkAdPlan.getPsLinkAdInfoStr() == null) {
                eVar.g(7);
            } else {
                eVar.i(7, psLinkAdPlan.getPsLinkAdInfoStr());
            }
            if (psLinkAdPlan.getPsInfoJson() == null) {
                eVar.g(8);
            } else {
                eVar.i(8, psLinkAdPlan.getPsInfoJson());
            }
            if (psLinkAdPlan.getUpdateTimestamp() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, psLinkAdPlan.getUpdateTimestamp().longValue());
            }
            if (psLinkAdPlan.getShowMax() == null) {
                eVar.g(10);
            } else {
                eVar.c(10, psLinkAdPlan.getShowMax().intValue());
            }
            if (psLinkAdPlan.getClickMax() == null) {
                eVar.g(11);
            } else {
                eVar.c(11, psLinkAdPlan.getClickMax().intValue());
            }
            if (psLinkAdPlan.getShowHours() == null) {
                eVar.g(12);
            } else {
                eVar.i(12, psLinkAdPlan.getShowHours());
            }
            eVar.c(13, psLinkAdPlan.getShowedTimes());
            eVar.c(14, psLinkAdPlan.getClickedTimes());
            if (psLinkAdPlan.getShowDate() == null) {
                eVar.g(15);
            } else {
                eVar.i(15, psLinkAdPlan.getShowDate());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `ps_link_ad` SET `id` = ?,`nonId` = ?,`adSource` = ?,`extAdSlot` = ?,`rank` = ?,`psPlanId` = ?,`psLinkAdInfoStr` = ?,`psInfoJson` = ?,`updateTimestamp` = ?,`showMax` = ?,`clickMax` = ?,`showHours` = ?,`showedTimes` = ?,`clickedTimes` = ?,`showDate` = ? WHERE `id` = ?";
        }

        @Override
        public void a(y3.e eVar, PsLinkAdPlan psLinkAdPlan) {
            eVar.c(1, psLinkAdPlan.getId());
            if (psLinkAdPlan.getNonId() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, psLinkAdPlan.getNonId());
            }
            if (psLinkAdPlan.getAdSource() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, psLinkAdPlan.getAdSource());
            }
            if (psLinkAdPlan.getExtAdSlot() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, psLinkAdPlan.getExtAdSlot());
            }
            eVar.c(5, psLinkAdPlan.getRank());
            if (psLinkAdPlan.getPsPlanId() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, psLinkAdPlan.getPsPlanId());
            }
            if (psLinkAdPlan.getPsLinkAdInfoStr() == null) {
                eVar.g(7);
            } else {
                eVar.i(7, psLinkAdPlan.getPsLinkAdInfoStr());
            }
            if (psLinkAdPlan.getPsInfoJson() == null) {
                eVar.g(8);
            } else {
                eVar.i(8, psLinkAdPlan.getPsInfoJson());
            }
            if (psLinkAdPlan.getUpdateTimestamp() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, psLinkAdPlan.getUpdateTimestamp().longValue());
            }
            if (psLinkAdPlan.getShowMax() == null) {
                eVar.g(10);
            } else {
                eVar.c(10, psLinkAdPlan.getShowMax().intValue());
            }
            if (psLinkAdPlan.getClickMax() == null) {
                eVar.g(11);
            } else {
                eVar.c(11, psLinkAdPlan.getClickMax().intValue());
            }
            if (psLinkAdPlan.getShowHours() == null) {
                eVar.g(12);
            } else {
                eVar.i(12, psLinkAdPlan.getShowHours());
            }
            eVar.c(13, psLinkAdPlan.getShowedTimes());
            eVar.c(14, psLinkAdPlan.getClickedTimes());
            if (psLinkAdPlan.getShowDate() == null) {
                eVar.g(15);
            } else {
                eVar.i(15, psLinkAdPlan.getShowDate());
            }
            eVar.c(16, psLinkAdPlan.getId());
        }
    }

    public t(RoomDatabase roomDatabase) {
        this.f73641a = roomDatabase;
    }

    public static List o() {
        return Collections.emptyList();
    }

    public static Unit p(String str, String str2, List list, y3.b bVar) {
        y3.e eVarF0 = bVar.F0(str);
        try {
            if (str2 == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str2);
            }
            Iterator it = list.iterator();
            int i10 = 2;
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                if (num == null) {
                    eVarF0.g(i10);
                } else {
                    eVarF0.c(i10, num.intValue());
                }
                i10++;
            }
            eVarF0.C0();
            Unit unit = Unit.f64096a;
            eVarF0.close();
            return unit;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List q(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM ps_link_ad");
        try {
            int iC = androidx.room.util.i.c(eVarF0, "id");
            int iC2 = androidx.room.util.i.c(eVarF0, "nonId");
            int iC3 = androidx.room.util.i.c(eVarF0, "adSource");
            int iC4 = androidx.room.util.i.c(eVarF0, "extAdSlot");
            int iC5 = androidx.room.util.i.c(eVarF0, "rank");
            int iC6 = androidx.room.util.i.c(eVarF0, "psPlanId");
            int iC7 = androidx.room.util.i.c(eVarF0, "psLinkAdInfoStr");
            int iC8 = androidx.room.util.i.c(eVarF0, "psInfoJson");
            int iC9 = androidx.room.util.i.c(eVarF0, "updateTimestamp");
            int iC10 = androidx.room.util.i.c(eVarF0, "showMax");
            int iC11 = androidx.room.util.i.c(eVarF0, "clickMax");
            int iC12 = androidx.room.util.i.c(eVarF0, "showHours");
            int iC13 = androidx.room.util.i.c(eVarF0, "showedTimes");
            int iC14 = androidx.room.util.i.c(eVarF0, "clickedTimes");
            int iC15 = androidx.room.util.i.c(eVarF0, "showDate");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                int i10 = iC14;
                ArrayList arrayList2 = arrayList;
                int i11 = (int) eVarF0.getLong(iC);
                String strQ0 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ1 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ2 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                int i12 = (int) eVarF0.getLong(iC5);
                String strQ3 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                int i13 = iC6;
                int i14 = iC5;
                int i15 = iC15;
                int i16 = iC;
                arrayList2.add(new PsLinkAdPlan(i11, strQ0, strQ1, strQ2, i12, strQ3, eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Integer.valueOf((int) eVarF0.getLong(iC10)), eVarF0.isNull(iC11) ? null : Integer.valueOf((int) eVarF0.getLong(iC11)), eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12), (int) eVarF0.getLong(iC13), (int) eVarF0.getLong(i10), eVarF0.isNull(i15) ? null : eVarF0.q0(i15)));
                iC = i16;
                iC14 = i10;
                iC15 = i15;
                iC5 = i14;
                iC3 = iC3;
                iC4 = iC4;
                iC6 = i13;
                arrayList = arrayList2;
                iC2 = iC2;
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public static Integer r(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT COUNT(*) FROM ps_link_ad WHERE extAdSlot = ?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            Integer numValueOf = null;
            if (eVarF0.C0() && !eVarF0.isNull(0)) {
                numValueOf = Integer.valueOf((int) eVarF0.getLong(0));
            }
            eVarF0.close();
            return numValueOf;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static PsLinkAdPlan s(int i10, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM ps_link_ad WHERE id =?");
        try {
            eVarF0.c(1, i10);
            int iC = androidx.room.util.i.c(eVarF0, "id");
            int iC2 = androidx.room.util.i.c(eVarF0, "nonId");
            int iC3 = androidx.room.util.i.c(eVarF0, "adSource");
            int iC4 = androidx.room.util.i.c(eVarF0, "extAdSlot");
            int iC5 = androidx.room.util.i.c(eVarF0, "rank");
            int iC6 = androidx.room.util.i.c(eVarF0, "psPlanId");
            int iC7 = androidx.room.util.i.c(eVarF0, "psLinkAdInfoStr");
            int iC8 = androidx.room.util.i.c(eVarF0, "psInfoJson");
            int iC9 = androidx.room.util.i.c(eVarF0, "updateTimestamp");
            int iC10 = androidx.room.util.i.c(eVarF0, "showMax");
            int iC11 = androidx.room.util.i.c(eVarF0, "clickMax");
            int iC12 = androidx.room.util.i.c(eVarF0, "showHours");
            int iC13 = androidx.room.util.i.c(eVarF0, "showedTimes");
            int iC14 = androidx.room.util.i.c(eVarF0, "clickedTimes");
            int iC15 = androidx.room.util.i.c(eVarF0, "showDate");
            PsLinkAdPlan psLinkAdPlan = null;
            if (eVarF0.C0()) {
                psLinkAdPlan = new PsLinkAdPlan((int) eVarF0.getLong(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), (int) eVarF0.getLong(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Integer.valueOf((int) eVarF0.getLong(iC10)), eVarF0.isNull(iC11) ? null : Integer.valueOf((int) eVarF0.getLong(iC11)), eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12), (int) eVarF0.getLong(iC13), (int) eVarF0.getLong(iC14), eVarF0.isNull(iC15) ? null : eVarF0.q0(iC15));
            }
            return psLinkAdPlan;
        } finally {
            eVarF0.close();
        }
    }

    public static PsLinkAdPlan t(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM ps_link_ad WHERE extAdSlot = ? ORDER BY updateTimestamp ASC LIMIT 1");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "id");
            int iC2 = androidx.room.util.i.c(eVarF0, "nonId");
            int iC3 = androidx.room.util.i.c(eVarF0, "adSource");
            int iC4 = androidx.room.util.i.c(eVarF0, "extAdSlot");
            int iC5 = androidx.room.util.i.c(eVarF0, "rank");
            int iC6 = androidx.room.util.i.c(eVarF0, "psPlanId");
            int iC7 = androidx.room.util.i.c(eVarF0, "psLinkAdInfoStr");
            int iC8 = androidx.room.util.i.c(eVarF0, "psInfoJson");
            int iC9 = androidx.room.util.i.c(eVarF0, "updateTimestamp");
            int iC10 = androidx.room.util.i.c(eVarF0, "showMax");
            int iC11 = androidx.room.util.i.c(eVarF0, "clickMax");
            int iC12 = androidx.room.util.i.c(eVarF0, "showHours");
            int iC13 = androidx.room.util.i.c(eVarF0, "showedTimes");
            int iC14 = androidx.room.util.i.c(eVarF0, "clickedTimes");
            int iC15 = androidx.room.util.i.c(eVarF0, "showDate");
            PsLinkAdPlan psLinkAdPlan = null;
            if (eVarF0.C0()) {
                psLinkAdPlan = new PsLinkAdPlan((int) eVarF0.getLong(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), (int) eVarF0.getLong(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Integer.valueOf((int) eVarF0.getLong(iC10)), eVarF0.isNull(iC11) ? null : Integer.valueOf((int) eVarF0.getLong(iC11)), eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12), (int) eVarF0.getLong(iC13), (int) eVarF0.getLong(iC14), eVarF0.isNull(iC15) ? null : eVarF0.q0(iC15));
            }
            eVarF0.close();
            return psLinkAdPlan;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public Unit u(PsLinkAdPlan psLinkAdPlan, y3.b bVar) throws Exception {
        this.f73642b.d(bVar, psLinkAdPlan);
        return Unit.f64096a;
    }

    public Unit v(PsLinkAdPlan psLinkAdPlan, y3.b bVar) throws Exception {
        this.f73643c.c(bVar, psLinkAdPlan);
        return Unit.f64096a;
    }

    @Override
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f73641a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return t.q((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final PsLinkAdPlan psLinkAdPlan, Continuation continuation) {
        psLinkAdPlan.getClass();
        return androidx.room.util.b.f(this.f73641a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f73631a.u(psLinkAdPlan, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73641a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return t.r(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object d(final String str, final List list, Continuation continuation) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n");
        sb2.append("    DELETE FROM ps_link_ad ");
        sb2.append("\n");
        sb2.append("    WHERE extAdSlot = ");
        sb2.append(UrlUtils.QUESTION_MARK);
        sb2.append(" ");
        sb2.append("\n");
        sb2.append("      AND id NOT IN (");
        androidx.room.util.l.a(sb2, list.size());
        sb2.append(")");
        sb2.append("\n");
        final String string = sb2.toString();
        return androidx.room.util.b.f(this.f73641a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return t.p(string, str, list, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object e(final PsLinkAdPlan psLinkAdPlan, Continuation continuation) {
        psLinkAdPlan.getClass();
        return androidx.room.util.b.f(this.f73641a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f73635a.v(psLinkAdPlan, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object f(final int i10, Continuation continuation) {
        return androidx.room.util.b.f(this.f73641a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return t.s(i10, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object g(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73641a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return t.t(str, (y3.b) obj);
            }
        }, continuation);
    }
}
