package defpackage;

import com.google.android.gms.internal.play_billing.zzfp;
import java.util.List;
import java.util.Map;

public final class e5i implements a5j {
    public final o4i a;

    public e5i(o4i o4iVar) {
        this.a = o4iVar;
        o4iVar.a = this;
    }

    public static e5i J(o4i o4iVar) {
        Object obj = o4iVar.a;
        return obj != null ? (e5i) obj : new e5i(o4iVar);
    }

    @Override
    public final void A(int i, Object obj, u1j u1jVar) {
        o4i o4iVar = this.a;
        o4iVar.q(i, 3);
        u1jVar.e((plh) obj, this);
        o4iVar.q(i, 4);
    }

    @Override
    public final void B(int i, int i2) {
        this.a.r(i, i2);
    }

    @Override
    public final void C(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof mmi)) {
            if (!z) {
                while (i2 < list.size()) {
                    o4i o4iVar = this.a;
                    int iIntValue = ((Integer) list.get(i2)).intValue();
                    o4iVar.r(i, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                    i2++;
                }
                return;
            }
            o4i o4iVar2 = this.a;
            o4iVar2.q(i, 2);
            int iW = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                int iIntValue2 = ((Integer) list.get(i3)).intValue();
                iW += o4i.w((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
            }
            o4iVar2.s(iW);
            while (i2 < list.size()) {
                int iIntValue3 = ((Integer) list.get(i2)).intValue();
                o4iVar2.s((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
                i2++;
            }
            return;
        }
        mmi mmiVar = (mmi) list;
        if (!z) {
            while (i2 < mmiVar.size()) {
                o4i o4iVar3 = this.a;
                int iF = mmiVar.f(i2);
                o4iVar3.r(i, (iF >> 31) ^ (iF + iF));
                i2++;
            }
            return;
        }
        o4i o4iVar4 = this.a;
        o4iVar4.q(i, 2);
        int iW2 = 0;
        for (int i4 = 0; i4 < mmiVar.size(); i4++) {
            int iF2 = mmiVar.f(i4);
            iW2 += o4i.w((iF2 >> 31) ^ (iF2 + iF2));
        }
        o4iVar4.s(iW2);
        while (i2 < mmiVar.size()) {
            int iF3 = mmiVar.f(i2);
            o4iVar4.s((iF3 >> 31) ^ (iF3 + iF3));
            i2++;
        }
    }

    @Override
    public final void D(int i, zzfp zzfpVar) {
        this.a.f(i, zzfpVar);
    }

    @Override
    public final void E(int i, ozi oziVar, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            o4i o4iVar = this.a;
            o4iVar.q(i, 2);
            o4iVar.s(rzi.b(oziVar, entry.getKey(), entry.getValue()));
            rzi.e(o4iVar, oziVar, entry.getKey(), entry.getValue());
        }
    }

    @Override
    public final void F(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof mmi)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.a.r(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            o4i o4iVar = this.a;
            o4iVar.q(i, 2);
            int iW = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iW += o4i.w(((Integer) list.get(i3)).intValue());
            }
            o4iVar.s(iW);
            while (i2 < list.size()) {
                o4iVar.s(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        mmi mmiVar = (mmi) list;
        if (!z) {
            while (i2 < mmiVar.size()) {
                this.a.r(i, mmiVar.f(i2));
                i2++;
            }
            return;
        }
        o4i o4iVar2 = this.a;
        o4iVar2.q(i, 2);
        int iW2 = 0;
        for (int i4 = 0; i4 < mmiVar.size(); i4++) {
            iW2 += o4i.w(mmiVar.f(i4));
        }
        o4iVar2.s(iW2);
        while (i2 < mmiVar.size()) {
            o4iVar2.s(mmiVar.f(i2));
            i2++;
        }
    }

    @Override
    public final void G(int i, List list, boolean z) {
        if (list instanceof kzi) {
            ubc.a(list);
            if (!z) {
                throw null;
            }
            this.a.q(i, 2);
            throw null;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.a.t(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        o4i o4iVar = this.a;
        o4iVar.q(i, 2);
        int iX = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iX += o4i.x(((Long) list.get(i3)).longValue());
        }
        o4iVar.s(iX);
        while (i2 < list.size()) {
            o4iVar.u(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override
    public final void H(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof mmi)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.a.h(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            o4i o4iVar = this.a;
            o4iVar.q(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).intValue();
                i3 += 4;
            }
            o4iVar.s(i3);
            while (i2 < list.size()) {
                o4iVar.i(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        mmi mmiVar = (mmi) list;
        if (!z) {
            while (i2 < mmiVar.size()) {
                this.a.h(i, mmiVar.f(i2));
                i2++;
            }
            return;
        }
        o4i o4iVar2 = this.a;
        o4iVar2.q(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < mmiVar.size(); i6++) {
            mmiVar.f(i6);
            i5 += 4;
        }
        o4iVar2.s(i5);
        while (i2 < mmiVar.size()) {
            o4iVar2.i(mmiVar.f(i2));
            i2++;
        }
    }

    @Override
    public final void I(int i, int i2) {
        this.a.h(i, i2);
    }

    @Override
    public final void a(int i, long j) {
        this.a.j(i, j);
    }

    @Override
    public final void b(int i, int i2) {
        this.a.l(i, i2);
    }

    @Override
    public final void c(int i, boolean z) {
        this.a.d(i, z);
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
        if (list instanceof sqh) {
            ubc.a(list);
            if (!z) {
                throw null;
            }
            this.a.q(i, 2);
            throw null;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.a.d(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        o4i o4iVar = this.a;
        o4iVar.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).booleanValue();
            i3++;
        }
        o4iVar.s(i3);
        while (i2 < list.size()) {
            o4iVar.c(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    @Override
    public final void e(int i, double d) {
        this.a.j(i, Double.doubleToRawLongBits(d));
    }

    @Override
    public final void f(int i, int i2) {
        this.a.h(i, i2);
    }

    @Override
    public final void g(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof mmi)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.a.h(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            o4i o4iVar = this.a;
            o4iVar.q(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).intValue();
                i3 += 4;
            }
            o4iVar.s(i3);
            while (i2 < list.size()) {
                o4iVar.i(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        mmi mmiVar = (mmi) list;
        if (!z) {
            while (i2 < mmiVar.size()) {
                this.a.h(i, mmiVar.f(i2));
                i2++;
            }
            return;
        }
        o4i o4iVar2 = this.a;
        o4iVar2.q(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < mmiVar.size(); i6++) {
            mmiVar.f(i6);
            i5 += 4;
        }
        o4iVar2.s(i5);
        while (i2 < mmiVar.size()) {
            o4iVar2.i(mmiVar.f(i2));
            i2++;
        }
    }

    @Override
    public final void h(int i, int i2) {
        this.a.l(i, i2);
    }

    @Override
    public final void i(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof mmi)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.a.l(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            o4i o4iVar = this.a;
            o4iVar.q(i, 2);
            int iX = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iX += o4i.x(((Integer) list.get(i3)).intValue());
            }
            o4iVar.s(iX);
            while (i2 < list.size()) {
                o4iVar.m(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        mmi mmiVar = (mmi) list;
        if (!z) {
            while (i2 < mmiVar.size()) {
                this.a.l(i, mmiVar.f(i2));
                i2++;
            }
            return;
        }
        o4i o4iVar2 = this.a;
        o4iVar2.q(i, 2);
        int iX2 = 0;
        for (int i4 = 0; i4 < mmiVar.size(); i4++) {
            iX2 += o4i.x(mmiVar.f(i4));
        }
        o4iVar2.s(iX2);
        while (i2 < mmiVar.size()) {
            o4iVar2.m(mmiVar.f(i2));
            i2++;
        }
    }

    @Override
    public final void j(int i, float f) {
        this.a.h(i, Float.floatToRawIntBits(f));
    }

    @Override
    public final void k(int i, List list, boolean z) {
        if (list instanceof t5i) {
            ubc.a(list);
            if (!z) {
                throw null;
            }
            this.a.q(i, 2);
            throw null;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.a.j(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        o4i o4iVar = this.a;
        o4iVar.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).doubleValue();
            i3 += 8;
        }
        o4iVar.s(i3);
        while (i2 < list.size()) {
            o4iVar.k(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    @Override
    public final void l(int i, long j) {
        this.a.j(i, j);
    }

    @Override
    public final void m(int i, List list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.a.f(i, (zzfp) list.get(i2));
        }
    }

    @Override
    public final void n(int i, long j) {
        this.a.t(i, j);
    }

    @Override
    public final void o(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof mmi)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.a.l(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            o4i o4iVar = this.a;
            o4iVar.q(i, 2);
            int iX = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iX += o4i.x(((Integer) list.get(i3)).intValue());
            }
            o4iVar.s(iX);
            while (i2 < list.size()) {
                o4iVar.m(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        mmi mmiVar = (mmi) list;
        if (!z) {
            while (i2 < mmiVar.size()) {
                this.a.l(i, mmiVar.f(i2));
                i2++;
            }
            return;
        }
        o4i o4iVar2 = this.a;
        o4iVar2.q(i, 2);
        int iX2 = 0;
        for (int i4 = 0; i4 < mmiVar.size(); i4++) {
            iX2 += o4i.x(mmiVar.f(i4));
        }
        o4iVar2.s(iX2);
        while (i2 < mmiVar.size()) {
            o4iVar2.m(mmiVar.f(i2));
            i2++;
        }
    }

    @Override
    public final void p(int i, List list, boolean z) {
        if (list instanceof kzi) {
            ubc.a(list);
            if (!z) {
                throw null;
            }
            this.a.q(i, 2);
            throw null;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.a.j(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        o4i o4iVar = this.a;
        o4iVar.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).longValue();
            i3 += 8;
        }
        o4iVar.s(i3);
        while (i2 < list.size()) {
            o4iVar.k(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override
    public final void q(int i, List list, boolean z) {
        if (list instanceof bfi) {
            ubc.a(list);
            if (!z) {
                throw null;
            }
            this.a.q(i, 2);
            throw null;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.a.h(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        o4i o4iVar = this.a;
        o4iVar.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).floatValue();
            i3 += 4;
        }
        o4iVar.s(i3);
        while (i2 < list.size()) {
            o4iVar.i(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    @Override
    public final void r(int i, List list, boolean z) {
        if (list instanceof kzi) {
            ubc.a(list);
            if (!z) {
                throw null;
            }
            this.a.q(i, 2);
            throw null;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.a.t(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        o4i o4iVar = this.a;
        o4iVar.q(i, 2);
        int iX = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iX += o4i.x(((Long) list.get(i3)).longValue());
        }
        o4iVar.s(iX);
        while (i2 < list.size()) {
            o4iVar.u(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override
    public final void s(int i, String str) {
        this.a.o(i, str);
    }

    @Override
    public final void t(int i, Object obj, u1j u1jVar) {
        o4i o4iVar = this.a;
        plh plhVar = (plh) obj;
        o4iVar.q(i, 2);
        o4iVar.s(plhVar.c(u1jVar));
        u1jVar.e(plhVar, this);
    }

    @Override
    public final void u(int i, long j) {
        o4i o4iVar = this.a;
        o4iVar.t(i, (j >> 63) ^ (j + j));
    }

    @Override
    public final void v(int i, int i2) {
        o4i o4iVar = this.a;
        o4iVar.r(i, (i2 >> 31) ^ (i2 + i2));
    }

    @Override
    public final void w(int i, List list, boolean z) {
        if (list instanceof kzi) {
            ubc.a(list);
            if (!z) {
                throw null;
            }
            this.a.q(i, 2);
            throw null;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                o4i o4iVar = this.a;
                long jLongValue = ((Long) list.get(i2)).longValue();
                o4iVar.t(i, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                i2++;
            }
            return;
        }
        o4i o4iVar2 = this.a;
        o4iVar2.q(i, 2);
        int iX = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            long jLongValue2 = ((Long) list.get(i3)).longValue();
            iX += o4i.x((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
        }
        o4iVar2.s(iX);
        while (i2 < list.size()) {
            long jLongValue3 = ((Long) list.get(i2)).longValue();
            o4iVar2.u((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
            i2++;
        }
    }

    @Override
    public final void x(int i, long j) {
        this.a.t(i, j);
    }

    @Override
    public final void y(int i, List list, boolean z) {
        if (list instanceof kzi) {
            ubc.a(list);
            if (!z) {
                throw null;
            }
            this.a.q(i, 2);
            throw null;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.a.j(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        o4i o4iVar = this.a;
        o4iVar.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).longValue();
            i3 += 8;
        }
        o4iVar.s(i3);
        while (i2 < list.size()) {
            o4iVar.k(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override
    public final void z(int i, List list) {
        int i2 = 0;
        if (!(list instanceof mwi)) {
            while (i2 < list.size()) {
                this.a.o(i, (String) list.get(i2));
                i2++;
            }
            return;
        }
        mwi mwiVar = (mwi) list;
        while (i2 < list.size()) {
            Object objZza = mwiVar.zza();
            if (objZza instanceof String) {
                this.a.o(i, (String) objZza);
            } else {
                this.a.f(i, (zzfp) objZza);
            }
            i2++;
        }
    }

    @Override
    public final void zzG(int i) {
        this.a.q(i, 3);
    }

    @Override
    public final void zzh(int i) {
        this.a.q(i, 4);
    }
}
