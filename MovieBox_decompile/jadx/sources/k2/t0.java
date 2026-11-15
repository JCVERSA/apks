package k2;

public final class t0 {

    private final byte[] f63691a = new byte[10];

    private boolean f63692b;

    private int f63693c;

    private long f63694d;

    private int f63695e;

    private int f63696f;

    private int f63697g;

    public void a(s0 s0Var, s0.a aVar) {
        if (this.f63693c > 0) {
            s0Var.b(this.f63694d, this.f63695e, this.f63696f, this.f63697g, aVar);
            this.f63693c = 0;
        }
    }

    public void b() {
        this.f63692b = false;
        this.f63693c = 0;
    }

    public void c(s0 s0Var, long j10, int i10, int i11, int i12, s0.a aVar) {
        androidx.media3.common.util.a.h(this.f63697g <= i11 + i12, "TrueHD chunk samples must be contiguous in the sample queue.");
        if (this.f63692b) {
            int i13 = this.f63693c;
            int i14 = i13 + 1;
            this.f63693c = i14;
            if (i13 == 0) {
                this.f63694d = j10;
                this.f63695e = i10;
                this.f63696f = 0;
            }
            this.f63696f += i11;
            this.f63697g = i12;
            if (i14 >= 16) {
                a(s0Var, aVar);
            }
        }
    }

    public void d(s sVar) {
        if (this.f63692b) {
            return;
        }
        sVar.peekFully(this.f63691a, 0, 10);
        sVar.resetPeekPosition();
        if (b.j(this.f63691a) == 0) {
            return;
        }
        this.f63692b = true;
    }
}
