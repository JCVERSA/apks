package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.a0;
import androidx.compose.foundation.lazy.layout.z;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

public abstract class d {

    public static final class a implements z {

        final LazyListState f2636a;

        final boolean f2637b;

        a(LazyListState lazyListState, boolean z10) {
            this.f2636a = lazyListState;
            this.f2637b = z10;
        }

        @Override
        public int a() {
            return this.f2636a.t().e() + this.f2636a.t().b();
        }

        @Override
        public float b() {
            return a0.a(this.f2636a.o(), this.f2636a.p(), this.f2636a.d());
        }

        @Override
        public Object c(int i10, Continuation continuation) {
            Object objH = LazyListState.H(this.f2636a, i10, 0, continuation, 2, null);
            return objH == IntrinsicsKt.f() ? objH : Unit.f64096a;
        }

        @Override
        public androidx.compose.ui.semantics.b d() {
            return this.f2637b ? new androidx.compose.ui.semantics.b(-1, 1) : new androidx.compose.ui.semantics.b(1, -1);
        }

        @Override
        public int e() {
            return this.f2636a.t().getOrientation() == Orientation.Vertical ? o0.t.f(this.f2636a.t().a()) : o0.t.g(this.f2636a.t().a());
        }

        @Override
        public float f() {
            return a0.b(this.f2636a.o(), this.f2636a.p());
        }
    }

    public static final z a(LazyListState lazyListState, boolean z10) {
        return new a(lazyListState, z10);
    }
}
