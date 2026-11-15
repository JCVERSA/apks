package defpackage;

import java.io.IOException;
import java.util.Objects;

public final class hmj implements snj, kjj {
    public final Object a;
    public rnj b;
    public jjj c;
    public final jmj d;

    public hmj(jmj jmjVar, Object obj) {
        this.d = jmjVar;
        this.b = jmjVar.p(null);
        this.c = jmjVar.n(null);
        this.a = obj;
    }

    @Override
    public final void G(int i, bnj bnjVar, smj smjVar, xmj xmjVar, int i2) {
        if (c(0, bnjVar)) {
            rnj rnjVar = this.b;
            a(xmjVar, bnjVar);
            rnjVar.h(smjVar, xmjVar, i2);
        }
    }

    @Override
    public final void L(int i, bnj bnjVar, smj smjVar, xmj xmjVar) {
        if (c(0, bnjVar)) {
            rnj rnjVar = this.b;
            a(xmjVar, bnjVar);
            rnjVar.f(smjVar, xmjVar);
        }
    }

    @Override
    public final void O(int i, bnj bnjVar, xmj xmjVar) {
        if (c(0, bnjVar)) {
            rnj rnjVar = this.b;
            a(xmjVar, bnjVar);
            rnjVar.d(xmjVar);
        }
    }

    @Override
    public final void Q(int i, bnj bnjVar, smj smjVar, xmj xmjVar) {
        if (c(0, bnjVar)) {
            rnj rnjVar = this.b;
            a(xmjVar, bnjVar);
            rnjVar.e(smjVar, xmjVar);
        }
    }

    public final xmj a(xmj xmjVar, bnj bnjVar) {
        jmj jmjVar = this.d;
        Object obj = this.a;
        jmjVar.A(obj, xmjVar.c, bnjVar);
        jmjVar.A(obj, xmjVar.d, bnjVar);
        return xmjVar;
    }

    public final boolean c(int i, bnj bnjVar) {
        bnj bnjVarB;
        if (bnjVar != null) {
            bnjVarB = this.d.B(this.a, bnjVar);
            if (bnjVarB == null) {
                return false;
            }
        } else {
            bnjVarB = null;
        }
        jmj jmjVar = this.d;
        jmjVar.z(this.a, 0);
        rnj rnjVar = this.b;
        int i2 = rnjVar.a;
        if (!Objects.equals(rnjVar.b, bnjVarB)) {
            this.b = jmjVar.q(0, bnjVarB);
        }
        jjj jjjVar = this.c;
        int i3 = jjjVar.a;
        if (Objects.equals(jjjVar.b, bnjVarB)) {
            return true;
        }
        this.c = jmjVar.o(0, bnjVarB);
        return true;
    }

    @Override
    public final void t(int i, bnj bnjVar, smj smjVar, xmj xmjVar, IOException iOException, boolean z) {
        if (c(0, bnjVar)) {
            rnj rnjVar = this.b;
            a(xmjVar, bnjVar);
            rnjVar.g(smjVar, xmjVar, iOException, z);
        }
    }
}
