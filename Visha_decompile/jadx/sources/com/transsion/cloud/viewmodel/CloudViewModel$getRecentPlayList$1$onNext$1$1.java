package com.transsion.cloud.viewmodel;

import com.transsion.cloudcore.cloudapi.manager.CloudVideoPlayInfoManager;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.mimedia.MIMediaConstants;
import com.transsion.dbdata.beans.mimedia.RecentVideoShowData;
import com.transsion.retrofit.cache.CacheManager;
import defpackage.fi1;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$getRecentPlayList$1$onNext$1$1", f = "CloudViewModel.kt", l = {308}, m = "invokeSuspend")
public final class CloudViewModel$getRecentPlayList$1$onNext$1$1 extends SuspendLambda implements s74 {
    final List<RecentVideoShowData> $it;
    Object L$0;
    int label;
    final CloudViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CloudViewModel$getRecentPlayList$1$onNext$1$1(List<? extends RecentVideoShowData> list, CloudViewModel cloudViewModel, wh1<? super CloudViewModel$getRecentPlayList$1$onNext$1$1> wh1Var) {
        super(2, wh1Var);
        this.$it = list;
        this.this$0 = cloudViewModel;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudViewModel$getRecentPlayList$1$onNext$1$1(this.$it, this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudViewModel$getRecentPlayList$1$onNext$1$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Object invokeSuspend(Object obj) {
        List list;
        Collection collection;
        Collection collection2;
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
                CloudViewModel cloudViewModel = this.this$0;
                this.L$0 = arrayList;
                this.label = 1;
                if (cloudViewModel.r0(arrayList, this) == objF) {
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
        List listQ = this.this$0.q(list);
        this.this$0.getMCloudRecentlyList().setValue(listQ);
        CacheManager.getInstance().setCache(MIMediaConstants.RECENT_PLAY_LIST_CACHE, fi1.e(listQ));
        Triple triple = (Triple) this.this$0.getMCloudDataList().getValue();
        List list3 = triple != null ? (List) triple.getSecond() : null;
        if ((list3 != null && !list3.isEmpty()) || (((collection = (Collection) this.this$0.getMCloudFavoriteList().getValue()) != null && !collection.isEmpty()) || ((collection2 = (Collection) this.this$0.getMCloudRecentlyList().getValue()) != null && !collection2.isEmpty()))) {
            this.this$0.getMNoContentLiveData().setValue(mk0.a(false));
        }
        return zfb.a;
    }
}
