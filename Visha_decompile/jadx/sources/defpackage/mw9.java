package defpackage;

public final class mw9 implements qk3 {
    public final long b;
    public final qk3 c;

    public class a implements ja9 {
        public final ja9 a;

        public a(ja9 ja9Var) {
            this.a = ja9Var;
        }

        @Override
        public long getDurationUs() {
            return this.a.getDurationUs();
        }

        @Override
        public ja9.a getSeekPoints(long j) {
            ja9.a seekPoints = this.a.getSeekPoints(j);
            la9 la9Var = seekPoints.a;
            la9 la9Var2 = new la9(la9Var.a, la9Var.b + mw9.this.b);
            la9 la9Var3 = seekPoints.b;
            return new ja9.a(la9Var2, new la9(la9Var3.a, la9Var3.b + mw9.this.b));
        }

        @Override
        public boolean isSeekable() {
            return this.a.isSeekable();
        }
    }

    public mw9(long j, qk3 qk3Var) {
        this.b = j;
        this.c = qk3Var;
    }

    @Override
    public void d(ja9 ja9Var) {
        this.c.d(new a(ja9Var));
    }

    @Override
    public void endTracks() {
        this.c.endTracks();
    }

    @Override
    public fva track(int i, int i2) {
        return this.c.track(i, i2);
    }
}
