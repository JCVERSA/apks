package androidx.media3.exoplayer.upstream;

import androidx.media3.common.util.a1;
import java.util.Arrays;

public final class h implements b {

    private final boolean f12654a;

    private final int f12655b;

    private final byte[] f12656c;

    private int f12657d;

    private int f12658e;

    private int f12659f;

    private a[] f12660g;

    public h(boolean z10, int i10) {
        this(z10, i10, 0);
    }

    @Override
    public synchronized void a(b.a aVar) {
        while (aVar != null) {
            try {
                a[] aVarArr = this.f12660g;
                int i10 = this.f12659f;
                this.f12659f = i10 + 1;
                aVarArr[i10] = aVar.a();
                this.f12658e--;
                aVar = aVar.next();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        notifyAll();
    }

    @Override
    public synchronized a allocate() {
        a aVar;
        try {
            this.f12658e++;
            int i10 = this.f12659f;
            if (i10 > 0) {
                a[] aVarArr = this.f12660g;
                int i11 = i10 - 1;
                this.f12659f = i11;
                aVar = (a) androidx.media3.common.util.a.e(aVarArr[i11]);
                this.f12660g[this.f12659f] = null;
            } else {
                aVar = new a(new byte[this.f12655b], 0);
                int i12 = this.f12658e;
                a[] aVarArr2 = this.f12660g;
                if (i12 > aVarArr2.length) {
                    this.f12660g = (a[]) Arrays.copyOf(aVarArr2, aVarArr2.length * 2);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return aVar;
    }

    @Override
    public synchronized void b(a aVar) {
        a[] aVarArr = this.f12660g;
        int i10 = this.f12659f;
        this.f12659f = i10 + 1;
        aVarArr[i10] = aVar;
        this.f12658e--;
        notifyAll();
    }

    public synchronized int c() {
        return this.f12658e * this.f12655b;
    }

    public synchronized void d() {
        if (this.f12654a) {
            e(0);
        }
    }

    public synchronized void e(int i10) {
        boolean z10 = i10 < this.f12657d;
        this.f12657d = i10;
        if (z10) {
            trim();
        }
    }

    @Override
    public int getIndividualAllocationLength() {
        return this.f12655b;
    }

    @Override
    public synchronized void trim() {
        try {
            int i10 = 0;
            int iMax = Math.max(0, a1.k(this.f12657d, this.f12655b) - this.f12658e);
            int i11 = this.f12659f;
            if (iMax >= i11) {
                return;
            }
            if (this.f12656c != null) {
                int i12 = i11 - 1;
                while (i10 <= i12) {
                    a aVar = (a) androidx.media3.common.util.a.e(this.f12660g[i10]);
                    if (aVar.f12644a == this.f12656c) {
                        i10++;
                    } else {
                        a aVar2 = (a) androidx.media3.common.util.a.e(this.f12660g[i12]);
                        if (aVar2.f12644a != this.f12656c) {
                            i12--;
                        } else {
                            a[] aVarArr = this.f12660g;
                            aVarArr[i10] = aVar2;
                            aVarArr[i12] = aVar;
                            i12--;
                            i10++;
                        }
                    }
                }
                iMax = Math.max(iMax, i10);
                if (iMax >= this.f12659f) {
                    return;
                }
            }
            Arrays.fill(this.f12660g, iMax, this.f12659f, (Object) null);
            this.f12659f = iMax;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public h(boolean z10, int i10, int i11) {
        androidx.media3.common.util.a.a(i10 > 0);
        androidx.media3.common.util.a.a(i11 >= 0);
        this.f12654a = z10;
        this.f12655b = i10;
        this.f12659f = i11;
        this.f12660g = new a[i11 + 100];
        if (i11 <= 0) {
            this.f12656c = null;
            return;
        }
        this.f12656c = new byte[i11 * i10];
        for (int i12 = 0; i12 < i11; i12++) {
            this.f12660g[i12] = new a(this.f12656c, i12 * i10);
        }
    }
}
