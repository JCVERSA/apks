package p2;

import java.util.Objects;
import k2.b0;
import k2.e;
import k2.f;
import k2.s;
import k2.y;

final class b extends e {

    private static final class C0849b implements e.f {

        private final b0 f68968a;

        private final int f68969b;

        private final y.a f68970c;

        private long c(s sVar) {
            while (sVar.getPeekPosition() < sVar.getLength() - 6 && !y.h(sVar, this.f68968a, this.f68969b, this.f68970c)) {
                sVar.advancePeekPosition(1);
            }
            if (sVar.getPeekPosition() < sVar.getLength() - 6) {
                return this.f68970c.f63720a;
            }
            sVar.advancePeekPosition((int) (sVar.getLength() - sVar.getPeekPosition()));
            return this.f68968a.f63517j;
        }

        @Override
        public void a() {
            f.a(this);
        }

        @Override
        public e.C0783e b(s sVar, long j10) {
            long position = sVar.getPosition();
            long jC = c(sVar);
            long peekPosition = sVar.getPeekPosition();
            sVar.advancePeekPosition(Math.max(6, this.f68968a.f63510c));
            long jC2 = c(sVar);
            long peekPosition2 = sVar.getPeekPosition();
            if (jC > j10 || jC2 <= j10) {
                return jC2 <= j10 ? e.C0783e.f(jC2, peekPosition2) : e.C0783e.d(jC, position);
            }
            return e.C0783e.e(peekPosition);
        }

        private C0849b(b0 b0Var, int i10) {
            this.f68968a = b0Var;
            this.f68969b = i10;
            this.f68970c = new y.a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(final b0 b0Var, int i10, long j10, long j11) {
        super(new e.d() {
            @Override
            public final long a(long j12) {
                return b0Var.i(j12);
            }
        }, new C0849b(b0Var, i10), b0Var.f(), 0L, b0Var.f63517j, j10, j11, b0Var.d(), Math.max(6, b0Var.f63510c));
        Objects.requireNonNull(b0Var);
    }
}
