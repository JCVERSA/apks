package defpackage;

import android.os.SystemClock;

public final class sij implements shj {
    public final xij a;

    public sij(xij xijVar, wij wijVar) {
        this.a = xijVar;
    }

    @Override
    public final void a(long j) {
        xij xijVar = this.a;
        if (xijVar.l != null) {
            ((bjj) xijVar.l).a.C0.v(j);
        }
    }

    @Override
    public final void b(long j) {
        zrg.f("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j);
    }

    @Override
    public final void c(int i, long j) {
        xij xijVar = this.a;
        if (xijVar.l != null) {
            ((bjj) xijVar.l).a.C0.x(i, j, SystemClock.elapsedRealtime() - xijVar.R);
        }
    }

    @Override
    public final void d(long j, long j2, long j3, long j4) {
        xij xijVar = this.a;
        zrg.f("DefaultAudioSink", "Spurious audio timestamp (frame position mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + xijVar.A() + ", " + xijVar.B());
    }

    @Override
    public final void e(long j, long j2, long j3, long j4) {
        xij xijVar = this.a;
        zrg.f("DefaultAudioSink", "Spurious audio timestamp (system clock mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + xijVar.A() + ", " + xijVar.B());
    }
}
