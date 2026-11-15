package com.transsion.transfer.wifi.connect;

import android.text.TextUtils;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.transsion.transfer.wifi.util.g;
import com.vungle.ads.internal.protos.Sdk$SDKError;
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
@DebugMetadata(c = "com.transsion.transfer.wifi.connect.WifiConnectionManager$resolveIP$1", f = "WifiConnectionManager.kt", l = {Sdk$SDKError.Reason.GENERATE_JSON_DATA_ERROR_VALUE}, m = "invokeSuspend")
final class WifiConnectionManager$resolveIP$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;

    WifiConnectionManager$resolveIP$1(Continuation<? super WifiConnectionManager$resolveIP$1> continuation) {
        super(2, continuation);
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WifiConnectionManager$resolveIP$1(continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            g.b(g.f53898a, WifiConnectionManager.f53760a.o() + " --> resolveIP(address: InetAddress?) --> P2P连接成功但ip为空，尝试轮询获取正确ip ....", false, 2, null);
            WifiUtils wifiUtils = WifiUtils.f53888a;
            this.label = 1;
            obj = wifiUtils.h(this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        String str = (String) obj;
        if (TextUtils.isEmpty(str)) {
            long jCurrentTimeMillis = System.currentTimeMillis() - WifiConnectionManager.f53768i;
            g gVar = g.f53898a;
            WifiConnectionManager wifiConnectionManager = WifiConnectionManager.f53760a;
            g.b(gVar, wifiConnectionManager.o() + " --> resolveIP(address: InetAddress?) --> 连接P2P失败, 耗时 = " + jCurrentTimeMillis + " -- 原因 = P2P地址获取异常，重试后仍然异常", false, 2, null);
            wifiConnectionManager.b(2002);
        } else {
            long jCurrentTimeMillis2 = System.currentTimeMillis() - WifiConnectionManager.f53768i;
            g gVar2 = g.f53898a;
            WifiConnectionManager wifiConnectionManager2 = WifiConnectionManager.f53760a;
            g.b(gVar2, wifiConnectionManager2.o() + " --> resolveIP(address: InetAddress?) --> P2P连接成功轮询后成功连接耗时 = " + jCurrentTimeMillis2 + " -- P2P连接成功轮询后ip = " + str, false, 2, null);
            wifiConnectionManager2.e(str);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((WifiConnectionManager$resolveIP$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
