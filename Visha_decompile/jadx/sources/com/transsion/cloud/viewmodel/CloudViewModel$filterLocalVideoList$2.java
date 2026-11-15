package com.transsion.cloud.viewmodel;

import com.transsion.cloudcore.cache.CloudTaskFinishCacheManager;
import com.transsion.dbdata.beans.VideoCloudData;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$filterLocalVideoList$2", f = "CloudViewModel.kt", l = {}, m = "invokeSuspend")
public final class CloudViewModel$filterLocalVideoList$2 extends SuspendLambda implements s74 {
    final List<VideoCloudData> $videoList;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CloudViewModel$filterLocalVideoList$2(List<? extends VideoCloudData> list, wh1<? super CloudViewModel$filterLocalVideoList$2> wh1Var) {
        super(2, wh1Var);
        this.$videoList = list;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudViewModel$filterLocalVideoList$2(this.$videoList, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudViewModel$filterLocalVideoList$2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.c.b(obj);
        for (VideoCloudData videoCloudData : this.$videoList) {
            String strJ = CloudTaskFinishCacheManager.a.j(videoCloudData.getFileId());
            videoCloudData.setExitLocal(mk0.a(!(strJ == null || strJ.length() == 0)));
        }
        return zfb.a;
    }
}
