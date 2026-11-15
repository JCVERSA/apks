package defpackage;

import com.google.android.exoplayer2.ParserException;

public class ae7 implements nk3 {
    public static final uk3 d = new uk3() {
        @Override
        public final nk3[] createExtractors() {
            return ae7.e();
        }
    };
    public qk3 a;
    public sy9 b;
    public boolean c;

    public static nk3[] e() {
        return new nk3[]{new ae7()};
    }

    public static qw7 f(qw7 qw7Var) {
        qw7Var.O(0);
        return qw7Var;
    }

    @Override
    public void a(qk3 qk3Var) {
        this.a = qk3Var;
    }

    @Override
    public int b(pk3 pk3Var, id8 id8Var) throws ParserException {
        zi.i(this.a);
        if (this.b == null) {
            if (!g(pk3Var)) {
                throw ParserException.createForMalformedContainer("Failed to determine bitstream type", null);
            }
            pk3Var.resetPeekPosition();
        }
        if (!this.c) {
            fva fvaVarTrack = this.a.track(0, 1);
            this.a.endTracks();
            this.b.d(this.a, fvaVarTrack);
            this.c = true;
        }
        return this.b.g(pk3Var, id8Var);
    }

    @Override
    public boolean c(pk3 pk3Var) {
        try {
            return g(pk3Var);
        } catch (ParserException unused) {
            return false;
        }
    }

    public final boolean g(pk3 pk3Var) {
        ce7 ce7Var = new ce7();
        if (ce7Var.a(pk3Var, true) && (ce7Var.b & 2) == 2) {
            int iMin = Math.min(ce7Var.i, 8);
            qw7 qw7Var = new qw7(iMin);
            pk3Var.peekFully(qw7Var.d(), 0, iMin);
            if (ux3.p(f(qw7Var))) {
                this.b = new ux3();
            } else if (zfc.r(f(qw7Var))) {
                this.b = new zfc();
            } else if (ss7.p(f(qw7Var))) {
                this.b = new ss7();
            }
            return true;
        }
        return false;
    }

    @Override
    public void release() {
    }

    @Override
    public void seek(long j, long j2) {
        sy9 sy9Var = this.b;
        if (sy9Var != null) {
            sy9Var.m(j, j2);
        }
    }
}
