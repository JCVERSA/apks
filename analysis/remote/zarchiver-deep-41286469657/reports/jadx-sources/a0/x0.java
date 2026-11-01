package a0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public final class x0 extends w0.c {

    public int f139e;

    public final ru.zdevs.zarchiver.b[] f140f;

    public x0(int i2, ru.zdevs.zarchiver.b[] bVarArr) {
        this.f139e = i2;
        this.f140f = bVarArr;
    }

    @Override
    public final w0.a.b f() {
        n nVar = null;
        if (c.K(this.f139e, 1)) {
            ru.zdevs.zarchiver.b[] bVarArr = this.f140f;
            ArrayList arrayList = bVarArr != null ? new ArrayList(1) : null;
            if (x0.d.u(arrayList)) {
                this.f139e |= 2;
            }
            if (l0.c.k()) {
                this.f139e |= 2;
            }
            if (arrayList != null && arrayList.size() > 0) {
                for (int i2 = 0; i2 < bVarArr.length; i2++) {
                    ru.zdevs.zarchiver.b bVar = bVarArr[i2];
                    if (bVar != null) {
                        String strR = bVar.f1653c.r();
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            if (strR.startsWith(((x0.d.a) it.next()).f2255b)) {
                                y yVar = new y(i2, true);
                                yVar.f142b = new h0.h(t0.b.f2081b[i2]);
                                w0.a aVar = this.f2213a;
                                if (aVar == null) {
                                    break;
                                }
                                aVar.b(yVar, false);
                                break;
                            }
                        }
                    }
                }
            }
        } else if (c.K(this.f139e, 8) && l0.c.k()) {
            this.f139e |= 2;
        }
        if (c.K(this.f139e, 2)) {
            ReentrantReadWriteLock reentrantReadWriteLock = t0.a.f2074b;
            try {
                reentrantReadWriteLock.writeLock().lock();
                t0.a.f2073a.clear();
                t0.a.b();
                reentrantReadWriteLock.writeLock().unlock();
                nVar = new n(13);
            } catch (Throwable th) {
                reentrantReadWriteLock.writeLock().unlock();
                throw th;
            }
        }
        if (c.L(this.f139e, 6)) {
            t0.a.k();
        }
        return nVar;
    }

    @Override
    public final int j() {
        return 11;
    }
}
