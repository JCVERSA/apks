package s7;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

public class d {

    private s7.a f71587a;

    private g8.c f71588b;

    public static class a {

        private int f71589a;

        private String f71590b;

        private boolean f71591c;

        private boolean f71592d;

        private boolean f71593e;

        private String f71594f;

        private int f71595g;

        private boolean f71596h;

        private boolean f71597i;

        private boolean f71598j;

        private w7.b f71599k;

        private z7.b f71600l;

        private y7.b f71601m;

        private b8.b f71602n;

        private a8.b f71603o;

        private v7.a f71604p;

        private Map f71605q;

        private List f71606r;

        private g8.c f71607s;

        public a() {
            e.a();
        }

        public d t() {
            return new d(this);
        }

        public void u(Object[] objArr) {
            t().b(objArr);
        }

        public void v(Object[] objArr) {
            t().d(objArr);
        }

        public void w(Object[] objArr) {
            t().f(objArr);
        }

        public a x(String str) {
            this.f71590b = str;
            return this;
        }

        public void y(Object[] objArr) {
            t().j(objArr);
        }

        public void z(Object[] objArr) {
            t().k(objArr);
        }
    }

    d(s7.a aVar, g8.c cVar) {
        this.f71587a = aVar;
        this.f71588b = cVar;
    }

    private void h(int i10, Object[] objArr) {
        if (i10 < this.f71587a.f71552a) {
            return;
        }
        i(i10, Arrays.deepToString(objArr));
    }

    private void i(int i10, String str) {
        String strA;
        String string;
        s7.a aVar = this.f71587a;
        String str2 = aVar.f71553b;
        String strA2 = aVar.f71554c ? aVar.f71562k.a(Thread.currentThread()) : null;
        s7.a aVar2 = this.f71587a;
        if (aVar2.f71555d) {
            a8.b bVar = aVar2.f71563l;
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            s7.a aVar3 = this.f71587a;
            strA = bVar.a(f8.a.b(stackTrace, aVar3.f71556e, aVar3.f71557f));
        } else {
            strA = null;
        }
        if (this.f71587a.f71566o != null) {
            b bVar2 = new b(i10, str2, strA2, strA, str);
            for (c8.a aVar4 : this.f71587a.f71566o) {
                bVar2 = aVar4.a(bVar2);
                if (bVar2 == null) {
                    return;
                }
                if (bVar2.f71583b == null || bVar2.f71584c == null) {
                    d8.b.e().c("Interceptor " + aVar4 + " should not remove the tag or message of a log, if you don't want to print this log, just return a null when intercept.");
                    return;
                }
            }
            i10 = bVar2.f71582a;
            str2 = bVar2.f71583b;
            strA2 = bVar2.f71585d;
            strA = bVar2.f71586e;
            str = bVar2.f71584c;
        }
        g8.c cVar = this.f71588b;
        s7.a aVar5 = this.f71587a;
        if (aVar5.f71558g) {
            string = aVar5.f71564m.a(new String[]{strA2, strA, str});
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strA2 != null ? strA2 + d8.c.f58921a : "");
            sb2.append(strA != null ? strA + d8.c.f58921a : "");
            sb2.append(str);
            string = sb2.toString();
        }
        cVar.a(i10, str2, string);
    }

    public void a(String str) {
        g(3, str);
    }

    public void b(Object[] objArr) {
        h(3, objArr);
    }

    public void c(String str) {
        g(6, str);
    }

    public void d(Object[] objArr) {
        h(6, objArr);
    }

    public void e(String str) {
        g(4, str);
    }

    public void f(Object[] objArr) {
        h(4, objArr);
    }

    void g(int i10, String str) {
        if (i10 < this.f71587a.f71552a) {
            return;
        }
        if (str == null) {
            str = "";
        }
        i(i10, str);
    }

    public void j(Object[] objArr) {
        h(2, objArr);
    }

    public void k(Object[] objArr) {
        h(5, objArr);
    }

    d(a aVar) {
        s7.a.C0881a c0881a = new s7.a.C0881a(e.f71609b);
        if (aVar.f71589a != 0) {
            c0881a.B(aVar.f71589a);
        }
        if (aVar.f71590b != null) {
            c0881a.E(aVar.f71590b);
        }
        if (aVar.f71592d) {
            if (aVar.f71591c) {
                c0881a.x();
            } else {
                c0881a.u();
            }
        }
        if (aVar.f71596h) {
            if (aVar.f71593e) {
                c0881a.w(aVar.f71594f, aVar.f71595g);
            } else {
                c0881a.t();
            }
        }
        if (aVar.f71598j) {
            if (aVar.f71597i) {
                c0881a.v();
            } else {
                c0881a.s();
            }
        }
        if (aVar.f71599k != null) {
            c0881a.A(aVar.f71599k);
        }
        if (aVar.f71600l != null) {
            c0881a.H(aVar.f71600l);
        }
        if (aVar.f71601m != null) {
            c0881a.G(aVar.f71601m);
        }
        if (aVar.f71602n != null) {
            c0881a.F(aVar.f71602n);
        }
        if (aVar.f71603o != null) {
            c0881a.D(aVar.f71603o);
        }
        if (aVar.f71604p != null) {
            c0881a.q(aVar.f71604p);
        }
        if (aVar.f71605q != null) {
            c0881a.C(aVar.f71605q);
        }
        if (aVar.f71606r != null) {
            c0881a.z(aVar.f71606r);
        }
        this.f71587a = c0881a.r();
        if (aVar.f71607s != null) {
            this.f71588b = aVar.f71607s;
        } else {
            this.f71588b = e.f71610c;
        }
    }
}
