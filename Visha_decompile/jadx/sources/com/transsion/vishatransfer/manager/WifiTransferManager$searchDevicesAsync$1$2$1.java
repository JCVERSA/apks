package com.transsion.vishatransfer.manager;

import com.transsion.vishatransfer.data.WifiModel;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.u74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.vishatransfer.manager.WifiTransferManager$searchDevicesAsync$1$2$1", f = "WifiTransferManager.kt", l = {}, m = "invokeSuspend")
public final class WifiTransferManager$searchDevicesAsync$1$2$1 extends SuspendLambda implements s74 {
    final u74 $callback;
    final WifiModel $wifiModel;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WifiTransferManager$searchDevicesAsync$1$2$1(u74 u74Var, WifiModel wifiModel, wh1<? super WifiTransferManager$searchDevicesAsync$1$2$1> wh1Var) {
        super(2, wh1Var);
        this.$callback = u74Var;
        this.$wifiModel = wifiModel;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new WifiTransferManager$searchDevicesAsync$1$2$1(this.$callback, this.$wifiModel, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((WifiTransferManager$searchDevicesAsync$1$2$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        this.$callback.invoke(mk0.a(this.$wifiModel.isSuccess()), this.$wifiModel.getMessage(), mk0.b(this.$wifiModel.getErrorCode()));
        return zfb.a;
    }
}
