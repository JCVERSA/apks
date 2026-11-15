package androidx.media3.exoplayer;

public interface u2 {

    public static final class a {

        public final x1.f4 f12616a;

        public final androidx.media3.common.e0 f12617b;

        public final androidx.media3.exoplayer.source.r.b f12618c;

        public final long f12619d;

        public final long f12620e;

        public final float f12621f;

        public final boolean f12622g;

        public final boolean f12623h;

        public final long f12624i;

        public final long f12625j;

        public a(x1.f4 f4Var, androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar, long j10, long j11, float f10, boolean z10, boolean z11, long j12, long j13) {
            this.f12616a = f4Var;
            this.f12617b = e0Var;
            this.f12618c = bVar;
            this.f12619d = j10;
            this.f12620e = j11;
            this.f12621f = f10;
            this.f12622g = z10;
            this.f12623h = z11;
            this.f12624i = j12;
            this.f12625j = j13;
        }
    }

    boolean a(a aVar);

    void b(x1.f4 f4Var);

    void c(a aVar, f2.z zVar, i2.z[] zVarArr);

    void d(x1.f4 f4Var);

    boolean e(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar, long j10);

    void f(x1.f4 f4Var);

    boolean g(a aVar);

    androidx.media3.exoplayer.upstream.b getAllocator();

    boolean h(x1.f4 f4Var);

    long i(x1.f4 f4Var);
}
