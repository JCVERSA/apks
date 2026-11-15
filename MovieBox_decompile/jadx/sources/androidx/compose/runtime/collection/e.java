package androidx.compose.runtime.collection;

import androidx.collection.MutableScatterSet;
import androidx.collection.n0;
import androidx.collection.v0;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    private final n0 f3381a = v0.d();

    public final void a(Object obj, Object obj2) {
        n0 n0Var = this.f3381a;
        int iK = n0Var.k(obj);
        boolean z10 = iK < 0;
        Object obj3 = z10 ? null : n0Var.f2037c[iK];
        if (obj3 != null) {
            if (obj3 instanceof MutableScatterSet) {
                Intrinsics.f(obj3, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.add$lambda$0>");
                ((MutableScatterSet) obj3).h(obj2);
            } else if (obj3 != obj2) {
                MutableScatterSet mutableScatterSet = new MutableScatterSet(0, 1, null);
                Intrinsics.f(obj3, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.add$lambda$0");
                mutableScatterSet.h(obj3);
                mutableScatterSet.h(obj2);
                obj2 = mutableScatterSet;
            }
            obj2 = obj3;
        }
        if (!z10) {
            n0Var.f2037c[iK] = obj2;
            return;
        }
        int i10 = ~iK;
        n0Var.f2036b[i10] = obj;
        n0Var.f2037c[i10] = obj2;
    }

    public final void b() {
        this.f3381a.h();
    }

    public final boolean c(Object obj) {
        return this.f3381a.a(obj);
    }

    public final n0 d() {
        return this.f3381a;
    }

    public final int e() {
        return this.f3381a.d();
    }

    public final boolean f(Object obj, Object obj2) {
        Object objB = this.f3381a.b(obj);
        if (objB == null) {
            return false;
        }
        if (!(objB instanceof MutableScatterSet)) {
            if (!Intrinsics.c(objB, obj2)) {
                return false;
            }
            this.f3381a.o(obj);
            return true;
        }
        MutableScatterSet mutableScatterSet = (MutableScatterSet) objB;
        boolean zX = mutableScatterSet.x(obj2);
        if (zX && mutableScatterSet.d()) {
            this.f3381a.o(obj);
        }
        return zX;
    }

    public final void g(Object obj) {
        boolean zD;
        n0 n0Var = this.f3381a;
        long[] jArr = n0Var.f2035a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            long j10 = jArr[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8 - ((~(i10 - length)) >>> 31);
                for (int i12 = 0; i12 < i11; i12++) {
                    if ((255 & j10) < 128) {
                        int i13 = (i10 << 3) + i12;
                        Object obj2 = n0Var.f2036b[i13];
                        Object obj3 = n0Var.f2037c[i13];
                        if (obj3 instanceof MutableScatterSet) {
                            Intrinsics.f(obj3, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScope$lambda$3>");
                            MutableScatterSet mutableScatterSet = (MutableScatterSet) obj3;
                            mutableScatterSet.x(obj);
                            zD = mutableScatterSet.d();
                        } else {
                            zD = obj3 == obj;
                        }
                        if (zD) {
                            n0Var.p(i13);
                        }
                    }
                    j10 >>= 8;
                }
                if (i11 != 8) {
                    return;
                }
            }
            if (i10 == length) {
                return;
            } else {
                i10++;
            }
        }
    }

    public final void h(Object obj, Object obj2) {
        this.f3381a.r(obj, obj2);
    }
}
