package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

public final class j2 implements androidx.compose.runtime.tooling.a, Iterable, KMappedMarker {

    private int f3468b;

    private int f3470d;

    private int f3471e;

    private boolean f3472f;

    private int f3473g;

    private HashMap f3475i;

    private androidx.collection.e0 f3476j;

    private int[] f3467a = new int[0];

    private Object[] f3469c = new Object[0];

    private ArrayList f3474h = new ArrayList();

    private final c B(int i10) {
        int i11;
        if (this.f3472f) {
            k.r("use active SlotWriter to crate an anchor for location instead");
        }
        if (i10 < 0 || i10 >= (i11 = this.f3468b)) {
            return null;
        }
        return l2.G(this.f3474h, i10, i11);
    }

    public final l0 A(int i10) {
        c cVarB;
        HashMap map = this.f3475i;
        if (map == null || (cVarB = B(i10)) == null) {
            return null;
        }
        return (l0) map.get(cVarB);
    }

    public final c a(int i10) {
        if (this.f3472f) {
            k.r("use active SlotWriter to create an anchor location instead");
        }
        boolean z10 = false;
        if (i10 >= 0 && i10 < this.f3468b) {
            z10 = true;
        }
        if (!z10) {
            o1.a("Parameter index is out of range");
        }
        ArrayList arrayList = this.f3474h;
        int iU = l2.U(arrayList, i10, this.f3468b);
        if (iU >= 0) {
            return (c) arrayList.get(iU);
        }
        c cVar = new c(i10);
        arrayList.add(-(iU + 1), cVar);
        return cVar;
    }

    public final int c(c cVar) {
        if (this.f3472f) {
            k.r("Use active SlotWriter to determine anchor location instead");
        }
        if (!cVar.b()) {
            o1.a("Anchor refers to a group that was removed");
        }
        return cVar.a();
    }

    public final void e(i2 i2Var, HashMap map) {
        if (!(i2Var.y() == this && this.f3471e > 0)) {
            k.r("Unexpected reader close()");
        }
        this.f3471e--;
        if (map != null) {
            synchronized (this) {
                try {
                    HashMap map2 = this.f3475i;
                    if (map2 != null) {
                        map2.putAll(map);
                    } else {
                        this.f3475i = map;
                    }
                    Unit unit = Unit.f64096a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void f(m2 m2Var, int[] iArr, int i10, Object[] objArr, int i11, ArrayList arrayList, HashMap map, androidx.collection.e0 e0Var) {
        if (!(m2Var.f0() == this && this.f3472f)) {
            o1.a("Unexpected writer close()");
        }
        this.f3472f = false;
        z(iArr, i10, objArr, i11, arrayList, map, e0Var);
    }

    public final void i() {
        this.f3476j = new androidx.collection.e0(0, 1, null);
    }

    public boolean isEmpty() {
        return this.f3468b == 0;
    }

    @Override
    public Iterator iterator() {
        return new j0(this, 0, this.f3468b);
    }

    public final void j() {
        this.f3475i = new HashMap();
    }

    public final boolean l() {
        return this.f3468b > 0 && l2.D(this.f3467a, 0);
    }

    public final ArrayList m() {
        return this.f3474h;
    }

    public final androidx.collection.e0 n() {
        return this.f3476j;
    }

    public final int[] o() {
        return this.f3467a;
    }

    public final int p() {
        return this.f3468b;
    }

    public final Object[] q() {
        return this.f3469c;
    }

    public final int r() {
        return this.f3470d;
    }

    public final HashMap s() {
        return this.f3475i;
    }

    public final int t() {
        return this.f3473g;
    }

    public final boolean u() {
        return this.f3472f;
    }

    public final boolean v(int i10, c cVar) {
        if (this.f3472f) {
            k.r("Writer is active");
        }
        if (!(i10 >= 0 && i10 < this.f3468b)) {
            k.r("Invalid group index");
        }
        if (y(cVar)) {
            int I = l2.I(this.f3467a, i10) + i10;
            int iA = cVar.a();
            if (i10 <= iA && iA < I) {
                return true;
            }
        }
        return false;
    }

    public final i2 w() {
        if (this.f3472f) {
            throw new IllegalStateException("Cannot read while a writer is pending");
        }
        this.f3471e++;
        return new i2(this);
    }

    public final m2 x() {
        if (this.f3472f) {
            k.r("Cannot start a writer when another writer is pending");
        }
        if (!(this.f3471e <= 0)) {
            k.r("Cannot start a writer when a reader is pending");
        }
        this.f3472f = true;
        this.f3473g++;
        return new m2(this);
    }

    public final boolean y(c cVar) {
        int iU;
        return cVar.b() && (iU = l2.U(this.f3474h, cVar.a(), this.f3468b)) >= 0 && Intrinsics.c(this.f3474h.get(iU), cVar);
    }

    public final void z(int[] iArr, int i10, Object[] objArr, int i11, ArrayList arrayList, HashMap map, androidx.collection.e0 e0Var) {
        this.f3467a = iArr;
        this.f3468b = i10;
        this.f3469c = objArr;
        this.f3470d = i11;
        this.f3474h = arrayList;
        this.f3475i = map;
        this.f3476j = e0Var;
    }
}
