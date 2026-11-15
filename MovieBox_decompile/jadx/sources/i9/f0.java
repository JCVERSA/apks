package i9;

public final class f0 {

    private final byte[] f61916a = new byte[10];

    private boolean f61917b;

    private int f61918c;

    private long f61919d;

    private int f61920e;

    private int f61921f;

    private int f61922g;

    public void a(e0 e0Var, e0.a aVar) {
        if (this.f61918c > 0) {
            e0Var.e(this.f61919d, this.f61920e, this.f61921f, this.f61922g, aVar);
            this.f61918c = 0;
        }
    }

    public void b() {
        this.f61917b = false;
        this.f61918c = 0;
    }

    public void c(e0 e0Var, long j10, int i10, int i11, int i12, e0.a aVar) {
        com.google.android.exoplayer2.util.a.h(this.f61922g <= i11 + i12, "TrueHD chunk samples must be contiguous in the sample queue.");
        if (this.f61917b) {
            int i13 = this.f61918c;
            int i14 = i13 + 1;
            this.f61918c = i14;
            if (i13 == 0) {
                this.f61919d = j10;
                this.f61920e = i10;
                this.f61921f = 0;
            }
            this.f61921f += i11;
            this.f61922g = i12;
            if (i14 >= 16) {
                a(e0Var, aVar);
            }
        }
    }

    public void d(m mVar) {
        if (this.f61917b) {
            return;
        }
        mVar.peekFully(this.f61916a, 0, 10);
        mVar.resetPeekPosition();
        if (com.google.android.exoplayer2.audio.b.i(this.f61916a) == 0) {
            return;
        }
        this.f61917b = true;
    }
}
