package a0;

import ru.zdevs.zarchiver.archiver.C2JBridge;

public final class u0 extends w0.c implements h0.e.c {

    public final ru.zdevs.zarchiver.b f120e;

    public d0.i f121f = null;

    public final boolean f122g;

    public final boolean f123h;

    public u0(ru.zdevs.zarchiver.b bVar, boolean z2, boolean z3) {
        this.f120e = bVar;
        this.f123h = z3;
        this.f122g = z2;
    }

    @Override
    public final void b(int i2) {
    }

    @Override
    public final void d(h0.e.b bVar, h0.h hVar, String str, String str2) {
        this.f121f.i(new d0.f(hVar, str, str2, bVar.f1088a ? (byte) -1 : (byte) 4, bVar.f1090c, bVar.f1089b));
    }

    @Override
    public final void e() {
        ru.zdevs.zarchiver.b bVar = this.f120e;
        if (bVar.g(4)) {
            String str = bVar.f1653c.f1108c;
            f0.d dVar = C2JBridge.f1615e;
            if (dVar != null && (str == null || dVar.m(str))) {
                if (C2JBridge.f1613c) {
                    C2JBridge.cSetStatus(0, 15);
                }
                C2JBridge.f1615e = null;
            }
        }
        super.e();
    }

    @Override
    public final w0.a.b f() {
        d0.i iVar;
        int i2;
        Thread threadCurrentThread = Thread.currentThread();
        int priority = threadCurrentThread.getPriority();
        threadCurrentThread.setPriority(10);
        ru.zdevs.zarchiver.b bVar = this.f120e;
        boolean z2 = bVar.f1668r.f521a > 0;
        d0.i iVarB = null;
        if (!this.f122g) {
            if (!this.f123h) {
                threadCurrentThread.setPriority(priority);
                return null;
            }
            synchronized (bVar.f1651a) {
                this.f121f = new d0.i(this.f120e.f1668r);
            }
        } else if (bVar.g(4)) {
            f0.a.m().a();
            try {
                e0.b.d(this.f120e.f1653c);
            } catch (e0.b.C0010b unused) {
            }
        } else {
            synchronized (this.f120e.f1651a) {
                iVar = new d0.i(this.f120e.f1668r);
            }
            h0.h hVar = this.f120e.f1653c;
            for (h0.b bVar2 : h0.e.b()) {
                if (bVar2.d(hVar)) {
                    iVarB = bVar2.b(iVar);
                    break;
                }
                if (isCancelled()) {
                    break;
                }
            }
            this.f121f = iVarB;
        }
        if (this.f121f == null) {
            try {
                this.f121f = new d0.i(0);
                ru.zdevs.zarchiver.b bVar3 = this.f120e;
                h0.h hVar2 = bVar3.f1653c;
                String str = bVar3.f1665o;
                int[] iArrA = h0.e.a(bVar3.f1666p);
                String[] strArr = this.f120e.f1666p;
                if (strArr == null) {
                    i2 = 0;
                    break;
                }
                int length = strArr.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        i2 = 0;
                        break;
                    }
                    if ("[SF]".equals(strArr[i3])) {
                        i2 = 1;
                        break;
                    }
                    i3++;
                }
                h0.e.h(hVar2, str, iArrA, i2, this, this);
            } catch (Exception unused2) {
            }
        }
        if (this.f123h) {
            h0.e.i(this.f120e.f1658h, this.f121f);
        }
        synchronized (this.f120e.f1651a) {
            this.f120e.f1668r = this.f121f;
        }
        threadCurrentThread.setPriority(priority);
        return new x(this.f120e, z2 && this.f121f.f521a == 0);
    }

    @Override
    public final int i() {
        return this.f120e.f1652b;
    }

    @Override
    public final int j() {
        return 2;
    }
}
