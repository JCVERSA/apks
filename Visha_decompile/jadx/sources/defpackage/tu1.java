package defpackage;

import java.util.Arrays;

public final class tu1 implements cb {
    public final boolean a;
    public final int b;
    public final byte[] c;
    public int d;
    public int e;
    public int f;
    public bb[] g;

    public tu1(boolean z, int i) {
        this(z, i, 0);
    }

    @Override
    public synchronized void a(bb bbVar) {
        bb[] bbVarArr = this.g;
        int i = this.f;
        this.f = i + 1;
        bbVarArr[i] = bbVar;
        this.e--;
        notifyAll();
    }

    @Override
    public synchronized bb allocate() {
        bb bbVar;
        try {
            this.e++;
            int i = this.f;
            if (i > 0) {
                bb[] bbVarArr = this.g;
                int i2 = i - 1;
                this.f = i2;
                bbVar = (bb) zi.e(bbVarArr[i2]);
                this.g[this.f] = null;
            } else {
                bbVar = new bb(new byte[this.b], 0);
                int i3 = this.e;
                bb[] bbVarArr2 = this.g;
                if (i3 > bbVarArr2.length) {
                    this.g = (bb[]) Arrays.copyOf(bbVarArr2, bbVarArr2.length * 2);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return bbVar;
    }

    @Override
    public synchronized void b(cb.a aVar) {
        while (aVar != null) {
            try {
                bb[] bbVarArr = this.g;
                int i = this.f;
                this.f = i + 1;
                bbVarArr[i] = aVar.getAllocation();
                this.e--;
                aVar = aVar.next();
            } catch (Throwable th) {
                throw th;
            }
        }
        notifyAll();
    }

    public synchronized int c() {
        return this.e * this.b;
    }

    public synchronized void d() {
        if (this.a) {
            e(0);
        }
    }

    public synchronized void e(int i) {
        boolean z = i < this.d;
        this.d = i;
        if (z) {
            trim();
        }
    }

    @Override
    public int getIndividualAllocationLength() {
        return this.b;
    }

    @Override
    public synchronized void trim() {
        try {
            int i = 0;
            int iMax = Math.max(0, blb.l(this.d, this.b) - this.e);
            int i2 = this.f;
            if (iMax >= i2) {
                return;
            }
            if (this.c != null) {
                int i3 = i2 - 1;
                while (i <= i3) {
                    bb bbVar = (bb) zi.e(this.g[i]);
                    if (bbVar.a == this.c) {
                        i++;
                    } else {
                        bb bbVar2 = (bb) zi.e(this.g[i3]);
                        if (bbVar2.a != this.c) {
                            i3--;
                        } else {
                            bb[] bbVarArr = this.g;
                            bbVarArr[i] = bbVar2;
                            bbVarArr[i3] = bbVar;
                            i3--;
                            i++;
                        }
                    }
                }
                iMax = Math.max(iMax, i);
                if (iMax >= this.f) {
                    return;
                }
            }
            Arrays.fill(this.g, iMax, this.f, (Object) null);
            this.f = iMax;
        } catch (Throwable th) {
            throw th;
        }
    }

    public tu1(boolean z, int i, int i2) {
        zi.a(i > 0);
        zi.a(i2 >= 0);
        this.a = z;
        this.b = i;
        this.f = i2;
        this.g = new bb[i2 + 100];
        if (i2 <= 0) {
            this.c = null;
            return;
        }
        this.c = new byte[i2 * i];
        for (int i3 = 0; i3 < i2; i3++) {
            this.g[i3] = new bb(this.c, i3 * i);
        }
    }
}
