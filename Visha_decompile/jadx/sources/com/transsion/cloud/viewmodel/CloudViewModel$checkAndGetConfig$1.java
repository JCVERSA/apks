package com.transsion.cloud.viewmodel;

import com.transsion.cloudcore.cache.CloudTaskFinishCacheManager;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.xy0;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$checkAndGetConfig$1", f = "CloudViewModel.kt", l = {}, m = "invokeSuspend")
public final class CloudViewModel$checkAndGetConfig$1 extends SuspendLambda implements s74 {
    int label;
    final CloudViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudViewModel$checkAndGetConfig$1(CloudViewModel cloudViewModel, wh1<? super CloudViewModel$checkAndGetConfig$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = cloudViewModel;
    }

    public static final zfb h(boolean z, Integer num) {
        if (z) {
            CloudTaskFinishCacheManager cloudTaskFinishCacheManager = CloudTaskFinishCacheManager.a;
            if (y45.e(cloudTaskFinishCacheManager.n().getValue(), Boolean.TRUE)) {
                cloudTaskFinishCacheManager.n().postValue(Boolean.FALSE);
            }
        } else if (num != null && num.intValue() == 20087) {
            CloudTaskFinishCacheManager cloudTaskFinishCacheManager2 = CloudTaskFinishCacheManager.a;
            T value = cloudTaskFinishCacheManager2.n().getValue();
            Boolean bool = Boolean.TRUE;
            if (!y45.e(value, bool)) {
                cloudTaskFinishCacheManager2.n().postValue(bool);
            }
        } else {
            CloudTaskFinishCacheManager cloudTaskFinishCacheManager3 = CloudTaskFinishCacheManager.a;
            if (y45.e(cloudTaskFinishCacheManager3.n().getValue(), Boolean.TRUE)) {
                cloudTaskFinishCacheManager3.n().postValue(Boolean.FALSE);
            }
        }
        return zfb.a;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudViewModel$checkAndGetConfig$1(this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudViewModel$checkAndGetConfig$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        xy0 xy0Var;
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.c.b(obj);
        xy0 xy0Var2 = this.this$0.mCloudManager;
        if (System.currentTimeMillis() - (xy0Var2 != null ? xy0Var2.g() : 0L) > 300000 && (xy0Var = this.this$0.mCloudManager) != null) {
            xy0Var.n(new s74() {
                @Override
                public final Object invoke(Object obj2, Object obj3) {
                    return CloudViewModel$checkAndGetConfig$1.h(((Boolean) obj2).booleanValue(), (Integer) obj3);
                }
            });
        }
        return zfb.a;
    }
}
