package defpackage;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

public class jia {
    public static final AtomicIntegerFieldUpdater b = AtomicIntegerFieldUpdater.newUpdater(jia.class, "_size$volatile");
    private volatile int _size$volatile;
    public kia[] a;

    public final void a(kia kiaVar) {
        kiaVar.setHeap(this);
        kia[] kiaVarArrG = g();
        int iC = c();
        k(iC + 1);
        kiaVarArrG[iC] = kiaVar;
        kiaVar.setIndex(iC);
        m(iC);
    }

    public final kia b() {
        kia[] kiaVarArr = this.a;
        if (kiaVarArr != null) {
            return kiaVarArr[0];
        }
        return null;
    }

    public final int c() {
        return b.get(this);
    }

    public final boolean e() {
        return c() == 0;
    }

    public final kia f() {
        kia kiaVarB;
        synchronized (this) {
            kiaVarB = b();
        }
        return kiaVarB;
    }

    public final kia[] g() {
        kia[] kiaVarArr = this.a;
        if (kiaVarArr == null) {
            kia[] kiaVarArr2 = new kia[4];
            this.a = kiaVarArr2;
            return kiaVarArr2;
        }
        if (c() < kiaVarArr.length) {
            return kiaVarArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(kiaVarArr, c() * 2);
        y45.i(objArrCopyOf, "copyOf(...)");
        kia[] kiaVarArr3 = (kia[]) objArrCopyOf;
        this.a = kiaVarArr3;
        return kiaVarArr3;
    }

    public final boolean h(kia kiaVar) {
        boolean z;
        synchronized (this) {
            if (kiaVar.getHeap() == null) {
                z = false;
            } else {
                i(kiaVar.getIndex());
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x003a  */
    public final kia i(int i) {
        kia[] kiaVarArr = this.a;
        y45.g(kiaVarArr);
        k(c() - 1);
        if (i < c()) {
            n(i, c());
            int i2 = (i - 1) / 2;
            if (i > 0) {
                kia kiaVar = kiaVarArr[i];
                y45.g(kiaVar);
                kia kiaVar2 = kiaVarArr[i2];
                y45.g(kiaVar2);
                if (((Comparable) kiaVar).compareTo(kiaVar2) < 0) {
                    n(i, i2);
                    m(i2);
                } else {
                    l(i);
                }
            } else {
                l(i);
            }
        }
        kia kiaVar3 = kiaVarArr[c()];
        y45.g(kiaVar3);
        kiaVar3.setHeap(null);
        kiaVar3.setIndex(-1);
        kiaVarArr[c()] = null;
        return kiaVar3;
    }

    public final kia j() {
        kia kiaVarI;
        synchronized (this) {
            kiaVarI = c() > 0 ? i(0) : null;
        }
        return kiaVarI;
    }

    public final void k(int i) {
        b.set(this, i);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002b  */
    public final void l(int i) {
        while (true) {
            int i2 = i * 2;
            int i3 = i2 + 1;
            if (i3 >= c()) {
                return;
            }
            kia[] kiaVarArr = this.a;
            y45.g(kiaVarArr);
            int i4 = i2 + 2;
            if (i4 < c()) {
                kia kiaVar = kiaVarArr[i4];
                y45.g(kiaVar);
                kia kiaVar2 = kiaVarArr[i3];
                y45.g(kiaVar2);
                if (((Comparable) kiaVar).compareTo(kiaVar2) >= 0) {
                    i4 = i3;
                }
            } else {
                i4 = i3;
            }
            kia kiaVar3 = kiaVarArr[i];
            y45.g(kiaVar3);
            kia kiaVar4 = kiaVarArr[i4];
            y45.g(kiaVar4);
            if (((Comparable) kiaVar3).compareTo(kiaVar4) <= 0) {
                return;
            }
            n(i, i4);
            i = i4;
        }
    }

    public final void m(int i) {
        while (i > 0) {
            kia[] kiaVarArr = this.a;
            y45.g(kiaVarArr);
            int i2 = (i - 1) / 2;
            kia kiaVar = kiaVarArr[i2];
            y45.g(kiaVar);
            kia kiaVar2 = kiaVarArr[i];
            y45.g(kiaVar2);
            if (((Comparable) kiaVar).compareTo(kiaVar2) <= 0) {
                return;
            }
            n(i, i2);
            i = i2;
        }
    }

    public final void n(int i, int i2) {
        kia[] kiaVarArr = this.a;
        y45.g(kiaVarArr);
        kia kiaVar = kiaVarArr[i2];
        y45.g(kiaVar);
        kia kiaVar2 = kiaVarArr[i];
        y45.g(kiaVar2);
        kiaVarArr[i] = kiaVar;
        kiaVarArr[i2] = kiaVar2;
        kiaVar.setIndex(i);
        kiaVar2.setIndex(i2);
    }
}
