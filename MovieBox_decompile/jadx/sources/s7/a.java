package s7;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class a {

    public final int f71552a;

    public final String f71553b;

    public final boolean f71554c;

    public final boolean f71555d;

    public final String f71556e;

    public final int f71557f;

    public final boolean f71558g;

    public final w7.b f71559h;

    public final z7.b f71560i;

    public final y7.b f71561j;

    public final b8.b f71562k;

    public final a8.b f71563l;

    public final v7.a f71564m;

    private final Map f71565n;

    public final List f71566o;

    a(C0881a c0881a) {
        this.f71552a = c0881a.f71567a;
        this.f71553b = c0881a.f71568b;
        this.f71554c = c0881a.f71569c;
        this.f71555d = c0881a.f71570d;
        this.f71556e = c0881a.f71571e;
        this.f71557f = c0881a.f71572f;
        this.f71558g = c0881a.f71573g;
        this.f71559h = c0881a.f71574h;
        this.f71560i = c0881a.f71575i;
        this.f71561j = c0881a.f71576j;
        this.f71562k = c0881a.f71577k;
        this.f71563l = c0881a.f71578l;
        this.f71564m = c0881a.f71579m;
        this.f71565n = c0881a.f71580n;
        this.f71566o = c0881a.f71581o;
    }

    public static class C0881a {

        private int f71567a;

        private String f71568b;

        private boolean f71569c;

        private boolean f71570d;

        private String f71571e;

        private int f71572f;

        private boolean f71573g;

        private w7.b f71574h;

        private z7.b f71575i;

        private y7.b f71576j;

        private b8.b f71577k;

        private a8.b f71578l;

        private v7.a f71579m;

        private Map f71580n;

        private List f71581o;

        public C0881a() {
            this.f71567a = Integer.MIN_VALUE;
            this.f71568b = "X-LOG";
        }

        private void y() {
            if (this.f71574h == null) {
                this.f71574h = d8.a.h();
            }
            if (this.f71575i == null) {
                this.f71575i = d8.a.n();
            }
            if (this.f71576j == null) {
                this.f71576j = d8.a.l();
            }
            if (this.f71577k == null) {
                this.f71577k = d8.a.k();
            }
            if (this.f71578l == null) {
                this.f71578l = d8.a.j();
            }
            if (this.f71579m == null) {
                this.f71579m = d8.a.c();
            }
            if (this.f71580n == null) {
                this.f71580n = new HashMap(d8.a.a());
            }
        }

        public C0881a A(w7.b bVar) {
            this.f71574h = bVar;
            return this;
        }

        public C0881a B(int i10) {
            this.f71567a = i10;
            return this;
        }

        C0881a C(Map map) {
            this.f71580n = map;
            return this;
        }

        public C0881a D(a8.b bVar) {
            this.f71578l = bVar;
            return this;
        }

        public C0881a E(String str) {
            this.f71568b = str;
            return this;
        }

        public C0881a F(b8.b bVar) {
            this.f71577k = bVar;
            return this;
        }

        public C0881a G(y7.b bVar) {
            this.f71576j = bVar;
            return this;
        }

        public C0881a H(z7.b bVar) {
            this.f71575i = bVar;
            return this;
        }

        public C0881a p(c8.a aVar) {
            if (this.f71581o == null) {
                this.f71581o = new ArrayList();
            }
            this.f71581o.add(aVar);
            return this;
        }

        public C0881a q(v7.a aVar) {
            this.f71579m = aVar;
            return this;
        }

        public a r() {
            y();
            return new a(this);
        }

        public C0881a s() {
            this.f71573g = false;
            return this;
        }

        public C0881a t() {
            this.f71570d = false;
            this.f71571e = null;
            this.f71572f = 0;
            return this;
        }

        public C0881a u() {
            this.f71569c = false;
            return this;
        }

        public C0881a v() {
            this.f71573g = true;
            return this;
        }

        public C0881a w(String str, int i10) {
            this.f71570d = true;
            this.f71571e = str;
            this.f71572f = i10;
            return this;
        }

        public C0881a x() {
            this.f71569c = true;
            return this;
        }

        C0881a z(List list) {
            this.f71581o = list;
            return this;
        }

        public C0881a(a aVar) {
            this.f71567a = Integer.MIN_VALUE;
            this.f71568b = "X-LOG";
            this.f71567a = aVar.f71552a;
            this.f71568b = aVar.f71553b;
            this.f71569c = aVar.f71554c;
            this.f71570d = aVar.f71555d;
            this.f71571e = aVar.f71556e;
            this.f71572f = aVar.f71557f;
            this.f71573g = aVar.f71558g;
            this.f71574h = aVar.f71559h;
            this.f71575i = aVar.f71560i;
            this.f71576j = aVar.f71561j;
            this.f71577k = aVar.f71562k;
            this.f71578l = aVar.f71563l;
            this.f71579m = aVar.f71564m;
            if (aVar.f71565n != null) {
                this.f71580n = new HashMap(aVar.f71565n);
            }
            if (aVar.f71566o != null) {
                this.f71581o = new ArrayList(aVar.f71566o);
            }
        }
    }
}
