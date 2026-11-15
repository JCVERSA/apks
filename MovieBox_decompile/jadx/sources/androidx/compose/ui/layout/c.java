package androidx.compose.ui.layout;

import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.ViewCompat;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class c implements j, x {

    private final androidx.compose.ui.node.y f4852a;

    public static final class a implements v {

        private final int f4853a;

        private final int f4854b;

        private final Map f4855c;

        private final Function1 f4856d;

        final Function1 f4857e;

        final c f4858f;

        a(int i10, int i11, Map map, Function1 function1, Function1 function2, c cVar) {
            this.f4857e = function2;
            this.f4858f = cVar;
            this.f4853a = i10;
            this.f4854b = i11;
            this.f4855c = map;
            this.f4856d = function1;
        }

        @Override
        public int getHeight() {
            return this.f4854b;
        }

        @Override
        public int getWidth() {
            return this.f4853a;
        }

        @Override
        public Map v() {
            return this.f4855c;
        }

        @Override
        public void w() {
            this.f4857e.invoke(this.f4858f.v().c1());
        }

        @Override
        public Function1 x() {
            return this.f4856d;
        }
    }

    public c(androidx.compose.ui.node.y yVar, b bVar) {
        this.f4852a = yVar;
    }

    @Override
    public float B0() {
        return this.f4852a.B0();
    }

    @Override
    public float D0(float f10) {
        return this.f4852a.D0(f10);
    }

    @Override
    public long H(float f10) {
        return this.f4852a.H(f10);
    }

    @Override
    public float J(long j10) {
        return this.f4852a.J(j10);
    }

    @Override
    public v L0(int i10, int i11, Map map, Function1 function1, Function1 function2) {
        if (!((i10 & ViewCompat.MEASURED_STATE_MASK) == 0 && ((-16777216) & i11) == 0)) {
            g0.a.b("Size(" + i10 + " x " + i11 + ") is out of range. Each dimension must be between 0 and 16777215.");
        }
        return new a(i10, i11, map, function1, function2, this);
    }

    @Override
    public long P0(long j10) {
        return this.f4852a.P0(j10);
    }

    @Override
    public long Q(float f10) {
        return this.f4852a.Q(f10);
    }

    @Override
    public boolean W() {
        return false;
    }

    @Override
    public int c0(float f10) {
        return this.f4852a.c0(f10);
    }

    @Override
    public float getDensity() {
        return this.f4852a.getDensity();
    }

    @Override
    public LayoutDirection getLayoutDirection() {
        return this.f4852a.getLayoutDirection();
    }

    @Override
    public float h0(long j10) {
        return this.f4852a.h0(j10);
    }

    public final b n() {
        return null;
    }

    @Override
    public v p0(int i10, int i11, Map map, Function1 function1) {
        return this.f4852a.p0(i10, i11, map, function1);
    }

    public final androidx.compose.ui.node.y v() {
        return this.f4852a;
    }

    @Override
    public float x0(float f10) {
        return this.f4852a.x0(f10);
    }

    public long z() {
        androidx.compose.ui.node.j0 j0VarT1 = this.f4852a.T1();
        Intrinsics.e(j0VarT1);
        v vVarA1 = j0VarT1.a1();
        return o0.u.a(vVarA1.getWidth(), vVarA1.getHeight());
    }

    public final void B(b bVar) {
    }
}
