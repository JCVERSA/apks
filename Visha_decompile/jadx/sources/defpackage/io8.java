package defpackage;

import kotlin.coroutines.d;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.j;

public final class io8 implements gx9, nz3, i94 {
    public final gx9 b;
    public final j c;

    public io8(gx9 gx9Var, j jVar) {
        this.b = gx9Var;
        this.c = jVar;
    }

    @Override
    public Object collect(oz3 oz3Var, wh1 wh1Var) {
        return this.b.collect(oz3Var, wh1Var);
    }

    @Override
    public nz3 d(d dVar, int i, BufferOverflow bufferOverflow) {
        return hx9.d(this, dVar, i, bufferOverflow);
    }

    @Override
    public Object getValue() {
        return this.b.getValue();
    }
}
