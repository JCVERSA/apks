package com.transsion.ad.strategy;

import android.net.Network;
import android.net.NetworkCapabilities;
import com.transsion.ad.monopoly.MonopolyAdManager;
import com.transsion.ad.ps.activate.PSActivateRequest;
import com.transsion.ad.ps.attribution.AttributionConsumeManager;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.y0;

public final class AdObserveNetworkState implements yg.m {

    private String f41157a = "";

    private AtomicBoolean f41158b = new AtomicBoolean(false);

    private boolean f41159c;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ad.strategy.AdObserveNetworkState$onConnected$1", f = "AdObserveNetworkState.kt", l = {44}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                PSActivateRequest pSActivateRequest = PSActivateRequest.f41124a;
                this.label = 1;
                if (pSActivateRequest.g(this) == objF) {
                    return objF;
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
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ad.strategy.AdObserveNetworkState$onConnected$2", f = "AdObserveNetworkState.kt", l = {67, 69}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        public static final Unit d(AdObserveNetworkState adObserveNetworkState, boolean z10) {
            adObserveNetworkState.f41159c = z10;
            xh.a.e(xh.a.f75336a, null, adObserveNetworkState.e() + " --> onConnected() --> 广告请求结果--> result == " + z10, 0, false, 13, null);
            adObserveNetworkState.f41158b.set(false);
            return Unit.f64096a;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AdObserveNetworkState.this.new AnonymousClass2(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    ResultKt.b(obj);
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            this.label = 1;
            if (u0.a(500L, this) == objF) {
                return objF;
            }
            xh.a.e(xh.a.f75336a, null, AdObserveNetworkState.this.e() + " --> onConnected() --> 网络变化，请求广告配置", 0, false, 13, null);
            MonopolyAdManager monopolyAdManager = MonopolyAdManager.f41096a;
            String str = AdObserveNetworkState.this.f41157a;
            if (str == null) {
                str = "";
            }
            final AdObserveNetworkState adObserveNetworkState = AdObserveNetworkState.this;
            Function1 function1 = new Function1() {
                @Override
                public final Object invoke(Object obj2) {
                    return AdObserveNetworkState.AnonymousClass2.d(adObserveNetworkState, ((Boolean) obj2).booleanValue());
                }
            };
            this.label = 2;
            if (monopolyAdManager.a(str, function1, this) == objF) {
                return objF;
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public final String e() {
        String simpleName = AdObserveNetworkState.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void f(String adConfigUrl) {
        Intrinsics.h(adConfigUrl, "adConfigUrl");
        this.f41157a = adConfigUrl;
        xh.a.c(xh.a.f75336a, e() + " --> registerNetworkStatusChangedListener() --> 网络变化监听 success", 0, false, 6, null);
        yg.l.f76264a.l(this);
    }

    @Override
    public void onConnected() {
        yg.m.a.a(this);
    }

    @Override
    public void onDisconnected() {
    }

    @Override
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AnonymousClass1(null), 3, null);
        AttributionConsumeManager.f41128c.n();
        if (this.f41158b.get()) {
            xh.a.e(xh.a.f75336a, null, e() + " --> onConnected() --> isLoading == true", 5, false, 9, null);
            return;
        }
        this.f41158b.set(true);
        if (!this.f41159c) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AnonymousClass2(null), 3, null);
            return;
        }
        xh.a.e(xh.a.f75336a, null, e() + " --> onConnected() --> result == true --> 生命周期内已经请求成功", 5, false, 9, null);
    }
}
