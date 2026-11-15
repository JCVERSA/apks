package com.transsion.cloud.viewmodel;

import com.transsion.cloud_drive.base.api.model.SpaceStatistics;
import com.transsion.cloudcore.cache.CloudTaskFinishCacheManager;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.u74;
import defpackage.wh1;
import defpackage.xy0;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$getCloudStorageInfo$1", f = "CloudViewModel.kt", l = {}, m = "invokeSuspend")
public final class CloudViewModel$getCloudStorageInfo$1 extends SuspendLambda implements s74 {
    int label;
    final CloudViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudViewModel$getCloudStorageInfo$1(CloudViewModel cloudViewModel, wh1<? super CloudViewModel$getCloudStorageInfo$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = cloudViewModel;
    }

    public static final zfb h(CloudViewModel cloudViewModel, boolean z, SpaceStatistics spaceStatistics, Integer num) {
        if (z) {
            cloudViewModel.getMCloudStorageInfo().postValue(spaceStatistics);
            CloudTaskFinishCacheManager cloudTaskFinishCacheManager = CloudTaskFinishCacheManager.a;
            T value = cloudTaskFinishCacheManager.n().getValue();
            Boolean bool = Boolean.FALSE;
            if (!y45.e(value, bool)) {
                cloudTaskFinishCacheManager.n().postValue(bool);
            }
        } else if (num != null && num.intValue() == 20087) {
            CloudTaskFinishCacheManager cloudTaskFinishCacheManager2 = CloudTaskFinishCacheManager.a;
            T value2 = cloudTaskFinishCacheManager2.n().getValue();
            Boolean bool2 = Boolean.TRUE;
            if (!y45.e(value2, bool2)) {
                cloudTaskFinishCacheManager2.n().postValue(bool2);
            }
        } else {
            CloudTaskFinishCacheManager cloudTaskFinishCacheManager3 = CloudTaskFinishCacheManager.a;
            T value3 = cloudTaskFinishCacheManager3.n().getValue();
            Boolean bool3 = Boolean.FALSE;
            if (!y45.e(value3, bool3)) {
                cloudTaskFinishCacheManager3.n().postValue(bool3);
            }
        }
        return zfb.a;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudViewModel$getCloudStorageInfo$1(this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudViewModel$getCloudStorageInfo$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.c.b(obj);
        xy0 xy0Var = this.this$0.mCloudManager;
        if (xy0Var != null) {
            final CloudViewModel cloudViewModel = this.this$0;
            xy0Var.c(new u74() {
                @Override
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return CloudViewModel$getCloudStorageInfo$1.h(cloudViewModel, ((Boolean) obj2).booleanValue(), (SpaceStatistics) obj3, (Integer) obj4);
                }
            });
        }
        return zfb.a;
    }
}
