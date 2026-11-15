package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.markers.KMappedMarker;

final class w2 implements Iterator, KMappedMarker {

    private final j2 f3749a;

    private final int f3750b;

    private final l0 f3751c;

    private final x2 f3752d;

    private final int f3753e;

    private int f3754f;

    public w2(j2 j2Var, int i10, l0 l0Var, x2 x2Var) {
        this.f3749a = j2Var;
        this.f3750b = i10;
        this.f3752d = x2Var;
        this.f3753e = j2Var.t();
    }

    @Override
    public androidx.compose.runtime.tooling.b next() {
        Object obj;
        ArrayList arrayListB = this.f3751c.b();
        if (arrayListB != null) {
            int i10 = this.f3754f;
            this.f3754f = i10 + 1;
            obj = arrayListB.get(i10);
        } else {
            obj = null;
        }
        if (obj instanceof c) {
            return new k2(this.f3749a, ((c) obj).a(), this.f3753e);
        }
        if (obj instanceof l0) {
            return new y2(this.f3749a, this.f3750b, (l0) obj, new z1(this.f3752d, this.f3754f - 1));
        }
        k.s("Unexpected group information structure");
        throw new KotlinNothingValueException();
    }

    @Override
    public boolean hasNext() {
        ArrayList arrayListB = this.f3751c.b();
        return arrayListB != null && this.f3754f < arrayListB.size();
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
