package defpackage;

import kotlin.Result;

public final class pu8 extends o95 {
    public final wh1 f;

    public pu8(wh1 wh1Var) {
        this.f = wh1Var;
    }

    @Override
    public boolean u() {
        return false;
    }

    @Override
    public void v(Throwable th) {
        wh1 wh1Var = this.f;
        Result.Companion companion = Result.INSTANCE;
        wh1Var.resumeWith(Result.m279constructorimpl(zfb.a));
    }
}
