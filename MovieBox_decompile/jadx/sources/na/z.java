package na;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

public class z implements com.google.android.exoplayer2.k {
    public static final z A;
    public static final z B;
    public static final com.google.android.exoplayer2.k.a C;

    public final int f67110a;

    public final int f67111b;

    public final int f67112c;

    public final int f67113d;

    public final int f67114e;

    public final int f67115f;

    public final int f67116g;

    public final int f67117h;

    public final int f67118i;

    public final int f67119j;

    public final boolean f67120k;

    public final ImmutableList f67121l;

    public final int f67122m;

    public final ImmutableList f67123n;

    public final int f67124o;

    public final int f67125p;

    public final int f67126q;

    public final ImmutableList f67127r;

    public final ImmutableList f67128s;

    public final int f67129t;

    public final int f67130u;

    public final boolean f67131v;

    public final boolean f67132w;

    public final boolean f67133x;

    public final ImmutableMap f67134y;

    public final ImmutableSet f67135z;

    static {
        z zVarA = new a().A();
        A = zVarA;
        B = zVarA;
        C = new com.google.android.exoplayer2.k.a() {
            @Override
            public final com.google.android.exoplayer2.k a(Bundle bundle) {
                return z.b(bundle);
            }
        };
    }

    protected z(a aVar) {
        this.f67110a = aVar.f67136a;
        this.f67111b = aVar.f67137b;
        this.f67112c = aVar.f67138c;
        this.f67113d = aVar.f67139d;
        this.f67114e = aVar.f67140e;
        this.f67115f = aVar.f67141f;
        this.f67116g = aVar.f67142g;
        this.f67117h = aVar.f67143h;
        this.f67118i = aVar.f67144i;
        this.f67119j = aVar.f67145j;
        this.f67120k = aVar.f67146k;
        this.f67121l = aVar.f67147l;
        this.f67122m = aVar.f67148m;
        this.f67123n = aVar.f67149n;
        this.f67124o = aVar.f67150o;
        this.f67125p = aVar.f67151p;
        this.f67126q = aVar.f67152q;
        this.f67127r = aVar.f67153r;
        this.f67128s = aVar.f67154s;
        this.f67129t = aVar.f67155t;
        this.f67130u = aVar.f67156u;
        this.f67131v = aVar.f67157v;
        this.f67132w = aVar.f67158w;
        this.f67133x = aVar.f67159x;
        this.f67134y = ImmutableMap.copyOf((Map) aVar.f67160y);
        this.f67135z = ImmutableSet.copyOf((Collection) aVar.f67161z);
    }

    public static z b(Bundle bundle) {
        return new a(bundle).A();
    }

