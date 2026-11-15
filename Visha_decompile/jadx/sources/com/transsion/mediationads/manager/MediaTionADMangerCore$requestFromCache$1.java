package com.transsion.mediationads.manager;

import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.mediationads.manager.MediaTionADMangerCore$requestFromCache$1", f = "MediaTionADMangerCore.kt", l = {}, m = "invokeSuspend")
public final class MediaTionADMangerCore$requestFromCache$1 extends SuspendLambda implements s74 {
    int label;
    final MediaTionADMangerCore this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaTionADMangerCore$requestFromCache$1(MediaTionADMangerCore mediaTionADMangerCore, wh1<? super MediaTionADMangerCore$requestFromCache$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = mediaTionADMangerCore;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new MediaTionADMangerCore$requestFromCache$1(this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((MediaTionADMangerCore$requestFromCache$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) throws Throwable {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.c.b(obj);
        if (a.a.a().h()) {
            return zfb.a;
        }
        this.this$0.i();
        return zfb.a;
    }
}
