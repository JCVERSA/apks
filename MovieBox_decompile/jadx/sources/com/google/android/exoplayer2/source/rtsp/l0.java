package com.google.android.exoplayer2.source.rtsp;

import java.io.IOException;

final class l0 implements c.a {

    private final long f25782a;

    public l0(long j10) {
        this.f25782a = j10;
    }

    @Override
    public c a(int i10) throws IOException {
        k0 k0Var = new k0(this.f25782a);
        k0 k0Var2 = new k0(this.f25782a);
        try {
            k0Var.a(k.a(0));
            int iD = k0Var.d();
            boolean z10 = iD % 2 == 0;
            k0Var2.a(k.a(z10 ? iD + 1 : iD - 1));
            if (z10) {
                k0Var.f(k0Var2);
                return k0Var;
            }
            k0Var2.f(k0Var);
            return k0Var2;
        } catch (IOException e10) {
            com.google.android.exoplayer2.upstream.m.a(k0Var);
            com.google.android.exoplayer2.upstream.m.a(k0Var2);
            throw e10;
        }
    }

    @Override
    public c.a b() {
        return new j0(this.f25782a);
    }
}
