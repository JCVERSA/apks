package androidx.compose.foundation.layout;

import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

final class BoxMeasurePolicy implements androidx.compose.ui.layout.t {

    private final androidx.compose.ui.b f2433a;

    private final boolean f2434b;

    public BoxMeasurePolicy(androidx.compose.ui.b bVar, boolean z10) {
        this.f2433a = bVar;
        this.f2434b = z10;
    }

    @Override
    public androidx.compose.ui.layout.v c(final androidx.compose.ui.layout.x xVar, final List list, long j10) {
        int iN;
        int iM;
        androidx.compose.ui.layout.g0 g0VarP;
        if (list.isEmpty()) {
            return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j10), o0.b.m(j10), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() {
                public final void invoke(androidx.compose.ui.layout.g0.a aVar) {
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((androidx.compose.ui.layout.g0.a) obj);
                    return Unit.f64096a;
                }
            }, 4, null);
        }
        long jD = this.f2434b ? j10 : o0.b.d(j10, 0, 0, 0, 0, 10, null);
        if (list.size() == 1) {
            final androidx.compose.ui.layout.s sVar = (androidx.compose.ui.layout.s) list.get(0);
            if (BoxKt.g(sVar)) {
                iN = o0.b.n(j10);
                iM = o0.b.m(j10);
                g0VarP = sVar.P(o0.b.f67397b.c(o0.b.n(j10), o0.b.m(j10)));
            } else {
                g0VarP = sVar.P(jD);
                iN = Math.max(o0.b.n(j10), g0VarP.u0());
                iM = Math.max(o0.b.m(j10), g0VarP.l0());
            }
            final int i10 = iN;
            final int i11 = iM;
            final androidx.compose.ui.layout.g0 g0Var = g0VarP;
            return androidx.compose.ui.layout.w.b(xVar, i10, i11, null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((androidx.compose.ui.layout.g0.a) obj);
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.ui.layout.g0.a aVar) {
                    BoxKt.i(aVar, g0Var, sVar, xVar.getLayoutDirection(), i10, i11, this.f2433a);
                }
            }, 4, null);
        }
        final androidx.compose.ui.layout.g0[] g0VarArr = new androidx.compose.ui.layout.g0[list.size()];
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = o0.b.n(j10);
        final Ref.IntRef intRef2 = new Ref.IntRef();
        intRef2.element = o0.b.m(j10);
        int size = list.size();
        boolean z10 = false;
        for (int i12 = 0; i12 < size; i12++) {
            androidx.compose.ui.layout.s sVar2 = (androidx.compose.ui.layout.s) list.get(i12);
            if (BoxKt.g(sVar2)) {
                z10 = true;
            } else {
                androidx.compose.ui.layout.g0 g0VarP2 = sVar2.P(jD);
                g0VarArr[i12] = g0VarP2;
                intRef.element = Math.max(intRef.element, g0VarP2.u0());
                intRef2.element = Math.max(intRef2.element, g0VarP2.l0());
            }
        }
        if (z10) {
            int i13 = intRef.element;
            int i14 = i13 != Integer.MAX_VALUE ? i13 : 0;
            int i15 = intRef2.element;
            long jA = o0.c.a(i14, i13, i15 != Integer.MAX_VALUE ? i15 : 0, i15);
            int size2 = list.size();
            for (int i16 = 0; i16 < size2; i16++) {
                androidx.compose.ui.layout.s sVar3 = (androidx.compose.ui.layout.s) list.get(i16);
                if (BoxKt.g(sVar3)) {
                    g0VarArr[i16] = sVar3.P(jA);
                }
            }
        }
        return androidx.compose.ui.layout.w.b(xVar, intRef.element, intRef2.element, null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((androidx.compose.ui.layout.g0.a) obj);
                return Unit.f64096a;
            }

            public final void invoke(androidx.compose.ui.layout.g0.a aVar) {
                androidx.compose.ui.layout.g0[] g0VarArr2 = g0VarArr;
                List<androidx.compose.ui.layout.s> list2 = list;
                androidx.compose.ui.layout.x xVar2 = xVar;
                Ref.IntRef intRef3 = intRef;
                Ref.IntRef intRef4 = intRef2;
                BoxMeasurePolicy boxMeasurePolicy = this;
                int length = g0VarArr2.length;
                int i17 = 0;
                int i18 = 0;
                while (i17 < length) {
                    androidx.compose.ui.layout.g0 g0Var2 = g0VarArr2[i17];
                    Intrinsics.f(g0Var2, "null cannot be cast to non-null type androidx.compose.ui.layout.Placeable");
                    BoxKt.i(aVar, g0Var2, list2.get(i18), xVar2.getLayoutDirection(), intRef3.element, intRef4.element, boxMeasurePolicy.f2433a);
                    i17++;
                    i18++;
                }
            }
        }, 4, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BoxMeasurePolicy)) {
            return false;
        }
        BoxMeasurePolicy boxMeasurePolicy = (BoxMeasurePolicy) obj;
        return Intrinsics.c(this.f2433a, boxMeasurePolicy.f2433a) && this.f2434b == boxMeasurePolicy.f2434b;
    }

    public int hashCode() {
        return (this.f2433a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f2434b);
    }

    public String toString() {
        return "BoxMeasurePolicy(alignment=" + this.f2433a + ", propagateMinConstraints=" + this.f2434b + ')';
    }
}
