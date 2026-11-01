package a0;

import java.util.concurrent.atomic.AtomicBoolean;

public final class e0 extends w0.c {

    public final h0.h f28e;

    public final d0.b f29f;

    public final int f30g;

    public final AtomicBoolean f31h = new AtomicBoolean(false);

    public final int f32i;

    public e0(h0.h hVar, d0.b bVar, int i2, int i3) {
        this.f28e = hVar;
        this.f29f = bVar;
        this.f32i = i2;
        this.f30g = i3;
    }

    @Override
    public final void e() {
        this.f31h.set(true);
        super.e();
    }

    @Override
    public final w0.a.b f() {
        h0.b bVar;
        StringBuilder sb = new StringBuilder();
        h0.h hVar = this.f28e;
        sb.append(hVar.f1108c);
        sb.append("/");
        String string = sb.toString();
        int i2 = this.f32i;
        boolean zK = c.K(i2, 256);
        boolean zK2 = c.K(i2, 512);
        if (zK2) {
            h0.b[] bVarArrB = h0.e.b();
            int length = bVarArrB.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    bVar = null;
                    break;
                }
                bVar = bVarArrB[i3];
                if (bVar.d(hVar)) {
                    break;
                }
                i3++;
            }
            if (bVar == null || !c.K(bVar.a(hVar), 16)) {
                zK2 = false;
            }
        } else {
            bVar = null;
        }
        for (d0.d dVar : this.f29f) {
            if (this.f31h.get()) {
                break;
            }
            if (zK2 && dVar.f() && !dVar.g()) {
                if (!(dVar.f546h != null)) {
                    int iC = bVar.c(dVar.f539a, hVar);
                    if (iC >= 0) {
                        dVar.f546h = new q0.h(iC);
                    }
                }
            }
            if (zK) {
                dVar.a(string);
            }
        }
        return null;
    }

    @Override
    public final int i() {
        return this.f30g;
    }

    @Override
    public final int j() {
        return 0;
    }
}
