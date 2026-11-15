package com.transsion.cloud.viewmodel;

import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryData;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$getCloudVideoDataList$1$1", f = "CloudViewModel.kt", l = {377}, m = "invokeSuspend")
public final class CloudViewModel$getCloudVideoDataList$1$1 extends SuspendLambda implements s74 {
    final List<VideoCloudData> $cloudList;
    final List<MIMediaLibraryData> $favoriteList;
    final int $pageNo;
    final List<VideoCloudData> $recentlyList;
    int label;
    final CloudViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CloudViewModel$getCloudVideoDataList$1$1(List<? extends VideoCloudData> list, CloudViewModel cloudViewModel, List<? extends VideoCloudData> list2, int i, List<MIMediaLibraryData> list3, wh1<? super CloudViewModel$getCloudVideoDataList$1$1> wh1Var) {
        super(2, wh1Var);
        this.$recentlyList = list;
        this.this$0 = cloudViewModel;
        this.$cloudList = list2;
        this.$pageNo = i;
        this.$favoriteList = list3;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudViewModel$getCloudVideoDataList$1$1(this.$recentlyList, this.this$0, this.$cloudList, this.$pageNo, this.$favoriteList, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudViewModel$getCloudVideoDataList$1$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            kotlin.c.b(obj);
            List<VideoCloudData> list = this.$recentlyList;
            if (list != null && (!list.isEmpty())) {
                this.this$0.mHaveLoadedCache = true;
            }
            CloudViewModel cloudViewModel = this.this$0;
            List<VideoCloudData> list2 = this.$cloudList;
            this.label = 1;
            if (cloudViewModel.r(list2, this) == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
        }
        this.this$0.getMCloudDataList().setValue(new Triple(mk0.a(false), this.$cloudList, mk0.b(this.$pageNo)));
        this.this$0.getMCloudRecentlyList().setValue(this.$recentlyList);
        this.this$0.getMCloudFavoriteList().setValue(this.$favoriteList);
        return zfb.a;
    }
}
