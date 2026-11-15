package com.transsion.cloud.viewmodel;

import com.hunantv.media.drm.IDrmSession;
import com.transsion.dbdata.beans.cloud.SearchResponseData;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudSearchViewModel$getSearchData$1$onNext$1$1", f = "CloudSearchViewModel.kt", l = {IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY}, m = "invokeSuspend")
public final class CloudSearchViewModel$getSearchData$1$onNext$1$1 extends SuspendLambda implements s74 {
    final List<SearchResponseData> $it;
    final int $pageNo;
    final List<SearchResponseData> $searchResponseDataList;
    int label;
    final CloudSearchViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudSearchViewModel$getSearchData$1$onNext$1$1(CloudSearchViewModel cloudSearchViewModel, List<SearchResponseData> list, List<SearchResponseData> list2, int i, wh1<? super CloudSearchViewModel$getSearchData$1$onNext$1$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = cloudSearchViewModel;
        this.$it = list;
        this.$searchResponseDataList = list2;
        this.$pageNo = i;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudSearchViewModel$getSearchData$1$onNext$1$1(this.this$0, this.$it, this.$searchResponseDataList, this.$pageNo, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudSearchViewModel$getSearchData$1$onNext$1$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            kotlin.c.b(obj);
            CloudSearchViewModel cloudSearchViewModel = this.this$0;
            List<SearchResponseData> list = this.$it;
            this.label = 1;
            if (cloudSearchViewModel.z(list, this) == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
        }
        this.this$0.getMSearchCloudDataList().setValue(new Pair(this.$searchResponseDataList, mk0.b(this.$pageNo)));
        return zfb.a;
    }
}
