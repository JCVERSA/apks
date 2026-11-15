package com.transsion.baselib.db.member;

import androidx.room.RoomDatabase;
import androidx.room.util.h;
import androidx.room.util.i;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class g implements MemberResolutionDao {

    private final RoomDatabase f41971a;

    private final androidx.room.g f41972b = new a();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR ABORT INTO `member_resolution` (`subjectId`,`ep`,`se`,`vipResolutionTip`,`isUnlock`) VALUES (?,?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, MemberResolutionBean memberResolutionBean) {
            if (memberResolutionBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, memberResolutionBean.getSubjectId());
            }
            eVar.c(2, memberResolutionBean.getEp());
            eVar.c(3, memberResolutionBean.getSe());
            Integer numValueOf = memberResolutionBean.getVipResolutionTip() == null ? null : Integer.valueOf(memberResolutionBean.getVipResolutionTip().booleanValue() ? 1 : 0);
            if (numValueOf == null) {
                eVar.g(4);
            } else {
                eVar.c(4, numValueOf.intValue());
            }
            Integer numValueOf2 = memberResolutionBean.isUnlock() != null ? Integer.valueOf(memberResolutionBean.isUnlock().booleanValue() ? 1 : 0) : null;
            if (numValueOf2 == null) {
                eVar.g(5);
            } else {
                eVar.c(5, numValueOf2.intValue());
            }
        }
    }

    public g(RoomDatabase roomDatabase) {
        this.f41971a = roomDatabase;
    }

    public static List m() {
        return Collections.emptyList();
    }

    public Unit n(MemberResolutionBean memberResolutionBean, y3.b bVar) throws Exception {
        this.f41972b.d(bVar, memberResolutionBean);
        return Unit.f64096a;
    }

    public static MemberResolutionBean o(String str, int i10, int i11, y3.b bVar) {
        Boolean boolValueOf;
        y3.e eVarF0 = bVar.F0("\n        SELECT * FROM member_resolution\n        WHERE subjectId = ?\n          AND se = ?\n          AND ep = ?\n        LIMIT 1\n    ");
        boolean z10 = true;
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            eVarF0.c(2, i10);
            eVarF0.c(3, i11);
            int iC = i.c(eVarF0, "subjectId");
            int iC2 = i.c(eVarF0, "ep");
            int iC3 = i.c(eVarF0, "se");
            int iC4 = i.c(eVarF0, "vipResolutionTip");
            int iC5 = i.c(eVarF0, "isUnlock");
            MemberResolutionBean memberResolutionBean = null;
            Boolean boolValueOf2 = null;
            if (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                int i12 = (int) eVarF0.getLong(iC2);
                int i13 = (int) eVarF0.getLong(iC3);
                Integer numValueOf = eVarF0.isNull(iC4) ? null : Integer.valueOf((int) eVarF0.getLong(iC4));
                if (numValueOf == null) {
                    boolValueOf = null;
                } else {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                Integer numValueOf2 = eVarF0.isNull(iC5) ? null : Integer.valueOf((int) eVarF0.getLong(iC5));
                if (numValueOf2 != null) {
                    if (numValueOf2.intValue() == 0) {
                        z10 = false;
                    }
                    boolValueOf2 = Boolean.valueOf(z10);
                }
                memberResolutionBean = new MemberResolutionBean(strQ0, i12, i13, boolValueOf, boolValueOf2);
            }
            eVarF0.close();
            return memberResolutionBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static Integer p(boolean z10, String str, int i10, int i11, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("\n        UPDATE member_resolution\n        SET isUnlock = ?\n        WHERE subjectId = ?\n          AND se = ?\n          AND ep = ?\n    ");
        try {
            eVarF0.c(1, z10 ? 1L : 0L);
            if (str == null) {
                eVarF0.g(2);
            } else {
                eVarF0.i(2, str);
            }
            eVarF0.c(3, i10);
            eVarF0.c(4, i11);
            eVarF0.C0();
            return Integer.valueOf(h.b(bVar));
        } finally {
            eVarF0.close();
        }
    }

    public Object q(String str, int i10, int i11, boolean z10, Continuation continuation) {
        return MemberResolutionDao.DefaultImpls.a(this, str, i10, i11, z10, continuation);
    }

    public static Integer r(boolean z10, String str, int i10, int i11, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("\n        UPDATE member_resolution\n        SET vipResolutionTip = ?\n        WHERE subjectId = ?\n          AND se = ?\n          AND ep = ?\n    ");
        try {
            eVarF0.c(1, z10 ? 1L : 0L);
            if (str == null) {
                eVarF0.g(2);
            } else {
                eVarF0.i(2, str);
            }
            eVarF0.c(3, i10);
            eVarF0.c(4, i11);
            eVarF0.C0();
            return Integer.valueOf(h.b(bVar));
        } finally {
            eVarF0.close();
        }
    }

    public Object s(String str, int i10, int i11, boolean z10, Continuation continuation) {
        return MemberResolutionDao.DefaultImpls.b(this, str, i10, i11, z10, continuation);
    }

    @Override
    public Object a(final String str, final int i10, final int i11, final boolean z10, Continuation continuation) {
        return androidx.room.util.b.e(this.f41971a, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f41951a.s(str, i10, i11, z10, (Continuation) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final String str, final int i10, final int i11, Continuation continuation) {
        return androidx.room.util.b.f(this.f41971a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return g.o(str, i10, i11, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(final String str, final int i10, final int i11, final boolean z10, Continuation continuation) {
        return androidx.room.util.b.f(this.f41971a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return g.r(z10, str, i10, i11, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object d(final MemberResolutionBean memberResolutionBean, Continuation continuation) {
        memberResolutionBean.getClass();
        return androidx.room.util.b.f(this.f41971a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f41965a.n(memberResolutionBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object e(final String str, final int i10, final int i11, final boolean z10, Continuation continuation) {
        return androidx.room.util.b.f(this.f41971a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return g.p(z10, str, i10, i11, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object f(final String str, final int i10, final int i11, final boolean z10, Continuation continuation) {
        return androidx.room.util.b.e(this.f41971a, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f41956a.q(str, i10, i11, z10, (Continuation) obj);
            }
        }, continuation);
    }
}
