package com.transsion.transfer.wifi.util;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/lang/String;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.transfer.wifi.util.WifiUtils$getCorrectP2pAddress$2", f = "WifiUtils.kt", l = {262}, m = "invokeSuspend")
final class WifiUtils$getCorrectP2pAddress$2 extends SuspendLambda implements Function2<n0, Continuation<? super String>, Object> {
    int I$0;
    int I$1;
    int label;

    WifiUtils$getCorrectP2pAddress$2(Continuation<? super WifiUtils$getCorrectP2pAddress$2> continuation) {
        super(2, continuation);
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WifiUtils$getCorrectP2pAddress$2(continuation);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002a  */
    /* JADX WARN: Code duplicated, block: B:22:0x007e  */
    /* JADX WARN: Instruction removed from duplicated block: B:12:0x002a, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:22:0x007e, please report this as an issue */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0072 -> B:6:0x0013). Please report as a decompilation issue!!! */
    @Override
    public final Object invokeSuspend(Object obj) {
        int i10;
        int i11;
        WifiUtils wifiUtils;
        long jK;
        int i12;
        Object objF = IntrinsicsKt.f();
        int i13 = this.label;
        if (i13 == 0) {
            ResultKt.b(obj);
            i10 = 60;
            i11 = 0;
            if (i11 < i10) {
                g gVar = g.f53898a;
                WifiUtils wifiUtils2 = WifiUtils.f53888a;
                g.b(gVar, wifiUtils2.e() + " --> getCorrectP2pAddress() --> 多次获取当前wifi ip，仍然异常，返回默认的0.0.0.0", false, 2, null);
                return wifiUtils2.t(0L);
            }
            wifiUtils = WifiUtils.f53888a;
            jK = wifiUtils.k();
            g.b(g.f53898a, wifiUtils.e() + " --> getCorrectP2pAddress() --> 第" + i11 + "次p2p连接 -- ip信息 gateway = " + jK, false, 2, null);
            if (jK == 0 || wifiUtils.o(wifiUtils.j())) {
                return wifiUtils.t(wifiUtils.k());
            }
            i12 = i11 + 1;
            this.I$0 = i10;
            this.I$1 = i12;
            this.label = 1;
            if (u0.a(200L, this) == objF) {
                return objF;
            }
        } else {
            if (i13 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i12 = this.I$1;
            i10 = this.I$0;
            ResultKt.b(obj);
        }
        i11 = i12;
        if (i11 < i10) {
            g gVar2 = g.f53898a;
            WifiUtils wifiUtils3 = WifiUtils.f53888a;
            g.b(gVar2, wifiUtils3.e() + " --> getCorrectP2pAddress() --> 多次获取当前wifi ip，仍然异常，返回默认的0.0.0.0", false, 2, null);
            return wifiUtils3.t(0L);
        }
        wifiUtils = WifiUtils.f53888a;
        jK = wifiUtils.k();
        g.b(g.f53898a, wifiUtils.e() + " --> getCorrectP2pAddress() --> 第" + i11 + "次p2p连接 -- ip信息 gateway = " + jK, false, 2, null);
        if (jK == 0) {
        }
        return wifiUtils.t(wifiUtils.k());
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super String> continuation) {
        return ((WifiUtils$getCorrectP2pAddress$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
