package defpackage;

import androidx.media3.exoplayer.DefaultLoadControl;
import androidx.media3.exoplayer.dash.DashMediaSource;

public final class dif implements t7j {
    public final nrj a = new nrj(true, 65536);
    public long b = 15000000;
    public long c = 30000000;
    public long d = 2500000;
    public long e = DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US;
    public int f;
    public boolean g;

    @Override
    public final void a(tfj tfjVar) {
        j(true);
    }

    @Override
    public final void b(tfj tfjVar) {
        j(false);
    }

    @Override
    public final void c(tfj tfjVar) {
        j(true);
    }

    @Override
    public final long d(tfj tfjVar) {
        return 0L;
    }

    @Override
    public final boolean e(w4f w4fVar, bnj bnjVar, long j) {
        zrg.f("LoadControl", "shouldContinuePreloading needs to be implemented when playlist preloading is enabled");
        return false;
    }

    @Override
    public final boolean f(r7j r7jVar) {
        long j = r7jVar.d ? this.e : this.d;
        return j <= 0 || r7jVar.b >= j;
    }

    @Override
    public final boolean g(r7j r7jVar) {
        char c;
        long j = r7jVar.b;
        boolean z = true;
        if (j > this.c) {
            c = 0;
        } else {
            c = j < this.b ? (char) 2 : (char) 1;
        }
        int iA = this.a.a();
        int i = this.f;
        if (c != 2 && (c != 1 || !this.g || iA >= i)) {
            z = false;
        }
        this.g = z;
        return z;
    }

    @Override
    public final void h(r7j r7jVar, npj npjVar, tqj[] tqjVarArr) {
        int i;
        this.f = 0;
        for (tqj tqjVar : tqjVarArr) {
            if (tqjVar != null) {
                int i2 = this.f;
                int i3 = tqjVar.zzg().c;
                if (i3 == 0) {
                    i = DefaultLoadControl.DEFAULT_MUXED_BUFFER_SIZE;
                } else if (i3 == 1) {
                    i = 13107200;
                } else if (i3 != 2) {
                    i = 131072;
                    if (i3 != 3 && i3 != 5 && i3 != 6) {
                        throw new IllegalArgumentException();
                    }
                } else {
                    i = DefaultLoadControl.DEFAULT_VIDEO_BUFFER_SIZE;
                }
                this.f = i2 + i;
            }
        }
        this.a.f(this.f);
    }

    @Override
    public final boolean i(tfj tfjVar) {
        return false;
    }

    public final void j(boolean z) {
        this.f = 0;
        this.g = false;
        if (z) {
            this.a.e();
        }
    }

    public final synchronized void k(int i) {
        this.d = ((long) i) * 1000;
    }

    public final synchronized void l(int i) {
        this.e = ((long) i) * 1000;
    }

    public final synchronized void m(int i) {
        this.c = ((long) i) * 1000;
    }

    public final synchronized void n(int i) {
        this.b = ((long) i) * 1000;
    }

    @Override
    public final nrj zzk() {
        return this.a;
    }
}
