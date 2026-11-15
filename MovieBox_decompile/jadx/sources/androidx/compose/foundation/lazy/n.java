package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.ui.layout.g0;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;

public final class n implements j, androidx.compose.foundation.lazy.layout.s {

    private final int f2800a;

    private final List f2801b;

    private final boolean f2802c;

    private final androidx.compose.ui.b.InterfaceC0036b f2803d;

    private final androidx.compose.ui.b.c f2804e;

    private final LayoutDirection f2805f;

    private final boolean f2806g;

    private final int f2807h;

    private final int f2808i;

    private final int f2809j;

    private final long f2810k;

    private final Object f2811l;

    private final Object f2812m;

    private final LazyLayoutItemAnimator f2813n;

    private final long f2814o;

    private int f2815p;

    private final int f2816q;

    private final int f2817r;

    private final int f2818s;

    private final int f2819t;

    private final int f2820u;

    private boolean f2821v;

    private int f2822w;

    private int f2823x;

    private int f2824y;

    private final int[] f2825z;

    public n(int i10, List list, boolean z10, androidx.compose.ui.b.InterfaceC0036b interfaceC0036b, androidx.compose.ui.b.c cVar, LayoutDirection layoutDirection, boolean z11, int i11, int i12, int i13, long j10, Object obj, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, list, z10, interfaceC0036b, cVar, layoutDirection, z11, i11, i12, i13, j10, obj, obj2, lazyLayoutItemAnimator, j11);
    }

    private final int n(long j10) {
        return e() ? o0.p.i(j10) : o0.p.h(j10);
    }

    private final int o(g0 g0Var) {
        return e() ? g0Var.l0() : g0Var.u0();
    }

    @Override
    public long a() {
        return this.f2814o;
    }

    @Override
    public int b() {
        return this.f2801b.size();
    }

    @Override
    public void c(boolean z10) {
        this.f2821v = z10;
    }

    @Override
    public int d() {
        return this.f2818s;
    }

    @Override
    public boolean e() {
        return this.f2802c;
    }

    @Override
    public void f(int i10, int i11, int i12, int i13) {
        r(i10, i12, i13);
    }

    @Override
    public int g() {
        return this.f2815p;
    }

    @Override
    public int getIndex() {
        return this.f2800a;
    }

    @Override
    public Object getKey() {
        return this.f2811l;
    }

    @Override
    public int getSize() {
        return this.f2816q;
    }

    @Override
    public int h() {
        return this.f2819t;
    }

    @Override
    public Object i(int i10) {
        return ((g0) this.f2801b.get(i10)).G();
    }

    @Override
    public long j(int i10) {
        int[] iArr = this.f2825z;
        int i11 = i10 * 2;
        return o0.q.a(iArr[i11], iArr[i11 + 1]);
    }

    @Override
    public int k() {
        return this.f2817r;
    }

    public final void l(int i10, boolean z10) {
        if (p()) {
            return;
        }
        this.f2815p = g() + i10;
        int length = this.f2825z.length;
        for (int i11 = 0; i11 < length; i11++) {
            if ((e() && i11 % 2 == 1) || (!e() && i11 % 2 == 0)) {
                int[] iArr = this.f2825z;
                iArr[i11] = iArr[i11] + i10;
            }
        }
        if (z10) {
            int iB = b();
            for (int i12 = 0; i12 < iB; i12++) {
                this.f2813n.d(getKey(), i12);
            }
        }
    }

    public final int m() {
        return this.f2820u;
    }

    public boolean p() {
        return this.f2821v;
    }

    public final void q(g0.a aVar, boolean z10) {
        if (this.f2822w == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("position() should be called first");
        }
        int iB = b();
        for (int i10 = 0; i10 < iB; i10++) {
            g0 g0Var = (g0) this.f2801b.get(i10);
            o(g0Var);
            long j10 = j(i10);
            this.f2813n.d(getKey(), i10);
            if (this.f2806g) {
                j10 = o0.q.a(e() ? o0.p.h(j10) : (this.f2822w - o0.p.h(j10)) - o(g0Var), e() ? (this.f2822w - o0.p.i(j10)) - o(g0Var) : o0.p.i(j10));
            }
            long jL = o0.p.l(j10, this.f2810k);
            if (e()) {
                g0.a.w(aVar, g0Var, jL, 0.0f, null, 6, null);
            } else {
                g0.a.q(aVar, g0Var, jL, 0.0f, null, 6, null);
            }
        }
    }

    public final void r(int i10, int i11, int i12) {
        int iU0;
        this.f2815p = i10;
        this.f2822w = e() ? i12 : i11;
        List list = this.f2801b;
        int size = list.size();
        for (int i13 = 0; i13 < size; i13++) {
            g0 g0Var = (g0) list.get(i13);
            int i14 = i13 * 2;
            if (e()) {
                int[] iArr = this.f2825z;
                androidx.compose.ui.b.InterfaceC0036b interfaceC0036b = this.f2803d;
                if (interfaceC0036b == null) {
                    throw new IllegalArgumentException("null horizontalAlignment when isVertical == true");
                }
                iArr[i14] = interfaceC0036b.a(g0Var.u0(), i11, this.f2805f);
                this.f2825z[i14 + 1] = i10;
                iU0 = g0Var.l0();
            } else {
                int[] iArr2 = this.f2825z;
                iArr2[i14] = i10;
                int i15 = i14 + 1;
                androidx.compose.ui.b.c cVar = this.f2804e;
                if (cVar == null) {
                    throw new IllegalArgumentException("null verticalAlignment when isVertical == false");
                }
                iArr2[i15] = cVar.a(g0Var.l0(), i12);
                iU0 = g0Var.u0();
            }
            i10 += iU0;
        }
        this.f2823x = -this.f2807h;
        this.f2824y = this.f2822w + this.f2808i;
    }

    public final void s(int i10) {
        this.f2822w = i10;
        this.f2824y = i10 + this.f2808i;
    }

    private n(int i10, List list, boolean z10, androidx.compose.ui.b.InterfaceC0036b interfaceC0036b, androidx.compose.ui.b.c cVar, LayoutDirection layoutDirection, boolean z11, int i11, int i12, int i13, long j10, Object obj, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j11) {
        this.f2800a = i10;
        this.f2801b = list;
        this.f2802c = z10;
        this.f2803d = interfaceC0036b;
        this.f2804e = cVar;
        this.f2805f = layoutDirection;
        this.f2806g = z11;
        this.f2807h = i11;
        this.f2808i = i12;
        this.f2809j = i13;
        this.f2810k = j10;
        this.f2811l = obj;
        this.f2812m = obj2;
        this.f2813n = lazyLayoutItemAnimator;
        this.f2814o = j11;
        this.f2818s = 1;
        this.f2822w = Integer.MIN_VALUE;
        int size = list.size();
        int iL0 = 0;
        int iMax = 0;
        for (int i14 = 0; i14 < size; i14++) {
            g0 g0Var = (g0) list.get(i14);
            iL0 += e() ? g0Var.l0() : g0Var.u0();
            iMax = Math.max(iMax, !e() ? g0Var.l0() : g0Var.u0());
        }
        this.f2816q = iL0;
        this.f2819t = RangesKt.e(getSize() + this.f2809j, 0);
        this.f2820u = iMax;
        this.f2825z = new int[this.f2801b.size() * 2];
    }
}
