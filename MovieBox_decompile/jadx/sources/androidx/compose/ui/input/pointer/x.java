package androidx.compose.ui.input.pointer;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

final class x {

    private final androidx.collection.x f4760a = new androidx.collection.x(0, 1, null);

    private static final class a {

        private final long f4761a;

        private final long f4762b;

        private final boolean f4763c;

        private final int f4764d;

        public a(long j10, long j11, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(j10, j11, z10, i10);
        }

        public final boolean a() {
            return this.f4763c;
        }

        public final long b() {
            return this.f4762b;
        }

        public final long c() {
            return this.f4761a;
        }

        private a(long j10, long j11, boolean z10, int i10) {
            this.f4761a = j10;
            this.f4762b = j11;
            this.f4763c = z10;
            this.f4764d = i10;
        }
    }

    public final void a() {
        this.f4760a.b();
    }

    public final g b(y yVar, i0 i0Var) {
        long jK;
        boolean zA;
        long jMo117screenToLocalMKHz9U;
        androidx.collection.x xVar = new androidx.collection.x(yVar.b().size());
        List listB = yVar.b();
        int size = listB.size();
        for (int i10 = 0; i10 < size; i10++) {
            z zVar = (z) listB.get(i10);
            a aVar = (a) this.f4760a.e(zVar.d());
            if (aVar == null) {
                jK = zVar.k();
                jMo117screenToLocalMKHz9U = zVar.f();
                zA = false;
            } else {
                long jC = aVar.c();
                jK = jC;
                zA = aVar.a();
                jMo117screenToLocalMKHz9U = i0Var.mo117screenToLocalMKHz9U(aVar.b());
            }
            xVar.k(zVar.d(), new w(zVar.d(), zVar.k(), zVar.f(), zVar.b(), zVar.h(), jK, jMo117screenToLocalMKHz9U, zA, false, zVar.j(), zVar.c(), zVar.i(), zVar.e(), null));
            if (zVar.b()) {
                this.f4760a.k(zVar.d(), new a(zVar.k(), zVar.g(), zVar.b(), zVar.j(), null));
            } else {
                this.f4760a.l(zVar.d());
            }
        }
        return new g(xVar, yVar);
    }
}
