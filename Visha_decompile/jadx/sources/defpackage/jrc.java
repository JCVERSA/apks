package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.pqc.crypto.xmss.d;

public final class jrc {
    public static final Map i;
    public final irc a;
    public final int b;
    public final int c;
    public final l1 d;
    public final int e;
    public final String f;
    public final int g;
    public final hgc h;

    static {
        HashMap map = new HashMap();
        Integer numD = c35.d(1);
        l1 l1Var = cx6.c;
        map.put(numD, new jrc(10, l1Var));
        map.put(c35.d(2), new jrc(16, l1Var));
        map.put(c35.d(3), new jrc(20, l1Var));
        Integer numD2 = c35.d(4);
        l1 l1Var2 = cx6.e;
        map.put(numD2, new jrc(10, l1Var2));
        map.put(c35.d(5), new jrc(16, l1Var2));
        map.put(c35.d(6), new jrc(20, l1Var2));
        Integer numD3 = c35.d(7);
        l1 l1Var3 = cx6.m;
        map.put(numD3, new jrc(10, l1Var3));
        map.put(c35.d(8), new jrc(16, l1Var3));
        map.put(c35.d(9), new jrc(20, l1Var3));
        Integer numD4 = c35.d(10);
        l1 l1Var4 = cx6.n;
        map.put(numD4, new jrc(10, l1Var4));
        map.put(c35.d(11), new jrc(16, l1Var4));
        map.put(c35.d(12), new jrc(20, l1Var4));
        i = Collections.unmodifiableMap(map);
    }

    public jrc(int i2, l1 l1Var) {
        if (i2 < 2) {
            throw new IllegalArgumentException("height must be >= 2");
        }
        if (l1Var == null) {
            throw new NullPointerException("digest == null");
        }
        this.b = i2;
        this.c = a();
        String strB = ub2.b(l1Var);
        this.f = strB;
        this.d = l1Var;
        hgc hgcVar = new hgc(l1Var);
        this.h = hgcVar;
        int iC = hgcVar.c();
        this.g = iC;
        int iD = hgcVar.d();
        this.e = iD;
        this.a = b72.c(strB, iC, iD, hgcVar.a(), i2);
    }

    public static jrc k(int i2) {
        return (jrc) i.get(c35.d(i2));
    }

    public final int a() {
        int i2 = 2;
        while (true) {
            int i3 = this.b;
            if (i2 > i3) {
                throw new IllegalStateException("should never happen...");
            }
            if ((i3 - i2) % 2 == 0) {
                return i2;
            }
            i2++;
        }
    }

    public int b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }

    public int d() {
        return this.h.a();
    }

    public irc e() {
        return this.a;
    }

    public String f() {
        return this.f;
    }

    public l1 g() {
        return this.d;
    }

    public int h() {
        return this.g;
    }

    public d i() {
        return new d(this.h);
    }

    public int j() {
        return this.e;
    }

    public jrc(int i2, sb2 sb2Var) {
        this(i2, ub2.c(sb2Var.c()));
    }
}