    protected static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    public a a() {
        return new a(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        z zVar = (z) obj;
        return this.f67110a == zVar.f67110a && this.f67111b == zVar.f67111b && this.f67112c == zVar.f67112c && this.f67113d == zVar.f67113d && this.f67114e == zVar.f67114e && this.f67115f == zVar.f67115f && this.f67116g == zVar.f67116g && this.f67117h == zVar.f67117h && this.f67120k == zVar.f67120k && this.f67118i == zVar.f67118i && this.f67119j == zVar.f67119j && this.f67121l.equals(zVar.f67121l) && this.f67122m == zVar.f67122m && this.f67123n.equals(zVar.f67123n) && this.f67124o == zVar.f67124o && this.f67125p == zVar.f67125p && this.f67126q == zVar.f67126q && this.f67127r.equals(zVar.f67127r) && this.f67128s.equals(zVar.f67128s) && this.f67129t == zVar.f67129t && this.f67130u == zVar.f67130u && this.f67131v == zVar.f67131v && this.f67132w == zVar.f67132w && this.f67133x == zVar.f67133x && this.f67134y.equals(zVar.f67134y) && this.f67135z.equals(zVar.f67135z);
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((((((((((((((((((((((this.f67110a + 31) * 31) + this.f67111b) * 31) + this.f67112c) * 31) + this.f67113d) * 31) + this.f67114e) * 31) + this.f67115f) * 31) + this.f67116g) * 31) + this.f67117h) * 31) + (this.f67120k ? 1 : 0)) * 31) + this.f67118i) * 31) + this.f67119j) * 31) + this.f67121l.hashCode()) * 31) + this.f67122m) * 31) + this.f67123n.hashCode()) * 31) + this.f67124o) * 31) + this.f67125p) * 31) + this.f67126q) * 31) + this.f67127r.hashCode()) * 31) + this.f67128s.hashCode()) * 31) + this.f67129t) * 31) + this.f67130u) * 31) + (this.f67131v ? 1 : 0)) * 31) + (this.f67132w ? 1 : 0)) * 31) + (this.f67133x ? 1 : 0)) * 31) + this.f67134y.hashCode()) * 31) + this.f67135z.hashCode();
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(6), this.f67110a);
        bundle.putInt(c(7), this.f67111b);
        bundle.putInt(c(8), this.f67112c);
        bundle.putInt(c(9), this.f67113d);
        bundle.putInt(c(10), this.f67114e);
        bundle.putInt(c(11), this.f67115f);
        bundle.putInt(c(12), this.f67116g);
        bundle.putInt(c(13), this.f67117h);
        bundle.putInt(c(14), this.f67118i);
        bundle.putInt(c(15), this.f67119j);
        bundle.putBoolean(c(16), this.f67120k);
        bundle.putStringArray(c(17), (String[]) this.f67121l.toArray(new String[0]));
        bundle.putInt(c(25), this.f67122m);
        bundle.putStringArray(c(1), (String[]) this.f67123n.toArray(new String[0]));
        bundle.putInt(c(2), this.f67124o);
        bundle.putInt(c(18), this.f67125p);
        bundle.putInt(c(19), this.f67126q);
        bundle.putStringArray(c(20), (String[]) this.f67127r.toArray(new String[0]));
        bundle.putStringArray(c(3), (String[]) this.f67128s.toArray(new String[0]));
        bundle.putInt(c(4), this.f67129t);
        bundle.putInt(c(26), this.f67130u);
        bundle.putBoolean(c(5), this.f67131v);
        bundle.putBoolean(c(21), this.f67132w);
        bundle.putBoolean(c(22), this.f67133x);
        bundle.putParcelableArrayList(c(23), com.google.android.exoplayer2.util.d.d(this.f67134y.values()));
        bundle.putIntArray(c(24), Ints.o(this.f67135z));
        return bundle;
    }

    public static class a {

        private int f67136a;

        private int f67137b;

        private int f67138c;

        private int f67139d;

        private int f67140e;

        private int f67141f;

        private int f67142g;

        private int f67143h;

        private int f67144i;

        private int f67145j;

        private boolean f67146k;

        private ImmutableList f67147l;

        private int f67148m;

        private ImmutableList f67149n;

        private int f67150o;

        private int f67151p;

        private int f67152q;

        private ImmutableList f67153r;

        private ImmutableList f67154s;

        private int f67155t;

        private int f67156u;

        private boolean f67157v;

        private boolean f67158w;

        private boolean f67159x;

        private HashMap f67160y;

        private HashSet f67161z;

        @Deprecated
        public a() {
            this.f67136a = Integer.MAX_VALUE;
            this.f67137b = Integer.MAX_VALUE;
            this.f67138c = Integer.MAX_VALUE;
            this.f67139d = Integer.MAX_VALUE;
            this.f67144i = Integer.MAX_VALUE;
            this.f67145j = Integer.MAX_VALUE;
            this.f67146k = true;
            this.f67147l = ImmutableList.of();
            this.f67148m = 0;
            this.f67149n = ImmutableList.of();
            this.f67150o = 0;
            this.f67151p = Integer.MAX_VALUE;
            this.f67152q = Integer.MAX_VALUE;
            this.f67153r = ImmutableList.of();
            this.f67154s = ImmutableList.of();
            this.f67155t = 0;
            this.f67156u = 0;
            this.f67157v = false;
            this.f67158w = false;
            this.f67159x = false;
            this.f67160y = new HashMap();
            this.f67161z = new HashSet();
        }

        private void C(z zVar) {
            this.f67136a = zVar.f67110a;
            this.f67137b = zVar.f67111b;
            this.f67138c = zVar.f67112c;
            this.f67139d = zVar.f67113d;
            this.f67140e = zVar.f67114e;
            this.f67141f = zVar.f67115f;
            this.f67142g = zVar.f67116g;
            this.f67143h = zVar.f67117h;
            this.f67144i = zVar.f67118i;
            this.f67145j = zVar.f67119j;
            this.f67146k = zVar.f67120k;
            this.f67147l = zVar.f67121l;
            this.f67148m = zVar.f67122m;
            this.f67149n = zVar.f67123n;
            this.f67150o = zVar.f67124o;
            this.f67151p = zVar.f67125p;
            this.f67152q = zVar.f67126q;
            this.f67153r = zVar.f67127r;
            this.f67154s = zVar.f67128s;
            this.f67155t = zVar.f67129t;
            this.f67156u = zVar.f67130u;
            this.f67157v = zVar.f67131v;
            this.f67158w = zVar.f67132w;
            this.f67159x = zVar.f67133x;
            this.f67161z = new HashSet(zVar.f67135z);
            this.f67160y = new HashMap(zVar.f67134y);
        }

        private static ImmutableList D(String[] strArr) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (String str : (String[]) com.google.android.exoplayer2.util.a.e(strArr)) {
                aVarBuilder.a(p0.D0((String) com.google.android.exoplayer2.util.a.e(str)));
            }
            return aVarBuilder.e();
        }

        private void I(Context context) {
            CaptioningManager captioningManager;
            if ((p0.f26854a >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
                this.f67155t = 1088;
                Locale locale = captioningManager.getLocale();
                if (locale != null) {
                    this.f67154s = ImmutableList.of(p0.Y(locale));
                }
            }
        }

        public z A() {
            return new z(this);
        }

        public a B(int i10) {
            Iterator it = this.f67160y.values().iterator();
            while (it.hasNext()) {
                if (((x) it.next()).b() == i10) {
                    it.remove();
                }
            }
            return this;
        }

        protected a E(z zVar) {
            C(zVar);
            return this;
        }

        public a F(int i10) {
            this.f67156u = i10;
            return this;
        }

        public a G(x xVar) {
            B(xVar.b());
            this.f67160y.put(xVar.f67108a, xVar);
            return this;
        }

        public a H(Context context) {
            if (p0.f26854a >= 19) {
                I(context);
            }
            return this;
        }

        public a J(int i10, boolean z10) {
            if (z10) {
                this.f67161z.add(Integer.valueOf(i10));
            } else {
                this.f67161z.remove(Integer.valueOf(i10));
            }
            return this;
        }

        public a K(int i10, int i11, boolean z10) {
            this.f67144i = i10;
            this.f67145j = i11;
            this.f67146k = z10;
            return this;
        }

        public a L(Context context, boolean z10) {
            Point pointO = p0.O(context);
            return K(pointO.x, pointO.y, z10);
        }

        public a(Context context) {
            this();
            H(context);
            L(context, true);
        }

        protected a(z zVar) {
            C(zVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        protected a(Bundle bundle) {
            ImmutableList immutableListB;
            String strC = z.c(6);
            z zVar = z.A;
            this.f67136a = bundle.getInt(strC, zVar.f67110a);
            this.f67137b = bundle.getInt(z.c(7), zVar.f67111b);
            this.f67138c = bundle.getInt(z.c(8), zVar.f67112c);
            this.f67139d = bundle.getInt(z.c(9), zVar.f67113d);
            this.f67140e = bundle.getInt(z.c(10), zVar.f67114e);
            this.f67141f = bundle.getInt(z.c(11), zVar.f67115f);
            this.f67142g = bundle.getInt(z.c(12), zVar.f67116g);
            this.f67143h = bundle.getInt(z.c(13), zVar.f67117h);
            this.f67144i = bundle.getInt(z.c(14), zVar.f67118i);
            this.f67145j = bundle.getInt(z.c(15), zVar.f67119j);
            this.f67146k = bundle.getBoolean(z.c(16), zVar.f67120k);
            this.f67147l = ImmutableList.copyOf((String[]) com.google.common.base.h.a(bundle.getStringArray(z.c(17)), new String[0]));
            this.f67148m = bundle.getInt(z.c(25), zVar.f67122m);
            this.f67149n = D((String[]) com.google.common.base.h.a(bundle.getStringArray(z.c(1)), new String[0]));
            this.f67150o = bundle.getInt(z.c(2), zVar.f67124o);
            this.f67151p = bundle.getInt(z.c(18), zVar.f67125p);
            this.f67152q = bundle.getInt(z.c(19), zVar.f67126q);
            this.f67153r = ImmutableList.copyOf((String[]) com.google.common.base.h.a(bundle.getStringArray(z.c(20)), new String[0]));
            this.f67154s = D((String[]) com.google.common.base.h.a(bundle.getStringArray(z.c(3)), new String[0]));
            this.f67155t = bundle.getInt(z.c(4), zVar.f67129t);
            this.f67156u = bundle.getInt(z.c(26), zVar.f67130u);
            this.f67157v = bundle.getBoolean(z.c(5), zVar.f67131v);
            this.f67158w = bundle.getBoolean(z.c(21), zVar.f67132w);
            this.f67159x = bundle.getBoolean(z.c(22), zVar.f67133x);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(z.c(23));
            if (parcelableArrayList == null) {
                immutableListB = ImmutableList.of();
            } else {
                immutableListB = com.google.android.exoplayer2.util.d.b(x.f67107c, parcelableArrayList);
            }
            this.f67160y = new HashMap();
            for (int i10 = 0; i10 < immutableListB.size(); i10++) {
                x xVar = (x) immutableListB.get(i10);
                this.f67160y.put(xVar.f67108a, xVar);
            }
            int[] iArr = (int[]) com.google.common.base.h.a(bundle.getIntArray(z.c(24)), new int[0]);
            this.f67161z = new HashSet();
            for (int i11 : iArr) {
                this.f67161z.add(Integer.valueOf(i11));
            }
        }
    }
}
