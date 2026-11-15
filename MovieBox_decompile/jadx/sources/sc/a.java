package sc;

import tc.d;
import tc.e;
import tc.f;
import tc.g;
import tc.h;

public abstract class a {

    public static final class b {

        private tc.a f71979a;

        public sc.b a() {
            ux.b.a(this.f71979a, tc.a.class);
            return new c(this.f71979a);
        }

        public b b(tc.a aVar) {
            this.f71979a = (tc.a) ux.b.b(aVar);
            return this;
        }

        private b() {
        }
    }

    private static final class c implements sc.b {

        private final c f71980a;

        private iy.a f71981b;

        private iy.a f71982c;

        private iy.a f71983d;

        private iy.a f71984e;

        private iy.a f71985f;

        private iy.a f71986g;

        private iy.a f71987h;

        private iy.a f71988i;

        private void b(tc.a aVar) {
            this.f71981b = tc.c.a(aVar);
            this.f71982c = e.a(aVar);
            this.f71983d = d.a(aVar);
            this.f71984e = h.a(aVar);
            this.f71985f = f.a(aVar);
            this.f71986g = tc.b.a(aVar);
            g gVarA = g.a(aVar);
            this.f71987h = gVarA;
            this.f71988i = ux.a.a(rc.g.a(this.f71981b, this.f71982c, this.f71983d, this.f71984e, this.f71985f, this.f71986g, gVarA));
        }

        @Override
        public rc.e a() {
            return (rc.e) this.f71988i.get();
        }

        private c(tc.a aVar) {
            this.f71980a = this;
            b(aVar);
        }
    }

    public static b a() {
        return new b();
    }
}
