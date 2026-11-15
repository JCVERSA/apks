package kotlinx.coroutines.internal;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.Intrinsics;

public class k0 {

    private static final AtomicIntegerFieldUpdater f64895b = AtomicIntegerFieldUpdater.newUpdater(k0.class, "_size$volatile");
    private volatile int _size$volatile;

    private l0[] f64896a;

    private final l0[] g() {
        l0[] l0VarArr = this.f64896a;
        if (l0VarArr == null) {
            l0[] l0VarArr2 = new l0[4];
            this.f64896a = l0VarArr2;
            return l0VarArr2;
        }
        if (c() < l0VarArr.length) {
            return l0VarArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(l0VarArr, c() * 2);
        Intrinsics.g(objArrCopyOf, "copyOf(...)");
        l0[] l0VarArr3 = (l0[]) objArrCopyOf;
        this.f64896a = l0VarArr3;
        return l0VarArr3;
    }

    private final void k(int i10) {
        f64895b.set(this, i10);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002b  */
    private final void l(int i10) {
        while (true) {
            int i11 = i10 * 2;
            int i12 = i11 + 1;
            if (i12 >= c()) {
                return;
            }
            l0[] l0VarArr = this.f64896a;
            Intrinsics.e(l0VarArr);
            int i13 = i11 + 2;
            if (i13 < c()) {
                l0 l0Var = l0VarArr[i13];
                Intrinsics.e(l0Var);
                l0 l0Var2 = l0VarArr[i12];
                Intrinsics.e(l0Var2);
                if (((Comparable) l0Var).compareTo(l0Var2) >= 0) {
                    i13 = i12;
                }
            } else {
                i13 = i12;
            }
            l0 l0Var3 = l0VarArr[i10];
            Intrinsics.e(l0Var3);
            l0 l0Var4 = l0VarArr[i13];
            Intrinsics.e(l0Var4);
            if (((Comparable) l0Var3).compareTo(l0Var4) <= 0) {
                return;
            }
            n(i10, i13);
            i10 = i13;
        }
    }

    private final void m(int i10) {
        while (i10 > 0) {
            l0[] l0VarArr = this.f64896a;
            Intrinsics.e(l0VarArr);
            int i11 = (i10 - 1) / 2;
            l0 l0Var = l0VarArr[i11];
            Intrinsics.e(l0Var);
            l0 l0Var2 = l0VarArr[i10];
            Intrinsics.e(l0Var2);
            if (((Comparable) l0Var).compareTo(l0Var2) <= 0) {
                return;
            }
            n(i10, i11);
            i10 = i11;
        }
    }

    private final void n(int i10, int i11) {
        l0[] l0VarArr = this.f64896a;
        Intrinsics.e(l0VarArr);
        l0 l0Var = l0VarArr[i11];
        Intrinsics.e(l0Var);
        l0 l0Var2 = l0VarArr[i10];
        Intrinsics.e(l0Var2);
        l0VarArr[i10] = l0Var;
        l0VarArr[i11] = l0Var2;
        l0Var.setIndex(i10);
        l0Var2.setIndex(i11);
    }

    public final void a(l0 l0Var) {
        l0Var.setHeap(this);
        l0[] l0VarArrG = g();
        int iC = c();
        k(iC + 1);
        l0VarArrG[iC] = l0Var;
        l0Var.setIndex(iC);
        m(iC);
    }

    public final l0 b() {
        l0[] l0VarArr = this.f64896a;
        if (l0VarArr != null) {
            return l0VarArr[0];
        }
        return null;
    }

    public final int c() {
        return f64895b.get(this);
    }

    public final boolean e() {
        return c() == 0;
    }

    public final l0 f() {
        l0 l0VarB;
        synchronized (this) {
            l0VarB = b();
        }
        return l0VarB;
    }

    public final boolean h(l0 l0Var) {
        boolean z10;
        synchronized (this) {
            if (l0Var.getHeap() == null) {
                z10 = false;
            } else {
                i(l0Var.getIndex());
                z10 = true;
            }
        }
        return z10;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x003a  */
    public final l0 i(int i10) {
        l0[] l0VarArr = this.f64896a;
        Intrinsics.e(l0VarArr);
        k(c() - 1);
        if (i10 < c()) {
            n(i10, c());
            int i11 = (i10 - 1) / 2;
            if (i10 > 0) {
                l0 l0Var = l0VarArr[i10];
                Intrinsics.e(l0Var);
                l0 l0Var2 = l0VarArr[i11];
                Intrinsics.e(l0Var2);
                if (((Comparable) l0Var).compareTo(l0Var2) < 0) {
                    n(i10, i11);
                    m(i11);
                } else {
                    l(i10);
                }
            } else {
                l(i10);
            }
        }
        l0 l0Var3 = l0VarArr[c()];
        Intrinsics.e(l0Var3);
        l0Var3.setHeap(null);
        l0Var3.setIndex(-1);
        l0VarArr[c()] = null;
        return l0Var3;
    }

    public final l0 j() {
        l0 l0VarI;
        synchronized (this) {
            l0VarI = c() > 0 ? i(0) : null;
        }
        return l0VarI;
    }
}
