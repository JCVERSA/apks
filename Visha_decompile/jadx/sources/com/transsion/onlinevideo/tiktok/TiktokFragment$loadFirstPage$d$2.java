package com.transsion.onlinevideo.tiktok;

import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public class TiktokFragment$loadFirstPage$d$2 extends FunctionReferenceImpl implements e74 {
    public TiktokFragment$loadFirstPage$d$2(Object obj) {
        super(1, obj, TiktokFragment.class, "onPageDataError", "onPageDataError(Ljava/lang/Throwable;)V", 0);
    }

    @Override
    public Object invoke(Object obj) {
        invoke((Throwable) obj);
        return zfb.a;
    }

    public final void invoke(Throwable th) {
        y45.j(th, "p0");
        ((TiktokFragment) this.receiver).d1(th);
    }
}
