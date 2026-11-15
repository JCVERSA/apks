package com.transsion.cloud.viewmodel;

import android.util.Log;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Ref$BooleanRef;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "", "<anonymous>", "(Lnk1;)Ljava/lang/Object;"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$loadCloudDataSequentially$1$recentJob$1", f = "CloudViewModel.kt", l = {}, m = "invokeSuspend")
public final class CloudViewModel$loadCloudDataSequentially$1$recentJob$1 extends SuspendLambda implements s74 {
    final CountDownLatch $latch;
    final Ref$BooleanRef $recentCompleted;
    int label;
    final CloudViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudViewModel$loadCloudDataSequentially$1$recentJob$1(CloudViewModel cloudViewModel, Ref$BooleanRef ref$BooleanRef, CountDownLatch countDownLatch, wh1<? super CloudViewModel$loadCloudDataSequentially$1$recentJob$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = cloudViewModel;
        this.$recentCompleted = ref$BooleanRef;
        this.$latch = countDownLatch;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudViewModel$loadCloudDataSequentially$1$recentJob$1(this.this$0, this.$recentCompleted, this.$latch, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<Object> wh1Var) {
        return ((CloudViewModel$loadCloudDataSequentially$1$recentJob$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objB;
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.c.b(obj);
        try {
            try {
                this.this$0.W();
                this.$recentCompleted.element = true;
                objB = zfb.a;
            } catch (Exception e) {
                objB = mk0.b(Log.e("CloudViewModel", "error: " + e.getMessage()));
            }
            return objB;
        } finally {
            this.$latch.countDown();
        }
    }
}
