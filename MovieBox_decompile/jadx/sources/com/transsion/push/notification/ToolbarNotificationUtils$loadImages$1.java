package com.transsion.push.notification;

import android.graphics.Bitmap;
import com.transsion.push.bean.ToolbarNoticeItem;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.r0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.notification.ToolbarNotificationUtils$loadImages$1", f = "ToolbarNotificationUtils.kt", l = {299, 300}, m = "invokeSuspend")
final class ToolbarNotificationUtils$loadImages$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function2<Bitmap, Bitmap, Unit> $callback;
    final Pair<ToolbarNoticeItem, ToolbarNoticeItem> $pair;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ToolbarNotificationUtils$loadImages$1(Function2<? super Bitmap, ? super Bitmap, Unit> function2, Pair<ToolbarNoticeItem, ToolbarNoticeItem> pair, Continuation<? super ToolbarNotificationUtils$loadImages$1> continuation) {
        super(2, continuation);
        this.$callback = function2;
        this.$pair = pair;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ToolbarNotificationUtils$loadImages$1 toolbarNotificationUtils$loadImages$1 = new ToolbarNotificationUtils$loadImages$1(this.$callback, this.$pair, continuation);
        toolbarNotificationUtils$loadImages$1.L$0 = obj;
        return toolbarNotificationUtils$loadImages$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        r0 r0Var;
        Bitmap bitmap;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    r0Var = (r0) this.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    bitmap = (Bitmap) this.L$0;
                    ResultKt.b(obj);
                }
                this.$callback.invoke(bitmap, (Bitmap) obj);
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            r0 r0VarB = kotlinx.coroutines.k.b(n0Var, y0.b(), null, new ToolbarNotificationUtils$loadImages$1$image1Deferred$1(this.$pair, null), 2, null);
            r0 r0VarB2 = kotlinx.coroutines.k.b(n0Var, y0.b(), null, new ToolbarNotificationUtils$loadImages$1$image2Deferred$1(this.$pair, null), 2, null);
            this.L$0 = r0VarB2;
            this.label = 1;
            Object objF2 = r0VarB.f(this);
            if (objF2 == objF) {
                return objF;
            }
            r0Var = r0VarB2;
            obj = objF2;
            Bitmap bitmap2 = (Bitmap) obj;
            this.L$0 = bitmap2;
            this.label = 2;
            Object objF3 = r0Var.f(this);
            if (objF3 == objF) {
                return objF;
            }
            bitmap = bitmap2;
            obj = objF3;
            this.$callback.invoke(bitmap, (Bitmap) obj);
            return Unit.f64096a;
        } catch (TimeoutCancellationException unused) {
            this.$callback.invoke(null, null);
        }
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ToolbarNotificationUtils$loadImages$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
