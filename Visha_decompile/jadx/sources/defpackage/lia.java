package defpackage;

import kotlin.coroutines.d;

public final class lia {
    public final d a;
    public final Object[] b;
    public final yha[] c;
    public int d;

    public lia(d dVar, int i) {
        this.a = dVar;
        this.b = new Object[i];
        this.c = new yha[i];
    }

    public final void a(yha yhaVar, Object obj) {
        Object[] objArr = this.b;
        int i = this.d;
        objArr[i] = obj;
        yha[] yhaVarArr = this.c;
        this.d = i + 1;
        y45.h(yhaVar, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        yhaVarArr[i] = yhaVar;
    }

    public final void b(d dVar) {
        int length = this.c.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i = length - 1;
            yha yhaVar = this.c[length];
            y45.g(yhaVar);
            yhaVar.e(dVar, this.b[length]);
            if (i < 0) {
                return;
            } else {
                length = i;
            }
        }
    }
}
