package com.transsion.transfer.wifi.create;

import com.transsion.transfer.wifi.create.adapter.b;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.transfer.wifi.create.WifiCreateManager$createWifi$1", f = "WifiCreateManager.kt", l = {84}, m = "invokeSuspend")
final class WifiCreateManager$createWifi$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final a $listener;
    final n0 $scope;
    final du.a $wifiInfoModel;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WifiCreateManager$createWifi$1(a aVar, du.a aVar2, n0 n0Var, Continuation<? super WifiCreateManager$createWifi$1> continuation) {
        super(2, continuation);
        this.$listener = aVar;
        this.$wifiInfoModel = aVar2;
        this.$scope = n0Var;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WifiCreateManager$createWifi$1(this.$listener, this.$wifiInfoModel, this.$scope, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            WifiCreateManager wifiCreateManager = WifiCreateManager.f53810a;
            WifiCreateManager.f53811b = this.$listener;
            WifiCreateManager wifiCreateManager2 = WifiCreateManager.f53810a;
            wifiCreateManager2.onStart();
            if (WifiCreateManager.f53812c == null) {
                WifiCreateManager.f53812c = wifiCreateManager2.i();
            }
            b bVar = WifiCreateManager.f53812c;
            if (bVar != null) {
                du.a aVar = this.$wifiInfoModel;
                n0 n0Var = this.$scope;
                this.label = 1;
                if (bVar.i(aVar, wifiCreateManager2, n0Var, this) == objF) {
                    return objF;
                }
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((WifiCreateManager$createWifi$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
