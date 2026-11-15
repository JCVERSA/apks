package defpackage;

import java.util.Objects;

public final class ox3 extends re0 {

    public static final class b implements re0.f {
        public final wx3 a;
        public final int b;
        public final sx3.a c;

        @Override
        public re0.e a(pk3 pk3Var, long j) {
            long position = pk3Var.getPosition();
            long jB = b(pk3Var);
            long peekPosition = pk3Var.getPeekPosition();
            pk3Var.advancePeekPosition(Math.max(6, this.a.c));
            long jB2 = b(pk3Var);
            long peekPosition2 = pk3Var.getPeekPosition();
            if (jB > j || jB2 <= j) {
                return jB2 <= j ? re0.e.f(jB2, peekPosition2) : re0.e.d(jB, position);
            }
            return re0.e.e(peekPosition);
        }

        public final long b(pk3 pk3Var) {
            while (pk3Var.getPeekPosition() < pk3Var.getLength() - 6 && !sx3.h(pk3Var, this.a, this.b, this.c)) {
                pk3Var.advancePeekPosition(1);
            }
            if (pk3Var.getPeekPosition() < pk3Var.getLength() - 6) {
                return this.c.a;
            }
            pk3Var.advancePeekPosition((int) (pk3Var.getLength() - pk3Var.getPeekPosition()));
            return this.a.j;
        }

        public b(wx3 wx3Var, int i) {
            this.a = wx3Var;
            this.b = i;
            this.c = new sx3.a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ox3(final wx3 wx3Var, int i, long j, long j2) {
        super(new re0.d() {
            @Override
            public final long timeUsToTargetTime(long j3) {
                return wx3Var.i(j3);
            }
        }, new b(wx3Var, i), wx3Var.f(), 0L, wx3Var.j, j, j2, wx3Var.d(), Math.max(6, wx3Var.c));
        Objects.requireNonNull(wx3Var);
    }
}
