package defpackage;

import org.mozilla.javascript.ES6Iterator;

public abstract class fl extends n2 {
    public ah b;

    public fl(ah ahVar) {
        y45.j(ahVar, "arrayMap");
        this.b = ahVar;
    }

    @Override
    public final ah b() {
        return this.b;
    }

    public final void f(de5 de5Var, Object obj) {
        y45.j(de5Var, "tClass");
        y45.j(obj, ES6Iterator.VALUE_PROPERTY);
        int iD = c().d(de5Var);
        int iB = this.b.b();
        if (iB == 0) {
            this.b = new rf7(obj, iD);
            return;
        }
        if (iB == 1) {
            ah ahVar = this.b;
            y45.h(ahVar, "null cannot be cast to non-null type org.jetbrains.kotlin.util.OneElementArrayMap<T of org.jetbrains.kotlin.util.AttributeArrayOwner>");
            rf7 rf7Var = (rf7) ahVar;
            if (rf7Var.f() == iD) {
                this.b = new rf7(obj, iD);
                return;
            } else {
                bh bhVar = new bh();
                this.b = bhVar;
                bhVar.c(rf7Var.f(), rf7Var.k());
            }
        }
        this.b.c(iD, obj);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public fl() {
        m93 m93Var = m93.b;
        y45.h(m93Var, "null cannot be cast to non-null type org.jetbrains.kotlin.util.ArrayMap<T of org.jetbrains.kotlin.util.AttributeArrayOwner>");
        this(m93Var);
    }
}
