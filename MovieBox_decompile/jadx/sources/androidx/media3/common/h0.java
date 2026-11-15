package androidx.media3.common;

import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

public class h0 {
    public static final h0 F;
    public static final h0 G;
    private static final String H;
    private static final String I;
    private static final String J;
    private static final String K;
    private static final String L;
    private static final String M;
    private static final String N;
    private static final String O;
    private static final String P;
    private static final String Q;
    private static final String R;
    private static final String S;
    private static final String T;
    private static final String U;
    private static final String V;
    private static final String W;
    private static final String X;
    private static final String Y;
    private static final String Z;

    private static final String f9674a0;

    private static final String f9675b0;

    private static final String f9676c0;

    private static final String f9677d0;

    private static final String f9678e0;

    private static final String f9679f0;

    private static final String f9680g0;

    private static final String f9681h0;

    private static final String f9682i0;

    private static final String f9683j0;

    private static final String f9684k0;

    private static final String f9685l0;

    private static final String f9686m0;

    private static final String f9687n0;

    private static final String f9688o0;
    public final boolean A;
    public final boolean B;
    public final boolean C;
    public final ImmutableMap D;
    public final ImmutableSet E;

    public final int f9689a;

    public final int f9690b;

    public final int f9691c;

    public final int f9692d;

    public final int f9693e;

    public final int f9694f;

    public final int f9695g;

    public final int f9696h;

    public final int f9697i;

    public final int f9698j;

    public final boolean f9699k;

    public final boolean f9700l;

    public final ImmutableList f9701m;

    public final ImmutableList f9702n;

    public final int f9703o;

    public final ImmutableList f9704p;

    public final int f9705q;

    public final int f9706r;

    public final int f9707s;

    public final ImmutableList f9708t;

    public final b f9709u;

    public final ImmutableList f9710v;

    public final int f9711w;

    public final boolean f9712x;

    public final int f9713y;

    public final boolean f9714z;

    public static final class b {

        public static final b f9715d = new a().d();

        private static final String f9716e = a1.C0(1);

        private static final String f9717f = a1.C0(2);

        private static final String f9718g = a1.C0(3);

        public final int f9719a;

        public final boolean f9720b;

        public final boolean f9721c;

        public static final class a {

            private int f9722a = 0;

            private boolean f9723b = false;

            private boolean f9724c = false;

            public b d() {
                return new b(this);
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.f9719a == bVar.f9719a && this.f9720b == bVar.f9720b && this.f9721c == bVar.f9721c;
        }

        public int hashCode() {
            return ((((this.f9719a + 31) * 31) + (this.f9720b ? 1 : 0)) * 31) + (this.f9721c ? 1 : 0);
        }

        private b(a aVar) {
            this.f9719a = aVar.f9722a;
            this.f9720b = aVar.f9723b;
            this.f9721c = aVar.f9724c;
        }
    }

    static {
        h0 h0VarF = new c().F();
        F = h0VarF;
        G = h0VarF;
        H = a1.C0(1);
        I = a1.C0(2);
        J = a1.C0(3);
        K = a1.C0(4);
        L = a1.C0(5);
        M = a1.C0(6);
        N = a1.C0(7);
        O = a1.C0(8);
        P = a1.C0(9);
        Q = a1.C0(10);
        R = a1.C0(11);
        S = a1.C0(12);
        T = a1.C0(13);
        U = a1.C0(14);
        V = a1.C0(15);
        W = a1.C0(16);
        X = a1.C0(17);
        Y = a1.C0(18);
        Z = a1.C0(19);
        f9674a0 = a1.C0(20);
        f9675b0 = a1.C0(21);
        f9676c0 = a1.C0(22);
        f9677d0 = a1.C0(23);
        f9678e0 = a1.C0(24);
        f9679f0 = a1.C0(25);
        f9680g0 = a1.C0(26);
        f9681h0 = a1.C0(27);
        f9682i0 = a1.C0(28);
        f9683j0 = a1.C0(29);
        f9684k0 = a1.C0(30);
        f9685l0 = a1.C0(31);
        f9686m0 = a1.C0(32);
        f9687n0 = a1.C0(33);
        f9688o0 = a1.C0(34);
    }

