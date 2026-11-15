package l9;

import i9.m;
import i9.s;
import i9.v;
import java.util.Objects;

final class b extends i9.a {

    private static final class C0805b implements i9.a.f {

        private final v f65646a;

        private final int f65647b;

        private final s.a f65648c;

        private long c(m mVar) {
            while (mVar.getPeekPosition() < mVar.getLength() - 6 && !s.h(mVar, this.f65646a, this.f65647b, this.f65648c)) {
                mVar.advancePeekPosition(1);
            }
            if (mVar.getPeekPosition() < mVar.getLength() - 6) {
                return this.f65648c.f61970a;
            }
            mVar.advancePeekPosition((int) (mVar.getLength() - mVar.getPeekPosition()));
            return this.f65646a.f61983j;
        }

        @Override
        public void a() {
            i9.b.a(this);
        }

        @Override
        public i9.a.e b(m mVar, long j10) {
            long position = mVar.getPosition();
            long jC = c(mVar);
            long peekPosition = mVar.getPeekPosition();
            mVar.advancePeekPosition(Math.max(6, this.f65646a.f61976c));
            long jC2 = c(mVar);
            long peekPosition2 = mVar.getPeekPosition();
            if (jC > j10 || jC2 <= j10) {
                return jC2 <= j10 ? i9.a.e.f(jC2, peekPosition2) : i9.a.e.d(jC, position);
            }
            return i9.a.e.e(peekPosition);
        }

        private C0805b(v vVar, int i10) {
            this.f65646a = vVar;
            this.f65647b = i10;
            this.f65648c = new s.a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(final v vVar, int i10, long j10, long j11) {
        super(new i9.a.d() {
            @Override
            public final long a(long j12) {
                return vVar.i(j12);
            }
        }, new C0805b(vVar, i10), vVar.f(), 0L, vVar.f61983j, j10, j11, vVar.d(), Math.max(6, vVar.f61976c));
        Objects.requireNonNull(vVar);
    }
}
