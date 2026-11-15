package com.transsion.usercenter.setting.labelsfeedback.sender;

import android.app.Application;
import com.blankj.utilcode.util.o;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.setting.labelsfeedback.model.FbDataModel;
import fh.b;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.setting.labelsfeedback.sender.FBSender$send$1", f = "FBSender.kt", l = {}, m = "invokeSuspend")
final class FBSender$send$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Application $application;
    final FbDataModel $model;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FBSender$send$1(FbDataModel fbDataModel, Application application, Continuation<? super FBSender$send$1> continuation) {
        super(2, continuation);
        this.$model = fbDataModel;
        this.$application = application;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FBSender$send$1(this.$model, this.$application, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        try {
            String strJ = o.j(this.$model);
            FBSender fBSender = FBSender.f55319a;
            Intrinsics.e(strJ);
            fBSender.j(strJ, this.$application);
        } catch (Exception unused) {
            b.f60176a.d(R$string.upload_failed);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((FBSender$send$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