    protected h0(c cVar) {
        this.f9689a = cVar.f9725a;
        this.f9690b = cVar.f9726b;
        this.f9691c = cVar.f9727c;
        this.f9692d = cVar.f9728d;
        this.f9693e = cVar.f9729e;
        this.f9694f = cVar.f9730f;
        this.f9695g = cVar.f9731g;
        this.f9696h = cVar.f9732h;
        this.f9697i = cVar.f9733i;
        this.f9698j = cVar.f9734j;
        this.f9699k = cVar.f9735k;
        this.f9700l = cVar.f9736l;
        this.f9701m = cVar.f9737m;
        this.f9702n = cVar.f9738n;
        this.f9703o = cVar.f9739o;
        this.f9704p = cVar.f9740p;
        this.f9705q = cVar.f9741q;
        this.f9706r = cVar.f9742r;
        this.f9707s = cVar.f9743s;
        this.f9708t = cVar.f9744t;
        this.f9709u = cVar.f9745u;
        this.f9710v = cVar.f9746v;
        this.f9711w = cVar.f9747w;
        this.f9712x = cVar.f9748x;
        this.f9713y = cVar.f9749y;
        this.f9714z = cVar.f9750z;
        this.A = cVar.A;
        this.B = cVar.B;
        this.C = cVar.C;
        this.D = ImmutableMap.copyOf((Map) cVar.D);
        this.E = ImmutableSet.copyOf((Collection) cVar.E);
    }

