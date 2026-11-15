package com.transsion.push.notification;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.n;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Landroid/graphics/Bitmap;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Landroid/graphics/Bitmap;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.notification.ToolbarNotificationUtils$loadImageAsBitmap$2", f = "ToolbarNotificationUtils.kt", l = {502}, m = "invokeSuspend")
@SourceDebugExtension
final class ToolbarNotificationUtils$loadImageAsBitmap$2 extends SuspendLambda implements Function2<n0, Continuation<? super Bitmap>, Object> {
    final int $dp20;
    final String $url;
    int I$0;
    Object L$0;
    int label;

    static final class a implements Function1 {

        final n f48783a;

        a(n nVar) {
            this.f48783a = nVar;
        }

        public final void a(Bitmap bitmap) {
            this.f48783a.resume(bitmap, (Function1) null);
        }

        @Override
        public Object invoke(Object obj) {
            a((Bitmap) obj);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ToolbarNotificationUtils$loadImageAsBitmap$2(String str, int i10, Continuation<? super ToolbarNotificationUtils$loadImageAsBitmap$2> continuation) {
        super(2, continuation);
        this.$url = str;
        this.$dp20 = i10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ToolbarNotificationUtils$loadImageAsBitmap$2(this.$url, this.$dp20, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            String str = this.$url;
            int i11 = this.$dp20;
            this.L$0 = str;
            this.I$0 = i11;
            this.label = 1;
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(this), 1);
            cancellableContinuationImpl.initCancellability();
            zg.c.f76783a.b(ni.f.a.e(ni.f.f67269a, str, i11, false, true, 4, null), new a(cancellableContinuationImpl));
            obj = cancellableContinuationImpl.getResult();
            if (obj == IntrinsicsKt.f()) {
                DebugProbesKt.c(this);
            }
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return obj;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Bitmap> continuation) {
        return ((ToolbarNotificationUtils$loadImageAsBitmap$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
