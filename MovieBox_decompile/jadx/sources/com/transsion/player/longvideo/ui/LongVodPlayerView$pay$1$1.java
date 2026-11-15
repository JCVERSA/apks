package com.transsion.player.longvideo.ui;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.ui.LongVodPlayerView$pay$1$1", f = "LongVodPlayerView.kt", l = {3437}, m = "invokeSuspend")
final class LongVodPlayerView$pay$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final ln.b $config;
    final AppCompatActivity $it;
    final String $skuId;
    int label;
    final LongVodPlayerView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVodPlayerView$pay$1$1(LongVodPlayerView longVodPlayerView, AppCompatActivity appCompatActivity, String str, ln.b bVar, Continuation<? super LongVodPlayerView$pay$1$1> continuation) {
        super(2, continuation);
        this.this$0 = longVodPlayerView;
        this.$it = appCompatActivity;
        this.$skuId = str;
        this.$config = bVar;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LongVodPlayerView$pay$1$1(this.this$0, this.$it, this.$skuId, this.$config, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            LongVodPlayerView.backClick$default(this.this$0, false, 1, null);
            this.label = 1;
            if (kotlinx.coroutines.u0.a(300L, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("activity", "lottery");
        com.transsion.payment.lib.f fVarA = com.transsion.payment.lib.f.f45914b.a();
        final AppCompatActivity appCompatActivity = this.$it;
        final String str = this.$skuId;
        String str2 = str == null ? "" : str;
        final LongVodPlayerView longVodPlayerView = this.this$0;
        final ln.b bVar = this.$config;
        fVarA.e(appCompatActivity, str2, (8 & 4) != 0 ? null : null, (8 & 8) != 0 ? false : false, (8 & 16) != 0 ? null : linkedHashMap, new com.transsion.payment.lib.b() {
            @Override
            public void a(Integer num, String str3, boolean z10, String str4) {
            }

            @Override
            public void b(boolean z10) {
            }

            @Override
            public void c(int i11, String balance, String str3) {
                LifecycleCoroutineScope lifecycleCoroutineScopeA;
                Intrinsics.h(balance, "balance");
                longVodPlayerView.B0();
                longVodPlayerView.getConfigViewModel().c(bVar);
                kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(appCompatActivity), null, null, new LongVodPlayerView$pay$1$1$1$success$1(longVodPlayerView, null), 3, null);
                wj.h.f74282a.a(longVodPlayerView.getClassTag() + " --> success() --> 支付成功，切换分辨率 --> skuId = " + str + " -- config = " + bVar);
                Context context = longVodPlayerView.getContext();
                AppCompatActivity appCompatActivity2 = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
                if (appCompatActivity2 == null || (lifecycleCoroutineScopeA = androidx.p009lifecycle.v.a(appCompatActivity2)) == null) {
                    return;
                }
                kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new LongVodPlayerView$pay$1$1$1$success$2(str3, null), 3, null);
            }
        });
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LongVodPlayerView$pay$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
