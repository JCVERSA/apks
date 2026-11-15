package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class ColumnMeasurePolicy implements androidx.compose.ui.layout.t, x {

    private final b.k f2436a;

    private final androidx.compose.ui.b.InterfaceC0036b f2437b;

    public ColumnMeasurePolicy(b.k kVar, androidx.compose.ui.b.InterfaceC0036b interfaceC0036b) {
        this.f2436a = kVar;
        this.f2437b = interfaceC0036b;
    }

    public final int h(androidx.compose.ui.layout.g0 g0Var, z zVar, int i10, int i11, LayoutDirection layoutDirection) {
        m mVarA = zVar != null ? zVar.a() : null;
        return mVarA != null ? mVarA.a(i10 - g0Var.u0(), layoutDirection, g0Var, i11) : this.f2437b.a(0, i10 - g0Var.u0(), layoutDirection);
    }

    @Override
    public long a(int i10, int i11, int i12, int i13, boolean z10) {
        return i.b(z10, i10, i11, i12, i13);
    }

    @Override
    public void b(int i10, int[] iArr, int[] iArr2, androidx.compose.ui.layout.x xVar) {
        this.f2436a.c(xVar, i10, iArr, iArr2);
    }

    @Override
    public androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j10) {
        return y.a(this, o0.b.m(j10), o0.b.n(j10), o0.b.k(j10), o0.b.l(j10), xVar.c0(this.f2436a.a()), xVar, list, new androidx.compose.ui.layout.g0[list.size()], 0, list.size(), (3072 & 1024) != 0 ? null : null, (3072 & 2048) != 0 ? 0 : 0);
    }

    @Override
    public androidx.compose.ui.layout.v d(final androidx.compose.ui.layout.g0[] g0VarArr, final androidx.compose.ui.layout.x xVar, final int i10, final int[] iArr, int i11, final int i12, int[] iArr2, int i13, int i14, int i15) {
        return androidx.compose.ui.layout.w.b(xVar, i12, i11, null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() {
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
                androidx.compose.ui.layout.g0[] g0VarArr2 = g0VarArr;
                ColumnMeasurePolicy columnMeasurePolicy = this;
                int i16 = i12;
                int i17 = i10;
                androidx.compose.ui.layout.x xVar2 = xVar;
                int[] iArr3 = iArr;
                int length = g0VarArr2.length;
                int i18 = 0;
                int i19 = 0;
                while (i18 < length) {
                    androidx.compose.ui.layout.g0 g0Var = g0VarArr2[i18];
                    Intrinsics.e(g0Var);
                    androidx.compose.ui.layout.g0.a.h(aVar, g0Var, columnMeasurePolicy.h(g0Var, v.d(g0Var), i16, i17, xVar2.getLayoutDirection()), iArr3[i19], 0.0f, 4, null);
                    i18++;
                    i19++;
                }
            }
        }, 4, null);
    }

    @Override
    public int e(androidx.compose.ui.layout.g0 g0Var) {
        return g0Var.l0();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ColumnMeasurePolicy)) {
            return false;
        }
        ColumnMeasurePolicy columnMeasurePolicy = (ColumnMeasurePolicy) obj;
        return Intrinsics.c(this.f2436a, columnMeasurePolicy.f2436a) && Intrinsics.c(this.f2437b, columnMeasurePolicy.f2437b);
    }

    @Override
    public int f(androidx.compose.ui.layout.g0 g0Var) {
        return g0Var.u0();
    }

    public int hashCode() {
        return (this.f2436a.hashCode() * 31) + this.f2437b.hashCode();
    }

    public String toString() {
        return "ColumnMeasurePolicy(verticalArrangement=" + this.f2436a + ", horizontalAlignment=" + this.f2437b + ')';
    }
}
