package androidx.compose.animation.core;

import java.util.Iterator;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class c1 implements b1 {

    private final q f2102a;

    private o f2103b;

    private o f2104c;

    private o f2105d;

    public static final class a implements q {

        final d0 f2106a;

        a(d0 d0Var) {
            this.f2106a = d0Var;
        }

        @Override
        public d0 get(int i10) {
            return this.f2106a;
        }
    }

    public c1(q qVar) {
        this.f2102a = qVar;
    }

    @Override
    public boolean a() {
        return a1.a(this);
    }

    @Override
    public o c(o oVar, o oVar2, o oVar3) {
        if (this.f2105d == null) {
            this.f2105d = p.g(oVar3);
        }
        o oVar4 = this.f2105d;
        if (oVar4 == null) {
            Intrinsics.y("endVelocityVector");
            oVar4 = null;
        }
        int iB = oVar4.b();
        for (int i10 = 0; i10 < iB; i10++) {
            o oVar5 = this.f2105d;
            if (oVar5 == null) {
                Intrinsics.y("endVelocityVector");
                oVar5 = null;
            }
            oVar5.e(i10, this.f2102a.get(i10).b(oVar.a(i10), oVar2.a(i10), oVar3.a(i10)));
        }
        o oVar6 = this.f2105d;
        if (oVar6 != null) {
            return oVar6;
        }
        Intrinsics.y("endVelocityVector");
        return null;
    }

    @Override
    public o e(long j10, o oVar, o oVar2, o oVar3) {
        if (this.f2104c == null) {
            this.f2104c = p.g(oVar3);
        }
        o oVar4 = this.f2104c;
        if (oVar4 == null) {
            Intrinsics.y("velocityVector");
            oVar4 = null;
        }
        int iB = oVar4.b();
        for (int i10 = 0; i10 < iB; i10++) {
            o oVar5 = this.f2104c;
            if (oVar5 == null) {
                Intrinsics.y("velocityVector");
                oVar5 = null;
            }
            oVar5.e(i10, this.f2102a.get(i10).d(j10, oVar.a(i10), oVar2.a(i10), oVar3.a(i10)));
        }
        o oVar6 = this.f2104c;
        if (oVar6 != null) {
            return oVar6;
        }
        Intrinsics.y("velocityVector");
        return null;
    }

    @Override
    public long f(o oVar, o oVar2, o oVar3) {
        Iterator<Integer> it = RangesKt.s(0, oVar.b()).iterator();
        long jMax = 0;
        while (it.hasNext()) {
            int iA = ((IntIterator) it).a();
            jMax = Math.max(jMax, this.f2102a.get(iA).e(oVar.a(iA), oVar2.a(iA), oVar3.a(iA)));
        }
        return jMax;
    }

    @Override
    public o g(long j10, o oVar, o oVar2, o oVar3) {
        if (this.f2103b == null) {
            this.f2103b = p.g(oVar);
        }
        o oVar4 = this.f2103b;
        if (oVar4 == null) {
            Intrinsics.y("valueVector");
            oVar4 = null;
        }
        int iB = oVar4.b();
        for (int i10 = 0; i10 < iB; i10++) {
            o oVar5 = this.f2103b;
            if (oVar5 == null) {
                Intrinsics.y("valueVector");
                oVar5 = null;
            }
            oVar5.e(i10, this.f2102a.get(i10).c(j10, oVar.a(i10), oVar2.a(i10), oVar3.a(i10)));
        }
        o oVar6 = this.f2103b;
        if (oVar6 != null) {
            return oVar6;
        }
        Intrinsics.y("valueVector");
        return null;
    }

    public c1(d0 d0Var) {
        this(new a(d0Var));
    }
}