    public c a() {
        return new c(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        h0 h0Var = (h0) obj;
        return this.f9689a == h0Var.f9689a && this.f9690b == h0Var.f9690b && this.f9691c == h0Var.f9691c && this.f9692d == h0Var.f9692d && this.f9693e == h0Var.f9693e && this.f9694f == h0Var.f9694f && this.f9695g == h0Var.f9695g && this.f9696h == h0Var.f9696h && this.f9700l == h0Var.f9700l && this.f9697i == h0Var.f9697i && this.f9698j == h0Var.f9698j && this.f9699k == h0Var.f9699k && this.f9701m.equals(h0Var.f9701m) && this.f9702n.equals(h0Var.f9702n) && this.f9703o == h0Var.f9703o && this.f9704p.equals(h0Var.f9704p) && this.f9705q == h0Var.f9705q && this.f9706r == h0Var.f9706r && this.f9707s == h0Var.f9707s && this.f9708t.equals(h0Var.f9708t) && this.f9709u.equals(h0Var.f9709u) && this.f9710v.equals(h0Var.f9710v) && this.f9711w == h0Var.f9711w && this.f9712x == h0Var.f9712x && this.f9713y == h0Var.f9713y && this.f9714z == h0Var.f9714z && this.A == h0Var.A && this.B == h0Var.B && this.C == h0Var.C && this.D.equals(h0Var.D) && this.E.equals(h0Var.E);
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((this.f9689a + 31) * 31) + this.f9690b) * 31) + this.f9691c) * 31) + this.f9692d) * 31) + this.f9693e) * 31) + this.f9694f) * 31) + this.f9695g) * 31) + this.f9696h) * 31) + (this.f9700l ? 1 : 0)) * 31) + this.f9697i) * 31) + this.f9698j) * 31) + (this.f9699k ? 1 : 0)) * 31) + this.f9701m.hashCode()) * 31) + this.f9702n.hashCode()) * 31) + this.f9703o) * 31) + this.f9704p.hashCode()) * 31) + this.f9705q) * 31) + this.f9706r) * 31) + this.f9707s) * 31) + this.f9708t.hashCode()) * 31) + this.f9709u.hashCode()) * 31) + this.f9710v.hashCode()) * 31) + this.f9711w) * 31) + (this.f9712x ? 1 : 0)) * 31) + this.f9713y) * 31) + (this.f9714z ? 1 : 0)) * 31) + (this.A ? 1 : 0)) * 31) + (this.B ? 1 : 0)) * 31) + (this.C ? 1 : 0)) * 31) + this.D.hashCode()) * 31) + this.E.hashCode();
    }

    public static class c {
        private boolean A;
        private boolean B;
        private boolean C;
        private HashMap D;
        private HashSet E;

        private int f9725a;

        private int f9726b;

        private int f9727c;

        private int f9728d;

        private int f9729e;

        private int f9730f;

        private int f9731g;

        private int f9732h;

        private int f9733i;

        private int f9734j;

        private boolean f9735k;

        private boolean f9736l;

        private ImmutableList f9737m;

        private ImmutableList f9738n;

        private int f9739o;

        private ImmutableList f9740p;

        private int f9741q;

        private int f9742r;

        private int f9743s;

        private ImmutableList f9744t;

        private b f9745u;

        private ImmutableList f9746v;

        private int f9747w;

        private boolean f9748x;

        private int f9749y;

        private boolean f9750z;

        public c() {
            this.f9725a = Integer.MAX_VALUE;
            this.f9726b = Integer.MAX_VALUE;
            this.f9727c = Integer.MAX_VALUE;
            this.f9728d = Integer.MAX_VALUE;
            this.f9733i = Integer.MAX_VALUE;
            this.f9734j = Integer.MAX_VALUE;
            this.f9735k = true;
            this.f9736l = true;
            this.f9737m = ImmutableList.of();
            this.f9738n = ImmutableList.of();
            this.f9739o = 0;
            this.f9740p = ImmutableList.of();
            this.f9741q = 0;
            this.f9742r = Integer.MAX_VALUE;
            this.f9743s = Integer.MAX_VALUE;
            this.f9744t = ImmutableList.of();
            this.f9745u = b.f9715d;
            this.f9746v = ImmutableList.of();
            this.f9747w = 0;
            this.f9748x = true;
            this.f9749y = 0;
            this.f9750z = false;
            this.A = false;
            this.B = false;
            this.C = false;
            this.D = new HashMap();
            this.E = new HashSet();
        }

        private void H(h0 h0Var) {
            this.f9725a = h0Var.f9689a;
            this.f9726b = h0Var.f9690b;
            this.f9727c = h0Var.f9691c;
            this.f9728d = h0Var.f9692d;
            this.f9729e = h0Var.f9693e;
            this.f9730f = h0Var.f9694f;
            this.f9731g = h0Var.f9695g;
            this.f9732h = h0Var.f9696h;
            this.f9733i = h0Var.f9697i;
            this.f9734j = h0Var.f9698j;
            this.f9735k = h0Var.f9699k;
            this.f9736l = h0Var.f9700l;
            this.f9737m = h0Var.f9701m;
            this.f9738n = h0Var.f9702n;
            this.f9739o = h0Var.f9703o;
            this.f9740p = h0Var.f9704p;
            this.f9741q = h0Var.f9705q;
            this.f9742r = h0Var.f9706r;
            this.f9743s = h0Var.f9707s;
            this.f9744t = h0Var.f9708t;
            this.f9745u = h0Var.f9709u;
            this.f9746v = h0Var.f9710v;
            this.f9747w = h0Var.f9711w;
            this.f9748x = h0Var.f9712x;
            this.f9749y = h0Var.f9713y;
            this.f9750z = h0Var.f9714z;
            this.A = h0Var.A;
            this.B = h0Var.B;
            this.C = h0Var.C;
            this.E = new HashSet(h0Var.E);
            this.D = new HashMap(h0Var.D);
        }

        private static ImmutableList I(String[] strArr) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (String str : (String[]) androidx.media3.common.util.a.e(strArr)) {
                aVarBuilder.a(a1.U0((String) androidx.media3.common.util.a.e(str)));
            }
            return aVarBuilder.e();
        }

        public h0 F() {
            return new h0(this);
        }

        public c G(int i10) {
            Iterator it = this.D.values().iterator();
            while (it.hasNext()) {
                if (((g0) it.next()).a() == i10) {
                    it.remove();
                }
            }
            return this;
        }

        protected c J(h0 h0Var) {
            H(h0Var);
            return this;
        }

        public c K(int i10) {
            this.f9749y = i10;
            return this;
        }

        public c L(g0 g0Var) {
            G(g0Var.a());
            this.D.put(g0Var.f9667a, g0Var);
            return this;
        }

        public c M(String str) {
            return str == null ? N(new String[0]) : N(str);
        }

        public c N(String... strArr) {
            this.f9746v = I(strArr);
            this.f9748x = false;
            return this;
        }

        public c O(int i10) {
            this.f9747w = i10;
            this.f9748x = false;
            return this;
        }

        public c P(int i10, boolean z10) {
            if (z10) {
                this.E.add(Integer.valueOf(i10));
            } else {
                this.E.remove(Integer.valueOf(i10));
            }
            return this;
        }

        protected c(h0 h0Var) {
            H(h0Var);
        }
    }
}
