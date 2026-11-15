package com.transsion.vishatransfers.manager;

import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.DelayKt;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.vishatransfers.manager.TransferNotificationManager$cancelTransfer$2", f = "TransferNotificationManager.kt", l = {308}, m = "invokeSuspend")
public final class TransferNotificationManager$cancelTransfer$2 extends SuspendLambda implements s74 {
    int label;
    final TransferNotificationManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferNotificationManager$cancelTransfer$2(TransferNotificationManager transferNotificationManager, wh1<? super TransferNotificationManager$cancelTransfer$2> wh1Var) {
        super(2, wh1Var);
        this.this$0 = transferNotificationManager;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new TransferNotificationManager$cancelTransfer$2(this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((TransferNotificationManager$cancelTransfer$2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            this.label = 1;
            if (DelayKt.b(2000L, this) == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        this.this$0.w();
        return zfb.a;
    }
}
