package com.google.android.exoplayer2.source.rtsp;

final class j0 implements c.a {

    private final long f25775a;

    public j0(long j10) {
        this.f25775a = j10;
    }

    @Override
    public c a(int i10) {
        i0 i0Var = new i0(this.f25775a);
        i0Var.a(k.a(i10 * 2));
        return i0Var;
    }

    @Override
    public c.a b() {
        return b.a(this);
    }
}
