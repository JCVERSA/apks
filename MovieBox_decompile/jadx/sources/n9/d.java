package n9;

import i9.b0;
import i9.c0;
import i9.e0;
import i9.n;

public final class d implements n {

    private final long f66974a;

    private final n f66975b;

    class a implements b0 {

        final b0 f66976a;

        a(b0 b0Var) {
            this.f66976a = b0Var;
        }

        @Override
        public long getDurationUs() {
            return this.f66976a.getDurationUs();
        }

        @Override
        public b0.a getSeekPoints(long j10) {
            b0.a seekPoints = this.f66976a.getSeekPoints(j10);
            c0 c0Var = seekPoints.f61885a;
            c0 c0Var2 = new c0(c0Var.f61890a, c0Var.f61891b + d.this.f66974a);
            c0 c0Var3 = seekPoints.f61886b;
            return new b0.a(c0Var2, new c0(c0Var3.f61890a, c0Var3.f61891b + d.this.f66974a));
        }

        @Override
        public boolean isSeekable() {
            return this.f66976a.isSeekable();
        }
    }

    public d(long j10, n nVar) {
        this.f66974a = j10;
        this.f66975b = nVar;
    }

    @Override
    public void endTracks() {
        this.f66975b.endTracks();
    }

    @Override
    public void g(b0 b0Var) {
        this.f66975b.g(new a(b0Var));
    }

    @Override
    public e0 track(int i10, int i11) {
        return this.f66975b.track(i10, i11);
    }
}
