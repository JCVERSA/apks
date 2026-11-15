package defpackage;

import com.google.android.gms.internal.ads.ha;
import com.google.android.gms.internal.ads.zzgwn;
import java.util.List;

public final class asi implements bvi {
    public final ha a;

    public asi(ha haVar) {
        zsi.c(haVar, "output");
        this.a = haVar;
        haVar.a = this;
    }

    public static asi a(ha haVar) {
        asi asiVar = haVar.a;
        return asiVar != null ? asiVar : new asi(haVar);
    }

    @Override
    public final void A(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof osi)) {
            if (!z) {
                while (i2 < list.size()) {
                    ha haVar = this.a;
                    int iIntValue = ((Integer) list.get(i2)).intValue();
                    haVar.x(i, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                    i2++;
                }
                return;
            }
            ha haVar2 = this.a;
            haVar2.w(i, 2);
            int iE = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                int iIntValue2 = ((Integer) list.get(i3)).intValue();
                iE += ha.e((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
            }
            haVar2.y(iE);
            while (i2 < list.size()) {
                int iIntValue3 = ((Integer) list.get(i2)).intValue();
                haVar2.y((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
                i2++;
            }
            return;
        }
        osi osiVar = (osi) list;
        if (!z) {
            while (i2 < osiVar.size()) {
                ha haVar3 = this.a;
                int iC = osiVar.c(i2);
                haVar3.x(i, (iC >> 31) ^ (iC + iC));
                i2++;
            }
            return;
        }
        ha haVar4 = this.a;
        haVar4.w(i, 2);
        int iE2 = 0;
        for (int i4 = 0; i4 < osiVar.size(); i4++) {
            int iC2 = osiVar.c(i4);
            iE2 += ha.e((iC2 >> 31) ^ (iC2 + iC2));
        }
        haVar4.y(iE2);
        while (i2 < osiVar.size()) {
            int iC3 = osiVar.c(i2);
            haVar4.y((iC3 >> 31) ^ (iC3 + iC3));
            i2++;
        }
    }

    @Override
    public final void B(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof eti)) {
            if (!z) {
                while (i2 < list.size()) {
                    ha haVar = this.a;
                    long jLongValue = ((Long) list.get(i2)).longValue();
                    haVar.z(i, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                    i2++;
                }
                return;
            }
            ha haVar2 = this.a;
            haVar2.w(i, 2);
            int iF = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                long jLongValue2 = ((Long) list.get(i3)).longValue();
                iF += ha.f((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
            }
            haVar2.y(iF);
            while (i2 < list.size()) {
                long jLongValue3 = ((Long) list.get(i2)).longValue();
                haVar2.A((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
                i2++;
            }
            return;
        }
        eti etiVar = (eti) list;
        if (!z) {
            while (i2 < etiVar.size()) {
                ha haVar3 = this.a;
                long jC = etiVar.c(i2);
                haVar3.z(i, (jC >> 63) ^ (jC + jC));
                i2++;
            }
            return;
        }
        ha haVar4 = this.a;
        haVar4.w(i, 2);
        int iF2 = 0;
        for (int i4 = 0; i4 < etiVar.size(); i4++) {
            long jC2 = etiVar.c(i4);
            iF2 += ha.f((jC2 >> 63) ^ (jC2 + jC2));
        }
        haVar4.y(iF2);
        while (i2 < etiVar.size()) {
            long jC3 = etiVar.c(i2);
            haVar4.A((jC3 >> 63) ^ (jC3 + jC3));
            i2++;
        }
    }

    @Override
    public final void C(int i, List list) {
        int i2 = 0;
        if (!(list instanceof bti)) {
            while (i2 < list.size()) {
                this.a.v(i, (String) list.get(i2));
                i2++;
            }
            return;
        }
        bti btiVar = (bti) list;
        while (i2 < list.size()) {
            Object objZzc = btiVar.zzc();
            if (objZzc instanceof String) {
                this.a.v(i, (String) objZzc);
            } else {
                this.a.m(i, (zzgwn) objZzc);
            }
            i2++;
        }
    }

    @Override
    public final void D(int i, long j) {
        this.a.z(i, j);
    }

    @Override
    public final void E(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof eti)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.a.z(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            ha haVar = this.a;
            haVar.w(i, 2);
            int iF = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iF += ha.f(((Long) list.get(i3)).longValue());
            }
            haVar.y(iF);
            while (i2 < list.size()) {
                haVar.A(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        eti etiVar = (eti) list;
        if (!z) {
            while (i2 < etiVar.size()) {
                this.a.z(i, etiVar.c(i2));
                i2++;
            }
            return;
        }
        ha haVar2 = this.a;
        haVar2.w(i, 2);
        int iF2 = 0;
        for (int i4 = 0; i4 < etiVar.size(); i4++) {
            iF2 += ha.f(etiVar.c(i4));
        }
        haVar2.y(iF2);
        while (i2 < etiVar.size()) {
            haVar2.A(etiVar.c(i2));
            i2++;
        }
    }

    @Override
    public final void F(int i, Object obj, cui cuiVar) {
        this.a.u(i, (rti) obj, cuiVar);
    }

    @Override
    public final void G(int i, int i2) {
        this.a.o(i, i2);
    }

    @Override
    public final void H(int i, Object obj, cui cuiVar) {
        ha haVar = this.a;
        haVar.w(i, 3);
        cuiVar.c((rti) obj, haVar.a);
        haVar.w(i, 4);
    }

    @Override
    public final void I(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof osi)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.a.o(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            ha haVar = this.a;
            haVar.w(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).intValue();
                i3 += 4;
            }
            haVar.y(i3);
            while (i2 < list.size()) {
                haVar.p(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        osi osiVar = (osi) list;
        if (!z) {
            while (i2 < osiVar.size()) {
                this.a.o(i, osiVar.c(i2));
                i2++;
            }
            return;
        }
        ha haVar2 = this.a;
        haVar2.w(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < osiVar.size(); i6++) {
            osiVar.c(i6);
            i5 += 4;
        }
        haVar2.y(i5);
        while (i2 < osiVar.size()) {
            haVar2.p(osiVar.c(i2));
            i2++;
        }
    }

    @Override
    public final void J(int i, long j) {
        this.a.q(i, j);
    }

    @Override
    public final void b(int i, int i2) {
        this.a.s(i, i2);
    }

    @Override
    public final void c(int i, boolean z) {
        this.a.l(i, z);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public final void d(int i, List list, boolean z) {
        if (list instanceof ori) {
            ubc.a(list);
            if (!z) {
                throw null;
            }
            this.a.w(i, 2);
            throw null;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.a.l(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        ha haVar = this.a;
        haVar.w(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).booleanValue();
            i3++;
        }
        haVar.y(i3);
        while (i2 < list.size()) {
            haVar.k(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    @Override
    public final void e(int i, double d) {
        this.a.q(i, Double.doubleToRawLongBits(d));
    }

    @Override
    public final void f(int i, int i2) {
        this.a.o(i, i2);
    }

    @Override
    public final void g(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof osi)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.a.o(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            ha haVar = this.a;
            haVar.w(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).intValue();
                i3 += 4;
            }
            haVar.y(i3);
            while (i2 < list.size()) {
                haVar.p(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        osi osiVar = (osi) list;
        if (!z) {
            while (i2 < osiVar.size()) {
                this.a.o(i, osiVar.c(i2));
                i2++;
            }
            return;
        }
        ha haVar2 = this.a;
        haVar2.w(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < osiVar.size(); i6++) {
            osiVar.c(i6);
            i5 += 4;
        }
        haVar2.y(i5);
        while (i2 < osiVar.size()) {
            haVar2.p(osiVar.c(i2));
            i2++;
        }
    }

    @Override
    public final void h(int i, int i2) {
        this.a.s(i, i2);
    }

    @Override
    public final void i(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof osi)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.a.s(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            ha haVar = this.a;
            haVar.w(i, 2);
            int iF = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iF += ha.f(((Integer) list.get(i3)).intValue());
            }
            haVar.y(iF);
            while (i2 < list.size()) {
                haVar.t(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        osi osiVar = (osi) list;
        if (!z) {
            while (i2 < osiVar.size()) {
                this.a.s(i, osiVar.c(i2));
                i2++;
            }
            return;
        }
        ha haVar2 = this.a;
        haVar2.w(i, 2);
        int iF2 = 0;
        for (int i4 = 0; i4 < osiVar.size(); i4++) {
            iF2 += ha.f(osiVar.c(i4));
        }
        haVar2.y(iF2);
        while (i2 < osiVar.size()) {
            haVar2.t(osiVar.c(i2));
            i2++;
        }
    }

    @Override
    public final void j(int i, float f) {
        this.a.o(i, Float.floatToRawIntBits(f));
    }

    @Override
    public final void k(int i, List list, boolean z) {
        if (list instanceof bsi) {
            ubc.a(list);
            if (!z) {
                throw null;
            }
            this.a.w(i, 2);
            throw null;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.a.q(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        ha haVar = this.a;
        haVar.w(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).doubleValue();
            i3 += 8;
        }
        haVar.y(i3);
        while (i2 < list.size()) {
            haVar.r(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    @Override
    public final void l(int i, long j) {
        this.a.q(i, j);
    }

    @Override
    public final void m(int i, List list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.a.m(i, (zzgwn) list.get(i2));
        }
    }

    @Override
    public final void n(int i, long j) {
        this.a.z(i, j);
    }

    @Override
    public final void o(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof osi)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.a.s(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            ha haVar = this.a;
            haVar.w(i, 2);
            int iF = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iF += ha.f(((Integer) list.get(i3)).intValue());
            }
            haVar.y(iF);
            while (i2 < list.size()) {
                haVar.t(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        osi osiVar = (osi) list;
        if (!z) {
            while (i2 < osiVar.size()) {
                this.a.s(i, osiVar.c(i2));
                i2++;
            }
            return;
        }
        ha haVar2 = this.a;
        haVar2.w(i, 2);
        int iF2 = 0;
        for (int i4 = 0; i4 < osiVar.size(); i4++) {
            iF2 += ha.f(osiVar.c(i4));
        }
        haVar2.y(iF2);
        while (i2 < osiVar.size()) {
            haVar2.t(osiVar.c(i2));
            i2++;
        }
    }

    @Override
    public final void p(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof eti)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.a.q(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            ha haVar = this.a;
            haVar.w(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).longValue();
                i3 += 8;
            }
            haVar.y(i3);
            while (i2 < list.size()) {
                haVar.r(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        eti etiVar = (eti) list;
        if (!z) {
            while (i2 < etiVar.size()) {
                this.a.q(i, etiVar.c(i2));
                i2++;
            }
            return;
        }
        ha haVar2 = this.a;
        haVar2.w(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < etiVar.size(); i6++) {
            etiVar.c(i6);
            i5 += 8;
        }
        haVar2.y(i5);
        while (i2 < etiVar.size()) {
            haVar2.r(etiVar.c(i2));
            i2++;
        }
    }

    @Override
    public final void q(int i, List list, boolean z) {
        if (list instanceof isi) {
            ubc.a(list);
            if (!z) {
                throw null;
            }
            this.a.w(i, 2);
            throw null;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.a.o(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        ha haVar = this.a;
        haVar.w(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).floatValue();
            i3 += 4;
        }
        haVar.y(i3);
        while (i2 < list.size()) {
            haVar.p(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    @Override
    public final void r(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof eti)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.a.z(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            ha haVar = this.a;
            haVar.w(i, 2);
            int iF = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iF += ha.f(((Long) list.get(i3)).longValue());
            }
            haVar.y(iF);
            while (i2 < list.size()) {
                haVar.A(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        eti etiVar = (eti) list;
        if (!z) {
            while (i2 < etiVar.size()) {
                this.a.z(i, etiVar.c(i2));
                i2++;
            }
            return;
        }
        ha haVar2 = this.a;
        haVar2.w(i, 2);
        int iF2 = 0;
        for (int i4 = 0; i4 < etiVar.size(); i4++) {
            iF2 += ha.f(etiVar.c(i4));
        }
        haVar2.y(iF2);
        while (i2 < etiVar.size()) {
            haVar2.A(etiVar.c(i2));
            i2++;
        }
    }

    @Override
    public final void s(int i, String str) {
        this.a.v(i, str);
    }

    @Override
    public final void t(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof eti)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.a.q(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            ha haVar = this.a;
            haVar.w(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).longValue();
                i3 += 8;
            }
            haVar.y(i3);
            while (i2 < list.size()) {
                haVar.r(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        eti etiVar = (eti) list;
        if (!z) {
            while (i2 < etiVar.size()) {
                this.a.q(i, etiVar.c(i2));
                i2++;
            }
            return;
        }
        ha haVar2 = this.a;
        haVar2.w(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < etiVar.size(); i6++) {
            etiVar.c(i6);
            i5 += 8;
        }
        haVar2.y(i5);
        while (i2 < etiVar.size()) {
            haVar2.r(etiVar.c(i2));
            i2++;
        }
    }

    @Override
    public final void u(int i, long j) {
        ha haVar = this.a;
        haVar.z(i, (j >> 63) ^ (j + j));
    }

    @Override
    public final void v(int i, zzgwn zzgwnVar) {
        this.a.m(i, zzgwnVar);
    }

    @Override
    public final void w(int i, int i2) {
        ha haVar = this.a;
        haVar.x(i, (i2 >> 31) ^ (i2 + i2));
    }

    @Override
    public final void x(int i) {
        this.a.w(i, 3);
    }

    @Override
    public final void y(int i, int i2) {
        this.a.x(i, i2);
    }

    @Override
    public final void z(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof osi)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.a.x(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            ha haVar = this.a;
            haVar.w(i, 2);
            int iE = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iE += ha.e(((Integer) list.get(i3)).intValue());
            }
            haVar.y(iE);
            while (i2 < list.size()) {
                haVar.y(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        osi osiVar = (osi) list;
        if (!z) {
            while (i2 < osiVar.size()) {
                this.a.x(i, osiVar.c(i2));
                i2++;
            }
            return;
        }
        ha haVar2 = this.a;
        haVar2.w(i, 2);
        int iE2 = 0;
        for (int i4 = 0; i4 < osiVar.size(); i4++) {
            iE2 += ha.e(osiVar.c(i4));
        }
        haVar2.y(iE2);
        while (i2 < osiVar.size()) {
            haVar2.y(osiVar.c(i2));
            i2++;
        }
    }

    @Override
    public final void zzh(int i) {
        this.a.w(i, 4);
    }
}
