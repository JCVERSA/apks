package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.util.p0;
import java.util.Arrays;

public final class o implements b {

    private final boolean f26686a;

    private final int f26687b;

    private final byte[] f26688c;

    private int f26689d;

    private int f26690e;

    private int f26691f;

    private a[] f26692g;

    public o(boolean z10, int i10) {
        this(z10, i10, 0);
    }

    @Override
    public synchronized void a(b.a aVar) {
        while (aVar != null) {
            try {
                a[] aVarArr = this.f26692g;
                int i10 = this.f26691f;
                this.f26691f = i10 + 1;
                aVarArr[i10] = aVar.a();
                this.f26690e--;
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
            this.f26690e++;
            int i10 = this.f26691f;
            if (i10 > 0) {
                a[] aVarArr = this.f26692g;
                int i11 = i10 - 1;
                this.f26691f = i11;
                aVar = (a) com.google.android.exoplayer2.util.a.e(aVarArr[i11]);
                this.f26692g[this.f26691f] = null;
            } else {
                aVar = new a(new byte[this.f26687b], 0);
                int i12 = this.f26690e;
                a[] aVarArr2 = this.f26692g;
                if (i12 > aVarArr2.length) {
                    this.f26692g = (a[]) Arrays.copyOf(aVarArr2, aVarArr2.length * 2);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return aVar;
    }

    @Override
    public synchronized void b(a aVar) {
        a[] aVarArr = this.f26692g;
        int i10 = this.f26691f;
        this.f26691f = i10 + 1;
        aVarArr[i10] = aVar;
        this.f26690e--;
        notifyAll();
    }

    public synchronized int c() {
        return this.f26690e * this.f26687b;
    }

    public synchronized void d() {
        if (this.f26686a) {
            e(0);
        }
    }

    public synchronized void e(int i10) {
        boolean z10 = i10 < this.f26689d;
        this.f26689d = i10;
        if (z10) {
            trim();
        }
    }

    @Override
    public int getIndividualAllocationLength() {
        return this.f26687b;
    }

    @Override
    public synchronized void trim() {
        try {
            int i10 = 0;
            int iMax = Math.max(0, p0.l(this.f26689d, this.f26687b) - this.f26690e);
            int i11 = this.f26691f;
            if (iMax >= i11) {
                return;
            }
            if (this.f26688c != null) {
                int i12 = i11 - 1;
                while (i10 <= i12) {
                    a aVar = (a) com.google.android.exoplayer2.util.a.e(this.f26692g[i10]);
                    if (aVar.f26497a == this.f26688c) {
                        i10++;
                    } else {
                        a aVar2 = (a) com.google.android.exoplayer2.util.a.e(this.f26692g[i12]);
                        if (aVar2.f26497a != this.f26688c) {
                            i12--;
                        } else {
                            a[] aVarArr = this.f26692g;
                            aVarArr[i10] = aVar2;
                            aVarArr[i12] = aVar;
                            i12--;
                            i10++;
                        }
                    }
                }
                iMax = Math.max(iMax, i10);
                if (iMax >= this.f26691f) {
                    return;
                }
            }
            Arrays.fill(this.f26692g, iMax, this.f26691f, (Object) null);
            this.f26691f = iMax;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public o(boolean z10, int i10, int i11) {
        com.google.android.exoplayer2.util.a.a(i10 > 0);
        com.google.android.exoplayer2.util.a.a(i11 >= 0);
        this.f26686a = z10;
        this.f26687b = i10;
        this.f26691f = i11;
        this.f26692g = new a[i11 + 100];
        if (i11 <= 0) {
            this.f26688c = null;
            return;
        }
        this.f26688c = new byte[i11 * i10];
        for (int i12 = 0; i12 < i11; i12++) {
            this.f26692g[i12] = new a(this.f26688c, i12 * i10);
        }
    }
}
