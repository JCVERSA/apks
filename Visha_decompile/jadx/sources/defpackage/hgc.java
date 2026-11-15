package defpackage;

public final class hgc {
    public final irc a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final l1 g;

    public hgc(l1 l1Var) {
        if (l1Var == null) {
            throw new NullPointerException("treeDigest == null");
        }
        this.g = l1Var;
        sb2 sb2VarA = ub2.a(l1Var);
        int iH = nrc.h(sb2VarA);
        this.b = iH;
        this.c = 16;
        int iCeil = (int) Math.ceil(((double) (iH * 8)) / ((double) nrc.o(16)));
        this.e = iCeil;
        int iFloor = ((int) Math.floor(nrc.o((16 - 1) * iCeil) / nrc.o(16))) + 1;
        this.f = iFloor;
        int i = iCeil + iFloor;
        this.d = i;
        ggc ggcVarC = ggc.c(sb2VarA.c(), iH, 16, i);
        this.a = ggcVarC;
        if (ggcVarC != null) {
            return;
        }
        throw new IllegalArgumentException("cannot find OID for digest algorithm: " + sb2VarA.c());
    }

    public int a() {
        return this.d;
    }

    public l1 b() {
        return this.g;
    }

    public int c() {
        return this.b;
    }

    public int d() {
        return this.c;
    }
}
