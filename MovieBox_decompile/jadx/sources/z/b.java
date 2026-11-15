package z;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.h4;
import androidx.compose.ui.graphics.m1;
import y.n;

public abstract class b {

    public static final class a implements j {

        final d f76448a;

        a(d dVar) {
            this.f76448a = dVar;
        }

        @Override
        public void a(float f10, float f11, float f12, float f13, int i10) {
            this.f76448a.e().a(f10, f11, f12, f13, i10);
        }

        @Override
        public void b(Path path, int i10) {
            this.f76448a.e().b(path, i10);
        }

        @Override
        public void c(float f10, float f11) {
            this.f76448a.e().c(f10, f11);
        }

        @Override
        public void d(float[] fArr) {
            this.f76448a.e().p(fArr);
        }

        @Override
        public void e(float f10, float f11, long j10) {
            m1 m1VarE = this.f76448a.e();
            m1VarE.c(y.g.m(j10), y.g.n(j10));
            m1VarE.e(f10, f11);
            m1VarE.c(-y.g.m(j10), -y.g.n(j10));
        }

        @Override
        public void f(float f10, float f11, float f12, float f13) {
            m1 m1VarE = this.f76448a.e();
            d dVar = this.f76448a;
            long jA = n.a(y.m.i(g()) - (f12 + f10), y.m.g(g()) - (f13 + f11));
            if (!(y.m.i(jA) >= 0.0f && y.m.g(jA) >= 0.0f)) {
                h4.a("Width and height must be greater than or equal to zero");
            }
            dVar.f(jA);
            m1VarE.c(f10, f11);
        }

        public long g() {
            return this.f76448a.i();
        }
    }

    public static final j b(d dVar) {
        return new a(dVar);
    }
}
