package com.transsion.cloud.viewmodel;

import com.transsion.cloudcore.cloudapi.manager.CloudVideoPlayInfoManager;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.mimedia.RecentVideoShowData;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.RecentlyViewModel$getCloudRecentlyVideoDataList$1$onNext$1$1", f = "RecentlyViewModel.kt", l = {103}, m = "invokeSuspend")
public final class RecentlyViewModel$getCloudRecentlyVideoDataList$1$onNext$1$1 extends SuspendLambda implements s74 {
    final List<RecentVideoShowData> $it;
    Object L$0;
    int label;
    final RecentlyViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RecentlyViewModel$getCloudRecentlyVideoDataList$1$onNext$1$1(List<? extends RecentVideoShowData> list, RecentlyViewModel recentlyViewModel, wh1<? super RecentlyViewModel$getCloudRecentlyVideoDataList$1$onNext$1$1> wh1Var) {
        super(2, wh1Var);
        this.$it = list;
        this.this$0 = recentlyViewModel;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new RecentlyViewModel$getCloudRecentlyVideoDataList$1$onNext$1$1(this.$it, this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((RecentlyViewModel$getCloudRecentlyVideoDataList$1$onNext$1$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        List list;
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            kotlin.c.b(obj);
            if (com.transsion.palmsdk.b.s()) {
                List<RecentVideoShowData> list2 = this.$it;
                ArrayList<VideoCloudData> arrayList = new ArrayList(z71.v(list2, 10));
                Iterator<T> it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(((RecentVideoShowData) it.next()).toVideoCloudData());
                }
                for (VideoCloudData videoCloudData : arrayList) {
                    long j = 1000;
                    videoCloudData.setPlayDuration(videoCloudData.getPlayDuration() * j);
                    Long duration = videoCloudData.getDuration();
                    videoCloudData.setDuration(duration != null ? mk0.c(duration.longValue() * j) : null);
                    if (videoCloudData.getPlayDuration() > 0) {
                        CloudVideoPlayInfoManager.X(CloudVideoPlayInfoManager.a, videoCloudData.getFileId(), videoCloudData.getPlayDuration(), null, 4, null);
                    }
                }
                RecentlyViewModel recentlyViewModel = this.this$0;
                this.L$0 = arrayList;
                this.label = 1;
                if (recentlyViewModel.r0(arrayList, this) == objF) {
                    return objF;
                }
                list = arrayList;
            }
            return zfb.a;
        }
        if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        list = (List) this.L$0;
        kotlin.c.b(obj);
        this.this$0.getMCloudRecentlyList().setValue(this.this$0.q(list));
        return zfb.a;
    }
}
