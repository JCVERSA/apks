package com.transsion.ad.db.pslink;

import androidx.room.RoomDatabase;
import androidx.room.e;
import androidx.room.g;
import androidx.room.util.i;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class b implements com.transsion.ad.db.pslink.a {

    private final RoomDatabase f41059a;

    private final AttributionPoint.b f41061c = new AttributionPoint.b();

    private final g f41060b = new a();

    private final e f41062d = new C0568b();

    private final e f41063e = new c();

    class a extends g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR ABORT INTO `attribution_points` (`id`,`psId`,`failCount`,`reportUrl`,`type`,`updateTimestamp`) VALUES (nullif(?, 0),?,?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, AttributionPoint attributionPoint) {
            eVar.c(1, attributionPoint.getId());
            if (attributionPoint.getPsId() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, attributionPoint.getPsId());
            }
            eVar.c(3, attributionPoint.getFailCount());
            if (attributionPoint.getReportUrl() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, attributionPoint.getReportUrl());
            }
            String strA = b.this.f41061c.a(attributionPoint.getType());
            if (strA == null) {
                eVar.g(5);
            } else {
                eVar.i(5, strA);
            }
            eVar.c(6, attributionPoint.getUpdateTimestamp());
        }
    }

    class C0568b extends e {
        C0568b() {
        }

        @Override
        protected String b() {
            return "DELETE FROM `attribution_points` WHERE `id` = ?";
        }

        @Override
        public void a(y3.e eVar, AttributionPoint attributionPoint) {
            eVar.c(1, attributionPoint.getId());
        }
    }

    class c extends e {
        c() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `attribution_points` SET `id` = ?,`psId` = ?,`failCount` = ?,`reportUrl` = ?,`type` = ?,`updateTimestamp` = ? WHERE `id` = ?";
        }

        @Override
        public void a(y3.e eVar, AttributionPoint attributionPoint) {
            eVar.c(1, attributionPoint.getId());
            if (attributionPoint.getPsId() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, attributionPoint.getPsId());
            }
            eVar.c(3, attributionPoint.getFailCount());
            if (attributionPoint.getReportUrl() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, attributionPoint.getReportUrl());
            }
            String strA = b.this.f41061c.a(attributionPoint.getType());
            if (strA == null) {
                eVar.g(5);
            } else {
                eVar.i(5, strA);
            }
            eVar.c(6, attributionPoint.getUpdateTimestamp());
            eVar.c(7, attributionPoint.getId());
        }
    }

    public b(RoomDatabase roomDatabase) {
        this.f41059a = roomDatabase;
    }

    public static List l() {
        return Collections.emptyList();
    }

    public Unit m(AttributionPoint attributionPoint, y3.b bVar) throws Exception {
        this.f41062d.c(bVar, attributionPoint);
        return Unit.f64096a;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public AttributionPoint n(long j10, long j11, y3.b bVar) throws Throwable {
        y3.e eVarF0 = bVar.F0("SELECT * FROM attribution_points WHERE ? - updateTimestamp >= ? ORDER BY CASE type WHEN 'CLICK' THEN 0 ELSE 1 END, failCount ASC, updateTimestamp DESC LIMIT 1");
        try {
            eVarF0.c(1, j10);
            eVarF0.c(2, j11);
            int iC = i.c(eVarF0, "id");
            int iC2 = i.c(eVarF0, "psId");
            int iC3 = i.c(eVarF0, "failCount");
            int iC4 = i.c(eVarF0, "reportUrl");
            int iC5 = i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC6 = i.c(eVarF0, "updateTimestamp");
            AttributionPoint attributionPoint = null;
            if (eVarF0.C0()) {
                try {
                    attributionPoint = new AttributionPoint((int) eVarF0.getLong(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), (int) eVarF0.getLong(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), this.f41061c.b(eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5)), eVarF0.getLong(iC6));
                } catch (Throwable th2) {
                    th = th2;
                    eVarF0.close();
                    throw th;
                }
            }
            eVarF0.close();
            return attributionPoint;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public Unit o(AttributionPoint attributionPoint, y3.b bVar) throws Exception {
        this.f41060b.d(bVar, attributionPoint);
        return Unit.f64096a;
    }

    public Boolean p(String str, AttributionPoint.AttributionType attributionType, String str2, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT EXISTS(SELECT 1 FROM attribution_points WHERE psId = ? AND type = ? AND reportUrl = ?)");
        boolean z10 = true;
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            String strA = this.f41061c.a(attributionType);
            if (strA == null) {
                eVarF0.g(2);
            } else {
                eVarF0.i(2, strA);
            }
            if (str2 == null) {
                eVarF0.g(3);
            } else {
                eVarF0.i(3, str2);
            }
            Boolean boolValueOf = null;
            if (eVarF0.C0()) {
                Integer numValueOf = eVarF0.isNull(0) ? null : Integer.valueOf((int) eVarF0.getLong(0));
                if (numValueOf != null) {
                    if (numValueOf.intValue() == 0) {
                        z10 = false;
                    }
                    boolValueOf = Boolean.valueOf(z10);
                }
            }
            eVarF0.close();
            return boolValueOf;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public Unit q(AttributionPoint attributionPoint, y3.b bVar) throws Exception {
        this.f41063e.c(bVar, attributionPoint);
        return Unit.f64096a;
    }

    @Override
    public Object a(final AttributionPoint attributionPoint, Continuation continuation) {
        attributionPoint.getClass();
        return androidx.room.util.b.f(this.f41059a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f73624a.m(attributionPoint, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final AttributionPoint attributionPoint, Continuation continuation) {
        attributionPoint.getClass();
        return androidx.room.util.b.f(this.f41059a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f73629a.q(attributionPoint, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(final String str, final AttributionPoint.AttributionType attributionType, final String str2, Continuation continuation) {
        return androidx.room.util.b.f(this.f41059a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f73618a.p(str, attributionType, str2, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object d(final long j10, final long j11, Continuation continuation) {
        return androidx.room.util.b.f(this.f41059a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f73626a.n(j10, j11, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object e(final AttributionPoint attributionPoint, Continuation continuation) {
        attributionPoint.getClass();
        return androidx.room.util.b.f(this.f41059a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f73622a.o(attributionPoint, (y3.b) obj);
            }
        }, continuation);
    }
}
