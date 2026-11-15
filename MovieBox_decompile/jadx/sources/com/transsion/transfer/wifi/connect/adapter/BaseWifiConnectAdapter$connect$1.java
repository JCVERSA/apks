package com.transsion.transfer.wifi.connect.adapter;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.transfer.wifi.connect.adapter.BaseWifiConnectAdapter$connect$1", f = "BaseWifiConnectAdapter.kt", l = {71}, m = "invokeSuspend")
final class BaseWifiConnectAdapter$connect$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final BaseWifiConnectAdapter this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.transfer.wifi.connect.adapter.BaseWifiConnectAdapter$connect$1$1", f = "BaseWifiConnectAdapter.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;
        final BaseWifiConnectAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BaseWifiConnectAdapter baseWifiConnectAdapter, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = baseWifiConnectAdapter;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objM453constructorimpl;
            com.transsion.transfer.wifi.connect.b bVarH;
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            BaseWifiConnectAdapter baseWifiConnectAdapter = this.this$0;
            try {
                Result.Companion companion = Result.INSTANCE;
                baseWifiConnectAdapter.d();
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            BaseWifiConnectAdapter baseWifiConnectAdapter2 = this.this$0;
            if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null && (bVarH = baseWifiConnectAdapter2.h()) != null) {
                bVarH.b(2003);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BaseWifiConnectAdapter$connect$1(BaseWifiConnectAdapter baseWifiConnectAdapter, Continuation<? super BaseWifiConnectAdapter$connect$1> continuation) {
        super(2, continuation);
        this.this$0 = baseWifiConnectAdapter;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BaseWifiConnectAdapter$connect$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            i0 i0VarB = y0.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, null);
            this.label = 1;
            if (i.g(i0VarB, anonymousClass1, this) == objF) {
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
        return ((BaseWifiConnectAdapter$connect$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
