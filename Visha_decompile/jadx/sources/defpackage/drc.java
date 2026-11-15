package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class drc {
    public static final Map e;
    public final irc a;
    public final jrc b;
    public final int c;
    public final int d;

    static {
        HashMap map = new HashMap();
        Integer numD = c35.d(1);
        l1 l1Var = cx6.c;
        map.put(numD, new drc(20, 2, l1Var));
        map.put(c35.d(2), new drc(20, 4, l1Var));
        map.put(c35.d(3), new drc(40, 2, l1Var));
        map.put(c35.d(4), new drc(40, 4, l1Var));
        map.put(c35.d(5), new drc(40, 8, l1Var));
        map.put(c35.d(6), new drc(60, 3, l1Var));
        map.put(c35.d(7), new drc(60, 6, l1Var));
        map.put(c35.d(8), new drc(60, 12, l1Var));
        Integer numD2 = c35.d(9);
        l1 l1Var2 = cx6.e;
        map.put(numD2, new drc(20, 2, l1Var2));
        map.put(c35.d(10), new drc(20, 4, l1Var2));
        map.put(c35.d(11), new drc(40, 2, l1Var2));
        map.put(c35.d(12), new drc(40, 4, l1Var2));
        map.put(c35.d(13), new drc(40, 8, l1Var2));
        map.put(c35.d(14), new drc(60, 3, l1Var2));
        map.put(c35.d(15), new drc(60, 6, l1Var2));
        map.put(c35.d(16), new drc(60, 12, l1Var2));
        Integer numD3 = c35.d(17);
        l1 l1Var3 = cx6.m;
        map.put(numD3, new drc(20, 2, l1Var3));
        map.put(c35.d(18), new drc(20, 4, l1Var3));
        map.put(c35.d(19), new drc(40, 2, l1Var3));
        map.put(c35.d(20), new drc(40, 4, l1Var3));
        map.put(c35.d(21), new drc(40, 8, l1Var3));
        map.put(c35.d(22), new drc(60, 3, l1Var3));
        map.put(c35.d(23), new drc(60, 6, l1Var3));
        map.put(c35.d(24), new drc(60, 12, l1Var3));
        Integer numD4 = c35.d(25);
        l1 l1Var4 = cx6.n;
        map.put(numD4, new drc(20, 2, l1Var4));
        map.put(c35.d(26), new drc(20, 4, l1Var4));
        map.put(c35.d(27), new drc(40, 2, l1Var4));
        map.put(c35.d(28), new drc(40, 4, l1Var4));
        map.put(c35.d(29), new drc(40, 8, l1Var4));
        map.put(c35.d(30), new drc(60, 3, l1Var4));
        map.put(c35.d(31), new drc(60, 6, l1Var4));
        map.put(c35.d(32), new drc(60, 12, l1Var4));
        e = Collections.unmodifiableMap(map);
    }

    public drc(int i, int i2, l1 l1Var) {
        this.c = i;
        this.d = i2;
        this.b = new jrc(j(i, i2), l1Var);
        this.a = a72.c(e(), f(), g(), c(), a(), i2);
    }

    public static drc i(int i) {
        return (drc) e.get(c35.d(i));
    }

    public static int j(int i, int i2) {
        if (i < 2) {
            throw new IllegalArgumentException("totalHeight must be > 1");
        }
        if (i % i2 != 0) {
            throw new IllegalArgumentException("layers must divide totalHeight without remainder");
        }
        int i3 = i / i2;
        if (i3 != 1) {
            return i3;
        }
        throw new IllegalArgumentException("height / layers must be greater than 1");
    }

    public int a() {
        return this.c;
    }

    public int b() {
        return this.d;
    }

    public int c() {
        return this.b.d();
    }

    public irc d() {
        return this.a;
    }

    public String e() {
        return this.b.f();
    }

    public int f() {
        return this.b.h();
    }

    public int g() {
        return this.b.j();
    }

    public jrc h() {
        return this.b;
    }

    public drc(int i, int i2, sb2 sb2Var) {
        this(i, i2, ub2.c(sb2Var.c()));
    }
}
