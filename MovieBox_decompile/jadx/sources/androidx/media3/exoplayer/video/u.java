package androidx.media3.exoplayer.video;

import android.content.Context;
import android.view.Surface;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class u {

    private final b f12991a;

    private final w f12992b;

    private final long f12993c;

    private boolean f12994d;

    private long f12997g;

    private boolean f13000j;

    private boolean f13003m;

    private boolean f13004n;

    private int f12995e = 0;

    private long f12996f = C.TIME_UNSET;

    private long f12998h = C.TIME_UNSET;

    private long f12999i = C.TIME_UNSET;

    private float f13001k = 1.0f;

    private androidx.media3.common.util.i f13002l = androidx.media3.common.util.i.f10075a;

    public static class a {

        private long f13005a = C.TIME_UNSET;

        private long f13006b = C.TIME_UNSET;

        public void h() {
            this.f13005a = C.TIME_UNSET;
            this.f13006b = C.TIME_UNSET;
        }

        public long f() {
            return this.f13005a;
        }

        public long g() {
            return this.f13006b;
        }
    }

    public interface b {
        boolean j(long j10, long j11);

        boolean k(long j10, long j11, long j12, boolean z10, boolean z11);

        boolean p(long j10, long j11, boolean z10);
    }

    public u(Context context, b bVar, long j10) {
        this.f12991a = bVar;
        this.f12993c = j10;
        this.f12992b = new w(context);
    }

    private long b(long j10, long j11, long j12) {
        long j13 = (long) ((j12 - j10) / ((double) this.f13001k));
        return this.f12994d ? j13 - (a1.R0(this.f13002l.elapsedRealtime()) - j11) : j13;
    }

    private void f(int i10) {
        this.f12995e = Math.min(this.f12995e, i10);
    }

    private boolean s(long j10, long j11, long j12) {
        if (this.f12999i != C.TIME_UNSET && !this.f13000j) {
            return false;
        }
        int i10 = this.f12995e;
        if (i10 == 0) {
            return this.f12994d;
        }
        if (i10 == 1) {
            return true;
        }
        if (i10 == 2) {
            return j10 >= j12;
        }
        if (i10 == 3) {
            return this.f12994d && this.f12991a.j(j11, a1.R0(this.f13002l.elapsedRealtime()) - this.f12997g);
        }
        throw new IllegalStateException();
    }

    public void a() {
        if (this.f12995e == 0) {
            this.f12995e = 1;
        }
    }

    public int c(long j10, long j11, long j12, long j13, boolean z10, boolean z11, a aVar) {
        aVar.h();
        if (this.f12996f == C.TIME_UNSET) {
            this.f12996f = j11;
        }
        if (this.f12998h != j10) {
            this.f12992b.h(j10);
            this.f12998h = j10;
        }
        aVar.f13005a = b(j11, j12, j10);
        if (z10 && !z11) {
            return 3;
        }
        if (!this.f13003m) {
            this.f13004n = true;
            if (this.f12991a.k(aVar.f13005a, j11, j12, z11, true)) {
                return 4;
            }
            return (!this.f12994d || aVar.f13005a >= 30000) ? 5 : 3;
        }
        boolean z12 = false;
        if (s(j11, aVar.f13005a, j13)) {
            return 0;
        }
        if (!this.f12994d || j11 == this.f12996f) {
            return 5;
        }
        long jNanoTime = this.f13002l.nanoTime();
        aVar.f13006b = this.f12992b.b((aVar.f13005a * 1000) + jNanoTime);
        aVar.f13005a = (aVar.f13006b - jNanoTime) / 1000;
        if (this.f12999i != C.TIME_UNSET && !this.f13000j) {
            z12 = true;
        }
        if (this.f12991a.k(aVar.f13005a, j11, j12, z11, z12)) {
            return 4;
        }
        if (this.f12991a.p(aVar.f13005a, j12, z11)) {
            return z12 ? 3 : 2;
        }
        return aVar.f13005a > 50000 ? 5 : 1;
    }

    public boolean d(boolean z10) {
        if (z10 && (this.f12995e == 3 || (!this.f13003m && this.f13004n))) {
            this.f12999i = C.TIME_UNSET;
            return true;
        }
        if (this.f12999i == C.TIME_UNSET) {
            return false;
        }
        if (this.f13002l.elapsedRealtime() < this.f12999i) {
            return true;
        }
        this.f12999i = C.TIME_UNSET;
        return false;
    }

    public void e(boolean z10) {
        this.f13000j = z10;
        this.f12999i = this.f12993c > 0 ? this.f13002l.elapsedRealtime() + this.f12993c : C.TIME_UNSET;
    }

    public void g() {
        f(0);
    }

    public void h(boolean z10) {
        this.f12995e = z10 ? 1 : 0;
    }

    public boolean i() {
        boolean z10 = this.f12995e != 3;
        this.f12995e = 3;
        this.f12997g = a1.R0(this.f13002l.elapsedRealtime());
        return z10;
    }

    public void j() {
        f(2);
    }

    public void k() {
        this.f12994d = true;
        this.f12997g = a1.R0(this.f13002l.elapsedRealtime());
        this.f12992b.k();
    }

    public void l() {
        this.f12994d = false;
        this.f12999i = C.TIME_UNSET;
        this.f12992b.l();
    }

    public void m() {
        this.f12992b.j();
        this.f12998h = C.TIME_UNSET;
        this.f12996f = C.TIME_UNSET;
        f(1);
        this.f12999i = C.TIME_UNSET;
    }

    public void n(int i10) {
        this.f12992b.o(i10);
    }

    public void o(androidx.media3.common.util.i iVar) {
        this.f13002l = iVar;
    }

    public void p(float f10) {
        this.f12992b.g(f10);
    }

    public void q(Surface surface) {
        this.f13003m = surface != null;
        this.f13004n = false;
        this.f12992b.m(surface);
        f(1);
    }

    public void r(float f10) {
        androidx.media3.common.util.a.a(f10 > 0.0f);
        if (f10 == this.f13001k) {
            return;
        }
        this.f13001k = f10;
        this.f12992b.i(f10);
    }
}
