package defpackage;

import com.yandex.div2.Div;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class yt2 implements pc9 {
    public final Div a;
    public final oj3 b;
    public final e74 c;
    public final e74 d;
    public final int e;

    public static final class a implements d {
        public final zl2 a;
        public final e74 b;
        public final e74 c;
        public boolean d;
        public List e;
        public int f;

        public a(zl2 zl2Var, e74 e74Var, e74 e74Var2) {
            y45.j(zl2Var, "item");
            this.a = zl2Var;
            this.b = e74Var;
            this.c = e74Var2;
        }

        @Override
        public zl2 a() {
            if (!this.d) {
                e74 e74Var = this.b;
                if (e74Var != null && !((Boolean) e74Var.invoke(getItem().c())).booleanValue()) {
                    return null;
                }
                this.d = true;
                return getItem();
            }
            List listB = this.e;
            if (listB == null) {
                listB = zt2.b(getItem().c(), getItem().d());
                this.e = listB;
            }
            if (this.f < listB.size()) {
                int i = this.f;
                this.f = i + 1;
                return (zl2) listB.get(i);
            }
            e74 e74Var2 = this.c;
            if (e74Var2 == null) {
                return null;
            }
            e74Var2.invoke(getItem().c());
            return null;
        }

        @Override
        public zl2 getItem() {
            return this.a;
        }
    }

    public final class b extends b3 {
        public final Div d;
        public final oj3 e;
        public final hg f;
        public final yt2 g;

        public b(yt2 yt2Var, Div div, oj3 oj3Var) {
            y45.j(div, "root");
            y45.j(oj3Var, "resolver");
            this.g = yt2Var;
            this.d = div;
            this.e = oj3Var;
            hg hgVar = new hg();
            hgVar.addLast(g(bh2.t(div, oj3Var)));
            this.f = hgVar;
        }

        @Override
        public void b() {
            zl2 zl2VarF = f();
            if (zl2VarF != null) {
                d(zl2VarF);
            } else {
                c();
            }
        }

        public final zl2 f() {
            d dVar = (d) this.f.m();
            if (dVar == null) {
                return null;
            }
            zl2 zl2VarA = dVar.a();
            if (zl2VarA == null) {
                this.f.removeLast();
                return f();
            }
            if (zl2VarA == dVar.getItem() || eu2.j(zl2VarA.c()) || this.f.size() >= this.g.e) {
                return zl2VarA;
            }
            this.f.addLast(g(zl2VarA));
            return f();
        }

        public final d g(zl2 zl2Var) {
            return eu2.i(zl2Var.c()) ? new a(zl2Var, this.g.c, this.g.d) : new c(zl2Var);
        }
    }

    public static final class c implements d {
        public final zl2 a;
        public boolean b;

        public c(zl2 zl2Var) {
            y45.j(zl2Var, "item");
            this.a = zl2Var;
        }

        @Override
        public zl2 a() {
            if (this.b) {
                return null;
            }
            this.b = true;
            return getItem();
        }

        @Override
        public zl2 getItem() {
            return this.a;
        }
    }

    public interface d {
        zl2 a();

        zl2 getItem();
    }

    public yt2(Div div, oj3 oj3Var, e74 e74Var, e74 e74Var2, int i) {
        this.a = div;
        this.b = oj3Var;
        this.c = e74Var;
        this.d = e74Var2;
        this.e = i;
    }

    public final yt2 e(e74 e74Var) {
        y45.j(e74Var, "predicate");
        return new yt2(this.a, this.b, e74Var, this.d, this.e);
    }

    public final yt2 f(e74 e74Var) {
        y45.j(e74Var, "function");
        return new yt2(this.a, this.b, this.c, e74Var, this.e);
    }

    @Override
    public Iterator iterator() {
        return new b(this, this.a, this.b);
    }

    public yt2(Div div, oj3 oj3Var, e74 e74Var, e74 e74Var2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(div, oj3Var, e74Var, e74Var2, (i2 & 16) != 0 ? Integer.MAX_VALUE : i);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public yt2(Div div, oj3 oj3Var) {
        this(div, oj3Var, null, null, 0, 16, null);
        y45.j(div, "root");
        y45.j(oj3Var, "resolver");
    }
}
