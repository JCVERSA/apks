package defpackage;

import java.util.Arrays;
import kotlin.Result;

public abstract class x3 {
    public z3[] b;
    public int c;
    public int d;
    public g2a e;

    public final gx9 f() {
        g2a g2aVar;
        synchronized (this) {
            g2aVar = this.e;
            if (g2aVar == null) {
                g2aVar = new g2a(this.c);
                this.e = g2aVar;
            }
        }
        return g2aVar;
    }

    public final z3 h() {
        z3 z3VarI;
        g2a g2aVar;
        synchronized (this) {
            try {
                z3[] z3VarArrJ = this.b;
                if (z3VarArrJ == null) {
                    z3VarArrJ = j(2);
                    this.b = z3VarArrJ;
                } else if (this.c >= z3VarArrJ.length) {
                    Object[] objArrCopyOf = Arrays.copyOf(z3VarArrJ, z3VarArrJ.length * 2);
                    y45.i(objArrCopyOf, "copyOf(...)");
                    this.b = (z3[]) objArrCopyOf;
                    z3VarArrJ = (z3[]) objArrCopyOf;
                }
                int i = this.d;
                do {
                    z3VarI = z3VarArrJ[i];
                    if (z3VarI == null) {
                        z3VarI = i();
                        z3VarArrJ[i] = z3VarI;
                    }
                    i++;
                    if (i >= z3VarArrJ.length) {
                        i = 0;
                    }
                    y45.h(z3VarI, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                } while (!z3VarI.a(this));
                this.d = i;
                this.c++;
                g2aVar = this.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (g2aVar != null) {
            g2aVar.Z(1);
        }
        return z3VarI;
    }

    public abstract z3 i();

    public abstract z3[] j(int i);

    public final void k(z3 z3Var) {
        g2a g2aVar;
        int i;
        wh1[] wh1VarArrB;
        synchronized (this) {
            try {
                int i2 = this.c - 1;
                this.c = i2;
                g2aVar = this.e;
                if (i2 == 0) {
                    this.d = 0;
                }
                y45.h(z3Var, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                wh1VarArrB = z3Var.b(this);
            } catch (Throwable th) {
                throw th;
            }
        }
        for (wh1 wh1Var : wh1VarArrB) {
            if (wh1Var != null) {
                Result.Companion companion = Result.INSTANCE;
                wh1Var.resumeWith(Result.m279constructorimpl(zfb.a));
            }
        }
        if (g2aVar != null) {
            g2aVar.Z(-1);
        }
    }

    public final int l() {
        return this.c;
    }

    public final z3[] m() {
        return this.b;
    }
}
